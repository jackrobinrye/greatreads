class User < ActiveRecord::Base

    has_many :books
    has_secure_password

    validates :name, :email, presence: true

end