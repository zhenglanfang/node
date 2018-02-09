#! /usr/bin/python
# coding:utf-8
'''
使用闭包实现计数器
'''

def generate_counter(func):
	cont = [0]
	def inner(*args,**kwargs):
		result = func(*args,**kwargs)
		if result:
			cont[0] = cont[0] + 1
			print '第%s条数据插入成功！'%(cont[0])
		return result
	return inner

@generate_counter
def test(data):
	print(data)
	return 1


if __name__ == '__main__':
	test(1)
	test(2)