class AddIndexCodeToRegisters < ActiveRecord::Migration
  def self.up
    add_index :registers, :code,                :unique => true
  end

  def self.down
    remove_index :registers, :code
  end
end
