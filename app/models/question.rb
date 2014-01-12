class Question < ActiveRecord::Base
	def self.search(search)
		if search
		where 'chapter_name LIKE ? OR chapter_no LIKE ? OR questions LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"
	else
		scoped
	end
end
end
