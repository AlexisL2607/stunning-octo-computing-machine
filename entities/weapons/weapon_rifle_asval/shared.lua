if SERVER then
    SWEP.Weight = 5
    SWEP.AutoSwitchTo = true
    SWEP.AutoSwitchFrom = true
    AddCSLuaFile("shared.lua")
end

if CLIENT then
SWEP.PrintName				= "AS VAL"		-- Weapon name (Shown on HUD)
SWEP.Slot					= 1			                        -- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos				= 73			                    -- Position in the slot
SWEP.DrawAmmo = false
SWEP.DrawCrosshair			= true		                        -- Draw the crosshair?
SWEP.DrawCrosshairIS		= false                             -- Draw the crosshair in ironsights?
end

SWEP.Base				= "tfa_gun_base"
SWEP.Category				= "TFA Insurgency" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.Manufacturer = "Izhmash Mechanical Plant" --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Author				= "" --Author Tooltip
SWEP.Contact				= "" --Contact Info Tooltip
SWEP.Purpose				= "Comes with a suppressor, for stealth 9x39mm action." --Purpose Tooltip
SWEP.Instructions				= "M1: Attack   M2: Aim    R: Reload" --Instructions Tooltip
SWEP.Spawnable				= true --Can you, as a normal user, spawn this?
SWEP.AdminSpawnable			= true --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.

SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.Weight				= 30			-- This controls how "good" the weapon is for autopickup.
SWEP.Type = "Russian 9x39mm Automatic Rifle"

--[[WEAPON HANDLING]]--
SWEP.Primary.Sound = Sound("SMC_VAL") -- This is the sound of the weapon, when you shoot.
SWEP.Primary.LoopSound = Sound("SMC_VAL.LOOP")
SWEP.Primary.LoopSoundTail = Sound("SMC_VAL.TAIL")
SWEP.Primary.LoopSoundAutoOnly = true
SWEP.Primary.PenetrationMultiplier = 4.33 --Change the amount of something this gun can penetrate through
SWEP.Primary.Damage = 29 -- Damage, in standard damage points.
SWEP.Primary.Velocity = 296 -- Damage, in standard damage points.
SWEP.Primary.DamageTypeHandled = true --true will handle damagetype in base
SWEP.Primary.DamageType = nil --See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.  Leave nil to autodetect.  DMG_AIRBOAT opens doors.
SWEP.Primary.Force = nil --Force value, leave nil to autocalc
SWEP.Primary.Knockback = nil --Autodetected if nil; this is the velocity kickback
SWEP.Primary.HullSize = 0 --Big bullets, increase this value.  They increase the hull size of the hitscan bullet.
SWEP.Primary.NumShots = 1 --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic = false -- Automatic/Semi Auto
SWEP.Primary.RPM = 980 -- This is in Rounds Per Minute / RPM
SWEP.Primary.RPM_Displayed = 900 -- This is in Rounds Per Minute / RPM
SWEP.Primary.DryFireDelay = nil --How long you have to wait after firing your last shot before a dryfire animation can play.  Leave nil for full empty attack length.  Can also use SWEP.StatusLength[ ACT_VM_BLABLA ]
SWEP.Primary.BurstDelay = nil -- Delay between bursts, leave nil to autocalculate
SWEP.FiresUnderwater = false
--Miscelaneous Sounds
SWEP.IronInSound = Sound("SMC_ADS.UP") --Sound to play when ironsighting in?  nil for default
SWEP.IronOutSound = Sound("SMC_ADS.DOWN") --Sound to play when ironsighting out?  nil for default
--Silencing
SWEP.CanBeSilenced = false --Can we silence?  Requires animations.
SWEP.Silenced = true --Silenced by default?
-- Selective Fire Stuff
SWEP.CanJam = false
SWEP.SelectiveFire = true --Allow selecting your firemode?
SWEP.DisableBurstFire = true --Only auto/single?
SWEP.OnlyBurstFire = false --No auto, only burst/single?
SWEP.DefaultFireMode = "" --Default to auto or whatev
SWEP.FireModeName = nil --Change to a text value to override it
--Ammo Related
SWEP.Primary.ClipSize = 20 -- This is the size of a clip
SWEP.Primary.DefaultClip = 0 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo = "ar2" -- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption = 1 --Ammo consumed per shot
--Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets
SWEP.DisableChambering = false --Disable round-in-the-chamber
--Recoil Related
SWEP.Primary.KickUp = 0.353 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = 0.34 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0.26 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.4 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.
--Firing Cone Related
SWEP.Primary.Spread = .0157 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .0001 -- Ironsight accuracy, should be the same for shotguns
--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = 4.7--How far the spread can expand when you shoot. Example val: 2.5
SWEP.Primary.SpreadIncrement = 0.6 --What percentage of the modifier is added on, per shot.  Example val: 1/3.5
SWEP.Primary.SpreadRecovery = 4--How much the spread recovers, per second. Example val: 3
--Range Related
SWEP.Primary.Range = 650 * 13 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = 0.5 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.
--Penetration Related
SWEP.MaxPenetrationCounter = 4 --The maximum number of ricochets.  To prevent stack overflows.
--Misc
SWEP.IronRecoilMultiplier = 0.8 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier = 0.5 --Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate
--Movespeed
SWEP.MoveSpeed = 0.91 --Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed  * 0.8 --Multiply the player's movespeed by this when sighting.

