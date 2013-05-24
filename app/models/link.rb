class Link < ActiveRecord::Base
  attr_accessible :title, :body, :url
  belongs_to :user
  has_many :comments
  has_many :votes
end
