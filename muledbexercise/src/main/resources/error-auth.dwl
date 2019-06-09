%dw 2.0
output application/json
---
{
	'Error': p('errors.auth.code'),
	'Message': p('errors.auth.message')
}