#  Project Appium-Ruby for functional automation tests Android and IOS
xxxx

### Install Xcode

* Goto the Mac Appstore and search for Xcode and click the Get button.
* After installation, install the Commandline Tools.
* Open a terminal and run $ xcode-select --install

### Install Homebrew

* Open a terminal and run $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
* See additional install instructions [click here](https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Installation.md#installation) for further details 
* Test install by running $ brew --version. You should see something like Homebrew 1.3.2.

### Install Carthage

* Open a terminal and run $ brew install carthage
    * This is a dependency check for appium-doctor but not really needed for Android. Install it anyway as you may do iOS automation in the future.


### Install JAVA

* Open a terminal and verify java version: $java -version
    * If the version is less than 1.8 or the command is not recognized you need to install java.
    * If the version is 1.8 or greater then go to Ruby install.
* For java JDK download [click here](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
* Download and install jdk-8u144-macosx-x64.dmg
* Open Downloads folder and double click the DMG file.
* Double click the JDK 8 install icon.
* Click the Continue button.
* Click the Install button.
* Enter your password to install software on your system.

### Install Ruby

* DO NOT use the default system OSX Ruby. Install a newer version with a Ruby package manager RVM (below instructions) or RBENV.
* Open a terminal and check ruby version: $ ruby -v
    * If the version is less than 2.3 or the command is not recognized you need to install ruby.
        * Run $ \curl -sSL https://get.rvm.io | bash -s stable --ruby in terminal. This will install RVM (Ruby Version Manager) and install the latest Ruby version.
        * Run $ rvm list and see which ruby version was installed. Note the version number for next step.
        * Run rvm --default use 2.1.0 to set the version as default. e.g. 2.1.0 instead of 2.x.x...
        * For more informations about RVM [click here](https://rvm.io/rvm/install)

### Install Node 

* Open a terminal and run brew install node .
* Test install by running $ npm --version. Verify version 5.3.X or greater is returned.
* Test Node is installed by running $ node -v. Verify version 8.5.X or greater is returned.

### Install Android Studio

* For download [click here](https://developer.android.com/studio/#mac-bundle)
* Open downloads folder and double click the Android Studio DMG file.
* Drag and drop the Android Studio icon over to Applications folder. Close the install dialog.
* Open Finder and goto Applications folder. Double click Android Studio.
* Select "I do not have a previous version of studio or I do not want to import my settings" and click OK button.
* Click Next.
* Select Standard Installation and click the Next button.
* Click the Finish button.
* Enter password to allow HAXM to make changes to your system. HAXM is very import for emulator perforamce.
* Click the Finish button.

### Install Android 6.0 SDK API 23

* Click the Configure button. It's on the lower right side of the Android Studio welcome dialog.
* Click SDK Manager in the configuration dropdown.
* Select Android 6.0 SDK (Android 6.0 is the most commom SDK version used in devices around the world until start this tutorial). For get actual ranking [click here](https://www.appbrain.com/stats/top-android-sdk-versions) .
* Click the "Show Package Details" checkbox on lower right.
* Check the following SDK dependencies to install:
    * Android SDK Platform 23
    * Sources for Android 23
    * Intel x86 Atom System Image.
    * Intel x86 Atom_64 System Image.
    * Google API's Intel x86 Atom System Image
    * Google API's Intel X86 Atom_64 System Image
* Click the Apply button.
* On the next screen click the Accept radio button.
* Take note of your SDK Path! It's at the top of the Component Installer dialog. e.g SDK Path: /Users/YourUser/Library/Android/sdk
* Click the Next button to start the installation of SDK 23 dependencies. This will take a whie to complete...
* When everything has completed downloading, click the Finish button.
* Click the OK button to close the Component Installer dialog.
* Close Android Studio

### Set environment variables

* Determine which shell you use. Open a terminal and run $ echo $SHELL.
* Based on your shell, you need to edit your profile. e.g. $ vi ~/.bash_profile or ~/.profile or ~/.zshrc.
* Add the following variables:
    * For save the line directly into .bash_profile type (recommended)
        * echo "export JAVA_HOME=\$(/usr/libexec/java_home)" >> ~/.bash_profile && source ~/.bash_profile
        * echo "export ANDROID_HOME=/Users/eloy.vitorio/Library/Android/sdk" >> ~/.bash_profile && source ~/.bash_profile
        * echo "export PATH=\$PATH:\$JAVA_HOME" >> ~/.bash_profile && source ~/.bash_profile
        * echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bash_profile && source ~/.bash_profile
        * echo "export PATH=\$PATH:\$ANDROID_HOME/platform-tools/" >> ~/.bash_profile && source ~/.bash_profile
        * echo "export PATH=\$PATH:\$ANDROID_HOME/tools/" >> ~/.bash_profile && source ~/.bash_profile
        * echo "export PATH=\$PATH:\$ANDROID_HOME/tools/emulator" >> ~/.bash_profile && source ~/.bash_profile
        * echo "export PATH=\$PATH:\$ANDROID_HOME/tools/lib/" >> ~/.bash_profile && source ~/.bash_profile
        * echo "export PATH=\$PATH:\$ANDROID_HOME/bin" >> ~/.bash_profile && source ~/.bash_profile
* Open .bash_profile file and check if variables was saved
    * open ~/.bash_profile

### Test environment variables

* Run $ java -version in terminal. You should see something close to this java version "1.8.0_144" or greater is returned.
* Run $ ruby -v in terminal. You should see something close to this ruby 2.4.1 or greater.
* Run $ emulator -help. You should see menu options for android emulator manager.
* If any of the above is not working check to make sure the install locations are correct and reflected correctly in the path environment variable.

### Test ADB is installed

* Run $ android create avd -n EM1 -k "system-images;android-23;google_apis;x86" in terminal.
* Enter NO to not create a custom hardware profile.
* Run the emulator: $ANDROID_HOME/tools/emulator -avd EM1
    * Verify avd output on startup includes:
    * Hax is enabled
    * HAX is working and emulator runs in fast virt mode.
    * Verify emulator fully starts and you see the android home/desktop screen.
* Note: Emulator can also be created via the AVD Manager IDE inside of Android Studio. However, you would need to create a new project or import one to see this menu option.

### Install Appium desktop

* Download and install Appium Desktop [click here](https://github.com/appium/appium-desktop/releases/tag/v1.7.1)

### Install Appium Doctor via NPM

* Run npm install -g appium-doctor
* Run $ appium-doctor (checks setup is correct on machine)
    * Verify "info AppiumDoctor Everything looks good, bye!" is displayed.
    * If there are things missing please go back to the install instructions above or environment variable setup.

### Install Appium via NPM

* Run npm install -g appium
    * Verify appium installed correctly by doing $ appium -v

### Install a text editor (IDE)

* Suggestion: MS Visual Studio Code [download](https://code.visualstudio.com/download)

### Install Allure Report Framework (optional)

* Open a Terminal window and run:
    * $ brew tap qatools/formulas
    * $ brew install allure-commandline
* Test Allure works. Run $ allure in terminal. Verify you see allure menu options after.

### Run tests

* Appium server and android/Ios emulator must have been started
* Go to root directory and type one of commands:
    * Run test in Android
        * rake android
    * Run test in Android with html report
        * rake android_report
    * Run test in iOS
        * rake ios
    * Run test in iOS with html report
        * rake ios_report
    * Run both Android e iOS
        * rake android_ios
    * Run both Android e iOS with html report      
        * rake android_ios_report
* View full rake commands list in Rakefile









