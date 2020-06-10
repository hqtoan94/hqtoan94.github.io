---
layout: page
type: sub-page
title: About Hung
title_verbose: About Hung
permalink: /about/dotdak/
custom_css:
    - about.css
---
---

{% assign author = site.data.authors | where:"nickname","dotdak" | first %}

<div class="d-flex justify-content-center flex-column align-items-center my-3">
    <div class="col-6 col-md-3">
        <img src="{{ author.avatar }}" class="avatar" alt="{{ author.nickname }}'s Avatar">
    </div>
    <h3 class="mt-1">{{ author.name }}</h3>
    <p class="text-center">Software Engineer at KMS Technology, Inc</p>
    <div class="connect mx-3 d-flex flex-row align-items-center">
        <span class="mr-2">Connect me at:</span>
        <a href="https://www.linkedin.com/in/hung-hong-nguyen/" target="_blank">
            <i class="icon fab fa-linkedin mr-1"></i>
        </a>
        <a href="https://www.facebook.com/dotdak" target="_blank"><i class="icon fab fa-facebook mr-1"></i></a>
        &nbsp;&nbsp;
        <a href="https://github.com/dotdak" target="_blank"><i class="icon fab fa-github"></i></a>
    </div>
</div>

{:.text-center}
> "{{ author.quote.content }}" - {{ author.quote.said }}

{:.mt-3}
### Summary
- 1 year of experience working with Python - Django, JavaScript, HTML, CSS
- 6 months of experience working with Power BI, MSSQL Server, Microsoft SQL Server Analysis Services Tabular model
- Basic knowledge of NodeJS, Git, Docker + docker-compose, MongoDB

### Education
- Bachelor of Telecommunication, Ho Chi Minh University of Technology, Vietnam (Jan 2020)

### Skills

- **Languages & scripting**: Python, JavaScript
- 
- **Frameworks/Tools**: Django, ReactJS
- **Operating Systems**: Linux
- **Databases**: SQL Server, MongoDB
- **Infrastructure**: Docker, docker-compose, Python standard ASGI + WSGI
- **Other special skills**: Git

### Relevant Work Experience

<hr class="mb-3 w-50 mx-auto border">

##### Software Engineer at [KMS Technology](https://www.kms-technology.com/)

