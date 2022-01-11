/// @description Create the explosion particles

part_particles_create(OParticlesSystem.system, x+random(16), y+random(16), OParticlesSystem.ParticlesExplosion, 10);
part_particles_create(OParticlesSystem.system, x+random(16), y+random(16), OParticlesSystem.SmokeParticles, 10);

//Destroy the explosion piece

if(speed == 0) instance_destroy();