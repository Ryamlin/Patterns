require_relative 'Student'
require_relative 'Student_short'

st0=Student.new(**{first_name: "Александр",second_name: "Артёмович",last_name: 'Щекотункин',id:3, phone:'892314324472'})
puts st0
st1 = Student.new(**{first_name: "Иван", second_name: "Иванович",last_name: "Иванов",id:2,  email: "ivanintern3@mail.ru"})
puts st1
st2 = Student.new(**{first_name: "Самир", second_name: "Суренович",last_name: "Амарян",id:1,  email: "something@yandex.ru",
                     telegram: '@zaichik01', git: '@Sumire'})
puts st2
puts st2.validate?
puts st2.short_name
puts st1.get_info
st3=Student.from_json_str('{"first_name":"Султан", "second_name": "Сулейман", "last_name": "Хазретлили"}')
puts st3

st_sh1=StudentShort.new(5,'{"short_name": "Чернов К.К.", "git": "@sovietunion"}')
puts st_sh1

st_sh2=StudentShort.init_from_student(st3)
puts st_sh2
