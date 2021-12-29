<title>{{ page.title || config.subtitle || '' }}</title>
<meta charset="UTF-8" />
<meta name="theme-color" content="#be223a" />
<meta
  name="viewport"
  content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=2.0"
/>
<meta name="apple-mobile-web-app-title" content="Glog" />
<meta name="application-name" content="Glog" />
<meta name="msapplication-TileColor" content="#be223a" />
<meta name="msapplication-TileImage" content="/assets/mstile-144x144.png" />
<meta name="msapplication-config" content="/assets/browserconfig.xml" />
<meta name="theme-color" content="#be223a" />
{{ open_graph({ twitter_id: 'PopDotLol' }) }}
<script
  src="//instant.page/5.1.0"
  type="module"
  integrity="sha384-by67kQnR+pyfy8yWP4kPO12fHKRLHZPfEsiSXR8u2IKcTdxD805MGUXBzVPnkLHw"
  defer
></script>
<script src="https://code.iconify.design/2/2.1.0/iconify.min.js" defer></script>

{% if config.vercel && config.cf_insight_token %}
<script
  defer
  src="https://static.cloudflareinsights.com/beacon.min.js"
  data-cf-beacon="{&quot;token&quot;: &quot;{{
    config.cf_insight_token
  }}&quot;}"
></script>
{% endif %}

<link rel="manifest" href="/assets/site.webmanifest" />
<link rel="shortcut icon" href="/assets/favicon.ico" />

<link rel="stylesheet" href="{{ url_for('css/style.css') }}" />
