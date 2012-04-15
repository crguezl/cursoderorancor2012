#encoding: utf-8
class Dictionary
  attr_accessor :words
  def initialize(words = {})
    @words = words
  end

  def add(h)
    @words.merge!(h) # a
  end

  def definition_of(word)
    @words[word] 
  end

  def remove(word)
    @words.delete word  # no bang!
  end

  def to_s
    "DICTIONARY\n" +
    (@words.map { |x, y| "#{x} => #{y}"}).join("\n")
  end
end

if $0 ==  __FILE__ then
  d = Dictionary.new('casa' => 'un sitio para vivir')
  d.add('sillón' => ' Un sitio para descansar')
  d.add 'gallina' => 'animal que pone huevos'
  d.add 'perro' => 'fiel animal que ladra'
  puts d
  d.remove('sillón')
  puts d
end
