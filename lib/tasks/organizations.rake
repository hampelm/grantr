require 'csv'

# To use: rake organizations:import
namespace :organizations do
  task :import => :environment do
    csv_text = File.read(File.dirname(__FILE__) + '/organizations.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Organization.create!(row.to_hash)
    end

  end
end
