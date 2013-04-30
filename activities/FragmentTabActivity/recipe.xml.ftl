<?xml version="1.0"?>
<recipe>
    <merge from="AndroidManifest.xml.ftl" />

    <merge from="res/values/styles.xml" />
                    
    <instantiate from="res/layout/activity_tabmain.xml.ftl"
                   to="res/layout/${layoutName}.xml" />
                   
   <instantiate from="res/layout/fragment_first.xml.ftl"
                   to="res/layout/fragment_first.xml" />
                   
   <instantiate from="res/layout/fragment_second.xml.ftl"
                   to="res/layout/fragment_second.xml" />
                                             

    <instantiate from="src/app_package/TabFrgamentActivity.java.ftl"
                   to="${srcOut}/${activityClass}.java" />
    
     <instantiate from="src/app_package/fragment/FirstFragment.java.ftl"
                   to="${srcOut}/fragment/FirstFragment.java" />
                   
      <instantiate from="src/app_package/fragment/SecondFragment.java.ftl"
                   to="${srcOut}/fragment/SecondFragment.java" />
                                                

    <open file="res/layout/${layoutName}.xml" />
</recipe>
