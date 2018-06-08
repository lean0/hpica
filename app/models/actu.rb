class Actu < ApplicationRecord

  	validates :title,presence:{message:"est vide"},uniqueness:{message:"existe déja !"}
  	validates :content,presence:{message:"est vide"},uniqueness:{message:"existe déja !"}
  	validates :pwd,presence:{message:"est vide"}
end
   	# has_attached_file :images

#migration
# add_attachment :actus, :image

  # validates :image, presence: true
  # has_attached_file :image, styles: { :medium => '640x'}
  # validates_attachment_content_type :image, :content_type => /\Aimage\/.*\z/
