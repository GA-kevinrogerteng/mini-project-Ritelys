class Links < ActiveRecord::Base

	def count
		self.increment!(:counter)
	end

end
