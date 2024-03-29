{% extends './includes/base.swig' %}

{% block extra_style %}
    {% if theme.gitalk.enable %}
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.css">
    {% endif %}
{% endblock %}

{% block content %}
    <div class="dis_flex_center al_lightbox_cnt al_full_cover">
        <img class="al_lightbox_img"/>
    </div>
    <div class="al_page_background dis_flex_center al_full_cover"></div>
    <div class="al_pos_ab al_fake_background"></div>
    <div class="al_page_container">

        <div class="al_main_container al_shadow al_main_page_container">
            <article class="al_article">
                <div class="al_index_post_title_cnt dis_flex">
                    <div class="al_pos_ab al_letter al_post_title_letter nonselectable">
                        {{ page.title|default('No Title')|first|upper }}
                    </div>
                    <h1 class="al_page_title">
                        {{ page.title|default('No Title') }}
                    </h1>
                    <div class="al_page_info dis_flex">

                        {% if wordcount %}
                            <div class="al_page_content_info">
                                {{ wordcount(page.content) }} words
                            </div>
                        {% endif %}

                        {% if min2read %}
                            <div class="al_page_content_info">
                                {{ min2read(page.content) }} min
                            </div>
                        {% endif %}

                        {% if page.categories && page.categories.length %}
                            <div class="al_page_content_info">
                                In {{ list_categories(page.categories, { style: false, show_count: false, separator: "." }) }}
                            </div>
                        {% endif %}

                        <div class="al_page_content_info">
                            {{ page.date.format('MMM D, Y') }}
                        </div>
                    </div>
                    <div class="al_page_tags"> {{ list_tags(page.tags, { style: false, class: "al-tag", show_count: false, separator: "" }) }} </div>
                </div>

                {% if toc(page.content) && page.toc !== 'off' %}
                    <div class="al_page_content_outline">
                        {{ toc(page.content,{list_number:false}) }}
                    </div>
                {% endif %}

                {# Page Content #}
                <section id="post-body">
                    {{ page.content }}
                </section>

                {# Comment Plugins #}
                {% include "./includes/plugins/gitalk.swig" %}
                {% include "./includes/plugins/disqus.swig" %}
            </article>

            {# Navigate Element #}
            {% if page.prev !== 0 || page.next !== 0 %}
            <nav class="dis_flex al_post_nav">
                <a class="al_post_nav_item dis_flex_acenter" href="{{ url_for(page.prev.path) }}">
                    {% if page.prev %}
                        <svg class="al_arrow">
                            <use xmlns="http://www.w3.org/2000/svg" xlink:href="/assets/svg_icons.svg#svg-arrow-left"></use>
                        </svg>
                        <span class="al_text_ellipsis al_post_nav_desc">{{ page.prev.title }}</span>
                    {% endif %}
                </a>
                <a class="al_post_nav_item dis_flex_acenter" href="{{ url_for(page.next.path) }}">
                    {% if page.next %}
                        <span class="al_text_ellipsis al_post_nav_desc">{{ page.next.title }}</span>
                        <svg class="al_arrow">
                            <use xmlns="http://www.w3.org/2000/svg" xlink:href="/assets/svg_icons.svg#svg-arrow-right"></use>
                        </svg>
                    {% endif %}
                </a>
            </nav>
            {% endif %}
        </div>
    </div>

{% endblock %}
