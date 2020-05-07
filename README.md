# Awakening Squad's Blog

[![Build Status](https://travis-ci.org/hqtoan94/hqtoan94.github.io.svg?branch=source)](https://travis-ci.org/hqtoan94/hqtoan94.github.io)

[https://hqtoan94.github.io](https://hqtoan94.github.io)

## Setup writing environment:

1. Install jekyll by following [Jekyll Installation guideline](https://jekyllrb.com/docs/installation/)

2. Install nvm & node >8.16.0

3. Install blog dependencies:

    ```
    npm install
    bundle install
    ```

4. Start writing: `make watch` or `bundle exec jekyll serve --watch`

## Writing flow:

![Writing flow image](https://github.com/hqtoan94/hqtoan94.github.io/blob/source/assets/images/writing-flow.png)

I've setup Travis to build new posts so that we just need to focus on our writing branches and `source` branch. Every changes in source branch will trigger the build and deploy the blog with new posts.

## Commands:

1. Create new post:

```
./scripts/create_post.sh "<Post title>" "[Category1, Category2]" "[Tag1, Tag2]" <author_username>
```

Enjoy!
