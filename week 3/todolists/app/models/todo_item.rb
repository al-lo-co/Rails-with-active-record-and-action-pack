class TodoItem < ActiveRecord::Base
  def self.display
    count = 0
    TodoItem.all.each do |ti|
      if ti.completed == true
        count += 1
      end
    end
    count
  end
end
