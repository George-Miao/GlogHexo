{% extends './base.swig' %}

{% block content %}
    <div class="al_index_background dis_flex_center al_full_cover">
        <div class="al_pos_ab al_letter al_index_background_letter">
            {{ config.bio|default('A Simple Fu')|first|upper }}
        </div>
        <h2 class="al_index_background_bio">
            {{ config.bio|default('A Simple Fu') }}
        </h2>
    </div>

    <div class="al_index_container">
        <div class="al_pos_ab al_fake_background"></div>
        <div class="al_main_container al_shadow">
            <div class="al_section_container dis_flex_jcenter">
                <div class="section_header">
                    LATEST POSTS
                </div>
            </div>

            {% block list %}{% endblock %}

            <nav class="dis_flex al_post_nav">
                <a class="al_post_nav_item dis_flex_acenter" href="{{ '/' + page.prev_link || '/' }}">
                    {% if page.prev !== 0 %}
                        <svg class="al_arrow">
                            <use xmlns="http://www.w3.org/2000/svg" xlink:href="/assets/svg_icons.svg#svg-arrow-left"></use>
                        </svg>
                        <span>Newer Posts</span>
                    {% endif %}
                </a>
                <a class="al_post_nav_item dis_flex_acenter" href="{{ '/' + page.next_link || '/' }}">
                    {% if page.next !== 0 %}
                        <span>Older Posts</span>
                        <svg class="al_arrow">
                            <use xmlns="http://www.w3.org/2000/svg" xlink:href="/assets/svg_icons.svg#svg-arrow-right"></use>
                        </svg>
                    {% endif %}
                </a>
            </nav>
        </div>
    </div>
{% endblock %}