
import java.io.File;
import java.io.IOException;

public class CreateSQLFiles {
    public static void main(String[] args) {
        for (int i = 1; i <= 24; i++) {
            String fileName = "task_" + i + ".sql";
            File file = new File(fileName);

            try {
                if (file.createNewFile()) {
                    System.out.println("File created: " + fileName);
                } else {
                    System.out.println("File already exists: " + fileName);
                }
            } catch (IOException e) {
                System.out.println("An error occurred while creating the file: " + fileName);
                e.printStackTrace();
            }
        }
    }
}

