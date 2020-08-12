# PanelCV
2020-08-01
Customization of original work by aleon1220. I will customize it for my needs.
Once main goal is to add a timeline. The timeline will show the different experience and highlight throughout my career.

This theme is designed by [flexycodex](https://themeforest.net/item/flexyvcard-responsive-vcard-template-/7158750) and modified by [Locky](https://github.com/junlulocky)
The original name of this  Jekyll static site is PanelCV. References below.

I have made this into a Jekyll Theme. Demo: [https://jekyller.github.io/PanelCV](https://jekyller.github.io/PanelCV)

The theme would look like this 

![Demo](/images/demo.png)


# Installation

- Fork the repository
- Go to settings and set Github Pages source as master.
- Your new site should be ready at https://username.github.io/PanelCV/

Check out for more themes: [Jekyll Themes](http://jekylltheme.org)

# Local dev
to run it locally i suggest you use docker. Please google the docker installation and install it.

- Pull the ruby image tagged version 3.8
`docker pull jekyll/jekyll:3.8`
- Build The Jekyll Page with *Docker*

```docker run --rm -it --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" --env JEKYLL_ENV=production jekyll/jekyll:3.8 jekyll build```

- Run a temporary container to serve the **Built Jekyll site.** pointing to the local repo where you have the code.

```
docker run --rm --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" --env JEKYLL_ENV=development -p 4000:4000 jekyll/jekyll:3.8 jekyll serve
```

# Original Author
- [Locky](https://github.com/junlulocky)
- Docker commands for Ruby from [dev.to Compile a Jekyll project without installing Jekyll or Ruby by using Docker](https://dev.to/michael/compile-a-jekyll-project-without-installing-jekyll-or-ruby-by-using-docker-4184)
