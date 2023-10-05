class Enginer < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :maintenances, dependent: :destroy  
    belongs_to :equipment_type 


    validates :name, presence: true, uniqueness: true
    validates :description, presence: true
    validates :image, presence: true

end
