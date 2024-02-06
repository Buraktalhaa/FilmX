import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Scanner;

public class App {
    public static void main(String[] args) {
        String url = "jdbc:postgresql://localhost:5432/filmX";
        String username = "postgres";
        String password = "admin";

        Connection con = null;
        Statement st = null;
        ResultSet rs1 = null;
        ResultSet rs2 = null;
        Scanner sc = new Scanner(System.in);
        ArrayList<String> mailArray = new ArrayList<>();
        ArrayList<String> passArray = new ArrayList<>();

        try {
            // Bağlantıyı oluştur
            con = DriverManager.getConnection(url, username, password);

            // İlk Statement ve ResultSet
            st = con.createStatement();
            String sql1 = "SELECT email FROM users";
            rs1 = st.executeQuery(sql1);

            // ResultSet'ten veri okuma işlemleri
            while (rs1.next()) {
                String mailUser = rs1.getString("email");
                System.out.println("User mail: " + mailUser);
                mailArray.add(mailUser);
            }

            // İkinci Statement ve ResultSet
            st = con.createStatement(); // Yeni bir Statement oluşturuluyor
            String sql2 = "SELECT password FROM users";
            rs2 = st.executeQuery(sql2);

            // ResultSet'ten veri okuma işlemleri
            while (rs2.next()) {
                String passUser = rs2.getString("password");
                System.out.println("User password: " + passUser);
                passArray.add(passUser);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Kapatma işlemleri
            try {
                if (rs1 != null)
                    rs1.close();

                if (rs2 != null)
                    rs2.close();

                if (st != null)
                    st.close();
                if (con != null)
                    con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        do {
            System.out.println("Enter your email");
            String emailInput = sc.nextLine();
            System.out.println("Enter your password");
            String passInput = sc.nextLine();

            if (mailArray.contains(emailInput)) {
                if (passArray.contains(passInput)) {
                    System.out.println("Login Successful");
                }
                break;
            }
            System.out.println("Incorrect mail or password.Try again!");

        } while (true);

    }
    }

