<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Inventory</title>
    </head>
    <body>
        <form action="bookDetails.jsp" method="post">
            <table>
                <tr>
                    <td colspan="2" align="center"> <b>Make entry in Book Inventory</b> </td>
                </tr>
                <tr> 
                    <td>Enter ISBN: </td> <td><input name="ISBN" maxlength="35" size="35" /> </td>
                </tr>
                <tr> 
                    <td> Enter Book Title: </td> <td> <input name="BookTitle" maxlength="35" size="35" /> </td>
                </tr>
                <tr> 
                    <td> Enter Author Name: </td> <td> <input name="Author" maxlength="35" size="35" /> </td>
                </tr>
                <tr>
                    <td>Enter Edition No.: </td> <td><input name="Edition" maxlength="35" size="35" /> </td> 
                </tr>
                <tr>
                    <td>Enter Publishing Year(YYYY): </td> <td><input name="PYear" maxlength="35" size="35" /> </td>
                </tr>
                <tr>
                    <td>Enter Publisher Name: </td> <td><input name="Publisher" maxlength="35" size="35" /> </td>
                </tr>
                <tr>
                    <td>Enter Quantity: </td> <td><input name="Quantity" maxlength="35" size="35" /> </td>
                </tr>
                <tr> 
                    <td colspan="2">  <input type="submit" name="AddBookInventory" value="AddBookInventory" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>

