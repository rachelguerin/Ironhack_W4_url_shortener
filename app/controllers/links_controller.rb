class LinksController < ApplicationController
	def index
		link = Link.where(short_url: params[:shortlink]).first 
		link.visits += 1
		link.save
		redirect_to(link.original_url)
	end

	def new
		if params[:shortlink]
			@short_url = "URL #{params[:shortlink]} generated."
		else
			@short_url = ""
		end
	end	

	def create

		link = Link.where(original_url: Link.set_http(params[:original_url])).first
		if link.blank?
			link = Link.new(
				:original_url => Link.set_http(params[:original_url]),
				:short_url => Link.generate_short_url(3),
				:visits => 0
				)
			link.save
		end

		redirect_to("/new/#{link.short_url}")
	end

	def last_visited_pages
		@links = Link.order(updated_at: :desc).limit(3)
	end

	def most_visited_pages
		@links = Link.order(visits: :desc).limit(3)
	end
end
