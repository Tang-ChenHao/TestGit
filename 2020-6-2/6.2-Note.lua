1、随机数
--获取随机数
math.randomseed(tostring(os.time()):reverse():sub(1, 6))
--获取随机数的范围
s = math.random(-1000,1000)

2、表的几种遍
 --通过迭代遍历表中的key与val
for key,val in pairs(tab) do
		str = str .. string.format("%s=%s",key,val)
		str = str ..'\n'
	end
pairs: 迭代 table，可以遍历表中所有的 key 可以返回 nil
ipairs: 迭代数组，不能返回 nil,如果遇到 nil 则退出

3、IO编程
--打开文件成功打开句柄失败返回nil
file=io.open(filename,mode)
mode:r只读文件必须存在,w只写打开清空文件,a附加写,r+可读可写文件必须存在,w+,a+
--关闭制定文件
io.close(filename)
--设置默认输入文件
io.input(filename)
--设置默认输出文件
io.output(filename)
--写入数据
io.write("...")
filename:write("...")
--读取文件内容
io.read()
filename:read(mode)
mode:*n读取一个数字，*a读取整个文件，*l读取下一行在文件末尾返回nil，number制定返回的字符个数
--返回一个临时文件句柄，该文件以更新模式打开，程序结束时自动删除
io.tmpfile()，file:tmpfile()
-- 向文件写入缓冲中的所有数据
io.flush(),file:flush()
-- 检测obj是否一个可用的文件句柄
io.type(file),file:type()
-- 设置和获取当前文件位置,成功则返回最终的文件位置(按字节),失败则返回nil加错误信�
file:seek(optional whence, optional offset)
参数 whence 值可以是:
“set”：从文件头开始
“cur”：从当前位置开始[默认]
“end”：从文件尾开始
offset：默认为0不带参数
file:seek()：则返回当前位置,
file:seek(“set”)：则定位到文件头,
file:seek(“end”)：则定位到文件尾并返回文件大小
