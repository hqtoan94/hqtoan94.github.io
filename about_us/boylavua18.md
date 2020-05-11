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
        <a href="mailto:minhpq.contact@gmail.com" target="_blank"><i class="icon fab fa-google mr-1"></i></a>
        &nbsp;&nbsp;
        <a href="https://www.facebook.com/minh.phan.90663" target="_blank"><i class="icon fab fa-facebook mr-1"></i></a>
        &nbsp;&nbsp;
        <a href="https://github.com/boylavua18" target="_blank"><i class="icon fab fa-github"></i></a>
    </div>
</div>

{:.text-center}
> "{{ author.quote.content }}" - {{ author.quote.said }}

{:.mt-3}
### Summary

* 1 year of experience in Software Development
* 1 year of experience in Python, Neo4j, Splunk
* Have worked with Python - Django, PyQT
* Have a taste of NodeJS, Express and SocketIO.

### Education

* Bachelor of Software Engineer, FPT University, Vietnam (August 2018)

### Skills

* **Languages & scripting**: Python, JavaScript
* **Frameworks/Tools**: Django, PowerBI
* **Operating Systems**: Linux
* **Databases**: Microsoft SQL
* **Other special skills**: Git
* **Personal/Inter-personal skills**: Problem solving, teamwork, responsibility.

### Hobbies and Interests

* Solving algorithms on some skills-based assessment platforms
* Reading books about Science, detective and information technology
* Listening to music, watch anime and read manga sometimes
