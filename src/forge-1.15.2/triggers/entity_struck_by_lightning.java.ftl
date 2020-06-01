@SubscribeEvent
public void extraLightningDamage(EntityStruckByLightningEvent event) {
  World world = event.getLightning().world;
  Entity sourceentity = event.getLightning();
  Entity entity = event.getEntity();
  int x = (int) sourceentity.serverPosX;
  int y = (int) sourceentity.serverPosY;
  int z = (int) sourceentity.serverPosZ;
  java.util.HashMap<String, Object> dependencies = new java.util.HashMap<>();
  dependencies.put("x", x);
  dependencies.put("y", y);
  dependencies.put("z", z);
  dependencies.put("world", world);
  dependencies.put("entity", entity);
  dependencies.put("sourceentity", sourceentity);
  this.executeProcedure(dependencies);
}
