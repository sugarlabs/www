
<div align="center">
    
# [Sugar Labs](https://www.sugarlabs.org/)
# Sugar Labs web site
    
</div>

## Aims

* to announce our vision and mission,
* to invite potential users of Sugar Labs software,
* to advertise our free software and licensing approach,
* to provide links to software downloads, and;
* to invite potential developers to the source code we hold in trust.

## Contributing

Content on the site; that is information about Sugar, Sugarizer, or Music Blocks, is _way more important_ than the style or appearance.

Please concentrate on updating the content of the site, and not the style or appearance.

For your pull requests or issues to be taken seriously, you must be a user or developer of one of our software products; Sugar, Sugarizer, or Music Blocks.

### Getting the code

1. Fork this repository,

2. Clone your forked copy of the project;

```bash
git clone https://github.com/<your_user_name>/www.git
```
3. Change to the project directory;

```bash
cd www
```

### Installation

Install Ruby and Bundler, the Gem package manager.
Install `jekyll` and its related packages.

```bash
bundle install
```

### Running
Jekyll can run a local web server that rebuilds each time you save a page while editing (Execute the below command from root directory):

```bash
bundle exec jekyll serve --incremental
```

Then open [http://localhost:4000](http://localhost:4000)
### Note
If some changes are not visible (after saving a page while editing), please restart the Jekyll local web server and reload [http://localhost:4000](http://localhost:4000).

### Troubleshooting for Debian-based systems

You might try the following to prepare your dev environment on a Debian-based system:

Install Ruby and dependencies:
```
sudo apt-get install ruby-full build-essential zlib1g-dev
```

Tell BASH where to look when you run Ruby, while having an installation directory associated with your user account (not root):
```
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

Install Jekyll and Bundler (not through sudo apt)
```
gem install jekyll bundler
```
*Ref: <https://jekyllrb.com/docs/installation/ubuntu/>*

If you already installed Jekyll and Bundler via sudo apt, you may need to do the following:
```
PACKAGES="$(dpkg -l |grep jekyll|cut -d" " -f3|xargs )"
sudo apt remove --purge $PACKAGES
sudo apt autoremove
gem install jekyll jekyll-feed jekyll-gist jekyll-paginate jekyll-sass-converter jekyll-coffeescript
bundle update
```
*Ref: <https://stackoverflow.com/questions/68220028/undefined-method-delegate-method-as-for-jekylldropscollectiondropclass-n>*

## History

The site was redesigned during Google Summer of Code in 2017, and then informally reviewed by untainted readers in Google Code-in 2017.  Many issues were created then, but most did not have consensus.  Most of the issues addressed style and appearance rather than the relevance or accuracy of the content.  Since then, we have decided to concentrate on keeping the content updated.

----

# GSOC 2017 redesigned "www.sugarlabs.org"

These notes were part of a project that has since been merged.

## Introduction
This repository contains the code for the redesigned version of "www.sugarlabs.org". This repository code base was used for the development of the GSOC 2017 project **Giving Sugar Labs Website a New Look** under the organization **Sugar Labs**. The changes, made by Pericherla Seetarama Raju and overseen by Samson Goddy, Hrishi Patel, and Walter Bender during the 2017 **GSOC** period, can be viewed at [https://github.com/sugarlabs/www/issues/63](https://github.com/sugarlabs/www/issues/63). The work during **GSOC** was done in the repository [https://github.com/geekrypter/sugarLabsWebsiteRedesign](https://github.com/geekrypter/sugarLabsWebsiteRedesign). The code uses the same Jekyll environment as that of the original website's code. Do check out the code!

### Major Services
We have integrated one major feature with the help of a third-party service:
1. Website users tracking - We have used the [Google Analytics](https://analytics.google.com/) service to track users on the website and get a more detailed analysis of the user's usage.

### Feedback/Suggestions and Issues
Feedback/Suggestions are always welcome and do mention any issues found. They can be provided through the Issues section of this repository

## Credits

### License Information
The license information of all the dependencies/libraries used in the code can be found in the **LicenseInformation.txt** file in the root folder.

### Usage of code snippets:
For a few parts of the code, I have used code snippets available online. The list of all the code snippets which I referred to are:
1. [CodePen-Martinvd](https://codepen.io/martinvd/pen/xbQJom)
2. [Bootstrapious](https://bootstrapious.com/p/bootstrap-sidebar)
3. [Bootsnipp](https://bootsnipp.com/snippets/1mo8Z)
4. [W3schools](https://www.w3schools.com/howto/howto_js_slideshow.asp)
5. [Hongkiat](http://www.hongkiat.com/blog/css-reflection/)
6. [Codepen-Zachsaffrin](https://codepen.io/zachsaffrin/pen/zrxsc)
7. [CodePen-Yewnork](https://codepen.io/yewnork/pen/Kpaqeq)
8. [Fiddle](http://fiddle.jshell.net/jrjacobs24/u76Ltw92/8/light/)
9. [Pixelflips](https://pixelflips.com/blog/anchor-links-with-a-fixed-header)

### Base template:
Base template has been designed and developed by Themefisher. For a preview, check out this link - [https://luminousrubyist.github.io/airspace-jekyll/](https://luminousrubyist.github.io/airspace-jekyll/)

### Code and Contribution
The code has been restructured, unnecessary code has been removed, comments were added wherever required, proper indentation was provided, and simple names were used which makes it a contributor-friendly codebase. So, hope on and contribute now!

## Important points to be noted

1. Whenever the code is changed, please ensure that the relevant code changes are reflected in **main.js** file (For example, if a slideshow is disabled, make sure the id of the slideshow element/section is also disabled in the **main.js** file if it exists).
2. Few dependencies/libraries do not work well with other dependencies/libraries, so make sure to test before updating the dependencies/libraries.
3. Whenever the website hosting is shifted to another url/domain, please ensure to change the internal url references and also the **sitemap.txt** file.
4. Do check [**Answers to a Few Questions**](#answers-to-a-few-questions) section to get answers to a few of the questions you might have or for steps to be followed.
5. Be careful when changing the cache control code present in the **.htaccess** file.
6. Whenever the dependency/library versions are changed, please update the local files of those dependencies as these local files are referenced when the cdn does not work.
7. The current website uses customized versions of a few social media icons (service provided by [Ion Icons](https://ionicons.com)). We do our customizations in a scss file (**/css/ion_icon_customization.scss** file in our case). Please be careful when updating this file. (Also refer to [**How to change social media icon colors?**](#how-to-change-social-media-icon-colors) the subsection in [**Answers to a Few Questions**](#answers-to-a-few-questions) section)

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
The font being used is the Google font, Varela round. When we call the font sheet directly, it is not properly rendered on certain browsers, so we hosted the required font sheets in the **fonts** folder itself. For more details, please refer to  **How to add/change the new font?** the subsection in the [**Answers to a Few Questions**](#answers-to-a-few-questions) section.

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

## Answers to a Few Questions

### How to remove loader?
1. Go to **index.html** file.
2. Go to the **Loader section** (check comments) and remove the whole section.

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

### How to alter Google analytics code?
1. Go to [Google Analytics](https://analytics.google.com/).
2. Your account needs admin rights so ask Samson Goddy for admin permissions.
3. Log in using this account.
4. Get the final code from website.
5. Go to **footer.html** file 
6. Replace the existing code with the final code under the **Google analytics code** section (check comments).

### How to change logo?
1. Go to **nav.html** file.
2. Please be aware that we have 2 types of headers/navigation bars and for each header, we have 2 logos associated(static and dynamic)(refer to **Logo** subsection in **About the website/project** section). Code is written to accommodate both the logos and the necessary disabling is done in the **main.js** file.
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

### How to add new icons
In this section, we will guide you through the steps to add new icons. By following these steps, you will be able to customize icons.

1. **Install FontForge:**
   * Download and install FontForge from [FontForge's official website](https://fontforge.org/en-US/).

2. **Create or Prepare Your Icon:**
   * Create your icon in a vector graphics editor and save it as an SVG file. If you're not sure how to save as an SVG file, you can find a guide [here](https://stackoverflow.com/questions/43804171/how-to-extract-svg-as-file-from-web-page).
   * Ensure that your icon is properly scaled and fits well within the boundaries of a single glyph. You can learn more about proper scaling [here](https://webdesign.tutsplus.com/svg-viewport-and-viewbox-for-beginners--cms-30844t).

3. **Open Your .ttf File in FontForge:**
   * Open FontForge and navigate to File > Open to select the .ttf file you want to edit (e.g., www/css/fonts/ionicons.ttf).

4. **Add a New Glyph Slot:**
   * In the FontForge interface, find an empty slot or select an existing glyph that you want to replace.

5. **Import Your Icon:**
   * Double-click on the empty slot or the slot you want to replace to open the glyph editor.
   * Go to `File > Import` and select the SVG file of your icon.
   * Adjust the size and position of your icon to ensure it fits well within the glyph boundaries.
   * Remember the Unicode character corresponding to your icon (e.g., `\e93c`). You may need this for referencing the icon in your project.

6. **Save Your Changes:**
   * Once you're satisfied with the new icon, go to `File > Generate Fonts` to save the .ttf file.
   * Choose the appropriate options and generate the font file. This will save your .ttf file with the new icon included.

7. **Test Your Updated Font:**
   * Replace the existing www/css/ionicons.ttf file with the updated one, keeping the same name.
   * Open `www/css/ionicons.min.css` and add the following CSS rule:

   ```css
   .ion-logo-[new-icon-name]:before {
       content: "\[unicode-code]";
   }
   ```

   * Replace `[new-icon-name]` with your new icon name and `[unicode-code]` with its Unicode value.
   * Save the CSS file. Now you can use `[new-icon-name]` to access your brand new icon.

8. **Updating Ion Icons**
   * Install the latest version of Ion Icons by running the following command:
   `npm i ionicons@7`

### How to make a blog post?
In this section, we will guide you through the steps for creating a new blog post.

1. **Navigate to the _post directory:**
   * In the site's main directory, open the _post folder. This is where all your blog posts are stored.

2. **Create a New Markdown File:**
   * Create a new file in the _posts folder. Name the file in the format `YYYY-MM-DD-title.md`.

3. **Add Front Matter:**
   * At the top of your new file, add front matter between `---` lines. This metadata tells Jekyll how to handle the post. Here’s a basic template:

   ```
   ---
   layout: post
   title: "How to Make a Blog Post?"
   date: YYYY-MM-DD
   categories: press
   ---
   ```

   * We have three categories: press, event, and community.

4. **Write your content:**
   * Below the Front Matter, write the content for your blog post in Markdown. You can add headings, images, links, lists, and more using Markdown syntax.

5. **Save and Preview:**
   * Save the file, then run `jekyll serve` in your terminal to start the local server. Visit `http://localhost:4000` to preview your blog post.

### How to create a FAQ?
In this section, we will guide you through the steps for creating a new FAQ.

1. **Navigate to the _faqs directory:**
   * In the site's main directory, open the _faqs folder. This is where all your FAQ posts are stored.

2. **Create a New Markdown File:**
   * Create a new file in the _faqs folder.

3. **Add Front Matter:**
   * At the top of your new file, add front matter between `---` lines. This metadata tells Jekyll how to handle the post. Here’s a basic template:

   ```
   ---
   question: "The question you want to add"
   answer: "The answer to that question"
   ---
   ```

4. **Save and Preview:**
   * Save the file, then run `jekyll serve` in your terminal to start the local server. Visit `http://localhost:4000` to preview your FAQ.

