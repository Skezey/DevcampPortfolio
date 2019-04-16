class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  #Ensures that a name is entered during registration
  validates_presence_of :name

  #Splits entered name into first and last name
  def first_name
    self.name.split.first
  end

  def last_name
    self.name.split.last
  end

end
