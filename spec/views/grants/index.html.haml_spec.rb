require 'spec_helper'

describe "grants/index" do
  before(:each) do
    assign(:grants, [
      stub_model(Grant,
        :amount => "",
        :amount => 1.5,
        :from => nil,
        :to => nil
      ),
      stub_model(Grant,
        :amount => "",
        :amount => 1.5,
        :from => nil,
        :to => nil
      )
    ])
  end

  it "renders a list of grants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
