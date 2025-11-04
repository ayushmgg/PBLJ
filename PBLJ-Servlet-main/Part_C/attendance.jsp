<html>
<head><title>Student Attendance</title></head>
<body>
<h2>Mark Attendance</h2>
<form action="AttendanceServlet" method="post">
  Roll No: <input type="text" name="roll_no"><br><br>
  Name: <input type="text" name="name"><br><br>
  Status: 
  <select name="status">
    <option>Present</option>
    <option>Absent</option>
  </select><br><br>
  <input type="submit" value="Submit">
</form>
</body>
</html>
