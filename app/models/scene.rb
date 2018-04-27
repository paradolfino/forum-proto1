class Scene < ApplicationRecord
    has_many :posts, dependent: :destroy
    validates :name, presence: true, length: { minimum: 2 }
    validates :description, presence: true, length: { minimum: 2 }
end
