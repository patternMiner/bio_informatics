package(default_visibility = ["//visibility:public"])
load("@io_bazel_rules_perl//perl:perl.bzl", "perl_binary")


perl_binary ( 
    name = "bio_informatics",
    srcs = ["bio_informatics.pl"],
    data = ["data/DNA.fasta"],
    deps = [
        "//Genome:gc_content",
        "//Genome:revcomp",
    ],
)