--[[VIEWMODEL]]--
SWEP.ViewModel			= "models/smc/weapons/asval/v_val.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 80		-- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip			= false		-- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.UseHands = true --Use gmod c_arms system.
SWEP.VMPos = Vector(-0.51,-2,0.58) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(2,1,0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.WorldModel			= "models/smc/weapons/asval/w_val.mdl" -- Weapon world model path
SWEP.Bodygroups_W = nil --{
--[0] = 1,
--[1] = 4,
--[2] = etc.
--}
SWEP.HoldType = "ar2" -- This is how others view you carrying the weapon. Options include:
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.Offset = {
	Pos = {
		Up = -1,
		Right = 1.,
		Forward = 4
	},
	Ang = {
		Up = 2,
		Right = -4.844,
		Forward = 180
	},
	Scale = 1
} --Procedural world model animation, defaulted for CS:S purposes.

--Vector(4.796, 0.964, -0.82), angle = Angle(-5.844, 0, 180)

SWEP.ThirdPersonReloadDisable = false --Disable third person reload?  True disables.
--[[SCOPES]]--
SWEP.IronSightsSensitivity = 1 --Useful for a RT scope.  Change this to 0.25 for 25% sensitivity.  This is if normal FOV compenstaion isn't your thing for whatever reason, so don't change it for normal scopes.
SWEP.BoltAction = false --Unscope/sight after you shoot?
SWEP.Scoped = false --Draw a scope overlay?
SWEP.ScopeOverlayThreshold = 0.875 --Percentage you have to be sighted in to see the scope.
SWEP.BoltTimerOffset = 0.25 --How long you stay sighted in after shooting, with a bolt action.
SWEP.ScopeScale = 0.5 --Scale of the scope overlay
SWEP.ReticleScale = 0.7 --Scale of the reticle overlay
--GDCW Overlay Options.  Only choose one.
SWEP.Secondary.UseACOG = false --Overlay option
SWEP.Secondary.UseMilDot = false --Overlay option
SWEP.Secondary.UseSVD = false --Overlay option
SWEP.Secondary.UseParabolic = false --Overlay option
SWEP.Secondary.UseElcan = false --Overlay option
SWEP.Secondary.UseGreenDuplex = false --Overlay option
if surface then
	SWEP.Secondary.ScopeTable = nil --[[
		{
			scopetex = surface.GetTextureID("scope/gdcw_closedsight"),
			reticletex = surface.GetTextureID("scope/gdcw_acogchevron"),
			dottex = surface.GetTextureID("scope/gdcw_acogcross")
		}
	]]--
end

SWEP.StatusLengthOverride = {
	["base_reload"] = 151 / 104,
	["foregrip_reload"] = 151 / 104,
	["base_reload_empty"] = 166 / 121,
	["foregrip_reloadempty"] = 166 / 121,
}

--[[SHOTGUN CODE]]--
SWEP.Shotgun = false --Enable shotgun style reloading.
SWEP.ShotgunEmptyAnim = false --Enable emtpy reloads on shotguns?
SWEP.ShotgunEmptyAnim_Shell = true --Enable insertion of a shell directly into the chamber on empty reload?
SWEP.ShellTime = .35 -- For shotguns, how long it takes to insert a shell.
--[[SPRINTING]]--
SWEP.RunSightsPos = Vector(2, -2, -3) --Change this, using SWEP Creation Kit preferably
SWEP.RunSightsAng = Vector(-5, 35, 0) --Change this, using SWEP Creation Kit preferably
SWEP.SafetyPos = Vector(5, -8, -4)
SWEP.SafetyAng = Vector(10, 70, 0)
--[[IRONSIGHTS]]--
SWEP.data = {}
SWEP.data.ironsights = 1 --Enable Ironsights
SWEP.Secondary.IronFOV = 80 -- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.
SWEP.IronSightsPos = Vector(-2.16, -2, 0.4)
SWEP.IronSightsAng = Vector(-1.3, -1, 0)

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "base_sprint", --Number for act, String/Number for sequence
		["is_idle"] = true
	}
}

