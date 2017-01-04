class Endpoints

	def self.base_url
		"https://api.paylike.io/"
	end

	def self.pos
		"https://pos.paylike.io/"
	end

	def self.me
		"#{base_url}" + "me"
	end

	def self.transaction(transaction_id)
		"#{base_url}transactions/#{transaction_id}"
	end

	def self.capture(transaction_id)
		"#{base_url}" + "transactions/#{transaction_id}/captures"
	end

	def self.refund(transaction_id)
		"#{base_url}transactions/#{transaction_id}/refunds"
	end

	def self.void(transaction_id)
		"#{base_url}transactions/#{transaction_id}/voids"
	end

	def self.merchant(merchant_id)
		"#{base_url}merchants/#{merchant_id}"
	end

end

