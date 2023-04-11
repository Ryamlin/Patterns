def prime? (n)
  if n <= 1
    false
  elsif n == 2
    true
  else
    (2..n/2).none? { |i| n % i == 0}
  end
end

def NOD(a,b)
  if a<b
    then a,b = b,a
  end
  while a%b !=0
    a=a%b
    a,b=b,a
  end
  return b
end

def NumberPrime(k)
  col=0
  for i in 1..k
    if NOD(i,k)==1
      then col=col+1
    end
  end
  return col
end

#2 метод

def IsThreeDel(a)
  if a%3==0
    then return true
  else
    return false
  end
end
def SumOfNumbers(b)
  sum=0
  while b>0
    if IsThreeDel(b%10)==true
      then sum=sum+(b%10)
    end
    b=b/10
  end
  return sum
end
# 3 метод
#

def MaximalAmount(c,d)
  part=0
  while c>0
    if NOD(c%10,d)==1
     then part=part+1
    end
    c=c/10
  end
  return part
end
def MostAmount(e,g)
  temporary=0
  result=0
  if MaximalAmount(e,g)>temporary
    temporary=MaximalAmount(e,g)
    result=g
  end
  return result
end
def NeededDel(f)
  for i in 1..f
    if(f%i==0)
      then return MostAmount(f,i)
    end
  end
end
#puts(NeededDel(14))
