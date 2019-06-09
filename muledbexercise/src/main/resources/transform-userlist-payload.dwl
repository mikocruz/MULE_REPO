%dw 2.0
output application/json
---
payload map ((object, index) -> {
	UserName: object.UserName,
	FullName: object.FullName,
	Age: ((now() as Date) - (object.BirthDate as Date)).years,
	Gender: if (object.Gender == "M") "Male" else "Female",
	Date_Registered: object.Date_Registered as Date
})
