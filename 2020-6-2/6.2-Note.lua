1¡¢Ëæ»úÊı
--»ñÈ¡Ëæ»úÊı
math.randomseed(tostring(os.time()):reverse():sub(1, 6))
--»ñÈ¡Ëæ»úÊıµÄ·¶Î§
s = math.random(-1000,1000)

2¡¢±íµÄ¼¸ÖÖ±é
 --Í¨¹ıµü´ú±éÀú±íÖĞµÄkeyÓëval
for key,val in pairs(tab) do
		str = str .. string.format("%s=%s",key,val)
		str = str ..'\n'
	end
pairs: µü´ú table£¬¿ÉÒÔ±éÀú±íÖĞËùÓĞµÄ key ¿ÉÒÔ·µ»Ø nil
ipairs: µü´úÊı×é£¬²»ÄÜ·µ»Ø nil,Èç¹ûÓöµ½ nil ÔòÍË³ö

3¡¢IO±à³Ì
--´ò¿ªÎÄ¼ş³É¹¦´ò¿ª¾ä±úÊ§°Ü·µ»Ønil
file=io.open(filename,mode)
mode:rÖ»¶ÁÎÄ¼ş±ØĞë´æÔÚ,wÖ»Ğ´´ò¿ªÇå¿ÕÎÄ¼ş,a¸½¼ÓĞ´,r+¿É¶Á¿ÉĞ´ÎÄ¼ş±ØĞë´æÔÚ,w+,a+
--¹Ø±ÕÖÆ¶¨ÎÄ¼ş
io.close(filename)
--ÉèÖÃÄ¬ÈÏÊäÈëÎÄ¼ş
io.input(filename)
--ÉèÖÃÄ¬ÈÏÊä³öÎÄ¼ş
io.output(filename)
--Ğ´ÈëÊı¾İ
io.write("...")
filename:write("...")
--¶ÁÈ¡ÎÄ¼şÄÚÈİ
io.read()
filename:read(mode)
mode:*n¶ÁÈ¡Ò»¸öÊı×Ö£¬*a¶ÁÈ¡Õû¸öÎÄ¼ş£¬*l¶ÁÈ¡ÏÂÒ»ĞĞÔÚÎÄ¼şÄ©Î²·µ»Ønil£¬numberÖÆ¶¨·µ»ØµÄ×Ö·û¸öÊı
--·µ»ØÒ»¸öÁÙÊ±ÎÄ¼ş¾ä±ú£¬¸ÃÎÄ¼şÒÔ¸üĞÂÄ£Ê½´ò¿ª£¬³ÌĞò½áÊøÊ±×Ô¶¯É¾³ı
io.tmpfile()£¬file:tmpfile()
-- ÏòÎÄ¼şĞ´Èë»º³åÖĞµÄËùÓĞÊı¾İ
io.flush(),file:flush()
-- ¼ì²âobjÊÇ·ñÒ»¸ö¿ÉÓÃµÄÎÄ¼ş¾ä±ú
io.type(file),file:type()
-- ÉèÖÃºÍ»ñÈ¡µ±Ç°ÎÄ¼şÎ»ÖÃ,³É¹¦Ôò·µ»Ø×îÖÕµÄÎÄ¼şÎ»ÖÃ(°´×Ö½Ú),Ê§°ÜÔò·µ»Ønil¼Ó´íÎóĞÅÏ
file:seek(optional whence, optional offset)
²ÎÊı whence Öµ¿ÉÒÔÊÇ:
¡°set¡±£º´ÓÎÄ¼şÍ·¿ªÊ¼
¡°cur¡±£º´Óµ±Ç°Î»ÖÃ¿ªÊ¼[Ä¬ÈÏ]
¡°end¡±£º´ÓÎÄ¼şÎ²¿ªÊ¼
offset£ºÄ¬ÈÏÎª0²»´ø²ÎÊı
file:seek()£ºÔò·µ»Øµ±Ç°Î»ÖÃ,
file:seek(¡°set¡±)£ºÔò¶¨Î»µ½ÎÄ¼şÍ·,
file:seek(¡°end¡±)£ºÔò¶¨Î»µ½ÎÄ¼şÎ²²¢·µ»ØÎÄ¼ş´óĞ¡
