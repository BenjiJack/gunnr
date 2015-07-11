class VisitorsController < ApplicationController
	before_filter :reject_signed_in_submitters

	def reject_signed_in_submitters
		if submitter_signed_in?
			redirect_to submitter_path(current_submitter.id)
		end
	end

	def about
	end
	
end
