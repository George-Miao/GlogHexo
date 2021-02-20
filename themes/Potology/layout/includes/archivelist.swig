{% extends './base.swig' %}

{% block content %}
    <div class="dis_flex_center al_lightbox_cnt al_full_cover">
        <img class="al_lightbox_img"/>
    </div>
    <div class="al_page_background dis_flex_center al_full_cover"></div>
    <div class="al_page_container">
      <div class="al_pos_ab al_fake_background"></div>
      <div class="al_main_container al_shadow al_main_page_container ">
        <div class="al_archive">
          <div class="al_archive_title">
            {% block title %}{% endblock %}
          </div>
          <ul class="al_post_list">
            {% block list %}{% endblock %}
          </ul>
        </div>
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