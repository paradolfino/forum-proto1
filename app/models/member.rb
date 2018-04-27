class Member < ApplicationRecord
    has_secure_password
    has_many :posts, dependent: :destroy
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
    validates :email, presence: true, uniqueness: true
end
