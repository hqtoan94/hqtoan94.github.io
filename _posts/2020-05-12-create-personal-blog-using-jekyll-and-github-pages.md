---
layout: post
title:  Create personal blog using Jekyll and Github Pages
date:   Tue May 12 07:27:37 +07 2020
categories: [Guideline]
tags: [Blogging]
comments: true
buy_me_a_coffee: true
author: hqtoan94

side_panel:
  left_panel: side-panels/panel-for-post.html

description:
image:
  link: /assets/images/posts/jekyll_github.png
  description:
---

It's hard to pick the right platform to start writing. I've been stuck for years just to choose my favo one (`Wordpress, Medium, Hexo, Jekyll, ...`). Finally, I decided to use Jekyll as my main writing platform. So I would like to share the process I've been through to setup Jekyll and deploy the site to Github Pages. Hope that this could help you to own a blog and start to share your stories. Believe me, It is really great to share with people your stories.

### Why Jekyll + Github Pages?

Jekyll got me the first look because of its flexibility, I could tell you guys a bunch of things that Jekyll can do for you like customizing the CSS or the plugins. As a developer, I'm way excited in code highlight feature when writing technical posts.

With Github Pages, it's a part of Github so we could leverage a lot of cool features which is provided by Github. In this post, I also show you guys the deployment process which utilizes Travis (they allow free pipelines for public repository).

Okay. Let's get started.

### Setup writing environment

#### [Jekyll](https://jekyllrb.com/docs/installation/){:target="_blank"}

Follow the instruction to install Jekyll to the corresponding OS. Now you already have writing environment. Close the article 😄..

