@SubscribeEvent
public void onEntityHealed(LivingHealEvent event) {
	Entity entity = event.getEntity();
	int x = (int) entity.posX;
	int y = (int) entity.posY;
	int z = (int) entity.posZ;
	World world = entity.world;
	java.util.HashMap<String, Object> dependencies = new java.util.HashMap<>();
	dependencies.put("x", x);
	dependencies.put("y", y);
	dependencies.put("z", z);
	dependencies.put("world", world);
	dependencies.put("entity", entity);
	dependencies.put("event", event);
	this.executeProcedure(dependencies);
}