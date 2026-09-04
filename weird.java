import java.util.*;
public class weird {
    public static void main(String args[]){
        Scanner sc = new Scanner(System.in);
        int n=sc.nextInt();
        
    if(n % 2 !=0){
        System.out.println("weird");
    }
    else{
        if(n>=2 && n <=5){
            System.out.println("not weird");
        }
        else 
            if (n >=6 && n <+20){
            System.err.println("weird");
        }
        else{
            System.out.println("weird");
        }
    }
    sc.close();
    }
}
