module RolesHelper
	def title_options
		[['Admin', 'admin'], ['Manager', 'manager'], ['Bookkeeper', 'bookkeeper'], ['Cashier', 'cashier'], ['Waiter', 'waiter'], ['Cook', 'cook']]
	end

	def role_status_options
		[['Trainee', 'trainee'], ['Part-time', 'part-time'], ['Probation', 'probation'], ['Regular', 'regular']]
	end

	def salary_term_options
		[['', nil], ['Daily', 'daily'], ['Monthly', 'monthly']]
	end
end
