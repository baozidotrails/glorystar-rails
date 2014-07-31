class Staff < ActiveRecord::Base
  default_scope { order('created_at DESC') }
  scope :currently, -> { where(quit: false) }
  scope :fulltime , -> { currently.where(position: 0) }
  scope :deacon   , -> { currently.where(position: 1) }
  scope :elder    , -> { currently.where(position: 2) }
  
  POSITION = [ "幹事", "執事", "長老" ]
  enum position: POSITION
  mount_uploader :photo, PhotoUploader
end
