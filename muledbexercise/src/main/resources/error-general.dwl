%dw 2.0
output application/json
---
{
	'Error': p('errors.general.code'),
	'Message': p('errors.general.message')
}