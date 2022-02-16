# Set Up userChrome

1. Navigate to `about:support` using Firefox
2. Find `Profile Folder` and click `Open Folder`
3. Copy the folder `chrome` to the user profile folder of Firefox
4. Navigate to `about:config` and accept the risk
5. Search for `userprof` in the preference name search field
6. Double click on `toolkit.legacyUserProfileCustomizations.stylesheets` to
   toggle the value to `true`
7. The userChrome will get loaded on the next Firefox startup
