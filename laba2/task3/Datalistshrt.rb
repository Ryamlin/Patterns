require_relative 'DataList'
class DataListStudent_short<DataList
  private

  def get_names
    ["num","initials","contact","git"]
  end

  def get_data
    count=1
    matrix=[]
    self.list_students.each do |elem|
      matrix.push([count,elem.short_name,elem.contact,elem.git,elem.id])
      count+=1
    end
    matrix
  end
end
