class Link < ActiveRecord::Base
	def self.generate_short_url(range)
		[*('a'..'z'),*('0'..'9'),*('A'..'Z')].shuffle[0,range].join			
	end

	def self.set_http(link)
		link.index('http') != 1 ? link.insert(0,"http://") : link
	end

	def display_me
		"#{self.original_url} / created on #{self.created_at.strftime(format='%F')} / last visited #{self.updated_at.strftime(format='%F')} / visited #{self.visits} times"
	end
end
