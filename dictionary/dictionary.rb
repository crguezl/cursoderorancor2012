#encode: utf8
class Dictionary
  attr_accessor :words
  def initialize(words = {})
    @words = words
  end

  def add(h)
    # @words[word] = definition
    @words.merge!(h) # a
  end

  def definition_of(word)
    @words[word] 
  end

  def remove(word)
    @words.delete word  # no bang!
  end

end

if $0 ==  __FILE__ then
  d = Dictionary.new('casa' => 'un sitio para vivir')
  d.add('sillon' => ' Un sitio para descansar')
  d.add 'gallina' => 'animal que pone huevos'
  d.add 'perro' => 'fiel animal que ladra'
  puts d.inspect
  d.remove('sillon')
  puts d.inspect
end
