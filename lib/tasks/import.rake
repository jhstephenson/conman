require 'csv'

namespace :import do
	desc "Import Clients from CSV"
	task clients: :environment do
		filename = File.join Rails.root, "JHSACCT.csv"
		counter = 0
		CSV.foreach(filename, headers: true) do |row|
			 p row 
			 p row["internalid"]

		end
		puts "Clients imported #{counter}"
	end
end