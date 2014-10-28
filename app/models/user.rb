class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :roles

  def has_role?(name)
    self.roles.where(name: name).length > 0
  end
  
  has_many :posts
  validates :username, presence: true, uniqueness: true
  def email_required?
    false
  end

  def email_changed?
    false
  end

end