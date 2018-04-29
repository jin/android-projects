android_sdk_repository(name = "androidsdk")

load("//:repositories.bzl", "repositories")

[local_repository(
    name = "%s" % repository,
    path = "./%s" % repository,
) for repository in repositories]
