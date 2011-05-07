class User < ActiveRecord::Base

  has_many :microposts, :dependent => :destroy 

  validates :name, :email, :age, :presence => true
  validates :age, :numericality => true 
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
end
