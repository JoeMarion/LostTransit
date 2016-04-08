class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :username,   presence: true,
                         length: { maximum: 12 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@(?!.*([._%+-])\1)[a-z\d\-.]+\.[a-z]+\z/i

  validates :email,      presence: true,
                         uniqueness: { case_sensitive: false },
                         length: { maximum: 255 },
                         format: { with: VALID_EMAIL_REGEX }
  validates :password,   presence: true,
                         length: { minimum: 6 }

  has_secure_password
end
