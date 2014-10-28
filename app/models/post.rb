class Post < ActiveRecord::Base
  belongs_to :user
  has_reputation :likes, source: :user, aggregated_by: :sum
  mount_uploader :image, ImageUploader
end
