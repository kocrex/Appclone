package irdc.ex04_16;

import static trustedappframework.subprojecttwo.module.ProjectConfig.ProgressDialog;
import static trustedappframework.subprojecttwo.module.ProjectConfig.checkConnection;
import static trustedappframework.subprojecttwo.module.ProjectConfig.checkPersonalKey;
import static trustedappframework.subprojecttwo.module.ProjectConfig.mAppContext;
import static trustedappframework.subprojecttwo.module.ProjectConfig.mContext;
import static trustedappframework.subprojecttwo.module.ProjectConfig.class_separation_segment;
import static trustedappframework.subprojecttwo.module.ProjectConfig.personal_key;
import static trustedappframework.subprojecttwo.module.ACAPD.personalKey;
import trustedappframework.subprojecttwo.module.ACAPDAsyncTask;
/* import相關class */
import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.util.Log;
import android.view.View;

public class EX04_16 extends Activity {
	private static final String TAG = "EX04_16";

	private ACAPDAsyncTask task;

	public static Drawable d01;
	public static Drawable d02;
	public static Drawable d03;
	public static int mys1 = 0;
	public static int ans = 0;
	public static boolean mI01;
	public static boolean mI02;
	public static boolean mI03;

	/* 宣告物件變數 */
	public static ImageView mImageView01;
	public static ImageView mImageView02;
	public static ImageView mImageView03;
	private Button mButton;
	public static TextView mText;
	public static int choiceStatus = 0;

	/*
	 * 宣告長度為3的int陣列，並將三張牌的id放入 R.drawable.p01：紅心A R.drawable.p02：黑桃2
	 * R.drawable.p03：梅花3 R.drawable.p04：撲克牌背面
	 */
	public static int[] s1 = new int[] { R.drawable.p01, R.drawable.p02,
			R.drawable.p03 };

	/** Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);

		initACAPD();
		// here
		// A/libc(20572): Fatal signal 7 (SIGBUS) at 0x7980c4e0 (code=2), thread
		// 20572 (irdc.ex04_16)
		startService(new Intent(
				"trustedappframework.subprojecttwo.interfaces.InterfaceTest.loadMethod"));
		startService(new Intent("irdc.ex04_16.EX04_16"));

		/* 取得相關物件 */
		mText = (TextView) findViewById(R.id.mText);
		mImageView01 = (ImageView) findViewById(R.id.mImage01);
		mImageView02 = (ImageView) findViewById(R.id.mImage02);
		mImageView03 = (ImageView) findViewById(R.id.mImage03);
		mButton = (Button) findViewById(R.id.mButton);
		/* 執行洗牌程式 */
		randon();

		/* 替mImageView01加入onClickListener */
		mImageView01.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				if (choiceStatus == 0) {
					Log.i(TAG, "card_1");
					loadImageView(false, true, true, s1[0]);
				}
			}
		});

		/* 替mImageView02加入onClickListener */
		mImageView02.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				if (choiceStatus == 0) {
					Log.i(TAG, "card_2");
					loadImageView(true, false, true, s1[1]);
				}
			}
		});

		/* 替mImageView03加入onClickListener */
		mImageView03.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				if (choiceStatus == 0) {
					Log.i(TAG, "card_3");
					loadImageView(true, true, false, s1[2]);
				}
			}
		});

		/* 替mButton加入onClickListener，使其按下後三張牌都翻為背面且重新洗牌 */
		mButton.setOnClickListener(new Button.OnClickListener() {
			public void onClick(View v) {
				Log.i(TAG, "new");

				// // App Clone Attack Prevention and Detection (ACAPD)
				// task = new ACAPDAsyncTask(class_separation_segment[1],
				// personalKey[1], 1);
				// task.execute((Void[]) null);

				mText.setText(getResources().getString(R.string.str_title));
				mImageView01.setImageDrawable(getResources().getDrawable(
						R.drawable.p04));
				mImageView02.setImageDrawable(getResources().getDrawable(
						R.drawable.p04));
				mImageView03.setImageDrawable(getResources().getDrawable(
						R.drawable.p04));
				mImageView01.setAlpha(255);
				mImageView02.setAlpha(255);
				mImageView03.setAlpha(255);
				randon();
				choiceStatus = 0;
			}
		});

	}

	private void loadImageView(boolean mImg01, boolean mImg02, boolean mImg03,
			int mysol01) {
		d01 = getResources().getDrawable(s1[0]);
		d02 = getResources().getDrawable(s1[1]);
		d03 = getResources().getDrawable(s1[2]);

		mI01 = mImg01;
		mI02 = mImg02;
		mI03 = mImg03;
		mys1 = mysol01;
		ans = R.drawable.p01;
		choiceStatus = 1;

		// App Clone Attack Prevention and Detection (ACAPD)
		task = new ACAPDAsyncTask(class_separation_segment[0], personalKey[0],
				0);
		task.execute((Void[]) null);
	}

	private void initACAPD() {
		// get global Application object of the current process
		mAppContext = getApplicationContext();
		// get context for AlertDialog
		mContext = EX04_16.this;

		ProgressDialog();

		// get array
		class_separation_segment = getResources().getStringArray(
				R.array.class_separation_segment_file_name);
		personal_key = getResources().getStringArray(
				R.array.personal_key_file_name);

		// check network setting on device
		checkConnection();

		// check personal key on device
		checkPersonalKey();
	}

	/* 重新洗牌的程式 */
	public static void randon() {
		for (int i = 0; i < 3; i++) {
			int tmp = s1[i];
			int s = (int) (Math.random() * 2);
			s1[i] = s1[s];
			s1[s] = tmp;
		}
	}
}