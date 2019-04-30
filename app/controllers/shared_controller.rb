class SharedController < ApplicationController
	def back
		redirect_back(fallback_location: root_path)
	end
end
