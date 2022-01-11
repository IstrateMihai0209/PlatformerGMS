///@description enemy_drop();

instance_create_layer(x, y - 10, "Collectables", drop);
if(howmany >= 2) {instance_create_layer(x - 10, y - 10, "Collectables", dropTwo);}
if(howmany >= 3) {instance_create_layer(x + 10 , y - 10, "Collectables", dropThree);}