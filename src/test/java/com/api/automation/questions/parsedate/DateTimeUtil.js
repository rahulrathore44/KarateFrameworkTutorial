function doParsing(dateTime) {
	var SimpleDateFormat = Java.type("java.text.SimpleDateFormat");
	var dateFormat = new SimpleDateFormat(dateTime.patteren);
	var aDate = dateFormat.parse(dateTime.textDate);
	return dateFormat.format(aDate).toString()
}