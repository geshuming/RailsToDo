class TodoItem < ApplicationRecord
  belongs_to :todo_list

  def completed?
    !completed_at.blank?
  end

  def due_soon
    return due_at < Time.now ? 2 : due_at < (Time.now + 1.days) ? 1 : 0
  end
end