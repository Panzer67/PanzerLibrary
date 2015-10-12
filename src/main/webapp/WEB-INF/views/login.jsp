<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <style type="text/css">
            .errorblock {
                color: #ff0000;
                background-color: #ffEEEE;
                border: 3px solid #ff0000;
                padding: 8px;
                margin: 16px;
            }
        </style>
        <title>Login Page</title>

    </head>
    <body onload="document.f.j_username.focus();">
        <h3>PanzerLibrary login page</h3>
        <c:if test="${not empty error}">
            <div class="errorblock">
                Your login was unsuccessful.<br>
                Caused: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message }
            </div>
        </c:if>
        <c:if test="${not empty logout}">
            Your successfully logged out
        </c:if>

        <form action="j_spring_security_check" name="f" method="post">
            <table>
                <tr>
                    <td>User:</td>
                    <td><input type="text" name="j_username" value=""></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="j_password" ></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" name="Submit" value="Submit"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="reset" name="reset"></td>
                </tr>
            </table>
        </form>
    </body>
</html>