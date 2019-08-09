class Gossip < ApplicationRecord
	   validates :title, length:{ in: 3..14 } 
	   validates :content, presence: true
	   belongs_to :user, optional: true
	   has_many :gossip_tags
     has_many :tags, through: :gossip_tags
     has_many :comments
end
