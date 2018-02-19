---
layout: post
title: Information Architecture
date: 2016-05-15
---

This document proposes a structure of the Sugar Labs homepage, [sugarlabs.org](http://www.sugarlabs.org)

## Conversion funnel 

A [conversion funnel](https://www.google.com/search?q=conversion+funnel&tbm=isch) plans the site visitor stage goals.

1. Strangers: Discovery, Awareness, Attract, Brand
    * Facebook, YouTube, Snapchat, Instagram, Twitter, Press
    * Measure impressions/reach

2. Visitors: Landing Page, Realization of Need, Interest/Desire, Engage leads, Familiarity
    * Assert the unmet needs the "one key fan" users face, and how the products/services address their needs
    * Survey their needs/expectations
    * Calls To Action
    * Measure active daily users

3. Leads: Consideration, Try Outs, Action Flows
    * Sugarizer inherently allow immediate try out
    * download and boot SOAS
    * email newsletter sign up
    * email mini-course with X things to do with SOAS ([#38](https://github.com/sugarlabs/www-sugarlabs/issues/38))
    * tell your friends to try it out too

4. Users: Conversion/Sales
    * Individuals
       * Create account our central Sugarizer server and (1) bookmark or (2) install as an app 
       * Sugar Desktop or Sugarizer Server installed and used daily
          * either buying hardware with it pre-installed, or 
          * self-install on a laptop, desktop or personal server (eg raspberry pi)
    * Groups ("local labs"?)
       * Club: a set of individuals who meet informallly daily/weekly/monthly
       * Class: a set of individuals who meet formally - at school, or church, or anywhere with a building and a budget
       * School: set of classes
       * District: set of schools
       * County: set of districts
       * Country: set of counties
       * Region: set of countries

5. Participants: Retention/Loyalty
    * Schedule for 12+ months of usage (curricular scale)    
      * Lesson plans (eg, [how to get a microscope working with an XO](https://wiki.sugarlabs.org/go/Talk:EduJAM/2011), [4th grade curriculum lessons](https://wiki.sugarlabs.org/go/Math4Team/Resources/Curriculum_Chart))
    * Actively participate in the community
      * post on mailing list
      * post translation improvements
      * post usability testing reports
      * post bugs
      * post pull requests
    * Become a Member
      * Commit access on Github, community standards
      * Advocate on behalf of sugar labs
        * post on social media
        * post conference submissions to do public speaking

## Primary/Secondary Elements

A coherent structure of pages. 
Eventually this will be expressed in an ["information architecture" site map diagram](https://www.google.com/search?q=information+architecture+web+design&tbm=isch).

The elements on the 1st level of the list form the 'primary navigation' that typically appears on a toolbar at the top of the page. 
The elements on the 2nd/3rd levels of the list are the 'secondary navigation' and may appear in a drop down menu on the primary toolbar, or as links inside the landing page each primary element, etc.

home
* What do middle school kids need? How Sugar addresses those needs.
   * "What I would like from marketing is some mechanism for highlighting the powerful ideas in Sugar that seem to be lacking in most other systems so that even if a school decides to go with a different product/project, they put pressure on that project to provide tools, not apps, collaboration, transparency, self reflection and group critique, and responsibility on the shoulders of students and teachers to shape their own world." - Walter Bender
* "A successful technology creates problems that only it can solve." - Alan Kay
* Story telling: one great case study (from OLPC France?)
* Testimonials/Reviews. Quote from [LinuxInsider](http://www.linuxinsider.com/story/Fedora-Based-Sugar-on-a-Stick-Is-One-Sweet-Desktop-83446.html), size of active user base from <https://wiki.sugarlabs.org/images/4/48/Survey_summary.pdf>, http://wiki.laptop.org/go/ALEARN_Network, etc.
* Calls To Action
   * try
   * download + email mini course ([#38](https://github.com/sugarlabs/www-sugarlabs/issues/38))
   * buy
   * join

about
* "Learning To Change The World" full text liberated
* case studies
   * a table listing each user community ("deployment" or "local lab"?) and a person in each community who Sugar Labs can talk with? (Starting with http://wiki.laptop.org/go/Manufacturing_data)
   * show off where our users are ([map](http://stats.sugarlabs.org/activities.sugarlabs.org/awstats.pl?framename=mainright&output=alldomains))
   * statistics ([scratch example](https://scratch.mit.edu/statistics))
   * conference presentations
      * https://www.youtube.com/watch?v=h1RBAq6GN7o
   * [sf summit posters](http://www.olpcsf.org/CommunitySummit2013/posters)
* detailed information about the Sugar Labs organization
   * Explanation of Conservancy
   * SLOB Minutes
   * Current SLOB members
   * SLOB historical membership data
   * Finance data
   * Current Members data
   * historical membership data

try now
* http://server.sugarizer.org with guiders

download
* SOAS
* Chromebooks
* Instructions + videos showing how to install on major distro packaging systems
   * www.ubuntu.com www.linuxmint.com www.debian.org www.raspbian.org
   * www.fedora-project.org www.centos.com
   * www.archlinux.org
   * www.pclinuxos.com
* <https://github.com/walterbender/training> 
* Sugar Handbook (User Manual, tutorial videos)
* Activities Library (http://activities.sugarlabs.org)
   * Curated list of activities to try (cf. https://www.sam.today/blog/sugar-onboard-user-testing.html)
* eBook Library (including interactive OERs, curricula)

use
* <https://help.sugarlabs.org>

buy
* offer sugar sticks (from http://www.recycleusb.com or even branded usb keys) 
* offer sugarizer servers (raspberry pi)
* offer laptops pre-installed
* offer pi3 desktops pre-installed
* (range of offers from individuals to nationwide deployments)

join/support/participate
* how to join the community conversation (single discuss mailing list via mailman3 web forum)
* how to develop sugar software ([www-sugarlabs#20](https://github.com/sugarlabs/www-sugarlabs/issues/20))
  * javascript
  * python
* how to start a local lab
  * funding (Google RISE)
  * training materials (eg <https://olpcnyc.wordpress.com/training-materials>, <https://wiki.sugarlabs.org/go/Tutorials/Tutorials.iso>)
  * [mariah's guide](http://mariahnoelle.com/wp-content/uploads/2014/04/sugarlabsgcioutreach.png)
* how to contribute to translation
  * raise funds to pay (Nigeria case study?)
* how to contribute to usability
* how to contribute to software (Activity, Sugar Desktop/izer)
   * report issues 
   * how to win a GSOC 2017 slot
   * how to win a GCI 2017 slot
   * outreachy?
* how to contribute to the central organization
   * how to contribute to websites
   * unfilled office positions
   * how to become a member
   * how to join the SLOB
* related projects
   * http://school-network.org
   * http://unleashkids.org
   * http://www.one-education.org
   * http://mifos.org
   * http://www.kano.me
   * http://beagleboard.org
   * http://getchip.com/pages/pocketchip
   * http://www.recycleusb.com
   * http://www.qimo4kids.com
   * https://kidswrite.org/our-story

## Tertiary Elements 

These elements appear on all pages (typically in a footer area)

* sitemap links
* email newsletter
* email mini course sign up
* social sharing buttons, to contribute to usage
* donate, to contribute to funds
* 'edit this page' link
* survey (ux questionaire, tell us what you think, tell us if you are a user)
* 10th year anniversity banner

# Peer Analysis

Here's a list of organizations that might be considered peers with Sugar Labs. 
Comparing their websites with ours may give us ideas for how we can improve. 

* https://learningequality.org
* http://haxe.org
