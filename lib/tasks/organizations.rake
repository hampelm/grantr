require 'csv'

# To use: rake import_orgs:create
namespace :organizations do
  task :import => :environment do
    csv_text = File.read('organizations.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Organization.create!(row.to_hash)
    end

  end
end
