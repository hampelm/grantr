require 'csv'

# To use: rake grants:import
namespace :grants do
  task :import => :environment do
    csv_text = File.read(File.dirname(__FILE__) + '/grants.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|

      # Find the source
      source_name = row['source']
      @source = Organization.where(name: source_name).first
      if !@source
        puts 'None found for ' + source_name
        @source = Organization.create!(name: source_name)
      end

      # Find the destination
      target_name = row['target']
      @target = Organization.where(name: target_name).first
      if !@target
        puts 'None found for ' + target_name
        @target = Organization.create!(name: target_name)
      end

      Grant.create!(amount: row['amount'], from_id: @source.id, to_id: @target.id, start: row['year'])


      # t.date     "created"
      # t.float    "amount"
      # t.integer  "from_id"
      # t.integer  "to_id"
      # t.date     "start"
      # t.date     "ends"
      # t.datetime "created_at", :null => false
      # t.datetime "updated_at", :null => false



    end

  end
end
