class Party
  attr_accessor :guests

  def initialize(guests = [])
    @guests = guests
  end

  def add(name)
    @guests << name
  end

  def remove(name)
    @guests.delete(name)
  end
  alias :delete remove

  def first_guest
    @guests.first
    #@guests[0]
  end
  alias :first first_guest

  def last_guest
    @guests.last
    #@guests[-1]
  end
  alias :last last_guest

  def to_s
    @guests.join(', ')
  end
  alias :guest_list to_s
end

if $0 == __FILE__ then
  p = Party.new(%w{Luke Foo Bar Juan Pedro Antonio Maria Ana Isabel})
  p.add 'Pedro'
  p.add 'Natacha'
  puts p.guest_list
  puts p.first_guest
  puts p.last_guest
  p.remove 'Pedro'
  puts p.inspect
  p.delete 'Natacha'
  puts p
end
