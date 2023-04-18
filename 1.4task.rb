def befMinEnd (a)
  l  = a.length
  min = a.min
  index = a.find_index(min)
  d = a[0..index-1]
  a[0..index-1] = a[index+1.. l]
  a[index+1..l] = d
  puts a
end


#1.25


def minax (a, b, c)
  newarr = a[b..c]
  max = newarr.max
  max
end


#1.1


def aftlastmax(a)
  return 0 if a.empty?
  maxind = a.rindex(a.max) #наивысший индекс
  return a.size - maxind-1
end



#1.37


def lessleft (a)
  a.filter {|x| a.index(x)!=0 && x<a[a.index(x)-1] }.map {|el| a.index(el)}
end



#1.49

def prime (num)
  return true if num==2
  return false if num<=1

  Math.sqrt(num).to_int.downto(2).each do |x|
    return false if (num%x)==0
  end
  true
end
def divide_list(list)
  list.inject([]) do |res_divide, el|
    divide = (2..el).inject([]) do |res,i|
      res << i if prime(i)&& el%i==0
      res
    end
    res_divide.concat(divide).uniq
  end
end

file_name = ARGV[0]
array = File.open(file_name) {|file| file.readlines.map(&:to_i)}

methods = [:aftlastmax, :befMinEnd, :minax,:lessleft, :divide_list]
puts '1. Количество элементов после максимального
2.Отображение элементов до минимального в конце массива
3. Максимальный из элементов в заданном интервале
4. Вывести индексы элементов, которые меньше своего левого соседа, и количество таких чисел
5. Построить список всех положительных простых делителей элементов списка без повторений'
puts array
puts(" ")
method_num = STDIN.gets.chomp.to_i
puts " "
unless method_num.between?(1, methods.length)
  puts 'No such method, file or directory!'
  return
end


if method_num==3
  puts 'Write bounds :'
  print"a="
  a=STDIN.gets.chomp.to_i
  print"b="
  b=STDIN.gets.chomp.to_i
  res = method(methods[method_num-1]).call(array,a,b)
else
  res = method(methods[method_num-1]).call(array)
end
puts res.inspect
if method_num==4
  puts "Количество таких чисел: #{res.size}"
end
