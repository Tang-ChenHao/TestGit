local mt = {}
--����mt.__addԪ��������ʵ����Ԫ����һ�����������ֵ��Ϊ���������Ԫ�غϲ��󷵻�һ���±�
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
--����t1��Ԫ��Ϊmt
setmetatable(t1,mt)

local t3 = t1 + t2
--���t3
local st = "{"
for _,v in pairs(t3) do
	st = st..v..", "
end
st = st.."}"
print(st)
