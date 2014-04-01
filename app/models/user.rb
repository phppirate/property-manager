class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_create :set_default_role

  has_many :properties

  def admin?
    return false unless self.role == "admin"
    true
  end

  def set_default_role
    self.role = "user"
  end
end
