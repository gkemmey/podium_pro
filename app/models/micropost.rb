class Micropost < ActiveRecord::Base
  attr_accessible :content, :lesson_id, :youtube_id
  
  belongs_to :user
  has_many :critiques

  before_create :strip_youtube_id

  validates :user_id, presence: true
  validates :youtube_id, presence: true

  default_scope order: 'microposts.created_at DESC'

  def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships
                         WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids})", 
          user_id: user.id)
  end

  def strip_youtube_id
    if self.youtube_id.include? "watch?v="
      self.youtube_id = self.youtube_id.split("=")[1][0...11]
    
    elsif self.youtube_id.include? "embed/"
      self.youtube_id = self.youtube_id.split("embed/")[1][0...11]
    else
      # not a good link
    end
  end
end
