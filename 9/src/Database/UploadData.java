package Database;

import Model.AuthorItem;
import Model.BookItem;
import org.omg.CORBA.Current;

import java.awt.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UploadData
{
    static DataBaseConnector connector = new DataBaseConnector();

    public int UploadNewAuthor(AuthorItem author)
    {
        FetchData down = new FetchData();
        connector.ConnectDataBase();
        PreparedStatement pst = null;
        ResultSet rst = null;
        String INSERT_SQL = "INSERT INTO Author(AuthorID,Name,BirthDate,Country,AuImageUrl) VALUES(?,?,?,?,?)";
        try
        {
            pst = connector.connect.prepareStatement(INSERT_SQL);
            int ret = down.FetchNextID() + 1;
            pst.setInt(1,down.FetchNextID()+1);
            pst.setString(2,author.Name);
            pst.setString(3, author.BirthDate);
            pst.setString(4,author.Country);
            pst.setString(5,author.AuImageUrl);
            if (pst.executeUpdate() == 1)
            {
                return ret;
            }
            else
            {
                return 0;
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
            return 0;
        }
    }

    public boolean UploadNewBook(int AuthorId, BookItem book)
    {
        ArrayList<Integer> ids = new ArrayList<>();
        connector.ConnectDataBase();
        PreparedStatement pst = null;
        ResultSet rst = null;
        String INSERT_SQL = "INSERT INTO Book(ISBN,Name,AuthorID,Author,Publisher,PublishDate,Price,ImageUrl) VALUES(?,?,?,?,?,?,?,?)";
        try
        {
            pst = connector.connect.prepareStatement(INSERT_SQL);
            pst.setString(1,book.ISBN);
            pst.setString(2,book.Name);
            pst.setInt(3,AuthorId);
            pst.setString(4,book.Author);
            pst.setString(5,book.Publisher);
            pst.setString(6,book.PublishDate);
            pst.setFloat(7,book.price);
            pst.setString(8, book.ImageUrl);
            return pst.executeUpdate() == 1;
        }
        catch (SQLException e)
        {
            e.printStackTrace();
            return false;
        }
    }

    public boolean EditBookInfo(BookItem book,String ISBN)
    {
        connector.ConnectDataBase();
        PreparedStatement pst = null;
        String UPDATE_SQL = "UPDATE Book SET Name=?,ImageUrl=?,Price=?,Publisher=?,PublishDate=? WHERE ISBN=?";
        boolean flag = false;
        try {
            pst = connector.connect.prepareStatement(UPDATE_SQL);
            pst.setString(1, book.Name);
            pst.setString(2, book.ImageUrl);
            pst.setFloat(3, book.price);
            pst.setString(4, book.Publisher);
            pst.setString(5,book.PublishDate);
            pst.setString(6,book.ISBN);
            int i = pst.executeUpdate();
            if (i == 1) {
                flag = true;
            }
            pst.close();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return flag;
    }
}
