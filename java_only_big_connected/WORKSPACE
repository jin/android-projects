android_sdk_repository(name = "androidsdk")
# Google Maven Repository
GMAVEN_TAG = "0.1.0"

http_archive(
    name = "gmaven_rules",
    strip_prefix = "gmaven_rules-%s" % GMAVEN_TAG,
    urls = ["https://github.com/bazelbuild/gmaven_rules/archive/%s.tar.gz" % GMAVEN_TAG],
)

load("@gmaven_rules//:gmaven.bzl", "gmaven_rules")
gmaven_rules()
