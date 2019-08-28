class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.string :id_no
      t.string :type
      t.string :size

      t.timestamps
    end
  end
end
