---
layout: page
type: sub-page
title: About Minh
title_verbose: About Minh
permalink: /about/boylavua18/
custom_css:
    - about.css
---
---

{% assign author = site.data.authors | where:"nickname","boylavua18" | first %}

<div class="d-flex justify-content-center flex-column align-items-center my-3">
    <div class="col-6 col-md-3">
        <img src="{{ author.avatar }}" class="avatar" alt="{{ author.nickname }}'s Avatar">
    </div>
    <h3 class="mt-1">{{ author.name }}</h3>
    <p class="text-center">Software Engineer at KMS Technology, Inc</p>
    <div class="connect mx-3 d-flex flex-row align-items-center">
        <span class="mr-2">Connect me at:</span>
        <a href="https://www.facebook.com/boylavua18" target="_blank"><i class="icon fab fa-facebook mr-1"></i></a>
        &nbsp;&nbsp;
        <a href="https://github.com/boylavua18" target="_blank"><i class="icon fab fa-github"></i></a>
    </div>
</div>
