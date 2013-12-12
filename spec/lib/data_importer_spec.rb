require 'spec_helper'
require 'rake'

describe DataImporter do

  it "loads grants from a csv filepath" do
    importer = DataImporter.new('spec/fixtures/data_importer/grant_simple_example.csv')

    expect{ importer.import_grants }.to change{ Grant.count }.by(2)
  end

  it "prevents duplicate organization names" do
    importer = DataImporter.new('spec/fixtures/data_importer/grant_simple_example.csv')
    # run it once beforehand
    importer.import_grants

    expect{ importer.import_grants }.to_not change{ Organization.count }
  end

end
