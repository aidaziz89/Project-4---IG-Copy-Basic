class User < ApplicationRecord
    has_secure_password
    # has_one_attached :photo
    #  has_many :posts
    # has_many :posts, :dependent => :destroy
end
