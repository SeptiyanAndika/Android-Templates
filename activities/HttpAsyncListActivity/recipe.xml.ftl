<?xml version="1.0"?>
<recipe>
    <merge from="AndroidManifest.xml.ftl" />

    <merge from="res/values/styles.xml" />
            
    <copy from="libs/android-async-http-1.4.3.jar"
            to="libs/android-async-http-1.4.3.jar" />
                    
    <instantiate from="res/layout/activity_httpasynclist.xml.ftl"
                   to="res/layout/${layoutName}.xml" />

    <instantiate from="res/values/strings.xml.ftl"
                   to="res/values/strings_${simpleName}.xml" />

    <instantiate from="src/app_package/HttpAsyncListActivity.java.ftl"
                   to="${srcOut}/${activityClass}.java" />

    <open file="res/layout/${layoutName}.xml" />
</recipe>
