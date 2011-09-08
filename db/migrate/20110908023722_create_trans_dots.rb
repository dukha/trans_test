class CreateTransDots < ActiveRecord::Migration
  def self.up
    create_table :trans_dots do |t|
      t.string :name
      t.text :description
      t.boolean :do_this

      t.timestamps
    end
  end

  def self.down
    drop_table :trans_dots
  end
end
