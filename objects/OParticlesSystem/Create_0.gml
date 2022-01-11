/// @description Particles System

system = part_system_create();

//Create particles

ParticlesExplosion = particles(SExplosionParticle, false, 5, 10, 0.9 , 1.2, 0.01, 0, 0);
SmokeParticles = particles(SSmokeParticle, true, 10, 15, 0.7, 1, 0.01, 0, 0);
