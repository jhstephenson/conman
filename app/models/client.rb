class Client < ActiveRecord::Base

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Client.create!(row.to_hash)
		end
	end

end