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
      name_array = names.values_at(grade)
      new_hash[grade] = []
      new_hash[grade] << name_array
    end
    new_hash
  end
end
