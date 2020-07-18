---
layout: page
title: About us
title_verbose: About us
permalink: /about/
custom_css:
  - about.css
---

{:.mt-5}
We're just some developers who want to giving our 2 cents to the world. Cuz sharing is caring.

---

{% for author in site.data.authors %}
  <div class="row justify-content-center justify-content-start p-3 shadow mb-5 mt-3 mx-xl-5">
      <div class="h-100 col-6 col-sm-4">
          <img src="{{ author.avatar }}" class="avatar" alt="{{ author.nickname}} Avatar">
          {% if author.badge %}
            <a href="{{ author.badge.link }}" target="_blank"><img class="cert-badge position-absolute" src="{{ author.badge.image }}" alt="Cert badge"></a>
          {% endif %}
      </div>
      <div class="flex-fill text-center text-md-right py-3">
          <h3 class="m-0"><a href="/about/{{ author.nickname }}/">{{ author.name }}</a></h3>
          <h5>Software Developer</h5>
          <i class="d-none d-md-block"><small>"{{ author.quote.content }}"</small></i>
          {%- assign post_counter = 0 -%}
          {%- assign categories = "" | split: ',' -%}
          {%- assign tags = "" | split: ',' -%}

          {%- for post in site.posts -%}
              {%- if post.author == author.nickname -%}
                  {%- assign post_counter = post_counter | plus: 1 -%}

                  {%- for category in post.categories -%}
                      {%- unless categories contains category -%}
                          {%- assign categories = categories | push: category -%}
                      {%- endunless -%}
                  {%- endfor -%}

                  {%- for tag in post.tags -%}
                      {%- unless tags contains tag -%}
                          {%- assign tags = tags | push: tag -%}
                      {%- endunless -%}
                  {%- endfor -%}
              {%- endif -%}
          {%- endfor -%}

          <div class="d-flex flex-row justify-content-center justify-content-md-end">
              <div class="px-3 px-md-0 ml-md-3">
                  Posts: {{ post_counter }}
              </div>
              <div class="px-3 px-md-0 ml-md-3">
                  Categories: {{ categories | size }}
              </div>
              <div class="px-3 px-md-0 ml-md-3">
                  Tags: {{ tags | size }}
              </div>
          </div>
          <hr class="ml-3 my-3">
      </div>
  </div>
{% endfor %}
