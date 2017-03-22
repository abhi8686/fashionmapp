class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  has_many :connections, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_users, through: :connections, source: :followed
  has_many :reverse_connections, foreign_key: "followed_id",
                                   class_name: 'Connection',
                                   dependent: :destroy
  has_many :followers, through: :reverse_connections, source: :follower
end
