class RenameColorsInProduts < ActiveRecord::Migration
  def change
  	rename_column :products, :color, :colour
  end
end
