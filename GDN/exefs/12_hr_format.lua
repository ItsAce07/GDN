local dateTable = os.date("*t", os.time()) -- gets the current date in local time
	 
-- taking a look inside dateTable:
dateTable = {
    year: 2018
    month: 8
    wday: 5 -- the current weekday starting from Sunday
    yday: 235 -- the number of days we are into the year (ranges from 1-365 or 366 if leap year)
    day: 23 -- current day of the month
    hour: 12 -- values from 1-24
    min: 0
    sec: 0
    isdst: true -- is daylight savings on?
}
-- Making a table to convert wday to the word format.
local days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
	 
-- Now you can simply use the dateTable like a regular table.
local message = string.format("Today is %s and it is d:d right now.", days[dateTable.wday], dateTable.hour, dateTable.min)
	 
print(message) --> "Today is Thursd