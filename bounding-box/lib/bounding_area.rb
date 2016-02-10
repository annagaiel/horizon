class BoundingArea

  def initialize(boxes)
    @boxes = boxes
  end

  def boxes_contain_point?(x, y)
    within_box = false
    @boxes.each do |box|
      if box.contains_point?(x, y)
        within_box = true
        break
      end
    end
    within_box
  end
end
