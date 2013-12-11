namespace :import do
  desc "Import grants data from a CSV"
  task :grants, [:filepath]  => :environment do |t, args|
    importer = DataImporter.new(args[:filepath])
    importer.import_grants
  end
end
