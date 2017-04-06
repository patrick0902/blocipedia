class User < ActiveRecord::Base
<<<<<<< HEAD
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
=======
  devise :database_authenticatable, :registerable, :recoverable,
         :rememberable, :trackable, :validatable, :confirmable
  enum role: [:standard, :premium, :admin ]
  #Associations
  has_many :wikis

  #Validations

  #Hooks
  #after_initialize :set_default_role, :if => :new_record?

  #Class Methods

  #Instance Methods

private #-----------------------------------------

  def set_default_role
    self.role ||= :standard
  end

>>>>>>> checkpoint-3-user-sign-in-out
end
