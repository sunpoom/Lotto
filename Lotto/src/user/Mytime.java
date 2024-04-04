package user;

import java.util.TimerTask;

public class Mytime extends TimerTask {

	public void run() {
		Draw draw = new Draw();
		LottoDAO lottoDAO = new LottoDAO();
		draw.lotto_draw();
		int rounding = draw.getRounding();

		int lotto_rand[] = draw.getRand_arr();

		lottoDAO.randlotto_insert(rounding, lotto_rand[0], lotto_rand[1], lotto_rand[2], lotto_rand[3], lotto_rand[4],
				lotto_rand[5], lotto_rand[6]);
	}

}
