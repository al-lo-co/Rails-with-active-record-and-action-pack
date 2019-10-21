class AddTodoItemToTodoList < ActiveRecord::Migration
  def change
    add_reference :todo_lists, :todo_item, index: true, foreign_key: true
  end
end
