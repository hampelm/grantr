require 'spec_helper'

describe "grants/show" do
  before(:each) do
    @grant = assign(:grant, stub_model(Grant,
      :amount => "",
      :amount => 1.5,
      :from => nil,
      :to => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/1.5/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
