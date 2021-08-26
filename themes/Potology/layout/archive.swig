{% extends './includes/archivelist.swig' %}

{% block title %}
    <div class="al_pos_ab al_letter al_archive_title_letter nonselectable">
      A
    </div>
    <h1 class="al_page_title">Archive</h1>
{% endblock %}

{% block list %}
{{page.year}}
  {% for item in page.posts %}
    <li class="al_archive_item">
      <div class="al_archive_item_date">{{item.date.format("YYYY-MM-DD")}}</div>
      <a class="al_archive_item_title" href="{{ url_for(item.link||item.path) }}">{{item.title|default('No Title')}}</a>
    </li>
  {% endfor %}
{% endblock %}