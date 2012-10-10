class Entry < ActiveRecord::Base
  attr_accessible :post, :user_id

  belongs_to :user

  validates :post, presence: true  # mrt

end
