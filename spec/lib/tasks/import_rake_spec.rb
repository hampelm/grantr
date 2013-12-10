require 'spec_helper'

describe "import:grants" do
  include_context "rake"

  its(:prerequisites) { should include("environment") }

  it "instantiates a DataImporter and calls import_grants" do
    filepath = 'spec/fixtures/data_importer/grant_simple_example.csv'

    DataImporter.should_receive(:new).with(filepath).and_call_original
    DataImporter.any_instance.should_receive(:import_grants)

    task.invoke(filepath)
  end

end
