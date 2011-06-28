class AddColumnRemarksToRegisters < ActiveRecord::Migration
  def self.up
    add_column :registers, :remark, :string
  end

  def self.down
    remove_column :registers, :remark
  end
end
