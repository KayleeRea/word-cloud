class Counter
  def initialize(data)
    @data = data
  end

  def words
    hash = {}
    @data.select do |name, word_line|
      word_line.each do |line|
        words = line.downcase.split(" ")
        words.each do |word|
          if hash.has_key?(word)
            count = hash[word][:count] += 1
            people = hash[word][:people] << name
            hash.merge!(word => {count: count, people: people})
          else
            hash.merge!(word => {count: 1, people: [name]})
          end
        end
      end
    end
    hash
  end
end


#
#def words
#  hash = {}
#  @data.select do |name, words|
#    words = words[1].split(' ')
#    words.each do |word|
#      if hash.has_key?(word)
#        count = hash[word][:count] += 1
#        people = hash[word][:people] << name
#        hash.merge!(word => {count: count, people: people})
#      else
#        hash.merge!(word => {count: 1, people: [name]})
#      end
#    end
#  end
#  hash
#end