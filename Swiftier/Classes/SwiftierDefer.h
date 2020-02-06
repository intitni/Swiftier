// https://pspdfkit.com/blog/2017/even-swiftier-objective-c/

#define private_swt_defer_block_name_with_prefix(prefix, suffix) prefix ## suffix
#define private_swt_defer_block_name(suffix) private_swt_defer_block_name_with_prefix(swt_defer_, suffix)
#define swt_defer __strong void(^private_swt_defer_block_name(__LINE__))(void) __attribute__((cleanup(private_swt_defer_cleanup_block), unused)) = ^
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-function"
static void private_swt_defer_cleanup_block(__strong void(^*block)(void)) {
    (*block)();
}
#pragma clang diagnostic pop
