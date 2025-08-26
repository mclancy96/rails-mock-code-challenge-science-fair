class RenameLocaitonsToPizzerias < ActiveRecord::Migration[7.1]
  def change
    rename_table :locations, :pizzerias
  end
end
