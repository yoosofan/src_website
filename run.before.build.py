import os.path, time, datetime,jdatetime
print( "last modified: %s" % time.ctime(os.path.getmtime('conf.py')))
print(time.ctime(os.path.getmtime('conf.py')))
print(os.path.getmtime('conf.py'))
print(datetime.datetime.fromtimestamp(os.path.getmtime('conf.py')))


s1=jdatetime.datetime.fromtimestamp(os.path.getmtime('conf.py'))

print(s1.year,s1.month,s1.day,s1.hour,s1.minute,s1.second)
