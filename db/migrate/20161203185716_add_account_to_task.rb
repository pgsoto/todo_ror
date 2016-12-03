class AddAccountToTask < ActiveRecord::Migration
  def change
    add_reference :tasks, :account, index: true
  end
end
