require 'spec_helper'

describe "grants/new" do
  before(:each) do
    assign(:grant, stub_model(Grant,
      :amount => "",
      :amount => 1.5,
      :from => nil,
      :to => nil
    ).as_new_record)
  end

  it "renders new grant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", grants_path, "post" do
      assert_select "input#grant_amount[name=?]", "grant[amount]"
      assert_select "input#grant_amount[name=?]", "grant[amount]"
      assert_select "input#grant_from[name=?]", "grant[from]"
      assert_select "input#grant_to[name=?]", "grant[to]"
    end
  end
end
