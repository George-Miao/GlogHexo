<title>{{ page.title || config.subtitle || '' }}</title>
<meta charset="UTF-8">
<meta name="theme-color" content="#be223a">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=2.0">
{{ open_graph({"twitter_id": "PopDotLol"}) }}
<script src="//instant.page/5.1.0" type="module" integrity="sha384-by67kQnR+pyfy8yWP4kPO12fHKRLHZPfEsiSXR8u2IKcTdxD805MGUXBzVPnkLHw" defer></script>

{% if config.vercel && config.cf_insight_token %}
<script
defer
src='https://static.cloudflareinsights.com/beacon.min.js'
data-cf-beacon='{"token": "{{ config.cf_insight_token }}"}'>
</script>
{% endif %}

<!--
<link rel="shortcut icon" href="{{ url_for('favicon.ico') }}">
<link rel="apple-touch-icon" href="{{ url_for('apple-touch-icon.png') }}">
<link rel="icon" type="image/png" sizes="16x16" href="{{ url_for('favicon-16x16.png') }}">
<link rel="icon" type="image/png" sizes="32x32" href="{{ url_for('favicon-32x32.png') }}">
-->

<link rel="stylesheet" href = "{{ url_for('css/style.css') }}">