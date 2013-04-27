package ${packageName};

import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import android.os.Bundle;
import android.app.Activity;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.Toast;

public class  ${activityClass} extends Activity {

	ListView listView;

	LinearLayout loadingLayout;
	Button refresh;
	AsyncHttpClient client;
	String URL = "${nameUrl}";
	ArrayAdapter<String> adapter;
	List<String> ls;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.${layoutName});
		listView = (ListView) findViewById(R.id.listView1);

		loadingLayout = (LinearLayout) findViewById(R.id.loadingLayout);
		refresh = (Button) findViewById(R.id.button1);
		client = new AsyncHttpClient();
		ls = new ArrayList<String>();
		adapter = new ArrayAdapter<String>(this,
				android.R.layout.simple_list_item_1, ls);
		listView.setAdapter(adapter);
		refresh.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View arg0) {
				// TODO Auto-generated method stub
				getData();
			}
		});
		getData();
	
	}

	public void getData() {
		refresh.setVisibility(View.GONE);
		loadingLayout.setVisibility(View.VISIBLE);
		listView.setVisibility(View.GONE);
		
		client.get(URL, new AsyncHttpResponseHandler() {
			@Override
			public void onSuccess(String response) {
				try {
					JSONArray array = new JSONArray(response);
					for (int i = 0; i < array.length(); i++) {
						JSONObject obj = array.getJSONObject(i);
						ls.add(obj.getString("text"));
					}
					adapter.notifyDataSetChanged();
					listView.setVisibility(View.VISIBLE);
					loadingLayout.setVisibility(View.GONE);
				} catch (JSONException e) {
					refresh.setVisibility(View.VISIBLE);
					loadingLayout.setVisibility(View.GONE);
					Toast.makeText(${activityClass}.this, e.getMessage(), Toast.LENGTH_SHORT).show();
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}

			@Override
			public void onFailure(Throwable arg0, String arg1) {
				// TODO Auto-generated method stub
				refresh.setVisibility(View.VISIBLE);
				loadingLayout.setVisibility(View.GONE);
				Toast.makeText(${activityClass}.this, arg0.getMessage(), Toast.LENGTH_SHORT).show();
				//super.onFailure(arg0, arg1);
			}

		});
	}

}
