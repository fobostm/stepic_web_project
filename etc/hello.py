def app(env, start_response):
	status = "200 OK"
	headers = [('Content-Type', 'text/plain')]
	res = '\n\r'.join(env['QUERY_STRING'].split('&'))
	print(res)
	return [res]
