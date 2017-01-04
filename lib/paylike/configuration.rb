module Paylike
	class Configuration

		READABLE_ATTRIBUTES = [
	      :public_key,
	      :private_key
	    ]

		WRITABLE_ATTRIBUTES = [
	      :public_key,
	      :private_key
		]

		class << self
			attr_writer *WRITABLE_ATTRIBUTES
			attr_reader *READABLE_ATTRIBUTES
		end


		def self.test_key
			raise "Configuration error: Private key is missing." unless private_key
			puts private_key
		end
	end
end
