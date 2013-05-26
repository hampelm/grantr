require 'spec_helper'

describe "grants/edit" do
  before(:each) do
    @grant = assign(:grant, stub_model(Grant,
      :amount => "",
      :amount => 1.5,
      :from => nil,
      :to => nil
    ))
  end

  it "renders the edit grant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", grant_path(@grant), "post" do
      assert_select "input#grant_amount[name=?]", "grant[amount]"
      assert_select "input#grant_amount[name=?]", "grant[amount]"
      assert_select "input#grant_from[name=?]", "grant[from]"
      assert_select "input#grant_to[name=?]", "grant[to]"
    end
  end
end
