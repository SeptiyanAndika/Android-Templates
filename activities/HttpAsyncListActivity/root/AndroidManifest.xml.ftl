<manifest xmlns:android="http://schemas.android.com/apk/res/android" >


    <uses-permission android:name="android.permission.INTERNET"/>
    
    <application>
        <activity android:name=".${activityClass}"
            <#if isNewProject>
            android:label="@string/app_name"
            <#else>
            android:label="@string/title_${simpleName}"
            </#if>
            android:windowSoftInputMode="adjustResize|stateVisible"
            <#if buildApi gte 16 && parentActivityClass != "">android:parentActivityName="${parentActivityClass}"</#if>>
            <#if parentActivityClass != "">
            <meta-data android:name="android.support.PARENT_ACTIVITY"
                android:value="${parentActivityClass}" />
            </#if>
        </activity>
    </application>

</manifest>
