load(":spu_modules.bzl", "spu_driver_modules")
load(":spu_module_build.bzl", "define_target_variant_modules")
load("//soc-repo:target_variants.bzl", "la_target_variants")

def define_target_modules():
    for target, variant in la_target_variants():
        define_target_variant_modules(
            target = target,
            variant = variant,
            registry = spu_driver_modules,
            modules = [
               "spcom",
               "spss_utils",
            ],
        )
