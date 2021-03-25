class User < ApplicationRecord
  before_save {self.email=self.email.downcase}#save前に小文字化することで、DB側で区別持たせることを避ける
  validates :name, presence: true,
                     length: {maximum:50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i#定数
  validates :email, presence: true,
                      length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: {case_sensitive: true}
  validates :password, length: {minimum:7}#presence: trueは書かなくてもhas_secure_passwordで追加されている
  has_secure_password
end
