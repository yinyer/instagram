class Photo < ActiveRecord::Base
	has_attached_file :asset, styles: {  medium: "500x500>", thumb: "100x100#" }
	validates_attachment_presence :asset
	validates_attachment_content_type :asset, content_type: /\Aimage\/.*\Z/
	belongs_to :user
end
