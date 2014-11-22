class User < ActiveRecord::Base
  has_many :user_photos
  validates_presence_of :name
  accepts_nested_attributes_for :user_photos, \
    reject_if: proc{ |param| param[:photo].blank? && param[:photo_cache].blank? && param[:id].blank? }, \
    allow_destroy: true
end
