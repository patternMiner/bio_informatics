package(default_visibility = ["//visibility:public"])

load("@io_bazel_rules_perl//perl:perl.bzl", "perl_test")

test_suite(
    name = "test_all",
    tests = [
        ":gc_content_test",
        ":revcomp_test"
    ]
)

perl_test(
    name = "gc_content_test",
    deps = ["//Genome:gc_content"],
    srcs = ["GC_Content.pm.t"],
    data = ["test_data/DNA.fasta"]
)

perl_test(
    name = "revcomp_test",
    deps = ["//Genome:revcomp"],
    srcs = ["RevComp.pm.t"],
    data = ["test_data/DNA.fasta"]
)
