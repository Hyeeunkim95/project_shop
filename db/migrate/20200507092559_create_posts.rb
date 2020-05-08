class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      
      # user의 id를 값을 저장하기 위해 integer 타입을 사용
      t.integer  :user_id
      
      # 고객의 id 저장
      
      t.integer   :archived_id
      
      # 글 내용을 저장할 content
      t.text        :content
      
      

      t.timestamps
    end
  end
end
