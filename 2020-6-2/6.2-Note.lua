1�������
--��ȡ�����
math.randomseed(tostring(os.time()):reverse():sub(1, 6))
--��ȡ������ķ�Χ
s = math.random(-1000,1000)

2����ļ��ֱ�
 --ͨ�������������е�key��val
for key,val in pairs(tab) do
		str = str .. string.format("%s=%s",key,val)
		str = str ..'\n'
	end
pairs: ���� table�����Ա����������е� key ���Է��� nil
ipairs: �������飬���ܷ��� nil,������� nil ���˳�

3��IO���
--���ļ��ɹ��򿪾��ʧ�ܷ���nil
file=io.open(filename,mode)
mode:rֻ���ļ��������,wֻд������ļ�,a����д,r+�ɶ���д�ļ��������,w+,a+
--�ر��ƶ��ļ�
io.close(filename)
--����Ĭ�������ļ�
io.input(filename)
--����Ĭ������ļ�
io.output(filename)
--д������
io.write("...")
filename:write("...")
--��ȡ�ļ�����
io.read()
filename:read(mode)
mode:*n��ȡһ�����֣�*a��ȡ�����ļ���*l��ȡ��һ�����ļ�ĩβ����nil��number�ƶ����ص��ַ�����
--����һ����ʱ�ļ���������ļ��Ը���ģʽ�򿪣��������ʱ�Զ�ɾ��
io.tmpfile()��file:tmpfile()
-- ���ļ�д�뻺���е���������
io.flush(),file:flush()
-- ���obj�Ƿ�һ�����õ��ļ����
io.type(file),file:type()
-- ���úͻ�ȡ��ǰ�ļ�λ��,�ɹ��򷵻����յ��ļ�λ��(���ֽ�),ʧ���򷵻�nil�Ӵ������
file:seek(optional whence, optional offset)
���� whence ֵ������:
��set�������ļ�ͷ��ʼ
��cur�����ӵ�ǰλ�ÿ�ʼ[Ĭ��]
��end�������ļ�β��ʼ
offset��Ĭ��Ϊ0��������
file:seek()���򷵻ص�ǰλ��,
file:seek(��set��)����λ���ļ�ͷ,
file:seek(��end��)����λ���ļ�β�������ļ���С
