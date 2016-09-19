require 'byebug'
class Employee
  attr_accessor :name, :title, :salary, :boss

  def initialize(name, salary, title, boss = nil)
    @name, @salary, @title = name, salary, title
    self.boss = boss
  end

  def bonus(multiplier)
    self.salary * multiplier
  end

end

class Manager < Employee
  attr_accessor :employees

  def initialize(name, salary, title, boss = nil)
    super(name, salary, title)
    @employees = []
  end

  def bonus(multiplier)
      sum = 0
    @employees.each do |employee_obj|
      sum += employee_obj.salary * multiplier
    end
    sum
  end


  def add_employee(employees)
    employees.each do |subord|
      @employees << subord
    end
  end
end
#
# ned = Employee.new({name: "Ned", title: "Founder", salary: 1_000_000})

# @name, @salary, @title
ned = Manager.new("Darren", 1_000_000, "Founder")
shawna = Employee.new("Shawna", 12_000, "TA")
david = Employee.new("David", 10_000, "TA")
darren = Manager.new("Darren", 78_000, "TA manager")

shawna.boss = darren
david.boss = darren
darren.boss = ned
ned.add_employee([shawna, david, darren])
darren.add_employee([shawna,david])

p shawna.bonus(3)
p shawna.name
p ned.employees.length
p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000
