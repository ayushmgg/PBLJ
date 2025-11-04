import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class AttendanceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        int roll = Integer.parseInt(request.getParameter("roll_no"));
        String name = request.getParameter("name");
        String status = request.getParameter("status");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/college", "root", "password");
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO attendance VALUES (?, ?, ?)");
            ps.setInt(1, roll);
            ps.setString(2, name);
            ps.setString(3, status);
            ps.executeUpdate();

            out.println("<h3>Attendance Recorded Successfully!</h3>");
            con.close();
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
    }
}
