load("//scala:scala.bzl",
  "scala_mvn_artifact",
  "scala_library",
  "collect_jars",
  "create_java_provider")

def scala_proto_repositories():
    native.maven_server(
        name = "scala_proto_deps_maven_server",
        url = "http://central.maven.org/maven2/",
    )

    native.maven_jar(
        name = "scala_proto_rules_protoc_jar",
        artifact = "com.github.os72:protoc-jar:3.5.1.1",
        sha1 = "abb56febf99905fa0e5199b7d8ec64b0057cc8d5",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/protoc',
        actual = '@scala_proto_rules_protoc_jar//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_scalapb_plugin",
        artifact = scala_mvn_artifact("com.thesamet.scalapb:compilerplugin:0.7.2"),
        sha1 = "d49d5731af36d36422d12a7e85febac95d87a5c7",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/scalapb_plugin',
        actual = '@scala_proto_rules_scalapb_plugin//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_protoc_bridge",
        artifact = scala_mvn_artifact("com.thesamet.scalapb:protoc-bridge:0.7.3"),
        sha1 = "ac6f5164745f8c796528a6cdd4ecf0e2814010cd",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/protoc_bridge',
        actual = '@scala_proto_rules_protoc_bridge//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_scalapbc",
        artifact = scala_mvn_artifact("com.thesamet.scalapb:scalapbc:0.7.2"),
        sha1 = "ff08ac2b93c5aa102c729ffd1e9485a27baf832c",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/scalapbc',
        actual = '@scala_proto_rules_scalapbc//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_scalapb_runtime",
        artifact = scala_mvn_artifact("com.thesamet.scalapb:scalapb-runtime:0.7.2"),
        sha1 = "47e554a37d53f828496c1f89575328bc5783273d",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/scalapb_runtime',
        actual = '@scala_proto_rules_scalapb_runtime//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_scalapb_runtime_grpc",
        artifact = scala_mvn_artifact("com.thesamet.scalapb:scalapb-runtime-grpc:0.7.2"),
        sha1 = "6e9fdd815caec7569e22a2f856e1fcb9ddc149da",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/scalapb_runtime_grpc',
        actual = '@scala_proto_rules_scalapb_runtime_grpc//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_scalapb_lenses",
        artifact = scala_mvn_artifact("com.thesamet.scalapb:lenses:0.7.0"),
        sha1 = "c8667ae573ceceac958a6639a2d3b350ddb911c4",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/scalapb_lenses',
        actual = '@scala_proto_rules_scalapb_lenses//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_scalapb_fastparse",
        artifact = scala_mvn_artifact("com.lihaoyi:fastparse:1.0.0"),
        sha1 = "334cc8841a7f72a16c258252232fd1db8c0e9791",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/scalapb_fastparse',
        actual = '@scala_proto_rules_scalapb_fastparse//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_grpc_core",
        artifact = "io.grpc:grpc-core:1.11.0",
        sha1 = "d0aa483ab2189b16f06f101f6e82dd601bb4a266",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/grpc_core',
        actual = '@scala_proto_rules_grpc_core//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_grpc_stub",
        artifact = "io.grpc:grpc-stub:1.11.0",
        sha1 = "692522483a8fd32916125733b7030c8c4b722f84",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/grpc_stub',
        actual = '@scala_proto_rules_grpc_stub//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_grpc_protobuf",
        artifact = "io.grpc:grpc-protobuf:1.11.0",
        sha1 = "b87abe640170a6eaee11834098e6eec6b53b85b3",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/grpc_protobuf',
        actual = '@scala_proto_rules_grpc_protobuf//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_grpc_netty",
        artifact = "io.grpc:grpc-netty:1.11.0",
        sha1 = "fd1f99288a19c0d881f02ca0fb35d9527a8e0f79",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/grpc_netty',
        actual = '@scala_proto_rules_grpc_netty//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_grpc_context",
        artifact = "io.grpc:grpc-context:1.11.0",
        sha1 = "ce572ec046f6967d34fbac35eda20b4d0ed58c78",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/grpc_context',
        actual = '@scala_proto_rules_grpc_context//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_guava",
        artifact = "com.google.guava:guava:19.0",
        sha1 = "6ce200f6b23222af3d8abb6b6459e6c44f4bb0e9",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/guava',
        actual = '@scala_proto_rules_guava//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_google_instrumentation",
        artifact = "com.google.instrumentation:instrumentation-api:0.3.0",
        sha1 = "a2e145e7a7567c6372738f5c5a6f3ba6407ac354",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/google_instrumentation',
        actual = '@scala_proto_rules_google_instrumentation//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_netty_codec",
        artifact = "io.netty:netty-codec:4.1.8.Final",
        sha1 = "1bd0a2d032e5c7fc3f42c1b483d0f4c57eb516a3",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/netty_codec',
        actual = '@scala_proto_rules_netty_codec//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_netty_codec_http",
        artifact = "io.netty:netty-codec-http:4.1.8.Final",
        sha1 = "1e88617c4a6c88da7e86fdbbd9494d22a250c879",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/netty_codec_http',
        actual = '@scala_proto_rules_netty_codec_http//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_netty_codec_socks",
        artifact = "io.netty:netty-codec-socks:4.1.8.Final",
        sha1 = "7f7c5f5b154646d7c571f8ca944fb813f71b1d51",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/netty_codec_socks',
        actual = '@scala_proto_rules_netty_codec_socks//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_netty_codec_http2",
        artifact = "io.netty:netty-codec-http2:4.1.8.Final",
        sha1 = "105a99ee5767463370ccc3d2e16800bd99f5648e",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/netty_codec_http2',
        actual = '@scala_proto_rules_netty_codec_http2//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_netty_handler",
        artifact = "io.netty:netty-handler:4.1.8.Final",
        sha1 = "db01139bfb11afd009a695eef55b43bbf22c4ef5",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/netty_handler',
        actual = '@scala_proto_rules_netty_handler//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_netty_buffer",
        artifact = "io.netty:netty-buffer:4.1.8.Final",
        sha1 = "43292c2622e340a0d07178c341ca3bdf3d662034",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/netty_buffer',
        actual = '@scala_proto_rules_netty_buffer//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_netty_transport",
        artifact = "io.netty:netty-transport:4.1.8.Final",
        sha1 = "905b5dadce881c9824b3039c0df36dabbb7b6a07",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/netty_transport',
        actual = '@scala_proto_rules_netty_transport//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_netty_resolver",
        artifact = "io.netty:netty-resolver:4.1.8.Final",
        sha1 = "2e116cdd5edc01b2305072b1dbbd17c0595dbfef",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/netty_resolver',
        actual = '@scala_proto_rules_netty_resolver//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_netty_common",
        artifact = "io.netty:netty-common:4.1.8.Final",
        sha1 = "ee62c80318413d2375d145e51e48d7d35c901324",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/netty_common',
        actual = '@scala_proto_rules_netty_common//jar'
    )

    native.maven_jar(
        name = "scala_proto_rules_netty_handler_proxy",
        artifact = "io.netty:netty-handler-proxy:4.1.8.Final",
        sha1 = "c4d22e8b9071a0ea8d75766d869496c32648a758",
        server = "scala_proto_deps_maven_server",
    )

    native.bind(
        name = 'io_bazel_rules_scala/dependency/proto/netty_handler_proxy',
        actual = '@scala_proto_rules_netty_handler_proxy//jar'
    )

