class Post < ActiveRecord::Base
  belongs_to :user
  has_reputation :likes, source: :user, aggregated_by: :sum
  validates :body, presence: true
  mount_uploader :image, ImageUploader
end
