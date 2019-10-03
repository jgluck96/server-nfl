class AddSalaryToPickems < ActiveRecord::Migration[5.2]
  def change
    add_column :pickems, :potential, :float
  end
end
