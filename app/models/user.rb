class User < ActiveRecord::Base
  attr_accessible :email, :user_name   # mrt

  has_many :entries

  validates :email, :user_name, presence: true  # mrt

end
