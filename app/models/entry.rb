class Entry < ActiveRecord::Base
  attr_accessible :post, :user_id

  belongs_to :user_name

end
