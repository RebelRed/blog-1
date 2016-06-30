class Comment < ActiveRecord::Base
  belongs_to :article, dependent: :destroy
    validates :email, presence: true,
                    length: { minimum: 5}
    validates :body, presence: true,
                    length: { minimum: 5}                
end
 