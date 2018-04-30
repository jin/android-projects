# android_projects

A selection of generated Android projects buildable with Gradle and Bazel,
inspired by
[https://github.com/sunyal/gradle-profiler](https://github.com/sunyal/gradle-profiler).
This project reuses some of the configuration and scripts in
[https://github.com/sunyal/gradle-profiler](https://github.com/sunyal/gradle-profiler)
as well.

These projects are used for A/B testing build optimizations with the build systems.

# Building and benchmarking

For all projects, in each subdirectory:

- `bazel build //androidAppModule0`
- `gradle assembleDebug`

To benchmark, run the project's `benchmark.sh` script to trigger builds with
Gradle and Bazel. The results are recorded as CSV and HTML in the project's
`output` folder.

# Project generation

The projects are generated using various topologies, listed
[here](https://github.com/android/android-studio-poet/commit/d7a97aa679438aedac7229b50f72d9526552b8b7).

You can generate more by running:

```
# Generate the project sources
$ java -jar third_party/android-studio-poet-all-1.0-SNAPSHOT-BAZEL-EXTENSIONS.jar example_config.json

# Prepare the benchmark scripts and generate the Bazel and Gradle dependency graph PNGs
$ ./prepare_project.sh $name_of_project 
```

where [example_config.json](example_config.json) contains your desired project setup.

Remember to refer to the dependency graphs when modifying the file paths in the
project's `performance.scenarios`. Every project has different Java/Android
modules for leaf and root nodes.

The `android-studio-poet` fork is here: https://github.com/jin/android-studio-poet

## Benchmarking

Go into the project subdirectory and run `./benchmark.sh`. This will trigger
Gradle and Bazel to run the scenarios defined in the project's
`performance.scenarios`.

# Projects

## [simple_tree](/simple_tree)

### Gradle graph

![](simple_tree/gradle_graph.png)

### Bazel graph

![](simple_tree/bazel_graph.png)

## [variable_tree](/variable_tree)

### Gradle graph

![](variable_tree/gradle_graph.png)

### Bazel graph

![](variable_tree/bazel_graph.png)

## [big_variable_tree](/big_variable_tree)

### Gradle graph

![](big_variable_tree/gradle_graph.png)

### Bazel graph

![](big_variable_tree/bazel_graph.png)

## [full](/full)

### Gradle graph

![](full/gradle_graph.png)

### Bazel graph

![](full/bazel_graph.png)

## [connected](/connected)

### Gradle graph

![](connected/gradle_graph.png)

### Bazel graph

![](connected/bazel_graph.png)

## [linear](/linear)

### Gradle graph

![](linear/gradle_graph.png)

### Bazel graph

![](linear/bazel_graph.png)

## [star](/star)

### Gradle graph

![](star/gradle_graph.png)

### Bazel graph

![](star/bazel_graph.png)

## [rectangle](/rectangle)

### Gradle graph

![](rectangle/gradle_graph.png)

### Bazel graph

![](rectangle/bazel_graph.png)

## [connected_rectangle](/connected_rectangle)

### Gradle graph

![](connected_rectangle/gradle_graph.png)

### Bazel graph

![](connected_rectangle/bazel_graph.png)
