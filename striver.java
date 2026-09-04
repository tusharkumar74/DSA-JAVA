  import java.util.Scanner;

public class striver {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter your name: ");
        String name = sc.nextLine();   // String input

        System.out.print("Enter your age: ");
        int age = sc.nextInt();        // Integer input

        System.out.println("Hello " + name + ", your age is " + age);
    }
}