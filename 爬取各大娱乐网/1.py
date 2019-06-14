from bs4 import BeautifulSoup
import urllib.request
import pymysql
import datetime
import time
import threading
now_time = datetime.datetime.now().strftime('%m-%d')
sqlhost = input("输入数据库地址：")
sqluser = input("输入数据库账号：")
sqlpass = input("输入数据库密码：")
sqldb = input("输入数据库名：")
settime = input("输入多久执行一次（秒）：")
# 连接database
#conn = pymysql.connect(host="127.0.0.1", user="root",password="root",database="daohang",charset="utf8")
conn = pymysql.connect(host=sqlhost, user=sqluser,password=sqlpass,database=sqldb,charset="utf8")
# 得到一个可以执行SQL语句的光标对象
cursor = conn.cursor()
# 定义要执行的SQL语句
def insertdh(title,time,taburl,user,index):
	time=pymysql.escape_string(time);
	index=pymysql.escape_string(index);
	title=pymysql.escape_string(title);
	taburl=pymysql.escape_string(taburl);
	user=pymysql.escape_string(user);
	selsql='select * from yq_dh_content where title="'+title+'" and user="'+user+'"'
	cursor.execute(selsql)
	info = cursor.fetchall()
	if len(info)<=0:
		sql = 'insert into yq_dh_content set `title`="'+title+'" ,`time`="'+time+'",`class`="'+index+'",`from`="'+taburl+'",`user`="'+user+'"'
		# 执行SQL语句
		if cursor.execute(sql):
			print("新增一条");
def xd0():	#小刀娱乐网
	url1='https://www.xd0.com'
	resp=urllib.request.urlopen(url1)
	html=resp.read()
	soup = BeautifulSoup(html,'html.parser',from_encoding='utf-8');
	links = soup.find_all('li',class_="column half");
	for i in links:
		if i.find("span").get_text()==now_time:
			taburl=url1+i.find("a").attrs["href"]	#地址
			title=i.find("a").get_text()		#标题
			insertdh(title,now_time,taburl,"admin",'1')
def iqshw():	#爱Q生活网
	url1='https://www.iqshw.com'
	resp=urllib.request.urlopen(url1)
	html=resp.read()
	soup = BeautifulSoup(html,'html.parser',from_encoding='GBK');
	links = soup.find_all('div',class_="news-comm-wrap")[0].find_all("ul",class_="f_l")[0].find_all("li");
	for i in links:
		if i.find("span"):
			if i.find("span").get_text()==now_time:
					taburl=url1+i.find("a").attrs["href"]	#地址
					title=i.find("a").get_text()		#标题
					insertdh(title,now_time,taburl,"admin",'2')
def z115():		#115z
	url1='https://www.115z.com'
	resp=urllib.request.urlopen(url1)
	html=resp.read()
	soup = BeautifulSoup(html,'html.parser',from_encoding='GBK');
	links = soup.find_all('div',class_="r-content")[0].find("ul").find_all("li");
	for i in links:
		if i.find("a").find("i"):
			print("绕过一条广告");
		else:
			if i.find("font").get_text()==now_time:
				taburl=url1+i.find("a").attrs["href"]	#地址
				title=i.find("a").get_text()		#标题
				insertdh(title,now_time,taburl,"admin",'3')
def xkw():		#小K网
	url1='https://www.kjsv.com'
	resp=urllib.request.urlopen(url1)
	html=resp.read()
	soup = BeautifulSoup(html,'html.parser',from_encoding='GBK');
	links = soup.find_all('li',id="li-box");
	for i in links:
		if i.find("div"):
			print("绕过一条广告")
		elif i.find("a"):
			if i.find("span").get_text()==now_time:
				taburl=url1+i.find("a").attrs["href"]	#地址
				title=i.find("a").get_text()		#标题
				insertdh(title,now_time,taburl,"admin",'4')
def qqyewu():		#qq业务乐园
	url1='http://www.qqyewu.com'
	resp=urllib.request.urlopen(url1)
	html=resp.read()
	soup = BeautifulSoup(html,'html.parser',from_encoding='GBK');
	links = soup.find('div',class_="link_con").find("ul").find_all("li");
	links2 = soup.find('div',class_="recommend bor").find("ul").find_all("li");
	for i in links:
		if i.find('span').find('em').get_text()==now_time:
			taburl=url1+i.find("a",class_="titname").attrs["href"]	#地址
			title=i.find("a",class_="titname").get_text()		#标题
			insertdh(title,now_time,taburl,"admin",'5')
	for i in links2:
		if i.find('span').find('em').get_text()==now_time:
			taburl=url1+i.find("a").attrs["href"]	#地址
			title=i.find("a").attrs['title']		#标题
			insertdh(title,now_time,taburl,"admin",'5')
def t1():
	xd0()
	iqshw()
	z115()
	xkw()
	qqyewu()
def sleeptime(hour,min,sec):
    return hour*3600 + min*60 + sec
second = sleeptime(0,0,int(settime))
while 1==1:
	time.sleep(second)
	t1()

# 关闭光标对象
cursor.close()
# 关闭数据库连接
conn.close()
