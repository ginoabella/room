class CreateRegisters < ActiveRecord::Migration
  def self.up
    create_table :registers do |t|
      t.integer :user_id
      t.string :code, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :registers
  end
end
