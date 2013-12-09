class ChangeGrantStartToStarts < ActiveRecord::Migration
  def change
    rename_column :grants, :start, :starts
  end
end
