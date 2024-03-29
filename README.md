# Andres Leon Personal Page

PERSONAL WEBSITE [WWW.ANDRES.NZ](http://www.andres.nz)
[GitHub Repo](https://github.com/aleon1220/aleon1220.github.io)

Whenever you commit to this repository, GitHub Pages will run [Jekyll](https://jekyllrb.com/) to rebuild the static page in your site.

- [Andres Leon Personal Page](#andres-leon-personal-page)
  - [Rescue time reports](#rescue-time-reports)
  - [About Me](#about-me)
    - [Professional Profile](#professional-profile)
    - [Personal project--](#personal-project--)
- [Test this project locally with Docker](#test-this-project-locally-with-docker)
  - [Build Jekyll Page](#build-jekyll-page)
    - [Bundler](#bundler)
  - [Serve Page](#serve-page)
    - [Jekyll Serve](#jekyll-serve)
    - [bundle serve](#bundle-serve)
  - [Jekyll Commands](#jekyll-commands)
    - [Update Gemfile.lock file for more dependencies](#update-gemfilelock-file-for-more-dependencies)
  - [Zappier integration](#zappier-integration)
    - [Email features](#email-features)
      - [Format HTML emails](#format-html-emails)
  - [Debugging JavaScript](#debugging-javascript)
    - [Email call on submit()](#email-call-on-submit)
  - [Editing the Timeline at Timeline.js](#editing-the-timeline-at-timelinejs)
    - [Instructions to update the Timeline](#instructions-to-update-the-timeline)

## Rescue time reports

[Uncategorized tasks month of december 2021](https://www.rescuetime.com/browse/overview/1/by/rank/for/the/month/of/2021-12-1/?schedule_id=7865667)

## About Me

Servant of God masquerading as a DevOps Engineer Software Developer
Personal Page Andres Leon Rangel Born in Colombia
grew up in Socorro Santander, Colombia
moved to Bogota, Colombia
Finished High School in Sheldon, Illinois, USA 2009
Enjoyed India 2011
God moved me to New Zealand 2017
Adopted by Kiwis 2020

### Professional Profile
Seasoned cloud engineer skilled in architecting secure, resilient cloud solutions on AWS, Azure, and GCP. Expert in migrating legacy systems and empowering high velocity software delivery.

Deep expertise instrumenting cloud architecture with monitoring, logging, and automation to ensure reliability, availability and achieve operational excellence. Skilled at leveraging actionable metrics to drive continuous improvement. Passionate about empowering high velocity software delivery through technology, process optimization and a fail fast culture underpinned by a data-driven approach.

Migrated from [PasteBin.com](https://pastebin.com/raw/K8qm2NqZ)

- JavaScript Projects

A visual [BPMN editor with IoT specification](http://andres.nz/BPMN-For-IoT-Editor/)

- JAVA J2EE Projects

1. [multi-cloud-AttendWebApp](https://github.com/aleon1220/multi-cloud-AttendWebApp) = a master degree project that invokes SOAP and REST Web services
2. [BuffetAbogadosWebAppProject](https://github.com/aleon1220/BuffetAbogadosWebAppProject)= A webApp for lawyers. Includes reporting functionality
3. [J2EE-EmployeeManagement_404376](https://github.com/aleon1220/J2EE-EmployeeManagement_404376) = WebApp connected to Oracle DB. Used to manage users (employees) from a fictitious company.

- Web development Experience

  - [Evangelism explosion New Zealand](www.ee.org.nz)
  - [Christ New Creation International](http://cncinternational.org/)
  - [Easy As Web Company](https://easyasweb.co.nz/#work)
  - [Iron Mountain Colombia Online Services](https://www.imcolonline.com/)
- University project multicloud environment [Details](https://tinyurl.com/SOA-MCLOUD)
- System integration and design

1. TIBCO ESB Online Video tutorials in Spanish [Youtube Playlist](https://www.youtube.com/playlist?list=PLYKl7T_I63IsJWCQYzJg1WFD10CoxglII)
2. Data Analysis tutorial with Spotfire [Video introduction](https://youtu.be/NkRo1r_r7OQ?list=PLYKl7T_I63IuU6nPDhm2dmuLqzYCDLRhc)

   - [AnalyticsReport](www.tinyurl.com/AleonAnalyticsReport)

- Process Automation

1. Private Cloud: Landing Page with SSL domain in Apache Server
   [IMCOl Access](https://www.imcolonline.com/)
2. BPM Platform configured and securely exposed in internet. The first one in Colombia.
   [BPM as a service](https://www.imcolonline.com/p/openspace/openspace.html)
3. Analytics Platform configured and securely exposed in internet. First Integrated environment in Colombia.
   [Live Business Analytics Platform](https://www.imcolonline.com/spotfire/)
   <!-- operador/Imco* -->

### Personal project--

Maintenance and development of bilingual website with common questions for students coming to New Zealand:

www.NZFAQ.cf or www.nzFAQ.nz

# Test this project locally with Docker

Docker makes it easy for you to test Jekyll Pages

## Build Jekyll Page

set the version before running the build locally

there is this official [builder image](https://github.com/envygeeks/jekyll-docker#readme)

```bash
VERSION="3.8.6"
```

- Install Docker. [Docker installation instructions](https://docs.docker.com/get-docker/)
- Go to the directory where you have the source code of the site
- Run a Docker Jekyll:VERSION image to build the page

```bash
docker run --rm -it --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" \
	--env VERBOSE=true \
	--env JEKYLL_ENV=production \
	jekyll/jekyll:$VERSION jekyll build
```

### Bundler

```bash
docker run --rm -it --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" \
	--env JEKYLL_ENV=production \
	jekyll/jekyll:$VERSION jekyll bundle install
```

## Serve Page

locally :-)

### Jekyll Serve

Run `serve` to see the page locally

```bash
docker run --rm -it --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" \
  --env JEKYLL_ENV=production \
  --env VERBOSE=true \
  jekyll/jekyll:3.8 jekyll serve
```

### bundle serve

```bash
docker run --rm -it --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" --env JEKYLL_ENV=production jekyll/jekyll:3.8 bundle exec jekyll serv
e --trace
```

## Jekyll Commands

### Update Gemfile.lock file for more dependencies

2020-08-26 I am not a ruby expert but I discovered a nice command to automatically update the dependencies bundle

- Run `bundle update` command

```bash
docker run --rm -it --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" --env JEKYLL_ENV=production jekyll/jekyll:3.8 bundle update
```

## Zappier integration

Zappier is used to integrate some functionalities. Zappier exposes a webhook, the webhook is invoked using JavaScript

### Email features

sending email in the contact page

#### Format [HTML emails](https://zapier.com/help/create/email-and-text-messages/send-emails-in-zaps#common-problems-email)

To style your email you will need to use HTML. Here's some basic quick start formatting HTML markup:

```html
Paragraph: <p> This is a paragraph </p>
Links: <a href="http://www.zapier.com">This is a link</a>
Images: <img src="imageurl.jpg" alt="alt text" width="104" height="142">
Bold: <b>This text is bold</b>
Italic: <i>This text is italic</i>
```

## Debugging JavaScript

### Email call on submit()

A Zappier webhook should be available and is added in the main.js function.

check for the `./js/main.js` file

Search for function

```javascript
$contactform.submit(function() 
```

## Editing the Timeline at [Timeline.js](https://timeline.knightlab.com/)

The third icon from top to bottom is a timelime of my professional life. It must show the development and growth over the years.

### Instructions to update the Timeline

Timeline JS has instructions at [Make Timeline](https://timeline.knightlab.com/#make) I find it easier to update them here.

- Check the [Timeline JS Documentation](http://timeline.knightlab.com/docs/index.html)

1. There is a Google sheets document with a Timeline JS template. It is published at [Aleonrangel Professional Timeline](https://docs.google.com/spreadsheets/d/e/2PACX-1vTA5gLh2-jJJFkM_L2WLx913aEpHNY0cQdCjKnRmO-iW0713mfjI3Wu1I8x-NqsRt66yjnOQomNBEpb/pubhtml)
2. Edit the Google sheets directly and Timeline JS generates the appropriate changes.

To see the Timeline go to [CDN Direct Link](https://cdn.knightlab.com/libs/timeline3/latest/embed/index.html?source=1G1b9cEH8MR9pjio6ZaprRYcIzoJhcrmAcyuUfSbZscM&font=Default&lang=en&debug=true&initial_zoom=3&height=650)
