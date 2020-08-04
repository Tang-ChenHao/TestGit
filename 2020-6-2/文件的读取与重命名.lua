math.randomseed(tostring(os.time()):reverse():sub(1, 6))

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
	local s,d,j
	for k=1,20 do
		s=getRandomS(math.random(6,10))
		j=math.random(1,10)
		if d<=5 then
			d=getRandomS(math.random(6,10))
		else
			d=math.random(-1000,1000)
		tab[s]=d
	end
end


function getTableN(tab,getRandomN)
	for k=1,20 do
		s,d = getRandomN()
		tab2[s]=d
	end
end


function writtenCon(tab)
	local str = ""
	local num = math.random(10000,99999)
	local namefile = string.format("playwhale-[%d].txt",num)
	for key,val in pairs(tab) do
		str = str .. string.format("%10s=%s",key,val)
		str = str ..'\n'
	end
	local d = string.format("./dir_test/%s",namefile)
	f = assert(io.open(d,'w'))
	f:write(str)
	f:close()
	str=""
end


function readFile()
	for k=1000,99999 do
		local name = string.format("playwhale-[%d].txt",k)
		local namefile = string.format("./dir_test/playwhale-[%d].txt",k)
		local nameNew = string.format("./dir_test/happyfish-[%d].txt",k)
		local file1=io.open(namefile,"r")
		if file1 then
			print("------",name,"------")
			io.input(file1)
			local str = file1:read("*a")
			print(str)
			io.close(file1)
			local file1 = os.rename(namefile,nameNew)
		end
	end
end

--[[
tab={}
os.execute("mkdir dir_test")
for k=1,20 do
	getTableS(tab,getRandomS)
	writtenCon(tab)
	tab={}
end
readFile()
print("===============")
]]--
