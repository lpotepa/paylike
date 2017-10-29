module Paylike
	class Api

		#
		# Fetch current app
		#

		def self.me
			req = Request._http(Endpoints.me)
			req.body if req.code == 200
		end

		#
		# Fetch a merchant
		#

		def self.merchant(merchant_id)
			req = Request._http(Endpoints.merchant(merchant_id))
			#req.body if req.code == 200
		end

		#
		# Fetch a transaction
		#

		def self.transaction(transaction_id)
			req = Request._http(Endpoints.transaction(transaction_id))
			Response.new(req.body) if req.code == 200 || 201
		end

		#
		# Capture as transaction
		#

		def self.capture(transaction_id, amount)
			data = { :amount => amount }
			req = Request._http_post(Endpoints.capture(transaction_id), data)
			Response.new(req.body) if req.code == 200 || 201
			#req.body if req.code == 200
		end

		#
		# Void a transaction
		#

		def self.void(transaction_id, amount)
			data = { :amount => amount }
			req = Request._http_post(Endpoints.void(transaction_id), data)
			Response.new(req.body) if req.code == 200 || 201
		end

		#
		# Refund a transaction
		#

		def self.refund(transaction_id, amount, descriptor = nil)
			data = descriptor ? { :amount => amount, :descriptor => descriptor } : { :amount => amount }
			req = Request._http_post(Endpoints.refund(transaction_id), data)
			Response.new(req.body) if req.code == 200 || 201
		end

		#
		# Generate Payment Link
		#

		def self.generate_payment_link(amount, currency=nil, reference=nil, text=nil, url=nil)
			public_key = Configuration.public_key
			currency ||= "EUR"
			URI.encode("#{Endpoints.pos}?key=#{public_key}&amount=#{amount}&currency=#{currency}#{reference ? "&reference=#{reference}" : ""}#{text ? "&text=#{text}" : ""}#{url ? "&redirect=#{url}" : ""}&locale=en_US")
		end

	end
end
