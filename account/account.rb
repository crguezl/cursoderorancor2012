class Account
  attr_accessor :balance

  def initialize(amount = 0)
    @balance = amount
  end

  def deposit(amount)
    raise "Negative amount" if amount < 0
    @balance += amount
  end

  def refund(amount)
    raise "Negative amount" if amount < 0
    raise "balance exceeded" if amount >= @balance
    @balance -= amount
  end

  def multiple_operations(amounts)
    @balance += amounts.inject :+
    #amounts.each { |x|
    #  @balance += x
    #}
  end

  @@bank_name = "Ruby Bank"
  def self.bank_name
    @@bank_name
  end

end

if $0 == __FILE__ then

  puts  Account.bank_name

  c = Account.new()
  c.deposit(30)
  puts c.inspect

  c.refund(10) # 20
  puts c.inspect

  c.multiple_operations [-1, -2, -3, 4] # 18
  puts c.inspect
end
