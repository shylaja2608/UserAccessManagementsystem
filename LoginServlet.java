WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        try (Connection conn = DatabaseUtil.getConnection()) {
            String sql = "SELECT role FROM users WHERE username = ? AND password = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password); 
       ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                String role = rs.getString("role");
                
                // Create session
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                session.setAttribute("role", role);
              // Redirect based on role
                if ("Employee".equals(role)) {
                    response.sendRedirect("requestAccess.jsp");
                } else if ("Manager".equals(role)) {
                    response.sendRedirect("pendingRequests.jsp");
                } else if ("Admin".equals(role)) {
                    response.sendRedirect("createSoftware.jsp");
                }
            } else {
                response.sendRedirect("login.jsp?error=Invalid+credentials");
            }
        } catch (SQLException e) {
          e.printStackTrace();
        }
    }
}
                