Just kidding!! After installing Jekyll, we can use it to create a new site by using `jekyll new <PATH>` (For more information: [Jekyll Command Line Usage](https://jekyllrb.com/docs/usage/){:target="_blank"}). Then `jekyll serve` to serve the site. Normally it will listen on port `4000` so you can open your browser and type in: `http://localhost:4000`.

![Jekyll Serve Command](/assets/images/posts/jekyll_serve.png){:.col-12.col-md-6.d-block.mx-auto}

(Ignore `2>/dev/null` part because there is a deprecated message issue with Jekyll 4.0, here is [Github issue](https://github.com/jekyll/jekyll/issues/7947){:target="_blank"} in case you want to follow)

Great! Now you can write posts and publish them to the world. We will move to the next phase to see how it does.

> Oh wait!.. In case you switch the environment or your friend join to write with you, make sure that all the gems are being installed before all steps. The command to install all gems in `Gemfile` is `bundle install`. Okay, let's move on to the next section.

### Write your first post

> Blogging is baked into Jekyll. You write blog posts as text files and Jekyll provides everything you need to turn it into a blog.

It's quite easy to create a new post using Jekyll. You just need to create a post file (markdown or even html file) with a template like so:

<figure>
  <figcaption>_posts/2020-05-12-first-post.md</figcaption>
{% highlight md %}
---
layout: post
title:  First post
date:   Tue May 12 07:27:37 +07 2020
categories: [Guideline]
tags: [Blogging]
author: hqtoan94
---

This is my first post
{% endhighlight %}
</figure>

Now you can get back to your browser, access to: `http://localhost:4000/2020-05-12-first-post.html` then you'll see the magic.

![First post](/assets/images/posts/first_post.png){:.col-12.col-md-6.d-block.mx-auto.border}

### Clean, Build and Test

To clean generated site, you could run: `jekyll clean`.

To generate production site? `JEKYLL_ENV=production jekyll build`. This will build jekyll site with production flag and you'll see the generated code inside `_site` folder.

After building the site, there is a step you might need to execute before publishing your site. We're all make mistakes so that a step to test our generated site might really helpful to mitigate the risk and make sure that your readers always be able to read your posts.

There is a gem which allows you to perform the step above: [html-proofer](https://github.com/gjtorikian/html-proofer){:target="_blank"}, HTMLProofer is a set of tests to validate your HTML output. To install it, you could add it into your `Gemfile` then run `bundle install` or you could run `gem install html-proofer`.

Then execute the test:

```bash
htmlproofer --check-html \
  --disable-external \
  _site
```

To understand more about the command, you could take a look at [the configuration page](https://github.com/gjtorikian/html-proofer#configuration){:target="_blank"} of `html-proofer`.

![HtmlProofer](/assets/images/posts/html-proofer.png){:.col-12.col-md-6.d-block.mx-auto}

### Deployment

#### 1. Manually:

Finished build step, you already have the website in `_site` folder. Now to deploy it, you just need to create a repository under your Github username like so: `<username>.github.io`. `github.io` is necessary since Github will use that to detect the repo as a Github Pages. Then yeah, commit and push all the files inside `_site` folder into the repo. Wait for a couple minues to see the website go live at `https://<username>.github.io`. Here is a [detailed document](https://jekyllrb.com/docs/github-pages/){:target="_blank"} about how to create Github Pages and deploy your Jekyll site.

#### 2. Automated:

As you might now, there are a lot of CI tools which offer free plans for Open Source projects such as Circle CI, Travis CI, etc.. But in this post, I will utilize Travis CI because there are some guidelines to handle this step by using Travis CI. Jekyll has [guided us to integrate Travis CI](https://jekyllrb.com/docs/deployment/automated/){:target="_blank"} as a Continuous Integration Service. Travis CI also has something else for us, [Github Pages Deployment guideline](https://docs.travis-ci.com/user/deployment/pages/){:target="_blank"}. Why we don't combine those 2 documents so that we could have a complete CI/CD solution? Hell yeah, let's set it up.

Firstly, we have to enable Travis and Github:

1. Go to your profile on travis-ci.org: https://travis-ci.org/profile/<username>
2. Find the Github Pages repo (supposed to be `<username>.github.io`)
3. Flick the repository switch on so that it turns blue.
4. Create `.travis.yml` file and config the job. Our configuration file will be built as below:

About build environment, let's just use default one from Travis CI (Ubuntu Xenial 16.04) and the programming language is `Ruby`.

```yaml
language: ruby
rvm:
  2.6.3
```

Travis CI has some default options for some fields in the configuration file. You could take a look at [Building a Ruby Project](https://docs.travis-ci.com/user/languages/ruby/){:target="_blank"} in Travis CI for more information. And one of that is `install` field and by default, it will run `bundle install --jobs=3 --retry=3` so we don't have to be worry about installing dependencies for Jekyll project anymore.

The next step, we will set value for script field to build Jekyll project and execute `htmlproofer` right after that.

```yaml
script:
  - JEKYLL_ENV=production bundle exec jekyll build
  - bundle exec htmlproofer --check-html --disable-external _site
```

Now you already have Travis CI configration as the Continuous Integrate Service. The final step, we will config Travis CI job to automatially deploy our blog. Just follow Github Pages Deployment guideline above to get the Token, set it up on Travis settings and add these lines:

```yaml
deploy:
  provider: pages
  skip_cleanup: true
  github_token: $GITHUB_TOKEN  # Set in the settings page of your repository, as a secure variable
  target_branch: master
  on:
    branch: source
```

After all, you will have travis configuration file like so:

<figure>
  <figcaption>.travis.yml</figcaption>
{% highlight yaml %}
language: ruby
rvm:
  2.6.3

script:
  - JEKYLL_ENV=production bundle exec jekyll build
  - bundle exec htmlproofer --check-html --disable-external _site

deploy:
  provider: pages
  skip_cleanup: true
  github_token: $GITHUB_TOKEN  # Set in the settings page of your repository, as a secure variable
  target_branch: master
  on:
    branch: source

env:
  global:
  - NOKOGIRI_USE_SYSTEM_LIBRARIES=true # speeds up installation of html-proofer
cache: bundler # caching bundler gem packages will speed up build
{% endhighlight %}
</figure>

From now on, when you push your post into a branch (neither `master` nor `source`) Travis CI will execute CI and CI only. This could help us to ensure that our new post won't break the site after generating. Then whenever we want to publish the post, just create PR into `source` branch. Merging it and Travis will handle the rest. It will execute CI process again then deploy the site by bringing all content in `_site` folder into `master` branch as the configuration.

### Conclusion

It's quite a long guideline to just setup a writing environment right? 😁. But yeah, I think it's necessary to share to you guys so that if you're stuck at choosing writing platform steps then this could help you to bypass these steps and move ahead to share your thought and your knowledge to the world. Hope that this article not only helps you guys to setup your own blog but also gives you some initial ideas about CI/CD for a small project. I will come up with another post soon, to discuss with you guys about CI/CD and what's the value it could bring to you and your projects.
