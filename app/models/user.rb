class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :usage

  validates :nickname, presence: true
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :usage_id, numericality: { only_integer: true, message: "を選択してください" }

  has_many :items
  has_one_attached :profile_image


end
