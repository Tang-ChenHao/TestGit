local mt = {}
--定义mt.__add元方法（其实就是元表中一个特殊的索引值）为将两个表的元素合并后返回一个新表
mt.__add = function(t1,t2)
	local temp = {}
	for _,v in pairs(t1) do
		table.insert(temp,v)
	end
	for _,v in pairs(t2) do
		table.insert(temp,v)
	end
	return temp
end
local t1 = {1,2,3}
local t2 = {2}
--设置t1的元表为mt
setmetatable(t1,mt)

local t3 = t1 + t2
--输出t3
local st = "{"
for _,v in pairs(t3) do
	st = st..v..", "
end
st = st.."}"
print(st)
