# Permissions generator

This script allows you to manage Android and iOS permissions in a centralized way by directly modifying the AndroidManifest.xml for Android and Info.plist for iOS. It automatically checks for and adds the necessary permissions if they are not already present, ensuring that all permissions remain centralized and easy to manage in a single Dart file. This approach eliminates the need for manual editing of configuration files and ensures consistency across platforms.

## Features

	-	Centralized management of permissions for both Android and iOS.
	-	Automatically generates permission files that are included in the main manifest files.
	-	Easy to update or add new permissions by modifying the permissions.dart file.
	-	Reduces the risk of errors by avoiding manual editing of important configuration files.

## Prerequisites

	-	Dart should be installed.
	-	Flutter project with the following structure:
	-	android/app/src/main/AndroidManifest.xml
	-	ios/Runner/Info.plist

## Setup and Usage

### Step 1: Modify AndroidManifest.xml

To include the generated permission file for Android, you need to modify the android/app/src/main/AndroidManifest.xml file by adding an <include> directive.

Edit your AndroidManifest.xml to include the following line:
```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android" package="com.example.app">

    <!-- Include generated Android permissions -->
    <include src="AndroidManifestPermissions.xml" />

    <application
        android:allowBackup="true"
        android:icon="@mipmap/ic_launcher"
        android:label="MyApp">
    </application>

</manifest>
```
This line ensures that all permissions generated in the AndroidManifestPermissions.xml file are included in your AndroidManifest.

### Step 2: Generate and Update Permissions

Whenever you need to add or update permissions for your app, follow these steps:

	1.	Update permissions in the permissions.dart file. This file contains both Android and iOS permissions.
	2.	Run the script to regenerate the permission files: 
    ```dart run scripts/generate_permissions.dart```
     This will check and add any missing permissions directly into AndroidManifest.xml and Info.plist files with the updated permissions, ensuring that they are correctly configured without manual editing.