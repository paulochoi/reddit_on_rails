class Vote < ActiveRecord::Base
   attr_accessible :up, :link_id, :user_id

   belongs_to :user
   belongs_to :link
end