--[[INSPECTION]]--
SWEP.InspectPos = Vector(4, -3.619, -2.787)
SWEP.InspectAng = Vector(22.386, 34.417, 5)
--[[VIEWMODEL ANIMATION HANDLING]]--
SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS.
--[[VIEWMODEL BLOWBACK]]--
SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-2,0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true --Shoot shells through blowback animations
SWEP.Blowback_Shell_Effect = "RifleShellEject"--Which shell effect to use
--[[VIEWMODEL PROCEDURAL ANIMATION]]--
SWEP.DoProceduralReload = false--Animate first person reload using lua?
SWEP.ProceduralReloadTime = 1 --Procedural reload time?
--[[HOLDTYPES]]--
SWEP.IronSightHoldTypeOverride = "" --This variable overrides the ironsights holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.
SWEP.SprintHoldTypeOverride = "" --This variable overrides the sprint holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.
--[[ANIMATION]]--

SWEP.IronSightsPos_pkas = Vector(-1.565, 0, -0.53)
SWEP.IronSightsAng_pkas = Vector(-2, -1, 0)
SWEP.IronSightsPos_pso1 = Vector(-1.795, 0, 0.246)
SWEP.IronSightsAng_pso1 = Vector(-2, -1, 0)


SWEP.ProceduralHoslterEnabled = nil
SWEP.ProceduralHolsterTime = 0.3
SWEP.ProceduralHolsterPos = Vector(3, 0, -5)
SWEP.ProceduralHolsterAng = Vector(-40, -30, 10)

SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_LUA -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.SprintBobMult = 1.6
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.25 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.05 --Start an idle this far early into the end of another animation
--MDL Animations Below
SWEP.IronAnimation = {
	["shoot"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_ISHOOT, --Number for act, String/Number for sequence
		["value_empty"] = ACT_VM_PRIMARYATTACK_2
	} --What do you think
}


--[[EFFECTS]]--
--Attachments
SWEP.MuzzleAttachment			= "muzzle" 		-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			= "shell" 		-- Should be "2" for CSS models or "shell" for hl2 models
SWEP.MuzzleFlashEnabled = true --Enable muzzle flash
SWEP.MuzzleAttachmentRaw = 1 --This will override whatever string you gave.  This is the raw attachment number.  This is overridden or created when a gun makes a muzzle event.
SWEP.AutoDetectMuzzleAttachment = false --For multi-barrel weapons, detect the proper attachment?
SWEP.MuzzleFlashEffect = tfa_muzzleflash_silenced --Change to a string of your muzzle flash effect.  Copy/paste one of the existing from the base.
SWEP.SmokeParticle = nil --Smoke particle (ID within the PCF), defaults to something else based on holdtype; "" to disable
SWEP.EjectionSmokeEnabled = false --Disable automatic ejection smoke
--Shell eject override
SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "RifleShellEject" --The effect used for shell ejection; Defaults to that used for blowback
--Tracer Stuff
SWEP.TracerName 		= nil 	--Change to a string of your tracer name.  Can be custom. There is a nice example at https://github.com/garrynewman/garrysmod/blob/master/garrysmod/gamemodes/base/entities/effects/tooltracer.lua
SWEP.TracerCount 		= 3 	--0 disables, otherwise, 1 in X chance
--Impact Effects
SWEP.ImpactEffect = nil--Impact Effect
SWEP.ImpactDecal = nil--Impact Decal
--[[EVENT TABLE]]--
--example:
--SWEP.EventTable = {
--	[ACT_VM_RELOAD] = {
--		{ ["time"] = 0.1, ["type"] = "lua", ["value"] = function( wep, viewmodel ) end, ["client"] = true, ["server"] = true},
--		{ ["time"] = 0.1, ["type"] = "sound", ["value"] = Sound("x") }
--	}
--}
--[[RENDER TARGET]]--
SWEP.RTMaterialOverride = nil -- Take the material you want out of print(LocalPlayer():GetViewModel():GetMaterials()), subtract 1 from its index, and set it to this.
SWEP.RTOpaque = false -- Do you want your render target to be opaque?
SWEP.RTCode = nil--function(self) return end --This is the function to draw onto your rendertarget
--[[AKIMBO]]--
SWEP.Akimbo = false --Akimbo gun?  Alternates between primary and secondary attacks.
SWEP.AnimCycle = 0 -- Start on the right
--[[ATTACHMENTS]]--

