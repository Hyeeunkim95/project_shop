class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # 관계 이름 : follower_relations(다른 이름으로 변경 가능)
  # 외래키 : followed_id
  # 모델명 : Follow
  has_many :follower_relations, foreign_key: 'followed_id', class_name: 'Follow'
  
  # 관계 이름 : followers (다른 이름으로 변경 가능)
  # follow_relations를 통해 가져올 값 : follower (follow.follower)
  has_many :followers, through: :follower_relations, source: :follower
  
  # 관계 이름 : following_relations(다른 이름으로 변경 가능)
  # 외래키 : following_id
  # 모델명 : Follow
  has_many :following_relations, foreign_key: 'follower_id', class_name: 'Follow'
  
  # 관계 이름 : followings (다른 이름으로 변경 가능)
  # follow_relations를 통해 가져올 값 : followed (follow.followed)
  has_many :followings, through: :following_relations, source: :followed
  
  
  has_many :archiveds, class_name: "Post"
  
  
  has_many :posts
end
