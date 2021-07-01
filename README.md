# Andres Leon Personal Page

Personal Page Andres Leon Rangel Born in Colombia
grew up in Socorro Santander, Colombia
moved to Bogota, Colombia
Finished High School in Sheldon, Illinois, USA 2009
Enjoyed India 2011
God moved me to New Zealand 2017
Adopted by Kiwis 2020

Whenever you commit to this repository, GitHub Pages will run [Jekyll](https://jekyllrb.com/) to rebuild the pages in your site.

- [Andres Leon Personal Page](#andres-leon-personal-page)
  - [About Me](#about-me)
    - [Professional Profile](#professional-profile)
    - [Personal project--](#personal-project--)
- [Test locally with Docker](#test-locally-with-docker)
  - [Build Jekyll Page locally](#build-jekyll-page-locally)
  - [Update Gemfile.lock file for more dependencies](#update-gemfilelock-file-for-more-dependencies)
  - [Serve Page locally :-)](#serve-page-locally--)
  - [Debugging JavaScript](#debugging-javascript)
    - [Email](#email)

## About Me
Servant of God masquerading as a DevOps Engineer Software Developer

### Professional Profile
Migrated from [PasteBin.com](https://pastebin.com/raw/K8qm2NqZ)

- javaScript Projects
A visual BPMN editor with IoT specification.
http://andres.nz/BPMN-For-IoT-Editor/

- JAVA J2EE
https://github.com/aleon1220/multi-cloud-AttendWebApp
https://github.com/aleon1220/BuffetAbogadosWebAppProject
https://github.com/aleon1220/J2EE-EmployeeManagement_404376

- Web development Experience
    http://cncinternational.org/
    https://easyasweb.co.nz/#work
    https://www.imcolonline.com/

- University project multicloud environment
https://tinyurl.com/SOA-MCLOUD

- System integration and design
1.	TIBCO ESB Online Video tutorials in Spanish
    https://www.youtube.com/playlist?list=PLYKl7T_I63IsJWCQYzJg1WFD10CoxglII 
1.	Data Analysis tutorial with Spotfire
    https://youtu.be/NkRo1r_r7OQ?list=PLYKl7T_I63IuU6nPDhm2dmuLqzYCDLRhc
    www.tinyurl.com/AleonAnalyticsReport

- 2016 Process Automation
1.	Private Cloud: Landing Page with SSL domain in Apache Server
    https://www.imcolonline.com/
4.	BPM Platform configured and securely exposed in internet. The first one in Colombia.
    https://www.imcolonline.com/p/openspace/openspace.html 
5.	Analytics Platform configured and securely exposed in internet. First Integrated environment in Colombia.
    https://www.imcolonline.com/spotfire/
    <!-- operador/Imco* -->

### Personal project--
Maintenance and development of bilingual website with common questions for students coming to New Zealand: www.NZFAQ.cf
# Test locally with Docker
Docker makes it easy for you to test Jekyll Pages

## Build Jekyll Page locally
- make sure you have installed docker. Easy just google it. I will put [Docker installation instructions](www.docker.com)
- go to the directory where you have the page
- run command to build from Docker Jekyll image

``` bash
docker run --rm -it --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" --env JEKYLL_ENV=production jekyll/jekyll:3.8 jekyll build
```

## Update Gemfile.lock file for more dependencies
2020-08-26 I am not a ruby expert but i discovered a nice command to automatically update the dependencies bundle
- run `bundle update` command
``` bash
docker run --rm -it --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" --env JEKYLL_ENV=production jekyll/jekyll:3.8 bundle update
```

## Serve Page locally :-) 
- run serve command to see the page
``` bash
docker run --rm -it --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" --env JEKYLL_ENV=production jekyll/jekyll:3.8 jekyll serve
```

## Debugging JavaScript

### Email
A Zappier webhook should be available and is added in the main.js function.

check for the ./js/main.js file

Search for function
``` javascript
$contactform.submit(function() 
```