SWEP.ViewModelBoneMods = {
	["A_Optic"] = { scale = Vector(1, 1, 1), pos = Vector(0, 1, 0.25), angle = Angle(90, 0, 0) },
	["A_Suppressor"] = { scale = Vector(0.9, 0.9, 0.9), pos = Vector(0, 0, 0), angle = Angle(0,0, 0) },
	["A_Underbarrel"] = { scale = Vector(0.85, 0.85, 0.85), pos = Vector(0, -0.8, 0.19), angle = Angle(0,0, 0) },
	["A_Modkit"] = { scale = Vector(1.08, 1.08, 1.08), pos = Vector(0.11, -0.4, 0.6), angle = Angle(0, 0, 0) },
}

SWEP.WorldModelBoneMods = {
	["ATTACH_ModKit"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ATTACH_Standard"] = { scale = Vector(0.8, 0.8, 0.8), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ATTACH_GL"] = { scale = Vector(0.8, 0.8, 0.8), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ATTACH_Laser"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ATTACH_Muzzle"] = { scale = Vector(1, 1, 1), pos = Vector(0.5, 0, 0), angle = Angle(270, 0, 0) },
}

SWEP.VElements = {
	["mag"] = { type = "Model", model = "models/smc/weapons/asval/upgrades/a_magazine_m1a1_15.mdl", bone = "Magazine", rel = "", pos = Vector(-1, 0.05, -0.15), angle = Angle(90, 180, 270), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = true, bonemerge = true },
	["mag_ext"] = { type = "Model", model = "models/smc/weapons/asval/upgrades/a_magazine_m1a1_30.mdl", bone = "Magazine", rel = "", pos = Vector(-1, 0.05, -0.15), angle = Angle(90, 180, 270), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["scope_specter"] = { type = "Model", model = "models/smc/upgrades/a_optic_specter.mdl", bone = "A_Optic", rel = "", pos = Vector(-1, 0.05, -0.15), angle = Angle(90, 180, 270), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = false },
	["under_rail"] = { type = "Model", model = "models/smc/weapons/asval/upgrades/a_val_bearing.mdl", bone = "b_wpn", rel = "", pos = Vector(0, 7, 1.89), angle = Angle(0, 0, 0), size = Vector(0.45, 0.45, 0.45), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = false },
	["foregrip"] = { type = "Model", model = "models/smc/upgrades/a_fg_kac.mdl", bone = "b_wpn", rel = "", pos = Vector(0.13, 7, 1.), angle = Angle(0, 0, 0), size = Vector(0.25, 0.25, 0.25), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = false },
	["scope_pkas"] = { type = "Model", model = "models/smc/upgrades/a_optic_pk-as.mdl", bone = "A_Modkit", rel = "", pos = Vector(0.3, 0, 0.3), angle = Angle(90, 90, 0), size = Vector(.4, .4, .4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = false },
	["scope_pso"] = { type = "Model", model = "models/smc/upgrades/a_optic_pso-1.mdl", bone = "A_Modkit", rel = "", pos = Vector(-0.0, -0.86, 0.3), angle = Angle(90, 90, 0), size = Vector(.8, .8, .8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = false },
	["laser"] = { type = "Model", model = "models/smc/upgrades/a_anpeq15.mdl", bone = "b_wpn", rel = "", pos = Vector(-0.1, 7, 2.4), angle = Angle(0, 270, 0), size = Vector(0.56, 0.56, 0.56), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = false, active = false },
	["laser_beam"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "A_Beam", rel = "laser", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(2, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = false, active = false },
	["rail_sights"] = { type = "Model", model = "models/smc/weapons/val/upgrade/a_val_sidemount.mdl", bone = "b_wpn", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(55555, 55555, 55555), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false},
}

SWEP.WElements = {
["ref"] = { type = "Model", model = SWEP.WorldModel, bone = "oof", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },	["sight_eotech"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_eotech.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ref", pos = Vector(8.562, 0, -10.452), angle = Angle(0, 0, 0), size = Vector(0.79, 0.79, 0.79), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
	["mag"] = { type = "Model", model = "models/smc/weapons/asval/upgrades/w_magazine_m1a1_15.mdl", bone = "W_MAGAZINE", rel = "", pos = Vector(-1, 0.05, -0.15), angle = Angle(90, 180, 270), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = true, bonemerge = true },
	["mag_ext"] = { type = "Model", model = "models/smc/weapons/asval/upgrades/w_magazine_m1a1_30.mdl", bone = "W_MAGAZINE", rel = "", pos = Vector(-1, 0.05, -0.15), angle = Angle(90, 180, 270), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["under_rail"] = { type = "Model", model = "models/smc/weapons/asval/upgrades/a_val_bearing.mdl", bone = "b_wpn", rel = "", pos = Vector(0, 4, 1.5), angle = Angle(0, 180, 0), size = Vector(0.25, 0.25, 0.25), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = false,  active = false },
	["foregrip"] = { type = "Model", model = "models/smc/upgrades/a_fg_kac.mdl", bone = "ATTACH_Foregrip", rel = "", pos = Vector(2, 0, 0), angle = Angle(90, 180, 90), size = Vector(0.25, 0.25, 0.25), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = false,  active = false },
	["laser"] = { type = "Model", model = "models/smc/upgrades/a_anpeq15.mdl", bone = "b_wpn", rel = "", pos = Vector(0, 7.5, 2.5), angle = Angle(0, 270, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = false },
	["scope_pkas"] = { type = "Model", model = "models/smc/upgrades/w_optic_pk-as.mdl", bone = "ATTACH_Modkit", rel = "", pos = Vector(0.3, 0, 0.3), angle = Angle(0, 0, 270), size = Vector(.4, .4, .4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = false },
	["scope_pso"] = { type = "Model", model = "models/smc/upgrades/w_optic_pso-1.mdl", bone = "ATTACH_Modkit", rel = "", pos = Vector(-0.0, -0., 0.3), angle = Angle(0, 0, 270), size = Vector(.8, .8, .8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = false },
}

SWEP.ScopeDistanceRange_ta31 = 14
SWEP.ScopeDistanceMin_ta31 = 14

SWEP.Attachments = {
	[1] = { offset = { 0, 0 }, atts = { "smc_railed_foregrip" }, order = 1 },
	[2] = { offset = { 0, 0 }, atts = { "smc_30rnd_val" }, order = 1 },
	[3] = { offset = { 0, 0 }, atts = { "smc_tracer", "smc_penrnd" }, order = 2 },
	[4] = { offset = { 0, 0 }, atts = { "smc_pkas", "smc_pso1" }, order = 4 },
	[5] = { offset = { 0, 0 }, atts = { "smc_val_reddark" }, order = 4 }
}
SWEP.AttachmentDependencies = {}--{["si_acog"] = {"bg_rail"}}
SWEP.AttachmentExclusions = { }--{ ["si_iron"] = {"bg_heatshield"} }

SWEP.MuzzleAttachmentSilenced = 2

SWEP.LaserSightModAttachment = 2
SWEP.LaserSightModAttachmentWorld = 1


--[[MISC INFO FOR MODELERS]]--
--[[

Used Animations (for modelers):

ACT_VM_DRAW - Draw
ACT_VM_DRAW_EMPTY - Draw empty
ACT_VM_DRAW_SILENCED - Draw silenced, overrides empty

ACT_VM_IDLE - Idle
ACT_VM_IDLE_SILENCED - Idle empty, overwritten by silenced
ACT_VM_IDLE_SILENCED - Idle silenced

ACT_VM_PRIMARYATTACK - Shoot
ACT_VM_PRIMARYATTACK_EMPTY - Shoot last chambered bullet
ACT_VM_PRIMARYATTACK_SILENCED - Shoot silenced, overrides empty
ACT_VM_PRIMARYATTACK_1 - Shoot ironsights, overriden by everything besides normal shooting
ACT_VM_DRYFIRE - Dryfire

ACT_VM_RELOAD - Reload / Tactical Reload / Insert Shotgun Shell
ACT_SHOTGUN_RELOAD_START - Start shotgun reload, unless ACT_VM_RELOAD_EMPTY is there.
ACT_SHOTGUN_RELOAD_FINISH - End shotgun reload.
ACT_VM_RELOAD_EMPTY - Empty mag reload, chambers the new round.  Works for shotguns too, where applicable.
ACT_VM_RELOAD_SILENCED - Silenced reload, overwrites all


ACT_VM_HOLSTER - Holster
ACT_VM_HOLSTER_SILENCED - Holster empty, overwritten by silenced
ACT_VM_HOLSTER_SILENCED - Holster silenced

]]--
DEFINE_BASECLASS( SWEP.Base )