<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Users list</title>
</head>
<body>
<h3> Users list </h3>
<input class="js-field" type="text">
<table cellspacing="2" border="1" cellpadding="5">
    <tr>
        <th>ID</th>
        <th>Name</th>
    </tr>
<#list users as user>
    <tr class="js-row">
        <td>${user.id}</td>
        <td>${user.name}</td>
    </tr>
</#list>
</table>
<br>
<a href="/">Add new User</a>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
const $field = $('.js-field');
const $rows = $('.js-row');

$field.on('input', () => {
  const keyword = $field.val().trim().toLowerCase();
  $rows.each((i, row) => {
    const $row = $(row);
    const $cols = $row.find('td');

    if ($cols.text().toLowerCase().indexOf(keyword) === -1) {
      $row.hide();
    } else {
      $row.show();
    }
  })
});
</script>
</body>
</html>