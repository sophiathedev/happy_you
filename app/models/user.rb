# frozen_string_literal: true

class User < ApplicationParanoia
  has_secure_password

  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 5, maximum: 30 }, format: { with: /\A[a-zA-Z0-9_]+\z/ }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end
