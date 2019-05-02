def intersection(rectangle1, rectangle2)
  left_x = [rectangle1[:left_x], rectangle2[:left_x]].max
  right_x = [rectangle1[:left_x] + rectangle1[:width], rectangle2[:left_x] + rectangle2[:width]].min

  bottom_y = [rectangle1[:bottom_y], rectangle2[:bottom_y]].max
  top_y = [rectangle1[:bottom_y] + rectangle1[:height], rectangle2[:bottom_y] + rectangle2[:height]].min

  width = right_x - left_x
  height = top_y - bottom_y

  if width <= 0 || height <= 0
    return nil
  else
    return {left_x: left_x, bottom_y: bottom_y, width: width, height: height}
  end
end

rectangle1 = {
  left_x: 1,
  bottom_y: 1,
  width: 6,
  height: 3
}

rectangle2 = {
  left_x: 5,
  bottom_y: 2,
  width: 3,
  height: 6
}

p intersection(rectangle1, rectangle2)