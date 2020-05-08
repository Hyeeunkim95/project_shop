class Post < ApplicationRecord
    mount_uploader :image, PostImageUploader 
    belongs_to :user
    
    # 아카이브 된 유저
    # 관계 이름 : Archived
    # 모델 명 : User
    belongs_to :archived, class_name: "User"
    
            
end
