
# Tutorial to use configuration files in Xcode


During the development lifecycle of a software project, you probably create different builds at various stages. 

For example, if the app needs to connect to a backend, it is very likely the app is connected to the test environment during development
and with production environment for the release app.

How can you efficiently manage all these build variants with the same code base in Xcode? This is what I want to discuss in this tutorial and show you how to create multiple configurations with the help of Xcode.

# Creating the Build Configuration

First, let’s create a new project using Xcode. Select the top-level element in the project navigator and make sure the “YOUR_PROJECT_NAME” item in the Project section is selected. Once done, you should see that Xcode already provides you two different configuration levels: Debug and Release. If you didnt’ aware that before, this means you can create a build for debug and another one for release with a different setting.


