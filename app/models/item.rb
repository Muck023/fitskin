class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :evaluation

  belongs_to :user
  has_one_attached :item_image

  validates :category_id, numericality: { only_integer: true, message: "を選択してください" }
  validates :sales_name, presence: true
  validates :evaluation_id, numericality: { only_integer: true, message: "を選択してください" }
  validates :comment_title, presence: true

  def self.search(search)
    myitems = Item.where(user_id: search).order("created_at DESC")
    otheritems = Item.where.not(user_id: search).order("created_at DESC")
    search = []


    myitems.each do |myitem|
      match = otheritems.where(sales_name: myitem.sales_name).where(evaluation_id: myitem.evaluation_id)
      search.push match
    end

    return search

  end
end
