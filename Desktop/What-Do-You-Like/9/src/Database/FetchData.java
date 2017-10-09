package Database;

import Model.AuthorItem;
import Model.BookItem;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

public class FetchData {
    static DataBaseConnector connector = new DataBaseConnector();

    public AuthorItem SearchAuthorByID(int id)
    {
        connector.ConnectDataBase();
        PreparedStatement pst = null;
        ResultSet rst = null;
        String SEARCH_AUTHOR_SQL = "SELECT Name,BirthDate,Country,AuImageUrl FROM Author where AuthorID = ?";
        try
        {
            pst = connector.connect.prepareStatement(SEARCH_AUTHOR_SQL);
            pst.setInt(1,id);
            rst = pst.executeQuery();
            AuthorItem author = new AuthorItem();
            while(rst.next())
            {
                author.BirthDate = rst.getString("BirthDate");
                author.Name = rst.getString("Name");
                author.AuthorID = id;
                author.Country = rst.getString("Country");
                author.AuImageUrl = rst.getString("AuImageUrl");
            }
            pst.close();
            return author;

        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return null;
    }

    public BookItem SearchBooksByISBN(String name)
    {
        BookItem ret = new BookItem();
        connector.ConnectDataBase();
        PreparedStatement pst = null;
        ResultSet rst = null;
        String SEARCH_BOOKS_SQL = "SELECT AuthorID,Author,Name,price,ImageUrl,PublishDate,Publisher,Comment FROM Book where ISBN = ?";
        try
        {
            pst = connector.connect.prepareStatement(SEARCH_BOOKS_SQL);
            pst.setString(1,name);
            rst = pst.executeQuery();
            BookItem book = new BookItem();
            while(rst.next())
            {
                book.ISBN = name;
                book.Author = rst.getString("Author");
                book.AuthorID = rst.getInt("AuthorID");
                book.Name = rst.getString("Name");
                book.price = rst.getFloat("price");
                book.ImageUrl = rst.getString("ImageUrl");
                book.PublishDate = rst.getString("PublishDate");
                book.Publisher = rst.getString("Publisher");
                book.Comment = rst.getString("Comment");
            }
            pst.close();
            return book;

        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<BookItem> SearchBooksByAuthorName(String name)
    {
        ArrayList<BookItem> ret = null;
        ret = new ArrayList<>();
        connector.ConnectDataBase();
        PreparedStatement pst = null;
        ResultSet rst = null;
        String SEARCH_SQL = "SELECT ISBN,AuthorID,Name,price,ImageUrl,PublishDate,Publisher,Comment FROM Book where Author = ?";
        try
        {
            pst = connector.connect.prepareStatement(SEARCH_SQL);
            pst.setString(1,name);
            rst = pst.executeQuery();
            while(rst.next())
            {
                BookItem book = new BookItem();
                book.ISBN = rst.getString("ISBN");
                book.Author = name;
                book.AuthorID = rst.getInt("AuthorID");
                book.Name = rst.getString("Name");
                book.price = rst.getFloat("price");
                book.ImageUrl = rst.getString("ImageUrl");
                book.PublishDate = rst.getString("PublishDate");
                book.Publisher = rst.getString("Publisher");
                book.Comment = rst.getString("Comment");
                ret.add(book);
            }
            pst.close();
            return ret;
        }
        catch (SQLException e)
        {
            e.printStackTrace();
            return null;
        }
    }

    //如果作者存在返回ID，如果作者不存在返回0
    public ArrayList<Integer> findIDByName(String name)
    {
        ArrayList<Integer> ids = new ArrayList<>();
        connector.ConnectDataBase();
        PreparedStatement pst = null;
        ResultSet rst = null;
        String SEARCH_SQL = "SELECT AuthorID,BirthDate,Country,AuImageUrl FROM Author where Name = ?";
        try
        {
            pst = connector.connect.prepareStatement(SEARCH_SQL);
            pst.setString(1,name);
            rst = pst.executeQuery();
            while(rst.next())
            {
                Integer id = new Integer(rst.getInt("AuthorID"));
                ids.add(id);
            }
            pst.close();
            return ids;

        }
        catch (SQLException e)
        {
            e.printStackTrace();
            return null;
        }
    }

    public boolean deleteBook(String ISBN)
    {
        connector.ConnectDataBase();
        PreparedStatement pst = null;
        int amount=0;
        String SEARCH_SQL = "DELETE FROM Book WHERE ISBN = ?";
        try {
            pst = connector.connect.prepareStatement(SEARCH_SQL);
            pst.setString(1, ISBN);
            amount = pst.executeUpdate();
            if(amount==1)
            {
                pst.close();
                return true;
            }
            else
            {
                return  false;
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public ArrayList<AuthorItem> SearchAllAuthor()
    {
        ArrayList<AuthorItem> ret = null;
        ret = new ArrayList<>();
        connector.ConnectDataBase();
        PreparedStatement pst = null;
        ResultSet rst = null;
        String SEARCH_SQL = "SELECT AuthorID,Name,BirthDate,Country,AuImageUrl FROM Author";
        try
        {
            pst = connector.connect.prepareStatement(SEARCH_SQL);
            rst = pst.executeQuery();
            while(rst.next())
            {
                AuthorItem author = new AuthorItem();
                author.AuthorID = rst.getInt("AuthorID");
                author.Name = rst.getString("Name");
                author.BirthDate = rst.getString("BirthDate");
                author.Country = rst.getString("Country");
                author.AuImageUrl = rst.getString("AuImageUrl");
                ret.add(author);
            }
            pst.close();
            return ret;
        }
        catch (SQLException e)
        {
            e.printStackTrace();
            return null;
        }
    }


    public ArrayList<BookItem> SearchAllBooks()
    {
        ArrayList<BookItem> ret = null;
        ret = new ArrayList<>();
        connector.ConnectDataBase();
        PreparedStatement pst = null;
        ResultSet rst = null;
        String SEARCH_SQL = "SELECT ISBN,Author,AuthorID,Name,price,ImageUrl,PublishDate,Publisher,Comment FROM Book";
        try
        {
            pst = connector.connect.prepareStatement(SEARCH_SQL);
            rst = pst.executeQuery();
            while(rst.next())
            {
                BookItem book = new BookItem();
                book.ISBN = rst.getString("ISBN");
                book.Author = rst.getString("Author");
                book.AuthorID = rst.getInt("AuthorID");
                book.Name = rst.getString("Name");
                book.price = rst.getFloat("price");
                book.ImageUrl = rst.getString("ImageUrl");
                book.PublishDate = rst.getString("PublishDate");
                book.Publisher = rst.getString("Publisher");
                book.Comment = rst.getString("Comment");
                ret.add(book);
            }
            pst.close();
            return ret;
        }
        catch (SQLException e)
        {
            e.printStackTrace();
            return null;
        }
    }

    public int FetchNextID() {
        connector.ConnectDataBase();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String SEARCH_SQL = "select max(AuthorID) from Author;";
        int maxID=0;
        try
        {
            pst = connector.connect.prepareStatement(SEARCH_SQL);
            rs = pst.executeQuery();
            while (rs.next())
            {
                maxID = rs.getInt(1);//仅有一个数据
            }
            pst.close();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return maxID;
    }

}
