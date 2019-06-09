%dw 2.0
output application/json
---
{
	'Error': p('errors.userNotFound.code'),
	'Message': p('errors.userNotFound.message')
}