class AddCityAndStateToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :city, :string
    add_column :organizations, :state, :string
  end
end
