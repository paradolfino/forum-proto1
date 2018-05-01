class Post < ApplicationRecord
  belongs_to :member
  belongs_to :scene
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 2 }
  validates :content, presence: true, length: { minimum: 2 }
end
