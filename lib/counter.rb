class Counter
  def initialize(data)
    @data = data
  end

  def words
    hash = Hash.new { |hash, key| hash[key] = {:count => 0, :people => []}}
    @data.each { |name, word_line|
      word_line.each { |line|
        words = line.downcase.split(' ')
        words.each { |word|
          hash[word][:count] += 1
          hash[word][:people] << name unless hash[word][:people].map(&:downcase).include?(name.downcase)
        }
      }
    }
    hash
  end
end