class Product < ActiveRecord::Base
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :main_image, presence: true
  
  mount_uploader :main_image, ImageUploader
  mount_uploader :sub_image_0, ImageUploader
  mount_uploader :sub_image_1, ImageUploader
  mount_uploader :sub_image_2, ImageUploader

  rails_admin do
    edit do
      field :name
      field :price
      field :description
      field :main_image, :carrierwave
      field :sub_image_0, :carrierwave
      field :sub_image_1, :carrierwave
      field :sub_image_2, :carrierwave
    end
  end
end
