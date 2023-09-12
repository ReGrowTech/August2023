import java.util.*;
public class calculator {
    public static void main(String args[]){

        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the first number");
        int a = sc.nextInt();
        System.out.println("Enter the second number");
        int b = sc.nextInt();
        System.out.println("Enter the button");
        int button = sc.nextInt();

        switch(button){
            case 1: int sum = a+b;
            System.out.println(sum);
            break;
            case 2: int mul = a*b;
            System.out.println(mul);
            break;
            case 3: int sub = a-b;
            System.out.println(sub);
            break;
            case 4: int div = a/b;
            System.out.println(div);
            break;
            case 5: int mod = a%b;
            System.out.println(mod);
            break;
            default: System.out.println("Invalid Operation");

        }
      }
    
}
