class AddAgeToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :age, :integer
  end
end
