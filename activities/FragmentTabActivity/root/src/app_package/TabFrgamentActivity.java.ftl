package ${packageName};
import ${packageName}.fragment.FirstFragment;
import ${packageName}.fragment.SecondFragment;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTabHost;


public class ${activityClass} extends FragmentActivity {

	private FragmentTabHost mTabHost;
	  
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.${layoutName});
		  mTabHost = (FragmentTabHost)findViewById(android.R.id.tabhost);
	        mTabHost.setup(this, getSupportFragmentManager(), R.id.realtabcontent);

	        mTabHost.addTab(mTabHost.newTabSpec("first").setIndicator("First"),
	                FirstFragment.class, null);
	        mTabHost.addTab(mTabHost.newTabSpec("second").setIndicator("Second"),
	               SecondFragment.class, null);
	        
	}

}


