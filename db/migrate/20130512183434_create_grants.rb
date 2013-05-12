class CreateGrants < ActiveRecord::Migration
  def change
    create_table :grants do |t|
      t.date :created
      t.float :amount
      t.references :from
      t.references :to
      t.date :start
      t.date :ends

      t.timestamps
    end
    add_index :grants, :from_id
    add_index :grants, :to_id
  end
end
