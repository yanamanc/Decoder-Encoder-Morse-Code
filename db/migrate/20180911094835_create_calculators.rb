class CreateCalculators < ActiveRecord::Migration[5.0]
  def change
    create_table :calculators do |t|
      t.integer :title

      t.timestamps
    end
  end
end
