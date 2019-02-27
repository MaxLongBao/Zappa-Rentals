class AddDetailsToInstrument < ActiveRecord::Migration[5.2]
  def change
    add_column :instruments, :name, :string
  end
end
