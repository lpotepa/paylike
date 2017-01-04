class Response

	def initialize(transaction)
		t 		      		= transaction['transaction']
		@all 		   		= transaction
		@amount        		= t['amount']
		@pendingAmount 		= t['pendingAmount']
		@created	   		= t['created']
		@last_four_digits	= t['card']['last4']
	end

	def all
		@all
	end

	def pendingAmount
		@pendingAmount
	end

	def amount
		@amount
	end

	def digits
		@last_four_digits
	end

end
