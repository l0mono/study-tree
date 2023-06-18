class Study < ActiveRecord::Base
    mount_uploader :picture,PictureUploader
end
