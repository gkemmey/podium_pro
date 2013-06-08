class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user
  has_many :critiques

  before_save :strip_youtube_id

  validates :user_id, presence: true
  validates :content, presence: true

  default_scope order: 'microposts.created_at DESC'

  def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships
                         WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids})", 
          user_id: user.id)
  end

  def strip_youtube_id
    if self.content.include? "watch?v="
      self.content = self.content.split("=")[1][0...11]
    
    elsif self.content.include? "embed/"
      self.content = self.content.split("embed/")[1][0...11]
    else
      # not a good link
    end
  end
end
