class AddTodoItemToUser < ActiveRecord::Migration
  def change
    add_reference :users, :todo_item, index: true, foreign_key: true
  end
end
