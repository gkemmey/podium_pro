class Critique < ActiveRecord::Base
  
  belongs_to :micropost
  belongs_to :reviewer, class_name: "User"

  #validates :user_id, presence: true
  #validates :content, presence: true

  #default_scope order: 'microposts.created_at DESC'
end
