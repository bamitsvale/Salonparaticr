class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :citas

  ADMIN_EMAIL = 'salonparaticr@gmail.com'


  def admin?
    return true if email.eql?(ADMIN_EMAIL)

    false
  end

  def self.admin
    User.find_by(email: ADMIN_EMAIL)
  end
end

