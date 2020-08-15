Map<Enchantment, Integer> enchantments = EnchantmentHelper.getEnchantments(${input$item});
if (enchantments.containsKey(Enchantments.${field$enchantment_type})) {
	enchantments.remove(Enchantments.${field$enchantment_type});
	EnchantmentHelper.setEnchantments(enchantments, ${input$item});
}