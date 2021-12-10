
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
</html>