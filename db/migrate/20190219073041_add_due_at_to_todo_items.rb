class AddDueAtToTodoItems < ActiveRecord::Migration[5.2]
  def change
    add_column :todo_items, :due_at, :datetime
  end
end
