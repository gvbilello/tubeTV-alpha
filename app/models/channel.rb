class Channel < ApplicationRecord
	belongs_to :user
	
	validates_presence_of :channel_key
	validates_uniqueness_of :channel_key
end
