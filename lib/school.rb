class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_accessor :roster

  def add_student(name, grade)
    if roster[grade].nil?
      roster[grade] = []
      roster[grade] << name
    else
      roster[grade] << name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    new_hash = {}
    roster.each do |grade, names|
      names.sort
    end
    new_hash
  end
end
