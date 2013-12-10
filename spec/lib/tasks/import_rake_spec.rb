require 'spec_helper'

describe "import:grants" do
  include_context "rake"

  its(:prerequisites) { should include("environment") }

  it "imports grants" do
    filepath = 'spec/fixtures/data_importer/grant_simple_example.csv'

    expect{ task.invoke(filepath) }.to change{ Grant.count }.by(2)
  end

end
