import java.io.File;
import java.io.IOException;
import java.util.Scanner;

public class Main {
     public static void main(String[] args) throws IOException {
          AddressBookManager manager = new AddressBookManager();
          AddressBook book = new AddressBook();
          File openedFile = null;
          Scanner inputs = new Scanner(System.in);
          int flag = 0;
          while (flag == 0) {
               System.out.print("\n**** Address Book *****\n" +
                       "1. Create New Book\n" +
                       "2. Open Address Book\n" +
                       "3. Add Person in Address Book\n" +
                       "4. Update or Delete a person\n" +
                       "5. Sort Records\n" +
                       "6. Close Address Book\n" +
                       "7. Exit\n" +
                       "Your Choice: ");
               int choice = inputs.nextInt();
               switch (choice) {
                    case 1:
                         System.out.print("Enter name for Address Book: ");
                         String abName = inputs.next();
                         manager.newBook(abName);
                         break;

                    case 2:
                         if (openedFile == null) {
                              System.out.println("Select from following files to Open:");
                              manager.showCSVFiles();
                              System.out.print("\nAddress Book Name: ");
                              String openFile = inputs.next();
                              openedFile = manager.openBook(openFile);
                         } else {
                              System.out.println("File Already open... close it first !\n");
                         }
                         break;
                    case 3:
                         if (openedFile == null) {
                              System.out.println("You Need to open file first to add person !\n");
                         } else {
                              Person person = new Person();
                              Address address = new Address();
                              System.out.print("Enter First Name: ");
                              person.setFirstName(inputs.next());
                              System.out.print("Enter Last Name: ");
                              person.setLastName(inputs.next());
                              System.out.print("Enter Phone Number: ");
                              person.setPhoneNumber(inputs.next());
                              System.out.print("Enter City: ");
                              address.setCity(inputs.next());
                              System.out.print("Enter State: ");
                              address.setState(inputs.next());
                              System.out.print("Enter Zip: ");
                              address.setZip(inputs.nextInt());
                              person.setAddress(address);
                              book.addPerson(openedFile, person);
                              break;
                         }
                         break;
                    case 4:
                         if (openedFile == null) {
                              System.out.println("You Need to open file first to perform edits !\n");
                         } else {
                              System.out.print("Edit Choices\n" +
                                      "1. Add Person in Address Book\n" +
                                      "2. Update Person info in Address Book\n" +
                                      "3. Delete Person from Address Book" +
                                      "\nChoice: ");
                              int editChoice = inputs.nextInt();
                              switch (editChoice) {
                                   case 1:


                                   case 2:
                                        System.out.print("Enter First Name: ");
                                        String fname = inputs.next();
                                        book.updatePerson(openedFile, fname);
                                        break;

                                   case 3:
                                        System.out.print("Enter first name to remove record: ");
                                        String name = inputs.next();
                                        book.deletePerson(openedFile, name);
                                        break;

                                   default:
                                        System.out.println("Invalid choice !!!\n");
                                        break;
                              }
                         }
                         break;

                    case 5:
                         if (openedFile == null) {
                              System.out.println("Open file first and then view records !\n");
                         } else {
                              System.out.print("Enter your choice to view\n" +
                                      "1. View by Last Name\n" +
                                      "2. View by zip\n" +
                                      "Choice: ");
                              int viewChoice = inputs.nextInt();
                              switch (viewChoice) {
                                   case 1:
                                        book.sortByLastName(openedFile);
                                        break;
                                   case 2:
                                        book.sortByZip(openedFile);
                                        break;
                                   default:
                                        System.out.println("Invalid Choice !!!\n");
                              }
                         }
                         break;

                    case 6:
                         if (openedFile == null) {
                              System.out.println("Nothing Open to Close !\n");
                         } else {
                              openedFile = null;
                              System.out.println("All files closed !\n");
                         }
                         break;

                    case 7:
                         flag = 1;
                         break;

                    default:
                         System.out.println("Invalid Choice !!!\n");
               }
          }
     }
}
