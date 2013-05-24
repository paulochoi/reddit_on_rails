class Vote < ActiveRecord::Base
   attr_accessible :up, :link_id, :user_id
   
   #makes sure that one user_id can only have one link_id
   validates :user_id, uniqueness: { scope: :link_id }


   belongs_to :user
   belongs_to :link
end
