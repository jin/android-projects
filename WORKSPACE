android_sdk_repository(name = "androidsdk")

repositories = [
    "connected",
    "connected_rectangle",
    "full",
    "linear",
    "rectangle",
    "simple_tree",
    "star",
    "variable_tree",
]

[local_repository(
    name = "%s" % repository,
    path = "./%s" % repository,
) for repository in repositories]
