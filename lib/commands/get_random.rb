module GetRandom
  def self.randomize(array)
    rand(get_range(array))
  end

  class << self
    private

    def get_range(array)
      0...array.length
    end
  end
end
