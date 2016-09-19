class Employee

  def initialize(options = {})
    @name = options[:name]
    @title = options[:title]
    @salary = options[:salary]
    @boss = options[:boss]
  end

  def bonus(multiplier)
    salary * multiplier
  end

end
