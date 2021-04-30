class CreateBikes < ActiveRecord::Migration[6.1]
  def change
    create_table :bikes do |t|
      t.string :marca
      t.string :modelo
      t.string :color

      t.timestamps
    end
  end
end
