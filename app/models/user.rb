class User < ActiveRecord::Base

validates :name, presence: true
validates :username, uniqueness: true, presence: true
validates :email, uniqueness: true, presence: true, format: { with: /\A[\w.+-]+@([\w]+.)+\w+\Z/}

end
