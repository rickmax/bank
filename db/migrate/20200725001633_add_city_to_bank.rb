class AddCityToBank < ActiveRecord::Migration[5.2]
  def change
    add_reference :banks, :city, foreign_key: true
  end
end
