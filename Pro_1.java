package basic_programs;

public class Pro_1 {
	public static void main(String args[]) {
		//escape sequence to print backslash itself using \
		System.out.println("06\\09\\23");
		
		//escape sequence to print "" itself
		System.out.println("This is my \"first program\"");
		
		//printing numbers
		System.out.println(1234);
		
		System.out.println(+1234);
		
		System.out.println(-1234);
		
		//Finding sum
		System.out.println(1234+10);
		
		//printing as is
		System.out.println("1234+10");
		
		//printing w/ concatenation
		System.out.println("Durray"+"Nayab");
		
		//Always starts executing left to right
		//Finds " and joins like a string after "
		//O/p ReGrow12
		System.out.println("ReGrow"+1+2);
		
		//o/p 3ReGrow
		//calculates coz no "" in the beginning
		System.out.println(1+2+"ReGrow");
		
		//text after ""
		System.out.println(1+2+"ReGrow"+3+4);
		
		//Priority to (), it will calculate and then put in ""
		//addition happens first
		System.out.println(1+2+"ReGrow"+(3+4));
		
		
		//join char + string
		//o/p AReGrow12
		System.out.println('A'+"ReGrow"+1+2);
		
		//joining ASCII val + int
		//o/p 66ReGrow12
		System.out.println('A'+1+"ReGrow"+1+2);
		
		//o/p 131
		System.out.println('A'+'B');
		
		//o/p 132ReGrow12
		System.out.println('A'+'B'+1+"ReGrow"+1+2);
		
		System.out.println("ReGrow"+1+2+"Tech");
		
	}

}
