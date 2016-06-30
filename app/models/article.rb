class Article < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "500x50>", :thumb => "100x100>"}
	  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }


	has_many :comments, dependent: :destroy
    validates :title, presence: true,
                    length: { minimum: 5}
end
