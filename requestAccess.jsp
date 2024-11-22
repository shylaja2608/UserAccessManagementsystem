<form action="RequestServlet" method="post">
    <label for="softwareName">Software Name:</label>
    <select id="softwareName" name="softwareId">
        <!-- Dynamically populate options from database -->
    </select>
    
    <label for="accessType">Access Type:</label>
    <select id="accessType" name="accessType">
        <option value="Read">Read</option>
        <option value="Write">Write</option>
        <option value="Admin">Admin</option>
    </select>
    
    <label for="reason">Reason:</label>
    <textarea id="reason" name="reason" required></textarea>
    
    <button type="submit">Request Access</button>
</form>
