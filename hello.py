def app(env, start_response):
	status = "200 OK"
	headers = [('Content-Type', 'text/plain')]
	res = '\n'.join(env['QUERY_STRING'].split('&')).encode()
	start_response(status, headers)
	return [res]
