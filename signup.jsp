<form action="SignUpServlet" method="post">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required>
    
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required>
    
    <!-- Default role is Employee -->
    <input type="hidden" name="role" value="Employee">
    
    <button type="submit">Sign Up</button>
</form>
