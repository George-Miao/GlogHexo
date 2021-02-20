<div class="al_index_footer dis_flex_center">
    <div class="al_index_footer_item al_index_footer_title">
        {{ config.author }}
    </div>

    {# ICPLicense #}
    {% if theme.ICPLicense.enable === true %}
        <div class="al_index_footer_item" onclick="window.open('http://www.beian.miit.gov.cn')")>
            {{ theme.ICPLicense.content }}
        </div>
    {% endif %}

    <div class="al_index_footer_item al_index_footer_extra">
        Built with
        <a>Potology</a>
        / Power by 
        <a href="https://hexo.io/">Hexo</a>
    </div>

    <div class="al_index_footer_item al_index_footer_extra_right">
        Copyright © 2021 Glog
    </div>
</div>
