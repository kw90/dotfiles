# Set Up userChrome

1. Navigate to `about:support` using Firefox
2. Find `Profile Folder` and click `Open Folder`
3. Open the semi-randomly-named folder containing the user profile
4. Create a `ln -e` link for the folder `chrome` to the user profile folder of
   Firefox
5. Navigate to `about:config` and accept the risk
6. Search for `userprof` in the preference name search field
7. Double click on `toolkit.legacyUserProfileCustomizations.stylesheets` to
   toggle the value to `true`
8. The userChrome will get loaded on the next Firefox startup
