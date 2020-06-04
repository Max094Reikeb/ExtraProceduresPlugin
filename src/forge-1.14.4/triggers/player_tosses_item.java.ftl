@SubscribeEvent
public void TossItem(ItemTossEvent event){
    Entity player = event.getPlayer();
    World world = player.getEntityWorld();
    Entity tosseditem = event.getEntityItem();
    int x = tosseditem.getPosition().getX();
    int y = tosseditem.getPosition().getY();
    int z = tosseditem.getPosition().getZ();
    java.util.HashMap<String, Object> dependencies = new java.util.HashMap<>();
    dependencies.put("x", x);
    dependencies.put("y", y);
    dependencies.put("z", z);
    dependencies.put("world", world);
    dependencies.put("tosseditem", tosseditem);
    dependencies.put("player", player);
    this.executeProcedure(dependencies);
}
