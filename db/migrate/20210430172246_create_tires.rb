class CreateTires < ActiveRecord::Migration[6.1]
  def change
    create_table :tires do |t|
      t.string :marca
      t.string :rin
      t.references :owner, polymorphic: true, index:true

      t.timestamps
    end
  end
end
