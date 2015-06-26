package irdc.ex06_02; 

/* import����class */
import android.app.Activity; 
import android.app.AlertDialog;
import android.content.BroadcastReceiver; 
import android.content.Context; 
import android.content.DialogInterface;
import android.content.Intent; 
import android.content.IntentFilter; 
import android.os.Bundle; 
import android.view.View; 
import android.widget.Button; 

public class EX06_02 extends Activity 
{ 
  /* �ܼƫŧi */
  private int intLevel;
  private int intScale; 
  private Button mButton01;
  private AlertDialog d;
  
  /* create BroadcastReceiver */
  private BroadcastReceiver mBatInfoReceiver=new BroadcastReceiver()
  {  
    public void onReceive(Context context, Intent intent) 
    { 
      String action = intent.getAction();  
      /* �p�G�����쪺action�OACTION_BATTERY_CHANGED�A
       * �N����onBatteryInfoReceiver() */
      if (Intent.ACTION_BATTERY_CHANGED.equals(action)) 
      { 
        intLevel = intent.getIntExtra("level", 0);  
        intScale = intent.getIntExtra("scale", 100); 
        onBatteryInfoReceiver(intLevel,intScale);
      }  
    } 
  };
   
  /** Called when the activity is first created. */ 
  @Override 
  public void onCreate(Bundle savedInstanceState) 
  { 
    super.onCreate(savedInstanceState); 
    /* ���Jmain.xml Layout */
    setContentView(R.layout.main); 
    
    /* ��l��Button�A�ó]�w���U�᪺�ʧ@ */
    mButton01 = (Button)findViewById(R.id.myButton1);  
    mButton01.setOnClickListener(new Button.OnClickListener() 
    { 
      @Override 
      public void onClick(View v) 
      { 
        /* ���U�@�Өt�� BroadcastReceiver�A�@���s���q���p�q���� */ 
        registerReceiver 
        ( 
          mBatInfoReceiver, 
          new IntentFilter(Intent.ACTION_BATTERY_CHANGED)
        ); 
      } 
    }); 
  }
  
  /* �d�I��ACTION_BATTERY_CHANGED�ɭn���檺method */
  public void onBatteryInfoReceiver(int intLevel, int intScale) 
  {
    /* create ���X����ܵ��� */
    d = new AlertDialog.Builder(EX06_02.this).create();
    d.setTitle(R.string.str_dialog_title); 
    /* �N���o���q���p�q��ܩ�Dialog�� */
    d.setMessage(getResources().getString(R.string.str_dialog_body)+ 
                 String.valueOf(intLevel * 100 / intScale) + "%");
    /* �]�w��^�D�e�������s */
    d.setButton(getResources().getString(R.string.str_button2),
                new DialogInterface.OnClickListener() 
      { 
        @Override
        public void onClick(DialogInterface dialog, int which)
        {
          /* �ϵ��UReceiver�A��������ܵ��� */ 
          unregisterReceiver(mBatInfoReceiver); 
          d.dismiss(); 
        } 
      }); 
    d.show(); 
  }
}