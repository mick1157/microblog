class User < ActiveRecord::Base
  attr_accessible :email, :user_name   # mrt


  # relationships
  has_many :entries

  validates :user_name, :email, presence: true  # mrt
end
