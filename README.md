
# Tutorial to use configuration files in Xcode


During the development lifecycle of a software project, you probably create different builds at various stages. 

For example, if the app needs to connect to a backend, it is very likely the app is connected to the test environment during development
and with production environment for the release app.

How can you efficiently manage all these build variants with the same code base in Xcode? This is what I want to discuss in this tutorial and show you how to create multiple configurations with the help of Xcode.

# Creating the Build Configuration

First, let’s create a new project using Xcode. Select the top-level element in the project navigator and make sure the “YOUR_PROJECT_NAME” item in the Project section is selected. Once done, you should see that Xcode already provides you two different configuration levels: Debug and Release. If you didnt’ aware that before, this means you can create a build for debug and another one for release with a different setting.

Now we are going to create a new configuration. Let’s just call it “Staging”. Click on the + sign right beneath the configuration list and select “Duplicate Debug configuration” as it’s much easier to remove the things we don’t want from the Debug configuration than putting back in those we need to the Release configuration.


<image src="images/duplicateConf.png" />

In the first cell of the row that just appeared, fill in Staging. Once done, you now have three levels of configuration.


<image src="images/stagingConf.png" />


# Using Xcode Configuration File (.xcconfig)

An Xcode Configuration file (.xcconfig) is  a key/value based file. You can store your build settings in the form of key/value pairs, similar to what you did in dictionaries. By using a .xcconfig file, it is very easy to define build parameters for each build. You will understand what I mean in a while.

Now go back to the project to create a .xcconfig file. In the project navigator, right click the project folder and chooose New file…. In the dialog that pops up, select the Configurations Settings File. In the next screen, give it the name “Staging” and make sure the targets checkboxes are all unchecked, because you don’t want to include this in your app’s bundle.

<image src="images/xconf.png" />

Now go to your project’s info screen, under the configurations section expand the list and select the xcconfile “Staging” from the drop down box.

<image src="images/staging.png" />

Once done, you can repeat the process for the main target and choose the Debug file. Also, repeat the process for the Release Target.
<image src="images/finalConf.png" />

