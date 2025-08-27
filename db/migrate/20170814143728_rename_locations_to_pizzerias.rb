class RenameLocationsToFairs < ActiveRecord::Migration[7.1]
  def change
    rename_table :locations, :fairs
  end
end
