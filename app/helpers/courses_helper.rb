module CoursesHelper

	def user_added_to_library? user, course
		user.libraries.where(user: user, book: book).any?
	end

end