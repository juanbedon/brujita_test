module CoursesHelper

	def user_add_to_library? user, course
		user.libraries.where(user: user, book: book).any?
	end

end