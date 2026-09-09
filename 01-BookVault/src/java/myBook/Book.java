package myBook;
import javax.persistence.Column; import javax.persistence.Entity; import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType; import javax.persistence.Id; import javax.persistence.Table;
@Entity
@Table(name="book")
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="BookNo", unique=true, updatable=false)
    private Integer BookNo;
    @Column(name="ISBN")
    private String ISBN;
    @Column(name="BookTitle")
    private String BookTitle;
    @Column(name="Author")
    private String Author;
    @Column(name="Edition")
    private String Edition;
    @Column(name="PYear")
    private String PYear;
    @Column(name="Publisher")
    private String Publisher;
    @Column(name="Quantity")
    private String Quantity;
    public Book() { }
    public Integer getBookNo() { return BookNo; }
    public void setBookNo(Integer BookNo) { this.BookNo = BookNo; }
    public String getISBN() { return ISBN;}
    public void setISBN(String ISBN) { this.ISBN = ISBN; }
    public String getBookTitle() { return BookTitle; }
    public void setBookTitle(String BookTitle) { this.BookTitle = BookTitle; }
    public String getAuthor() { return Author; }
    public void setAuthor(String Author) { this.Author = Author; }
    public String getEdition() { return Edition; }
    public void setEdition(String Edition) { this.Edition = Edition; }
    public String getPYear() { return PYear; }
    public void setPYear(String PYear) { this.PYear = PYear;  }
    public String getPublisher() { return Publisher; }
    public void setPublisher(String Publisher) { this.Publisher = Publisher; }
    public String getQuantity() { return Quantity; }
    public void setQuantity (String Quantity) {  this.Quantity = Quantity; }
}


