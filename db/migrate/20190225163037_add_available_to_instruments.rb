class AddAvailableToInstruments < ActiveRecord::Migration[5.2]
  def change
    add_column :instruments, :available, :boolean
  end
end
