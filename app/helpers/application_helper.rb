module ApplicationHelper
  def task_progress(task_count, task_done_count)
    if task_done_count == 0 || task_count == 0
      0
    else
      (100 * task_done_count) / task_count
    end
  end

  def is_number_a_rgb_value(n)
    if n < 0
      n = 0
    elsif n > 255
      n = 255
    else
      n
    end
    return n
  end

  def rgb(r, g, b)
    r = is_number_a_rgb_value(r)
    g = is_number_a_rgb_value(g)
    b = is_number_a_rgb_value(b)

    hex_values = {
      '0' => 0,
      '1' => 1,
      '2' => 2,
      '3' => 3,
      '4' => 4,
      '5' => 5,
      '6' => 6,
      '7' => 7,
      '8' => 8,
      '9' => 9,
      'A' => 10,
      'B' => 11,
      'C' => 12,
      'D' => 13,
      'E' => 14,
      'F' => 15
    }

    p r
    p g
    p b

  end
end
