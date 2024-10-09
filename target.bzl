load(":spu_modules.bzl", "spu_driver_modules")
load(":spu_module_build.bzl", "define_target_variant_modules")
load("//msm-kernel:target_variants.bzl", "get_all_la_variants")

def define_target_modules():
    for target, variant in get_all_la_variants():
        define_target_variant_modules(
            target = target,
            variant = variant,
            registry = spu_driver_modules,
            modules = [
               "spcom",
               "spss_utils",
            ],
        )
