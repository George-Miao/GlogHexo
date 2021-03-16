
<!DOCTYPE html>
<html lang="{{ config.language }}">
    <head>
        {% include "./head.swig" %}
        {% block extra_style %}{% endblock  %}
    </head>
    <body>
        {% include "./headerbar.swig" %}
        {% block content %}{% endblock %}
        {% include "./footer.swig" %}
        {% include "./plugins/mtaTencentAnalytice.swig" %}
        {% include "./plugins/baiduAnalytice.swig" %}
        {% include "./plugins/googleAnalytice.swig" %}
        {% include "./plugins/plugin.swig" %}
    </body>
    <script defer src='https://static.cloudflareinsights.com/beacon.min.js' data-cf-beacon='{"token": "b14ec022a53c4b5ea57485e234316310"}'></script>
</html>
        