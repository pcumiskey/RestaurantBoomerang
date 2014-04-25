class Programme < ActiveRecord::Base
  belongs_to :boomerang
  	has_many :messages

end
