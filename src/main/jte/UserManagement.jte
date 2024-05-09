@import de.tschuehly.easy.spring.auth.user.EasyUser
@import static de.tschuehly.easy.spring.auth.user.UserController.*
@param java.util.List<EasyUser> easyUserList

<html lang="en">

<head>
    <title>TZ App</title>
    <link rel="stylesheet" href="/css/sakura.css" type="text/css">
    <script src="/htmx_1.9.11.js"></script>
    <script src="/htmx_debug.js"></script>
     <link rel="icon" type="image/x-icon" href="favicon.ico">
</head>
<body hx-ext="debug">
<main>
    <table>
        <thead>
        <tr>
            <th>
                uuid
            </th>
            <th>
                username
            </th>
            <th>
                password
            </th>
        </tr>
        </thead>
        <tbody id="${USER_TABLE_BODY_ID}">
        @for(var user: easyUserList)
            @template.userRow(easyUser = user)
        @endfor
        </tbody>
        <tfoot>
        <tr>
            <td colspan="4">
                <button hx-get="${CREATE_USER_MODAL}" hx-target="#${MODAL_CONTAINER_ID}">
                    Create new User
                </button>
            </td>
        </tr>
        </tfoot>
    </table>

</main>
</body>
<div id="${MODAL_CONTAINER_ID}" hx-on:$unsafe{CLOSE_MODAL_EVENT}="this.innerHTML = null">

</div>

</html>