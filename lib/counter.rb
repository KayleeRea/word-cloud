class Counter
  def initialize(data)
    @data = data
  end

  def words
  @data.each do |x|
    p x[1]
  end
  end
end