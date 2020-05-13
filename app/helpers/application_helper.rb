module ApplicationHelper
  def task_progress(task_count, task_done_count)
    (100 * task_done_count) / task_count
  end
end
