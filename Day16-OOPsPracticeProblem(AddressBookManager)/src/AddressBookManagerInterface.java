import java.io.File;
import java.io.IOException;

public interface AddressBookManagerInterface {
     public void newBook(String name) throws IOException;

     public File openBook(String fileName);

     public void showCSVFiles();
}
