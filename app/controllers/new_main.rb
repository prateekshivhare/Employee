arr=["apple",10,"banana",8,"peaches",20,"raspberries",50]
h={}
for i in 0..arr.length-1
  
  h[arr[i]]=arr[i+1] if (i%2==0)
end
puts"#{h}"