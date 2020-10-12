load("@rules_java//java:defs.bzl", "java_library", "java_test")

package(default_visibility = ["//visibility:public"])

java_library(
    name = "compare",
    srcs = glob(["src/main/java/com/example/myproject/*.java"]),
    deps = ["@maven//:com_google_guava_guava"],
)

java_test(
    name = "compare-test",
    srcs = glob(["src/test/java/com/example/myproject/*.java"]),
    test_class = "com.example.myproject.CompareTest",
    deps = [
        ":compare",
        "@maven//:junit_junit",
    ],
)
