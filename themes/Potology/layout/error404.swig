{% extends "./includes/base.swig" %}
{% block content %}
    
    <div class="dis_flex_center al_lightbox_cnt al_full_cover">
        <img class="al_lightbox_img"/>
    </div>
    <div class="al_page_background dis_flex_center al_full_cover"></div>
    <div class="al_page_container">
      <div class="al_pos_ab al_fake_background"></div>
      <div class="al_main_container al_shadow al_main_page_container ">
        <div class="al_article al_error">
            <div class="al_pos_ab al_letter al_archive_title_letter nonselectable">
              O
            </div>
            <h1 class="al_page_title ">OOPS</h1>
        </div>
        <div class="al_error_info_container">
          <a class="al_error_ques">Why am I seeing this page?</a>
          <a class="al_error_ans"> - Because we cannot find the page you are looding for</a>
          <a class="al_error_ans"> - Maybe you entered the wrong URL</a>
          <a class="al_error_ans"> - Maybe my website just fxxked up</a>
          <a class="al_error_ans"> - There are many possibilities</a>
          <a class="al_error_ans"> - So why not go back to home?</a>
          <a class="al_button al_button_theme al_index_post_button al_back_home_button" href="/">
            Go back
          </a>
        </div>
      </div>
    </div>
{% endblock %}