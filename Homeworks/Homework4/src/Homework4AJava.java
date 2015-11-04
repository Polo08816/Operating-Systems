import java.io.*;
import java.util.*;


/**
 * @author Kevin Kuo
 *
 */
public class Homework4AJava implements Runnable{

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		new Thread(new Homework4AJava()).start();

	}
	
	@Override
	public void run() {
		// TODO Auto-generated method stub
		long threadId = Thread.currentThread().getId();
		System.out.println("Begin Thread! Thread ID: " + threadId);
		char c = 'y';
;
		//wait for escape character
		while(c != 'x'){
			try {
			    c = (char) System.in.read();
			} catch (IOException e) {
			    e.printStackTrace();
			}
			if (c == 'x'){
				break;
			}
		}
		
		threadId = Thread.currentThread().getId();
		System.out.println("End Thread! Thread ID: " + threadId);
		
	}

}
