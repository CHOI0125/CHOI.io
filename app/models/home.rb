class Home < ActiveRecord::Base
    mount_uploader :image, ImageUploader
    
    #comments를 가지고 있다.
    has_many :comments

end
