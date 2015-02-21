class Path

  attr_reader :point_mapper

  def initialize(str)
    @str = str
    @point_mapper = PointMapper.new(self)
  end

  def start_point 
    str.index('#')
  end

  def end_point
    str.rindex('#')
  end

  def vertical_path_length
    (end_point / row_length) - (start_point / row_length)
  end

  #is this an attribure of path? no. 
  def row_length
    str.index("\n") + 1
  end

  #a path knows it's points
  def points
    point_mapper.points
  end

  private 

  attr_reader :str 

end