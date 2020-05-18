module ApplicationHelper
  def task_progress(task_count, task_done_count)
    if task_done_count == 0 || task_count == 0
      0
    else
      (100 * task_done_count) / task_count
    end
  end
end
