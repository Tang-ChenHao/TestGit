function getRandomS(n)
	local t = {
		"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
		"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
		}
	local s = ""
	for i =1, n do
		s = s .. t[math.random(#t)]
	end;
	return s
end


function getRandomN()
	local s,d
	s = math.random(-1000,1000)
	d = math.random(-1000,1000)
	return s,d
end


function getTableS(tab,getRandoS)
	local s,d
	for k=1,20 do
		s=getRandomS(math.random(6,10))
		d=getRandomS(math.random(6,10))
		tab[s]=d
	end
end

function getTableN(tab,getRandomN)
	for k=1,20 do
		s,d = getRandomN()
		tab2[s]=d
	end
end

tab={}
tab2={}
getTableS(tab,getRandomS)
getTableN(tab2,getRandomN)
for key,val in pairs(tab) do
	str = string.format("¼ü£º%10s  ¼üÖµ£º%6s",key,val)
	print(str)
end


print("---------------")
for key,val in pairs(tab2) do
	str = string.format("¼ü£º%10s  ¼üÖµ£º%6s",key,val)
	print(str)
end





