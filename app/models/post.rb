class Post < ApplicationRecord
  belongs_to :member
  belongs_to :scene
  validates :title, presence: true, length: { minimum: 2 }
end
