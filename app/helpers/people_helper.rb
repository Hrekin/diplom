module PeopleHelper
	def select_department
		Department.all.pluck("department_name, department_number")
	end
	def select_role
		Role.all.pluck("role_name")
	end
end
