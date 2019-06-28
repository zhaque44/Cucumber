# Amazon Shopping Cart 

This exercise is a basic walkthrough for testing the Amazon website using Cucumber with Watir. These tests will be using the Page Object Model design pattern. We will create separate Class for each page on Amazon. This is going to help us interact with the HTML elements on each page. 

# Installation 

I will provide detailed instructions on how to set your environment up to run the test suite.

# Prerequisite 

Please make sure you have at least Ruby 2.3.3 or better installed.

```
ruby -v
ruby 2.3.3
```
When you check your terminal with the version it should match or be higher. Now you can proceed by add the bundler gem which will provides a consistent environment for our project by tracking and installing the exact gems and versions that are needed. 

```
gem install bundler
```
Now that you have installed the bundler gem, you can now just install the rest of your dependencies with one command:

```
bundle install
```
and just like that VOILA! you have the rest of your depencies installed, to check if you have the right gems installed (the same ones in your Gemfile), you can run this command:

```
gem list
```
A list of gems installed will appear, also at the base directory level you will notice that there is a Gemfile.lock will lock down the versions of the gems you are using. 

# Test Runner

Once you have ran the installation steps successfully, you are now able to run the test suite. I used Rake to write a test task that will execute the tests from the command line. I created a Rakefile which is where the test task is defined:

```
ruby
Cucumber::Rake::Task.new(:tests) do |t|
  t.cucumber_opts = "features --color --format pretty -f html -o cucumber.html"
end
```

The .new defines the task and then we name it *tests*
We start our block of code with *do*
Then we utilize the *cucumber_opts* accessor to define the arguments that are being passed:
*color:* shows the results of our tests in color
*format pretty:* prints the contents of the feature file with proper indentation and alignment
*tags:* we utilize the tag option to display exactly which set of tests we are running
*f:* format output formatters for HTML 
Then *end* the block of code


# Test Metrics

A test report is generated after the test suite has run, if you go to the base directory level you will see an html file called

```
cucumber.html
```

# Contribute

Please feel free to submit issues, fork the repository and send pull requests!