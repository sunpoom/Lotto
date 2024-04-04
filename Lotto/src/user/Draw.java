package user;



public class Draw {
	
	static int rand_arr[]=new int[7];
	static int rounding=0;

	public static int getRounding() {
		return rounding;
	}

	public static int[] getRand_arr() {
		return rand_arr;
	}
	
	public void lotto_draw() {
		for(int i=0; i<rand_arr.length; i++) {
			int ran=(int)(1+45*Math.random());
			for(int j=0; j<=i; j++) {
				if(rand_arr[j]==ran) {
					j=-1;
					ran=(int)(1+45*Math.random());
				}
			}
			rand_arr[i]=ran;
		}
		rounding++;
	}
}
