# Redesigned version of "www.sugarlabs.org"

## Introduction
This repository contains the code for the redesigned version of "www.sugarlabs.org". This repository code base was used for the development of the GSOC 2017 project **Giving Sugar Labs Website a New Look** under the organization **Sugar Labs**. The changes, made by Pericherla Seetarama Raju and overseen by Samson Goddy, Hrishi Patel, and Walter Bender during the 2017 **GSOC** period, can be viewed at [https://github.com/sugarlabs/www-sugarlabs/issues/63](https://github.com/sugarlabs/www-sugarlabs/issues/63). The repository of the original website is located at [https://github.com/sugarlabs/www-sugarlabs](https://github.com/sugarlabs/www-sugarlabs). The work during **GSOC** was done in the repository [https://github.com/geekrypter/sugarLabsWebsiteRedesign](https://github.com/geekrypter/sugarLabsWebsiteRedesign). A live preview of the website is hosted using **Github pages** and can be viewed at [https://geekrypter.github.io/sugarLabsWebsiteRedesign/](https://geekrypter.github.io/sugarLabsWebsiteRedesign/). The code uses the same Jekyll environment as that of the original website's code. Do check out the code!

### Major Services
We have integrated 4 major features with the help of third party services:
1. Website users tracking - We have used the [Google Analytics](https://analytics.google.com/) service to track user on the website and get a more detailed analysis on the users usage.
3. Newsletter subscription through email - We have used the [Mailchimp](https://mailchimp.com) service to let users to subscribe to our newsletters through their emails.
4. Customized search functionality - We have used [Google custom search engine](https://www.google.co.in/cse) to provide a customized search for users.

### Feedback/Suggestions and Issues
Feedback/Suggestions are always welcome and do mention any issues found. They can be provided through:
1)Issues section of this repository
2)[https://github.com/sugarlabs/www-sugarlabs/issues/63](https://github.com/sugarlabs/www-sugarlabs/issues/63)

## Credits

### License Information
The license information of all the dependencies/libraries used in the code can be found in the **LicenseInformation.txt** file in the root folder.

### Usage of code snippets:
For few parts of the code, I have used code snippets available online. The list of all the code snippets which I referred to are:
1. https://codepen.io/martinvd/pen/xbQJom
2. https://bootstrapious.com/p/bootstrap-sidebar
3. https://bootsnipp.com/snippets/1mo8Z
4. https://www.w3schools.com/howto/howto_js_slideshow.asp
5. http://www.hongkiat.com/blog/css-reflection/
6. https://codepen.io/zachsaffrin/pen/zrxsc
7. https://codepen.io/yewnork/pen/Kpaqeq
8. http://fiddle.jshell.net/jrjacobs24/u76Ltw92/8/light/
9. https://pixelflips.com/blog/anchor-links-with-a-fixed-header

### Base template:
Base template has been designed and developed by Themefisher. For a preview, check out this link - [https://luminousrubyist.github.io/airspace-jekyll/](https://luminousrubyist.github.io/airspace-jekyll/)

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

    bundle exec jekyll serve --incremental;

Then open [http://localhost:4000](http://localhost:4000)
### Note
If some changes are not visible (after saving a page while editing), please restart the Jekyll local web server and reload [http://localhost:4000](http://localhost:4000).

## Important points to be noted

1. Whenever the code is changed, please ensure that the relevant code changes are reflected in **main.js** file (For example, if a slideshow is disabled, make sure the id of the slideshow element/section is also disabled in the **main.js** file if it exists).
2. Few dependencies/libraries do not work well with other dependencies/libraries, so make sure to test before updating the dependencies/libraries.
3. Whenever the website hosting is shifted to another url/domain, please ensure to change the internal url references and also the **sitemap.txt** file.
4. Do check **Answers to few questions** section to get answers to few of the questions you might have or for steps to be followed.
5. Be careful when changing the cache control code present in the **.htaccess** file.
6. Whenever the dependency/library versions are changed, please update the local files of those dependencies as these local files are referenced when the cdn does not work.
7. The current website uses customized versions of few social media icons (service provided by [Ion Icons](https://ionicons.com)). We do our customizations in a scss file (**/css/ion_icon_customization.scss** file in our case). Please be careful when updating this file. (Also refer to **How to change social media icon colors?** subsection in **Answers to few questions** section)

## Some Developer Notes
All internal URLs are referenced through absolute paths and not relative paths. This website primaritally uses HTML, (S)CSS, Javascript, JQuery, and Bootstrap.

### Navigation bar / Header
We have 3 header designs based on the screen sizes:
1. header for screen sizes greater than 1260px
2. header for (screen sizes greater than or equal to 768px and  less than or equal to 1260px)
3. header for screen sizes less than 768px

### Logo
We render 2 types of logos displayed in the header:
1. Dynamic logo
2. Static logo
#### Dynamic logo
This is a svg version of **Sugar Labs** logo and we have a code snippet in **main.js** file to alter the svg code and change color of logo randomly everytime.
#### Static logo
This is the png version of **Sugar Labs** logo with no color changing functionality.

The dynamic logo is enabled for:
1. Safari
2. Chrome
3. Opera
4. Firefox
5. Edge
6. Small devices browsers like on Android|BlackBerry|iPhone|iPad|iPod|Opera Mini|IEMobile
#### Note
However due to several issues, I disabled the dynamic logo and rendered static logo for all the other browsers.

### Disabling
For other browsers apart from those mentioned below, the loader, dynamic logo are disabled.
1. Safari
2. Chrome
3. Opera
4. Firefox
5. Edge
6. Internet Explorer
7. Small devices browsers like on Android|BlackBerry|iPhone|iPad|iPod|Opera Mini|IEMobile
#### Note
The dynamic logo is also disabled for Internet Explorer.

### Loader
The loader screen is enabled for:
1. Safari
2. Chrome
3. Opera
4. Firefox
5. Edge
6. Internet Explorer
7. Small devices browsers like on Android|BlackBerry|iPhone|iPad|iPod|Opera Mini|IEMobile
#### Note
To reduce animations, we disabled the loader for all the other browsers.

### Font:
The font being used is the Google font, Varela round. When we call the font sheet directly, it is not properly rendered on certain browsers, so we hosted the required font sheets in the **fonts** folder itself. For more details, please refer to the  **How to add/change new font?** subsection in the **Answers to few questions** section.

### Design Layout of Website/Project

The following pages share a similar design:
**index.html
about-us.html
about-irc.html
about-libre-software-culture.html
booting-soas.html
contact-us.html
inquiry.html
more.html
music-blocks.html
press.html
search.html
sugar-forraspberry-pi.html
turtle-blocks-js.html**

The following pages share a similar design:
**parents.html
school-administrators.html
students.html
sugar-for-raspbian.html
sugar-lesson-plans.html
sugar-stories.html**

The relevant pages can be checked to adopt a similar design.

## Answers to Few Questions

### How to remove loader?
1. Go to **index.html** file.
2. Go to the **Loader section** (check comments) and remove the whole section.

### How to disable search functionality?
1. Go to **search.html** file.
2. Go to the **Search functionality Javascript code** section (check comments) and remove the whole section.

### How to alter disabling?
1. Go to **main.js** file.
2. Go to **Disabling code** section (check comments) and change the code accordingly.
3. Take a look at the attributes of elements being changed in the **airspace.css** file also and carefully change the code.

### How to change background image in main page?
1. Go to airspace.css file.
2. Under the **slider** id css, enter the url of new background image in the **background** attribute.

### How to add new page?
1. Create a new html page in the root directory.
2. Enter the required intial information for the new page (Take the help of the intial information available in other html pages).
3. In the **sitemap.txt** file, add the declaration of the new page (take the help of other page declarations).

### How to change video thumbnail?
1. Go to **index.html** file.
2. Go to the **About Sugar** section (check comments) adn add the new thumbnail url in the **poster** attribute of the **html video tag**.

### How to add/change new font?
1. Go to [fontsquirrel](https://www.fontsquirrel.com/).
2. Search the required font and go the specified page.
3. Under **Webfont Kit**, enable all font formats and click **Download @font-face kit**.
4. Add all the font format files to the **fonts** folder.
5. Go to the **googlefonts.css** file and add those references.

### How to alter Goggle custom search engine customizations?
1. Go to [Google custom search engine](https://www.google.co.in/cse).
2. Log in using the "Sugar Labs" account.
3. You can do any customizations and get the final code.
4. Go to **search.html** file.
5. Replace the existing code with the final code under the **Search functionality Javascript code** section (check comments).

### How to alter Google analytics code?
1. Go to [Google Analytics](https://analytics.google.com/).
2. Your account needs admin rights so ask Samson Goddy for admin permissions.
3. Log in using this account.
4. Get the final code from website.
5. Go to **footer.html** file 
6. Replace the existing code with the final code under the **Google analytics code** section (check comments).

### How to change logo?
1. Go to **nav.html** file.
2. Please be aware that we have 2 types of headers/navigation bars and for each header we have 2 logos associated(static and dynamic)(refer to **Logo** subsection in **About the website / project** section). Code is written to accommodate both the logos and the necessary disabling is done in **main.js** file.
#### Changing dynamic logo
1. To change the dynamic logo, replace the new svg in space of the existing svg logo path in **nav.html** file.
2. Do this for the 2 header sections in **nav.html** file.
3. Go to **main.js** file.
4. We have code to change colours of dynamic logo under **Colour changing affect of logo** section (check comments).
5. Change/add code there.
#### Changing static logo
1. To change the static logo, replace the new png in space of the existing png logo path in **nav.html** file.
2. Do this for the 2 header sections in **nav.html** file.

### How to change cache control?
1. Go to **.htaccess** file 
2. Change/Edit the code there.

### How to change social media icon colors?
1. Go to **/css/ion_icon_customization.scss** file.
2. Find the color section you wish the change (it is commented)
3. Change the variable here only.
4. Do not change the code below the variables unless you wish to add or remove a color instead of changing a color.