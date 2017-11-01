x = oArmRight.x + lengthdir_x(70, oArmRight.direction);
y = oArmRight.y + lengthdir_y(70, oArmRight.direction);


shootingDirection = direction + shootingDirectionAngle;
shootingX = x + lengthdir_x(shootingDirectionDistance, shootingDirection);
shootingY = y + lengthdir_y(shootingDirectionDistance, shootingDirection);

halfSpread = spread/2;
shoot = gamepad_button_check(1, gp_shoulderlb) || keyboard_check(vk_space);
// Shoot Projectile
if(shoot) and (timeTillAttack <= 0) {
	if(!randomAngleWithinSpread) {
		shootingDirection = direction - halfSpread;
	}
	if(projCount == 1) {
		shootingDirection = direction;
	}
	// Generate each projectile
	for(i = 0; i < projCount; i++) {
		if(currentPouchSize > 0 || true) {
			// Random Angle
			if(randomAngleWithinSpread) {
				shootingDirection = direction + random_range(-other.halfSpread, other.halfSpread);
			}

			with(instance_create_layer(shootingX, shootingY, "Bullets", projObj)) {
				direction   = other.shootingDirection + random_range(-other.individualProjSpread, other.individualProjSpread);
				image_angle = direction;
				speed       = random_range(other.minProjSpeed, other.maxProjSpeed);
				remainingLifetime = other.projLifeTime;
				damage = other.projDamage;
			}
		
			// No random Angle
			if(!randomAngleWithinSpread) {
				shootingDirection += spread/(projCount-1);
			}
			currentPouchSize--;
		}
		else {
			break;
		}
	}
	timeTillAttack = attackCooldown;
	currentRecoil = weaponRecoil;
}
if(timeTillAttack     > 0) timeTillAttack     -= delta_time/1000000;

// Reloading
if(timeTillReloadDone > 0)
	timeTillReloadDone -= delta_time/1000000;
else {
	//currentAmmo = min(currentAmmo - pouchSize
	//currentPouchSize = min(currentAmmo - pouchSize;
}
if(keyboard_check_pressed(vk_control)) and (timeTillReloadDone <= 0) {
	timeTillReloadDone = reloadTime;
}
	

// Recoil
currentRecoil = max(0, currentRecoil - 1);
x = x - lengthdir_x(currentRecoil, direction);
y = y - lengthdir_y(currentRecoil, direction);

direction = oArmRight.direction;
image_angle = direction;
