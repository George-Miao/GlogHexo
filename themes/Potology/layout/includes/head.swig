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

{% if config.vercel && config.cf_insight_token %}
<script
  defer
  src="https://static.cloudflareinsights.com/beacon.min.js"
  data-cf-beacon="{&quot;token&quot;: &quot;{{
    config.cf_insight_token
  }}&quot;}"
></script>
{% endif %}

<link
  rel="apple-touch-icon"
  sizes="180x180"
  href="/assets/apple-touch-icon.png"
/>
<link
  rel="icon"
  type="image/png"
  sizes="32x32"
  href="/assets/favicon-32x32.png"
/>
<link
  rel="icon"
  type="image/png"
  sizes="194x194"
  href="/assets/favicon-194x194.png"
/>
<link
  rel="icon"
  type="image/png"
  sizes="192x192"
  href="/assets/android-chrome-192x192.png"
/>
<link
  rel="icon"
  type="image/png"
  sizes="16x16"
  href="/assets/favicon-16x16.png"
/>
<link rel="manifest" href="/assets/site.webmanifest" />
<link rel="mask-icon" href="/assets/safari-pinned-tab.svg" color="#be223a" />
<link rel="shortcut icon" href="/assets/favicon.ico" />

<link rel="stylesheet" href="{{ url_for('css/style.css') }}" />