def _root_path(f):
    if f.is_source:
        return f.owner.workspace_root
    return '/'.join([f.root.path, f.owner.workspace_root])

def _colon_paths(data):
    return ':'.join(["{root},{path}".format(root=_root_path(f), path=f.path) for f in data])

def _gen_proto_srcjar_impl(ctx):
    acc_imports = []
    transitive_proto_paths = depset()

    proto_deps, jvm_deps = [], []
    for target in ctx.attr.deps:
        if hasattr(target, 'proto'):
            proto_deps.append(target)
            acc_imports.append(target.proto.transitive_sources)
            #inline this if after 0.12.0 is the oldest supported version
            if hasattr(target.proto, 'transitive_proto_path'):
              transitive_proto_paths += target.proto.transitive_proto_path
        else:
            jvm_deps.append(target)

    acc_imports = depset(transitive = acc_imports)
    if "java_conversions" in ctx.attr.flags and len(jvm_deps) == 0:
        fail("must have at least one jvm dependency if with_java is True (java_conversions is turned on)")

    deps_jars = collect_jars(jvm_deps)

    worker_content = "{output}\n{paths}\n{flags_arg}\n{packages}".format(
        output = ctx.outputs.srcjar.path,
        paths = _colon_paths(acc_imports.to_list()),
        # Command line args to worker cannot be empty so using padding
        flags_arg = "-" + ",".join(ctx.attr.flags),
        # Command line args to worker cannot be empty so using padding
        packages = "-" + ":".join(transitive_proto_paths.to_list())
    )
    argfile = ctx.actions.declare_file("%s_worker_input" % ctx.label.name, sibling = ctx.outputs.srcjar)
    ctx.actions.write(output=argfile, content=worker_content)
    ctx.actions.run(
        executable = ctx.executable.generator,
        inputs = depset([argfile], transitive = [acc_imports]),
        outputs = [ctx.outputs.srcjar],
        mnemonic="ProtoScalaPBRule",
        progress_message = "creating scalapb files %s" % ctx.label,
        execution_requirements={"supports-workers": "1"},
        arguments=["@" + argfile.path],
    )
    srcjarsattr = struct(
        srcjar = ctx.outputs.srcjar,
    )
    scalaattr = struct(
      outputs = None,
      compile_jars =  deps_jars.compile_jars,
      transitive_runtime_jars = deps_jars.transitive_runtime_jars,
    )
    java_provider = create_java_provider(scalaattr, depset())
    return struct(
        scala = scalaattr,
        providers = [java_provider],
        srcjars=srcjarsattr,
        extra_information=[struct(
          srcjars=srcjarsattr,
        )],
    )

