# From https://github.com/sunyal/gradle-profiler
# INSTRUCTION:
#
# For leaf scenarios, change the androidAppModule number and package name to a
# leaf node as shown in the Gradle/Bazel graphs.

################################################################################
# Local Cache - Cold, but keeping Gradle Daemon / Bazel Server alive
################################################################################
cleanWithColdLocalCacheWithDaemon {
  tasks = [":module0:assembleDebug"]
  clear-build-cache-before = BUILD
  cleanup-tasks = ["clean", "cleanBuildCache"]
  bazel {
    targets = ["//module0"]
    commands = ["--bazelrc=/dev/null", "build", "--profile=%version%_profile.dat"]
    clean-build-before = [
      {
        schedule = SCENARIO
        commands = ["bazel", "clean", "--expunge"]
      },
      {
        schedule = BUILD
        commands = ["bazel", "clean"]
      }
    ]
  }
}
