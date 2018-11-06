class User < ApplicationRecord
 has_many :messages
 has_many :comments
  has_many :messages
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def after_confirmation
    welcome_email
    super
  end

  private
    def welcome_email
      byebug
       Brands::UserMailer.welcome_email(self).deliver_now
    end


end
