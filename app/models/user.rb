class User < ActiveRecord::Base
	has_many :books
	
	validates :email, presence:true, format: {with: /[A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9]/}
	validates :encrypted_password, presence:true, length: {minimum: 5}, format: {with: /[A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9]/}
	validates :reset_password_token, presence:true
	validates :reset_password_sent_at, presence:true
	validates :remember_created_at, presence:true
	validates :sign_in_count, presence:true
	validates :current_sign_in_at, presence:true
	validates :last_sign_in_at, presence:true
	validates :current_sign_in_ip, presence:true
	validates :last_sign_in_ip, presence:true
	validates :created_at, presence:true
	validates :updated_at, presence:true
	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
