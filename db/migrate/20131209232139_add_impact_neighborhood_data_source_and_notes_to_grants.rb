class AddImpactNeighborhoodDataSourceAndNotesToGrants < ActiveRecord::Migration
  def change
    add_column :grants, :impact_area, :string
    add_column :grants, :impact_neighborhood, :string
    add_column :grants, :data_source, :string
    add_column :grants, :notes, :text
  end
end
