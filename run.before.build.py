f=open('conf.py',"r",encoding='utf-8') ;l1=f.readlines(); f.close();
l2=[]
siteGithubAcc ='COMMENT_SYSTEM_ID = "3a78ae5b081cad12fabf5effa5e15f5c"'
siteKashanuAcc='COMMENT_SYSTEM_ID = "ff6272aef368983159c1b695b80898ca"'

for li in l1:
  if li.find('SITE_URL = "http://yoosofan.') == 0: li2='#'+li
  elif li.find('#SITE_URL = "http://yoosofan.') == 0: li2=li[1:]
  elif li.find('#'+siteGithubAcc ) == 0: li2=li[1:]
  elif li.find('#'+siteKashanuAcc) == 0: li2=li[1:]
  elif li.find(siteKashanuAcc) == 0:     li2='#'+li
  elif li.find(siteGithubAcc ) == 0:     li2='#'+li
  else: li2=li
  l2.append(li2)
f=open("conf.py","w", encoding='utf-8'); f.writelines(l2); f.close()

'''
import os.path, time, datetime,jdatetime
print( "last modified: %s" % time.ctime(os.path.getmtime('conf.py')))
print(time.ctime(os.path.getmtime('conf.py')))
print(os.path.getmtime('conf.py'))
print(datetime.datetime.fromtimestamp(os.path.getmtime('conf.py')))


s1=jdatetime.datetime.fromtimestamp(os.path.getmtime('conf.py'))

print(s1.year,s1.month,s1.day,s1.hour,s1.minute,s1.second)
'''
