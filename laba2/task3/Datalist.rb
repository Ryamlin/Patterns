require_relative 'DataTable'
class DataList
  attr_writer :list_students
  def initialize(students)
    self.list_students=students
    self.selected_items=[]
  end

  #выделение элементов по номеру
  def select(numbers)
    self.selected_items<<numbers.to_i
  end
  #массив id выделенных элементов
  def get_select
    res=[]
    self.selected_items.each{|elem| res<<self.list_students[elem].id}
    self.selected_items=[]
    res
  end
  def getDataFromTable
    names_atribyte=get_names()
    data=get_data().unshift(names_atribyte)
    Data_table.new(data)
  end
  private
  attr_reader :list_students
  attr_accessor :selected_items
  def get_names
    raise NotImplementedError,"Overriden method"
  end
  def get_data
    raise NotImplementedError,"Overriden method"
  end


end
