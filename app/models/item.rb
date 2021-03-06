class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :evaluation

  has_one_attached :item_image

  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :sales_name, presence: true
  validates :price, numericality: { only_integer: true }
  validates :evaluation_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :comment_title, presence: true
end
