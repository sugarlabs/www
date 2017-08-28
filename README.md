# Redesigned version of "www.sugarlabs.org"

## Introduction
This repository contains the code for the redesigned version of "www.sugarlabs.org". This repository is used for the development of the GSOC 2017 project **Giving Sugar Labs Website a New Look** under the organization **Sugar Labs**. All the changes made are always posted at [https://github.com/sugarlabs/www-sugarlabs/issues/63](https://github.com/sugarlabs/www-sugarlabs/issues/63). The repository of the original website is located at [https://github.com/sugarlabs/www-sugarlabs](https://github.com/sugarlabs/www-sugarlabs). Even though it can be observed that the repository is not a fork of the original website's repository, the new code has been added on a fork version. The code uses the same Jekyll environment as that of the original website's code. Do check out the code! 

## Major Features:
We have integrated 3 major feautres with the help of third party services:
1. Website users tracking - We have used the [Google Analytics](https://analytics.google.com/) service to track user on the website and get a more detailed analysis on the users usage.
2. IRC chat - We have used the [Kiwi IRC](https://kiwiirc.com) service to enable users to chat on our IRC channels in the website itself.
3. Newsletter subscription through email - We have used the [Mailchimp](https://mailchimp.com) service to let users to subscribe to our newsletters through their emails.

## License Information
The license information of all the dependencies used in the code can be found in the "LicenseInformation.txt" file.

## Code and Contribution
The code has been restructured and unnecessary code has been removed which makes it a contributor-friendly codebase. So, hope on and contribute now!

## Feedback/Suggestions and Issues
Feedback/Suggestions are always welcome and do mention any issues found. They can be provided through:
1)Issues section of this repository
2)[https://github.com/sugarlabs/www-sugarlabs/issues/63](https://github.com/sugarlabs/www-sugarlabs/issues/63)

## SugarLabs.org Website Sources
This website is created using Jekyll, Bootstrap, some plugins and pure jQuery along with HTML, CSS and Javascript.

## How to run the code
Install Ruby and the Gem package manager (pre-installed in Mac OS X) and install `jekyll` and its related packages available in the Github hosted version by running, from this directory:

    bundle install;

Jekyll can run a local web server that rebuilds each time you save a page while editing:

    jekyll serve --incremental;

Then open [http://localhost:4000](http://localhost:4000)

