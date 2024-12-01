class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  # 定数にemail用の正規表現を格納
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 200 },
                    format: { with: VALID_EMAIL_REGEX },
                    # メールアドレスは大文字と小文字を区別しない
                    uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 10 }
end
