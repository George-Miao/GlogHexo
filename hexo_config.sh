echo $VERCEL_GIT_COMMIT_SHA
hexo="node_modules/.bin/hexo"
$hexo config commit_sha $VERCEL_GIT_COMMIT_SHA
$hexo config commit_branch $VERCEL_GIT_COMMIT_REF
$hexo config cf_insight_token $CF_INSIGHT_TOKEN