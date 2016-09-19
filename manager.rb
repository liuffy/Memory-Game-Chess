require_relative 'employee'

class Manager
  extend Employee

  def initialize(employees)
    @employees = []
  end

  def bonus(multiplier)
    @employees.inject {|sum,employee_obj| sum + employee_obj.bonus(multiplier) }
  end

end
#
# ned = Employee.new({name: "Ned", title: "Founder", salary: 1_000_000})
darren = Employee.new()
shawna = Employee.new({name: "Shawna", title: "TA", salary: 12_000, boss: darren})
david = Employee.new({name: "David", title: "TA", salary: 10_000, boss: darren})


p david.bonus(3)
