<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1> Users list </h1>
<br>


<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
    </tr>

<#list users as user>
    <tr>
        <td>${user.id}</td>
        <td>${user.name}</td>
    </tr>
</#list>

</table>
</body>
</html>