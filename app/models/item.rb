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
end
