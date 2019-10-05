class User < ActiveRecord::Base

    has_many :books
    has_secure_password

    validates :username, :email, presence: true

end