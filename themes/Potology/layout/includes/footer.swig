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
        Theme
        <a href="https://miao.dev">Potology</a>
        / Powered by
        <a href="https://hexo.io/">Hexo</a>

        {% if config.vercel %}
            / Deployed on
            <a href="vercel.com">Vercel</a>
        {% endif %}
    </div>

    <div class="al_index_footer_item al_index_footer_extra">
        Subscribe: <a href="/atom.xml" title="Atom subscription">Atom</a> / <a href="/rss2.xml" title="RSS subscription">RSS</a>
    </div>

    {% if config.vercel && config.commit_sha && config.commit_branch %}
        <div class="al_index_footer_item al_index_footer_extra">
             Commit <a href="https://github.com/George-Miao/GlogHexo/commit/{{ config.commit_sha }}">#{{ truncate(config.commit_sha, {length: 7, omission: ' '}) }}</a>
             on branch <a href="https://github.com/George-Miao/GlogHexo/tree/{{ config.commit_branch }}">{{ config.commit_branch }}</a>
        </div>
    {% endif %}

    <div class="al_index_footer_item al_index_footer_extra_right">
        Copyright © {{ date(Date.now(), 'YYYY') }} Glog
    </div>
</div>
