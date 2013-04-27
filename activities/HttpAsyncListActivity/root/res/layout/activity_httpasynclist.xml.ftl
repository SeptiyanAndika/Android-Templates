<FrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context=".${activityClass}">

    <ListView
        android:id="@+id/listView1"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:visibility="gone" >
    </ListView>

    <Button
        android:id="@+id/button1"
        style="?android:attr/buttonStyleSmall"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_gravity="center"
        android:text="Try Again"
        android:visibility="gone" />

    <LinearLayout
           android:id="@+id/loadingLayout"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_gravity="center" >

        <ProgressBar
            android:id="@+id/loading"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
  			style="?android:attr/android:progressBarStyleSmall"
  			android:indeterminate="true" />

        <TextView
            android:id="@+id/textMessage"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_marginLeft="5dp"
            android:text="Loading..."
            android:textAppearance="?android:attr/textAppearanceSmall" />

    </LinearLayout>

</FrameLayout>
