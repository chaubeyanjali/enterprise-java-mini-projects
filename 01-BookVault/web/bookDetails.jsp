<%@ page import="java.util.Iterator, javax.persistence. Persistence, java.util.List,myBook.Book, javax.persistence.EntityTransaction, 
         javax.persistence.EntityManager, javax.persistence.EntityManagerFactory" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
    private EntityManagerFactory eMF;
    private EntityManager eM;
    private EntityTransaction eT;
    List<Book> bookList;
%>

<%
    eMF = Persistence.createEntityManagerFactory("Practical9CPU");
    eM = eMF.createEntityManager();

    String submit = request.getParameter("AddBookInventory");
    if(submit != null && ("AddBookInventory").equals(submit)) {
        try {
            String ISBN = request.getParameter("ISBN");
            String BookTitle = request.getParameter("BookTitle");
            String Author = request.getParameter("Author");
            String Edition = request.getParameter("Edition");
            String PYear = request.getParameter("PYear");
            String Publisher = request.getParameter("Publisher");
            String Quantity = request.getParameter("Quantity");
            Book bk = new Book();
            bk.setISBN(ISBN);
            bk.setBookTitle(BookTitle);
            bk.setAuthor(Author);
            bk.setEdition(Edition);
            bk.setPYear(PYear);
            bk.setPublisher(Publisher);
            bk.setQuantity(Quantity);
            eT = eM.getTransaction();
            eT.begin();
            eM.persist(bk);
            eT.commit();
        } catch (RuntimeException e) {
            if(eT != null) eT.rollback();
            throw e;
        }
        response.sendRedirect("bookDetails.jsp");
        return;
        }
        try {
            bookList = eM.createQuery("SELECT b from Book b").getResultList();
        } catch (RuntimeException e) {
            throw e;
        }
        eM.close();
%>
<html>
    <head>
        <title>Book Details</title>
    </head>
    <body>
        <table border="1">
            <tr> <td colspan="8" align="center">
                <b>Click<a href="index.jsp"> Here</a> to Add More Books </b>
            </td></tr>
            <tr><td>Book No</td>
                <td>ISBN</td>
                <td>Book Name</td>
                <td>Author Name</td>
                <td>Edition</td>
                <td>Year</td>
                <td>Publisher</td>
                <td>Quantity</td> </tr>
<%
Iterator iterator = bookList.iterator();
while (iterator.hasNext()) {
Book objBk = (Book) iterator.next();
%>
            <tr>
                <td><b><%=objBk.getBookNo()%></b></td>
                <td><b><%=objBk.getISBN()%></b></td>
                <td><b><%=objBk.getBookTitle()%></b></td>
                <td><b><%=objBk.getAuthor()%></b></td>
                <td><b><%=objBk.getEdition()%></b></td>
                <td><b><%=objBk.getPYear()%></b></td>
                <td><b><%=objBk.getPublisher()%></b></td>
                <td><b><%=objBk.getQuantity()%></b></td>
            </tr>

<%
}
%>
       </table>
    </body>
</html>
