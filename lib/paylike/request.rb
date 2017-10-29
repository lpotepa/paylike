module Paylike
	class Request

		def self._http(endpoint)
			puts 'Private key is missing' unless Configuration.private_key
			Unirest.get endpoint, auth:{ :user => "", :password => Configuration.private_key }
		end

		def self._http_post(endpoint, data)
			puts 'Private key is missing' unless Configuration.private_key
			Unirest.post endpoint,
                headers:{ "Content-Type" => "application/json", "Accept" => "application/json" },
                auth:{ :user => "", :password => Configuration.private_key },
                parameters:data.to_json
		end
	end
end
