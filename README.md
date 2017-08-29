# Redesigned version of "www.sugarlabs.org"

## Introduction
This repository contains the code for the redesigned version of "www.sugarlabs.org". This repository code base was used for the development of the GSOC 2017 project **Giving Sugar Labs Website a New Look** under the organization **Sugar Labs**. The changes made during the **GSOC** period can be viewed at [https://github.com/sugarlabs/www-sugarlabs/issues/63](https://github.com/sugarlabs/www-sugarlabs/issues/63). The repository of the original website is located at [https://github.com/sugarlabs/www-sugarlabs](https://github.com/sugarlabs/www-sugarlabs). The work during **GSOC** was done in the repository [https://github.com/geekrypter/sugarLabsWebsiteRedesign](https://github.com/geekrypter/sugarLabsWebsiteRedesign). A live preview of the website is hosted using **Github pages** and can be viewed at [https://geekrypter.github.io/sugarLabsWebsiteRedesign/](https://geekrypter.github.io/sugarLabsWebsiteRedesign/). The code uses the same Jekyll environment as that of the original website's code. Do check out the code! 

### Major Services
We have integrated 4 major features with the help of third party services:
1. Website users tracking - We have used the [Google Analytics](https://analytics.google.com/) service to track user on the website and get a more detailed analysis on the users usage.
2. IRC chat - We have used the [Kiwi IRC](https://kiwiirc.com) service to enable users to chat on our IRC channels in the website itself.
3. Newsletter subscription through email - We have used the [Mailchimp](https://mailchimp.com) service to let users to subscribe to our newsletters through their emails.
4. Customized search functionality - We have used [Google custom search engine](https://www.google.co.in/cse) to provide a customized search for users.

## Documentation
For documentation, please check the **documentation.md** file.

## License Information
The license information of all the dependencies/libraries used in the code can be found in the **LicenseInformation.txt** file in the root folder.

### Code and Contribution
The code has been restructured, unnecessary code has been removed, comments were added wherever required, proper indentation was provided, and simple names were used which makes it a contributor-friendly codebase. So, hope on and contribute now!

## Feedback/Suggestions and Issues
Feedback/Suggestions are always welcome and do mention any issues found. They can be provided through:
1)Issues section of this repository
2)[https://github.com/sugarlabs/www-sugarlabs/issues/63](https://github.com/sugarlabs/www-sugarlabs/issues/63)

## How to run the code
### Getting the code
Clone the repository
### Installation
Install Ruby and the Gem package manager (pre-installed in Mac OS X) and install `jekyll` and its related packages available in the Github hosted version by running, from this directory:

    bundle install;
### Running
Jekyll can run a local web server that rebuilds each time you save a page while editing (Execute the below command from root directory):

    jekyll serve --incremental;

Then open [http://localhost:4000](http://localhost:4000)
### Note
If some changes are not visible (after saving a page while editing), please restart the Jekyll local web server and reload [http://localhost:4000](http://localhost:4000).

## Important points to be noted

1. Whenever the code is changed, please ensure that the relevant code changes are reflected in **main.js** file (For example, if a slideshow is disabled, make sure the id of the slideshow element/section is also disabled in the **main.js** file if it exists).
2. Whenever a new commit is made and the changes are made to any one of airspace.css, main.js, or plugins.js files, try to use a minification service and add the minified version of new code in respective **minified** folder. (css and js folders have a **minified** folder)
3. Few dependencies/libraries do not work well with other dependencies/libraries, so make sure to test before updating the dependencies/libraries.
4. Whenever the website hosting is shifted to another url/domain, please ensure to change the internal url references and also the **sitemap.txt** file.
5. Do check **Answers to few questions** section to get answers to few of the questions you might have or for steps to be followed.
6. Be careful when changing the cache control code present in the **.htaccess** file.
7. Whenever the dependency/library versions are changed, please update the local files of those dependencies as these local files are referenced when the cdn does not work.
8. The current website uses customized versions of few social media icons (service provided by [Social Share Kit](http://socialsharekit.com)). So we use the local files of the service and do our customizations in the css file of the service (**/assets/dist/css/social-share-kit.css** file in our case). Please be careful when updating the files of this service. (Also refer to **How to change social media icon colors?** subsection in **Answers to few questions** section)

