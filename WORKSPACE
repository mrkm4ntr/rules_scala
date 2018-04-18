workspace(name = "io_bazel_rules_scala")



load("//scala:scala.bzl", "scala_repositories", "scala_mvn_artifact")
scala_repositories()

load("//twitter_scrooge:twitter_scrooge.bzl", "twitter_scrooge", "scrooge_scala_library")
twitter_scrooge()

load("//tut_rule:tut.bzl", "tut_repositories")
tut_repositories()

load("//jmh:jmh.bzl", "jmh_repositories")
jmh_repositories()

load("//scala_proto:scala_proto.bzl", "scala_proto_repositories")
scala_proto_repositories()

load("//specs2:specs2_junit.bzl","specs2_junit_repositories")
specs2_junit_repositories()

# test adding a scala jar:
maven_jar(
  name = "com_twitter__scalding_date",
  artifact = scala_mvn_artifact("com.twitter:scalding-date:0.17.0"),
  sha1 = "420fb0c4f737a24b851c4316ee0362095710caa5"
)

# For testing that we don't include sources jars to the classpath
maven_jar(
  name = "org_typelevel__cats_core",
  artifact = scala_mvn_artifact("org.typelevel:cats-core:0.9.0"),
  sha1 = "b2f8629c6ec834d8b6321288c9fe77823f1e1314"
)


# test of a plugin
maven_jar(
  name = "org_psywerx_hairyfotr__linter",
  artifact = scala_mvn_artifact("org.psywerx.hairyfotr:linter:0.1.13"),
  sha1 = "e5b3e2753d0817b622c32aedcb888bcf39e275b4")

# test of strict deps (scalac plugin UT + E2E)
maven_jar(
    name = "com_google_guava_guava_21_0_with_file",
    artifact = "com.google.guava:guava:21.0",
    sha1 = "3a3d111be1be1b745edfa7d91678a12d7ed38709"
)

maven_jar(
    name = "org_apache_commons_commons_lang_3_5",
    artifact = "org.apache.commons:commons-lang3:3.5",
    sha1 = "6c6c702c89bfff3cd9e80b04d668c5e190d588c6"
)

http_archive(
    name = "com_google_protobuf",
    urls = ["https://github.com/google/protobuf/archive/106ffc04be1abf3ff3399f54ccf149815b287dd9.zip"],
    strip_prefix = "protobuf-106ffc04be1abf3ff3399f54ccf149815b287dd9",
    sha256 = "4d127e1c3608803bc845cc4b3c8c42a6a16263b6ddcb932b53049e7ec8101398",
)

http_archive(
    name = "com_google_protobuf_java",
    urls = ["https://github.com/google/protobuf/archive/106ffc04be1abf3ff3399f54ccf149815b287dd9.zip"],
    strip_prefix = "protobuf-106ffc04be1abf3ff3399f54ccf149815b287dd9",
    sha256 = "4d127e1c3608803bc845cc4b3c8c42a6a16263b6ddcb932b53049e7ec8101398",
)

new_local_repository(
    name = "test_new_local_repo",
    path = "third_party/test/new_local_repo",
    build_file_content = 
"""
filegroup(
    name = "data",
    srcs = glob(["**/*.txt"]),
    visibility = ["//visibility:public"],
)
"""
)

load("@io_bazel_rules_scala//scala:toolchains.bzl","scala_register_toolchains")
scala_register_toolchains()

load("//scala:scala_maven_import_external.bzl", "scala_maven_import_external", "java_import_external")
scala_maven_import_external(
    name = "com_google_guava_guava_21_0",
    licenses = ["notice"],  # Apache 2.0
    artifact = "com.google.guava:guava:21.0",
    server_urls = ["https://mirror.bazel.build/repo1.maven.org/maven2"],
    jar_sha256 = "972139718abc8a4893fa78cba8cf7b2c903f35c97aaf44fa3031b0669948b480",
)

# bazel's java_import_external has been altered in rules_scala to be a macro based on jvm_import_external
# in order to allow for other jvm-language imports (e.g. scala_import)
# the 3rd-party dependency below is using the java_import_external macro
# in order to make sure no regression with the original java_import_external
load("//scala:scala_maven_import_external.bzl", "java_import_external")
java_import_external(
    name = "org_apache_commons_commons_lang_3_5_without_file",
    licenses = ["notice"],  # Apache 2.0
    jar_urls = ["http://central.maven.org/maven2/org/apache/commons/commons-lang3/3.5/commons-lang3-3.5.jar"],
    jar_sha256 = "8ac96fc686512d777fca85e144f196cd7cfe0c0aec23127229497d1a38ff651c",
)