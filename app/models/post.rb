class Post < ApplicationRecord


    belongs_to :user
    mount_uploaders :image, ImageUploader
    serialize :image, JSON 

    
end
