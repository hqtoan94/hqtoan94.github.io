---
layout: page
type: sub-page
title: About Toan
title_verbose: About Toan
permalink: /about/hqtoan94/
custom_css:
  - about.css
---

---

{% assign author = site.data.authors | where:"nickname","hqtoan94" | first %}

<div class="d-flex justify-content-center flex-column align-items-center my-3">
    <div class="col-6 col-md-3 position-relative">
        <img src="{{ author.avatar }}" class="avatar" alt="{{ author.name }}'s Avatar">
        <a href="{{ author.badge.link }}" target="_blank"><img class="cert-badge position-absolute" src="{{ author.badge.image }}"></a>
    </div>
    <h3 class="mt-1">{{ author.name }}</h3>
    <p class="text-center">I'm faking to be a Tech Lead</p>
    <div class="connect mx-3 d-flex flex-row align-items-center">
        <a href="mailto:hqtoan94@gmail.com" target="_blank"><i class="icon fab fa-google mr-1"></i></a>
        &nbsp;&nbsp;
        <a href="https://www.facebook.com/hqtoan94" target="_blank"><i class="icon fab fa-facebook mr-1"></i></a>
        &nbsp;&nbsp;
        <a href="https://github.com/hqtoan94" target="_blank"><i class="icon fab fa-github"></i></a>
    </div>
</div>

{:.text-center}
> "{{ author.quote.content }}" - {{ author.quote.said }}

{:.mt-3}
### Summary

- 4 years of experience in Software Development
- 4 years of experience working with Python - Django, JavaScript, HTML, CSS
- Have worked with Angular, ReactJS, React Native, MeteorJS
- Avid user of Git, Docker & docker-compose
- Strong understanding of Software Development Lifecycle, ability to apply Jenkins, Docker for CI/CD process
- 1 year of experience in AWS, as a Solutions Architect

### Education

- Bachelor of Computer Science, University of Science, Vietnam (August 2016)

### Skills

- **Languages & scripting**: Python, JavaScript
- **Frameworks/Tools**: Django, ReactJS
- **Operating Systems**: OS X, Linux
- **Databases**: PostgreSQL
- **Configuration Management Tools**: Docker, docker-compose, Jenkins
- **Other special skills**: Git, AWS (EC2, S3, RDS, IAM)
- **Personal/Inter-personal skills**: Problem solving, self-confidence, creativity, integrity, leadership, teamwork, adaptability, learning ability, responsibility, R&D

### Hobbies and Interests

- Reading technical blogs and books, learning and implementing new technologies
- Sharing knowledge with other people (offline meet-ups, company sharing sessions)
- Building websites and SaaS products to solve eCommerce seller's problems
- Interested in Software Architecture, Data Analysis, Machine Learning, AI

### Relevant Work Experience

<hr class="mb-3 w-50 mx-auto border">

##### (2018-2020) Senior Software Engineer at [KMS Technology](https://www.kms-technology.com/)

> KMS has built a great working enviroment where employees can thrive on their own pace, allows employees develop their career path based on their interests. I've learned a lot from KMS not only about Software stuffs but also about life, relationship, etc..

Detailed achievements:

  * Collaborated with Team Lead, Engineer Manager to manage off-site team, design application architecture and control technical debt
  * Worked directly with client to discuss about the solutions, refine backlog items
  * Involved to control the quality of the delivery by applying TDD, setting up CI/CD process (static code analysis tools, executing unit-tests, integration tests and automation tests) and performing code review.
  * Gave technical advices for the team. Lead and trained fresher/junior developers to improve team's velocity
  * Collaborated with HR team to hiring new candidates
  * Conducted sharing sessions to share my technical knowledge
  * Had awareness about Software Development Lifecycle, Development Process

<hr class="mb-3 w-50 mx-auto border">

##### (2017-2018) Freelancer - Self-employed

> It's great to work as a freelancer. You have flexible time, stress-free to decide the tech stack to build the software and then learn from it.

Detailed achievements:

  * Built application from scratch and handled it from development to deployment
  * Handled production issues and communicated directly with customer to solve the escaped bugs, system issues
  * Worked with some foreign friends, learned a lot from them about the business domain and a lot other things. Kind of great working experiences I've ever had
  * Learned new technologies and tools such as React Native, Chrome Extension, Gitlab CI, etc..
  * Built application/tools to help people to boost up their business

Highlight projects:

  * [Amz Repricer Enhanced](https://www.amzrepricerenhanced.com/){:target="_blank"}
  * [Amz Quick Copy](http://amzquickcopy.com/){:target="_blank"}

<hr class="mb-3 w-50 mx-auto border">

##### (2016-2017) Software Engineer at Free Range Technology

> This is my first company where I started my career path. It's an outsourcing company at the time but they also invest to build a tool which helps Amazon sellers to find profitable products from other sources so that they could list it to their Seller Central.

Detailed achievements:

  * Involved to design, architecture the app with other Senior Engineers
  * Handled the crawler by adding new sources, integrated proxy to bypass Captcha issue
  * Designed distributed architecture for the crawler to easily scale
  * Involved to create and correct formulas to calculate the profit between founded products
  * Improved English skills to be able to work with foreign people
