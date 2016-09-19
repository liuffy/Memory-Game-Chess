require_relative 'employee'

class Manager < Employee
  attr_accessor :employee

  def initialize(employee, employees)
    @employee = employee
    @employees = []
  end

  def bonus(multiplier)
    @employees.inject {|sum,employee_obj| sum + employee_obj.bonus(multiplier) }
  end

end
#
# ned = Employee.new({name: "Ned", title: "Founder", salary: 1_000_000})
darren = Manager.new([shawna, david], {name: "Darren", title: "TA manager" , salary: 78_000})
shawna = Employee.new({name: "Shawna", title: "TA", salary: 12_000, boss: darren})
david = Employee.new({name: "David", title: "TA", salary: 10_000, boss: darren})
darren = Manager.new([shawna, david], {name: "Darren", title: "TA manager" , salary: 78_000})

p david.bonus(3)
p darren.name
