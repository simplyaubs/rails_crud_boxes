class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string :size
      t.string :color
    end
  end
end
