<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
  	xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    tools:context=".${activityClass}" >

    <FrameLayout
        android:id="@+id/realtabcontent"
        android:layout_width="match_parent"
        android:layout_height="0dip"
        android:layout_weight="1" />

    <android.support.v4.app.FragmentTabHost
        android:id="@android:id/tabhost"
        android:layout_width="match_parent"
        android:layout_height="wrap_content" >

        <FrameLayout
            android:id="@android:id/tabcontent"
            android:layout_width="0dp"
            android:layout_height="0dp"
            android:layout_weight="0" />
    </android.support.v4.app.FragmentTabHost>

</LinearLayout>
