class RenameNicesToGoods < ActiveRecord::Migration[5.2]
  def change
    rename_table :nices, :goods
  end
end
