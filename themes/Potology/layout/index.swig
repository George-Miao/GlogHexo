{% extends './includes/indexlist.swig' %}
{% block list %}
<ul class="al_post_list">
    {% for item in page.posts %}
        <li class="al_index_pageList_item al_index_page_seperator">
            <div class="al_index_post_title_cnt dis_flex">
                <div class="al_pos_ab al_letter al_index_post_title_letter nonselectable">
                    {{ item.title|default('No Title')|first|upper }}
                </div>
                <h2 class="al_index_post_title">
                    <a href="{{ url_for(item.link||item.path) }}">
                        {{ item.title|default('No Title') }}
                    </a>
                </h2>
                <div class="al_index_post_extra dis_flex">
                    <div class="al_index_post_date al_index_post_extra_item">
                        {{ item.date.format(config.date_format) }}
                    </div>

                    {% if wordcount %}
                        <div class="al_page_content_info">
                            {{ wordcount(item.content) }} words
                        </div>
                    {% endif %}
                    {% if min2read %}
                        <div class="al_page_content_info">
                            {{ min2read(item.content) }} Min Read
                        </div>
                    {% endif %}
                    {% if item.categories && item.categories.length %}
                        <div class="al_page_content_info">
                            In {{ list_categories(item.categories, { style: false, show_count: false, separator: ". " }) }}
                        </div>
                    {% endif %}
                    </div>
                    {% if item.tags && item.tags.length %}
                    <div class="al_page_tags"> {{ list_tags(item.tags, { style: false, class: "al-tag", show_count: false, separator: "" }) }}</div>
                    {% endif %}
                </div>
                <div class="al_index_post_excerpt_cnt">
                    <p class="al_index_post_excerpt">
                        {{ item.excerpt|striptags }}
                    </p>
                </div>
                <div class="al_index_post_button_cnt dis_flex">
                    <a class="al_button al_button_theme al_index_post_button" href="{{ item.link || item.path }}">
                        READ ON
                    </a>
                </div>
        </li>
    {% endfor %}
</ul>
{% endblock %}