scala_proto_srcjar = rule(
    _gen_proto_srcjar_impl,
    attrs={
        "deps": attr.label_list(
            mandatory=True,
            allow_rules=["proto_library", "java_proto_library", "java_library", "scala_library"]
        ),
        "flags": attr.string_list(default=[]),
        "generator": attr.label(
          executable=True,
          cfg="host",
          allow_files=True
        ),
    },
    outputs={
      "srcjar": "lib%{name}.srcjar",
    },
)

SCALAPB_DEPS = [
    "//external:io_bazel_rules_scala/dependency/proto/scalapb_runtime",
    "//external:io_bazel_rules_scala/dependency/com_google_protobuf/protobuf_java",
    "//external:io_bazel_rules_scala/dependency/proto/scalapb_lenses",
    "//external:io_bazel_rules_scala/dependency/proto/scalapb_fastparse",
]

GRPC_DEPS = [
    "//external:io_bazel_rules_scala/dependency/proto/scalapb_runtime_grpc",
    "//external:io_bazel_rules_scala/dependency/proto/grpc_core",
    "//external:io_bazel_rules_scala/dependency/proto/grpc_stub",
    "//external:io_bazel_rules_scala/dependency/proto/grpc_protobuf",
    "//external:io_bazel_rules_scala/dependency/proto/grpc_netty",
    "//external:io_bazel_rules_scala/dependency/proto/grpc_context",
    "//external:io_bazel_rules_scala/dependency/proto/guava",
    "//external:io_bazel_rules_scala/dependency/proto/google_instrumentation",
    "//external:io_bazel_rules_scala/dependency/proto/netty_codec",
    "//external:io_bazel_rules_scala/dependency/proto/netty_codec_http",
    "//external:io_bazel_rules_scala/dependency/proto/netty_codec_http2",
    "//external:io_bazel_rules_scala/dependency/proto/netty_codec_socks",
    "//external:io_bazel_rules_scala/dependency/proto/netty_handler",
    "//external:io_bazel_rules_scala/dependency/proto/netty_buffer",
    "//external:io_bazel_rules_scala/dependency/proto/netty_transport",
    "//external:io_bazel_rules_scala/dependency/proto/netty_resolver",
    "//external:io_bazel_rules_scala/dependency/proto/netty_common",
    "//external:io_bazel_rules_scala/dependency/proto/netty_handler_proxy",
]

"""Generate scalapb bindings for a set of proto_library targets.

Example:
    scalapb_proto_library(
        name = "exampla_proto_scala",
        with_grpc = True,
        deps = ["//src/proto:example_service"]
    )

Args:
    name: A unique name for this rule
    deps: Proto library or java proto library (if with_java is True) targets that this rule depends on
    with_grpc: Enables generation of grpc service bindings for services defined in deps
    with_java: Enables generation of converters to and from java protobuf bindings
    with_flat_package: When true, ScalaPB will not append the protofile base name to the package name
    with_single_line_to_string: Enables generation of toString() methods that use the single line format

Outputs:
    A scala_library rule that includes the generated scalapb bindings, as
    well as any library dependencies needed to compile and use these.
"""
def scalapb_proto_library(
        name,
        deps = [],
        with_grpc = False,
        with_java = False,
        with_flat_package = False,
        with_single_line_to_string = False,
        visibility = None):

    srcjar = name + '_srcjar'
    flags = []
    if with_grpc:
        flags.append("grpc")
    if with_java:
        flags.append("java_conversions")
    if with_flat_package:
        flags.append("flat_package")
    if with_single_line_to_string:
        flags.append("single_line_to_string")
    scala_proto_srcjar(
        name = srcjar,
        flags = flags,
        generator = "@io_bazel_rules_scala//src/scala/scripts:scalapb_generator",
        deps = deps,
        visibility = visibility,
    )

    external_deps = list(SCALAPB_DEPS + GRPC_DEPS if (with_grpc) else SCALAPB_DEPS)

    scala_library(
        name = name,
        deps = [srcjar] + external_deps,
        exports = external_deps,
        visibility = visibility,
    )
