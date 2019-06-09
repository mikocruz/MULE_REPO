%dw 2.0
output application/json
---
{
	UserName: payload.UserName[0],
	FullName: payload.FullName[0],
	Age: ((now() as Date) - (payload.BirthDate[0] as Date)).years,
	Gender: if (payload.Gender[0] == "M") "Male" else "Female",
	Date_Registered: payload.Date_Registered[0] as Date
}
