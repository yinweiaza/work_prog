#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
 .name = KBUILD_MODNAME,
 .init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
 .exit = cleanup_module,
#endif
 .arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0x372d36bb, "module_layout" },
	{ 0x432fd7f6, "__gpio_set_value" },
	{ 0xd6b8e852, "request_threaded_irq" },
	{ 0xfcec0987, "enable_irq" },
	{ 0x6c8d5ae8, "__gpio_get_value" },
	{ 0xbc477a2, "irq_set_irq_type" },
	{ 0x11f447ce, "__gpio_to_irq" },
	{ 0xa8f59416, "gpio_direction_output" },
	{ 0x65d6d0f0, "gpio_direction_input" },
	{ 0x47229b5c, "gpio_request" },
	{ 0x27e1a049, "printk" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "C2304727929CDEB0F31FAF0");
