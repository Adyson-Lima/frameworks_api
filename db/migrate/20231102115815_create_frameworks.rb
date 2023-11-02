class CreateFrameworks < ActiveRecord::Migration[7.1]
  def change
    create_table :frameworks do |t|
      t.string :name
      t.string :language

      t.timestamps
    end
  end
end
