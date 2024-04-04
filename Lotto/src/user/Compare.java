package user;

public class Compare {
	static int Bounce;
	public int Comparison (int num_1, int num_2, int num_3,int num_4,int num_5,int num_6) {
		Draw draw=new Draw();
		int arr[]=new int[6];
		arr[0]=num_1;
		arr[1]=num_2;
		arr[2]=num_3;
		arr[3]=num_4;
		arr[4]=num_5;
		arr[5]=num_6;
		int lotto[]=draw.getRand_arr();
		int cnt=0;
		Bounce=0;
		for(int i=0; i<arr.length; i++) {
			for(int j=0; j<lotto.length-1; j++) {
				if(arr[i]==lotto[j]) {
					cnt++;
				}
			}
		}
		for(int i=0; i<arr.length; i++) {
			if(lotto[6]==arr[i]) {
				Bounce++;
			}
		}
		return cnt;
	}
	public static int getBounce() {
		return Bounce;
	}
	public static void setBounce(int bounce) {
		Bounce = bounce;
	}
}
