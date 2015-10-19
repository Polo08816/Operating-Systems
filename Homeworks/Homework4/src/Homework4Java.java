/**
 * 
 */

/**
 * @author Kevin Kuo
 *
 */
public class Homework4Java implements Runnable{

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		for (int i = 0; i < 20; i++){
			(new Thread(new Homework4Java())).start();
		}
		
	}

	@Override
	public void run() {
		// TODO Auto-generated method stub
		long threadId = Thread.currentThread().getId();
		System.out.println("Hello World! Thread ID: " + threadId);
	}

}
