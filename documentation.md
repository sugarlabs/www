# Project Documentation

## Basic Information

* Project Name - **Giving Sugar Labs Website a New Look**.
* Organisation - **Sugar Labs**.
* Developer - **Pericherla Seetarama Raju**.
* Project Mentors - **Samson Goddy, Hrishi Patel, Walter Bender**.
* As part of - **Google Summer Of Code(GSOC) 2017**

## About the website / project

### Introduction
This repository contains the code for the redesigned version of "www.sugarlabs.org". This repository is used for the development of the GSOC 2017 project **Giving Sugar Labs Website a New Look** under the organization **Sugar Labs**. All the changes made are always posted at [https://github.com/sugarlabs/www-sugarlabs/issues/63](https://github.com/sugarlabs/www-sugarlabs/issues/63). The repository of the original website is located at [https://github.com/sugarlabs/www-sugarlabs](https://github.com/sugarlabs/www-sugarlabs). Even though it can be observed that the repository is not a fork of the original website's repository, the new code has been added on a fork version. The code uses the same Jekyll environment as that of the original website's code. Do check out the code! 

### Major Features:
We have integrated 3 major feautres with the help of third party services:
1. Website users tracking - We have used the [Google Analytics](https://analytics.google.com/) service to track user on the website and get a more detailed analysis on the users usage.
2. IRC chat - We have used the [Kiwi IRC](https://kiwiirc.com) service to enable users to chat on our IRC channels in the website itself.
3. Newsletter subscription through email - We have used the [Mailchimp](https://mailchimp.com) service to let users to subscribe to our newsletters through their emails.

### Internal URLs:
All internal URLs are referenced through absolute paths and not relative paths.

### Languages and Technologies:
HTML
CSS
Javascript
JQuery
Bootstrap

### Libraries used:
All libraries, dependencies and license information is available in the licenseInformation.txt file.

### Base template:
Base template has been designed and developed by Themefisher. For a preview, check out this link - https://luminousrubyist.github.io/airspace-jekyll/

### Nav bar / Header:
We have 3 header designs based on the screen sizes:
1. greater than 1260px
2. greater than or equal to 768px and less than or equal to 1260px
3. less than 767px

### Disabling:
For other browsers apart from those mentioned below, the IRC chat, loader, dynamic logo (color changing) is disabled.
1. Safari
2. Chrome
3. Opera
4. Firefox
5. Edge
6. Internet Explorer
7. Small devices browsers like on Android|BlackBerry|iPhone|iPad|iPod|Opera Mini|IEMobile

The dynamic logo (color changing) is also disabled for Internet Explorer.

### Logo:
We render 2 types of logos based on the browsers:
1. Dynamic logo (color changing)
2. Static logo

The dynamic logo is enabled for:
1. Safari
2. Chrome
3. Opera
4. Firefox
5. Edge
6. Small devices browsers like on Android|BlackBerry|iPhone|iPad|iPod|Opera Mini|IEMobile

However due to several issues, we disabled the dynamic logo and render static logo for all the other browsers.

### Loader:
The loader is enabled for:
1. Safari
2. Chrome
3. Opera
4. Firefox
5. Edge
6. Internet Explorer
7. Small devices browsers like on Android|BlackBerry|iPhone|iPad|iPod|Opera Mini|IEMobile

To reduce animations, we disabled the loader for all the other browsers.

### Font:
The font being is the Google font, Varela round. When we call the font sheet directly, it is not properly rendered on certain browsers, so we hosted the required font sheets in the directory itself. For more details, please refer to the  **How to add/change new font?** subsection in the **Answers to few questions** section.

### Chat window:
We have used the [Kiwi IRC](https://kiwiirc.com) service to enable users to chat on our IRC channels in the website itself.
The chat window is enabled for:
1. Safari
2. Chrome
3. Opera
4. Firefox
5. Edge
6. Internet Explorer
7. Small devices browsers like on Android|BlackBerry|iPhone|iPad|iPod|Opera Mini|IEMobile

The service renders many requests, so to reduce the burden, we disabled the loader for all the other browsers.

## Description of file and folders present in the code repository

### Assets folder:
This folder contains all image assets, SVG assets and any other assets.

### Root folder:
This will contain:
1. All html pages
2. .htaccess file
3. README file 
4. licenseInformation.txt
5. sitemap.txt
6. robots.txt
7. Jekyll related files
8. Other folders

### css folder:
This folder contains all CSS files.

### js folder:
This folder contains all Javascript files.

### fonts folder:
This folder contains all fonts related files.

### press folder:
This folder contains all press related information of Sugar Labs.

### en_US folder:
This folder contains profile.md file which contains the infomration of all Sugar Labs contributors.

### Remaining folders:
All the remaining folders are as per Jekyll structure.

## Design layout of website / project

The following pages share a similar design:
https://geekrypter.github.io/sugarLabsWebsiteRedesign/
https://geekrypter.github.io/sugarLabsWebsiteRedesign/about-us
https://geekrypter.github.io/sugarLabsWebsiteRedesign/about-irc
https://geekrypter.github.io/sugarLabsWebsiteRedesign/about-libre-software-culture
https://geekrypter.github.io/sugarLabsWebsiteRedesign/booting-soas
https://geekrypter.github.io/sugarLabsWebsiteRedesign/contact-us
https://geekrypter.github.io/sugarLabsWebsiteRedesign/inquiry
https://geekrypter.github.io/sugarLabsWebsiteRedesign/more
https://geekrypter.github.io/sugarLabsWebsiteRedesign/music-blocks
https://geekrypter.github.io/sugarLabsWebsiteRedesign/press
https://geekrypter.github.io/sugarLabsWebsiteRedesign/search
https://geekrypter.github.io/sugarLabsWebsiteRedesign/sugar-forraspberry-pi
https://geekrypter.github.io/sugarLabsWebsiteRedesign/turtle-blocks-js

The following pages share a similar design:
https://geekrypter.github.io/sugarLabsWebsiteRedesign/parents
https://geekrypter.github.io/sugarLabsWebsiteRedesign/school-administrators
https://geekrypter.github.io/sugarLabsWebsiteRedesign/students
https://geekrypter.github.io/sugarLabsWebsiteRedesign/sugar-for-raspbian
https://geekrypter.github.io/sugarLabsWebsiteRedesign/sugar-lesson-plans
https://geekrypter.github.io/sugarLabsWebsiteRedesign/sugar-stories

The relevant page can be checked to adopt a similar design.

## Developers

### Code and Contribution
The code has been restructured, unnecessary code has been removed, comments were added wherever required, proper indentation was provided, and simple names were used which makes it a contributor-friendly codebase. So, hope on and contribute now!

### Feedback/Suggestions and Issues
Feedback/Suggestions are always welcome and do mention any issues found. They can be provided through:
1)Issues section of this repository
2)[https://github.com/sugarlabs/www-sugarlabs/issues/63](https://github.com/sugarlabs/www-sugarlabs/issues/63)

### How to run the code
Install Ruby and the Gem package manager (pre-installed in Mac OS X) and install `jekyll` and its related packages available in the Github hosted version by running, from this directory:

    bundle install;

Jekyll can run a local web server that rebuilds each time you save a page while editing:

    jekyll serve --incremental;

Then open [http://localhost:4000](http://localhost:4000)

If some changes are not visible (when saving a page while editing), please restart the Jekyll local web server and reload [http://localhost:4000](http://localhost:4000).

## Important points to be noted

1. Whenever a new commit is made and the changes are made to any one of airspace.css, main.js, or plugins.js files, try to use a minification service and add the minified version of new code in their minified versions in respective "minified" folder.
2. Whenever font is to be changed/added, follow the instructions in **How to add/change new font?** subsection in **How to add/change new font?** section.
3. Few dependencies do not work well with other dependencies, so make sure to test before updating the dependencies.

## Answers to few questions

### How to remove loader?
1. Go to index.html page
2. Under the Loader section (check comments), remove the whole section.

### How to remove chat window?
1. Go to footer.html page
2. Under the Chat window for screens with width <= 991px section (check comments), remove the whole section.
3. Under the Chat window for screens with width > 991px section (check comments), remove the whole section.

### How to change IRC service?
1. Go to main.js file.
2. The request url of the new IRC service can be written in the disabling part of the file (where iframe sources are entered)

### How to disable search functionality?
1. Go to search.html file.
2. Under the Search functionality Javascript code section (check comments), remove the whole section.

### How to alter disabling?
1. Go to main.js file.
2. There you can check out the disabling code and can change accordingly.

### How to change background image in main page?
1. Go to airspace.css file.
2. Under the #slider css part, enter the url of new background image in the "background" attribute.

### How to add new page?
1. Create a new html page in the root directory.
2. Enter the required intial information for the new page. (Take the help of the intial information available for other html pages)
3. In the sitemap.txt file, add the declaration of the new page (take the help of other page declarations)

### How to change video thumbnail?
1. Go to index.html file.
2. Under the About Sugar section (check comments), add the new thumbnail url to the poster attribute of the html video tag.

### How to add/change new font?
1. Go to [fontsquirrel](https://www.fontsquirrel.com/)
2. Search the required font and go the specified page.
3. UNder Webfont Kit, enable all Font formats and click Download @font-face kit.
4. Add all the format files generated to the Fonts folder.
5. Go to the googlefonts.css file and add those references.
