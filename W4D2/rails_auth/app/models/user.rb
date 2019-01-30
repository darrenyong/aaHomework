class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: { message: "Password can't be blank"}
  validates :session_token, presence: true, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }
  before_validation :ensure_session_token



  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end
  
end
