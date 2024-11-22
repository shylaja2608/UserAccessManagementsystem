<form action="SoftwareServlet" method="post">
    <label for="softwareName">Software Name:</label>
    <input type="text" id="softwareName" name="softwareName" required>
    
    <label for="description">Description:</label>
    <textarea id="description" name="description" required></textarea>
    
    <label>Access Levels:</label>
    <input type="checkbox" name="accessLevel" value="Read"> Read
    <input type="checkbox" name="accessLevel" value="Write"> Write
    <input type="checkbox" name="accessLevel" value="Admin"> Admin
    
    <button type="submit">Add Software</button>
</form>
