if SERVER then
    SWEP.Weight = 5
    SWEP.AutoSwitchTo = true
    SWEP.AutoSwitchFrom = true
    AddCSLuaFile("shared.lua")
end

if CLIENT then
SWEP.PrintName			= "SVD"		-- Weapon name (Shown on HUD)
SWEP.Slot					= 1			                        -- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos				= 73			                    -- Position in the slot
SWEP.DrawAmmo = false
SWEP.DrawCrosshair			= true		                        -- Draw the crosshair?
SWEP.DrawCrosshairIS		= false                             -- Draw the crosshair in ironsights?
end
SWEP.Base				= "tfa_gun_base"
SWEP.Category			= "TFA FA:S 2" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.Manufacturer		= "IZHMASH" --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Author				= "Khris" --Author Tooltip
SWEP.Contact			= "" --Contact Info Tooltip
SWEP.Instructions		= "" --Instructions Tooltip
SWEP.Purpose				= ""
SWEP.Spawnable			= TFA_BASE_VERSION and TFA_BASE_VERSION >= 4 --Can you, as a normal user, spawn this?
SWEP.AdminSpawnable		= true --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.
SWEP.AutoSwitchTo		= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom		= true		-- Auto switch from if you pick up a better weapon
SWEP.Weight				= 60			-- This controls how "good" the weapon is for autopickup.
SWEP.Type		= "Semi-automatic sniper rifle, 7.62×54mmR"

--[[WEAPON HANDLING]]--
SWEP.Primary.Sound = Sound("FAS2TFA_SVD.1") -- This is the sound of the weapon, when you shoot.
SWEP.Primary.SilencedSound = Sound("FAS2TFA_SVD.2") -- This is the sound of the weapon, when you shoot.
SWEP.Primary.SoundEchoTable = {
	[0] = Sound("FAS2TFA.INDOOR5"), -- Indoor
	[256] = Sound("FAS2TFA_SVD.OUTDOOR") -- Outdoor
}

SWEP.Primary.PenetrationMultiplier = 6 --Change the amount of something this gun can penetrate through
SWEP.Primary.Damage = 98 * (1) -- Damage, in standard damage points.
SWEP.Primary.DamageTypeHandled = true --true will handle damagetype in base
SWEP.Primary.DamageType = nil --See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.  Leave nil to autodetect.  DMG_AIRBOAT opens doors.
SWEP.Primary.Force = nil --Force value, leave nil to autocalc
SWEP.Primary.Knockback = 0 --Autodetected if nil; this is the velocity kickback
SWEP.Primary.HullSize = 0 --Big bullets, increase this value.  They increase the hull size of the hitscan bullet.
SWEP.Primary.NumShots = 1 --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic = false -- Automatic/Semi Auto
SWEP.Primary.RPM = 460 -- This is in Rounds Per Minute / RPM
SWEP.Primary.DryFireDelay = 0.1 --How long you have to wait after firing your last shot before a dryfire animation can play.  Leave nil for full empty attack length.  Can also use SWEP.StatusLength[ ACT_VM_BLABLA ]
SWEP.FiresUnderwater = false
--Miscelaneous Sounds
--SWEP.IronInSound = Sound("FAS2TFA_ADSIN") --Sound to play when ironsighting in?  nil for default
--SWEP.IronOutSound = Sound("FAS2TFA_ADSOUT") --Sound to play when ironsighting out?  nil for default
--Silencing
SWEP.CanBeSilenced = false --Can we silence?  Requires animations.
SWEP.Silenced = false --Silenced by default?
-- Selective Fire Stuff
SWEP.SelectiveFire = false --Allow selecting your firemode?
SWEP.DisableBurstFire = true --Only auto/single?
SWEP.OnlyBurstFire = false --No auto, only burst/single?
--Ammo Related
SWEP.Primary.ClipSize = 10 -- This is the size of a clip
SWEP.Primary.DefaultClip = 0 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo = "SniperRound" -- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption = 1 --Ammo consumed per shot
--Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets
SWEP.DisableChambering = false --Disable round-in-the-chamber
--Recoil Related
SWEP.Primary.KickUp = 1.3 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = .8 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0.31 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = .80 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.
--Firing Cone Related
SWEP.Primary.Spread = .0155 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .001 -- Ironsight accuracy, should be the same for shotguns
--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = 2.3 --How far the spread can expand when you shoot. Example val: 2.5
SWEP.Primary.SpreadIncrement = .8 --What percentage of the modifier is added on, per shot.  Example val: 1/3.5
SWEP.Primary.SpreadRecovery = 3 --How much the spread recovers, per second. Example val: 3
--Range Related
SWEP.Primary.Range = -1 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = 0.7 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.
--Penetration Related
SWEP.MaxPenetrationCounter = 3 --The maximum number of ricochets.  To prevent stack overflows.
--Misc
SWEP.IronRecoilMultiplier = 0.6 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier = 0.6 --Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate
SWEP.MuzzleFlashEffect = "tfa_muzzleflash_rifle"
--Movespeed
SWEP.MoveSpeed = .875 --Multiply the player's movespeed by this.
SWEP.IronSightsSensitivity = 1.5
SWEP.IronSightsMoveSpeed = .5
--[[VIEWMODEL]]--
SWEP.ViewModel			= "models/weapons/fas2vm/rifles/svd.mdl" --Viewmodel path
SWEP.ViewModelFOV			= 62		-- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip			= false		-- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.UseHands = true --Use gmod c_arms system.
SWEP.VMPos = Vector(-.25, -2.75, .25) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0, 0, 0) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.VMPos_Additive = false --Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse
SWEP.CameraAttachmentOffsets = {}
SWEP.CameraAttachmentScale = 1	
SWEP.CenteredPos = nil --The viewmodel positional offset, used for centering.  Leave nil to autodetect using ironsights.
SWEP.CenteredAng = nil --The viewmodel angular offset, used for centering.  Leave nil to autodetect using ironsights.
SWEP.Bodygroups_V = {

}
--[[WORLDMODEL]]--
SWEP.WorldModel			= "models/weapons/fas2wm/rifles/w_svd.mdl" --Wmodel path
SWEP.Bodygroups_W = {}
SWEP.HoldType = "ar2" -- This is how others view you carrying the weapon. Options include:
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.Offset = {
	Pos = {
		Up = -2,
		Right = 1,
		Forward = 8
	},
	Ang = {
		Up = 94,
		Right = -6,
		Forward = 185
	},
	Scale = 1
} --Procedural world model animation, defaulted for CS:S purposes.
SWEP.ThirdPersonReloadDisable = false --Disable third person reload?  True disables.

SWEP.BlowbackEnabled = true --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-3,-.15) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 1 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = {["Magazine001"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0)  },} --Viewmodel bone mods via SWEP Creation Kit
--[[SPRINTING]]--
SWEP.RunSightsPos = Vector(5.221, -6.407, -3.02)
SWEP.RunSightsAng = Vector(-17.554, 46.507, -25.734)	
SWEP.SafetyPos = Vector(5.221, -6.407, -3.02)
SWEP.SafetyAng = Vector(-17.554, 46.507, -25.734)
--[[IRONSIGHTS]]--
SWEP.data = {}
SWEP.data.ironsights = 1 --Enable Ironsights
SWEP.Secondary.IronFOV = 68 -- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.
SWEP.IronSightsPos = Vector(-2.5575, -7, 1.53)
SWEP.IronSightsAng = Vector(0.05, -0.005, 0)

SWEP.IronSightsPos_Kobra = Vector(-2.555, -8, -.315)
SWEP.IronSightsAng_Kobra = Vector(0, 0, 0)

SWEP.IronSightsPos_EOTech = Vector(-2.551, -7.5, -.53)
SWEP.IronSightsAng_EOTech = Vector(0, 0, 0)

SWEP.IronSightsPos_RDS = Vector(-2.551, -8, -.585)
SWEP.IronSightsAng_RDS = Vector(0, 0, 0)

SWEP.IronSightsPos_2XRDS = Vector(-2.5475, -8.5, -.5935)
SWEP.IronSightsAng_2XRDS = Vector(0, 0, 0)

SWEP.IronSightsPos_C79 = Vector(-2.55, -8, -.615)
SWEP.IronSightsAng_C79 = Vector(0, 0, 0)

SWEP.IronSightsPos_PO4X = Vector(-2.4875, -7.5, -.18)
SWEP.IronSightsAng_PO4X = Vector(0, 0, 0)

SWEP.IronSightsPos_Mosin = Vector(-2.5285, -7, -.185)
SWEP.IronSightsAng_Mosin = Vector(0, 0, 0)

SWEP.IronSightsPos_MX4 = Vector(-2.56, -6, -.425)
SWEP.IronSightsAng_MX4 = Vector(0, 0,-.55)

SWEP.IronSightsPos_PSO = Vector(-2.369225, -5, .392)
SWEP.IronSightsAng_PSO = Vector(0, 0, 0)
--[[INSPECTION]]--
SWEP.InspectPos = Vector(10, -7, -2)
SWEP.InspectAng = Vector(24, 42, 16)
--[[VIEWMODEL ANIMATION HANDLING]]--
SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS.
SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_LUA -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 1 --Start an idle this far early into the end of another animation
SWEP.SprintBobMult = 1
SWEP.TracerCount = 0 
--Shell eject override
SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --= 0.015 --The delay to actually eject things
SWEP.LuaShellModel = "models/weapons/fas2shells/7_62x54mm.mdl"
SWEP.ShellScale = 1
--[[EVENT TABLE]]--

--[[ATTACHMENTS]]--

SWEP.ViewModelBoneMods = {
	["A_Optic"] = { scale = Vector(.75, .75, .75), pos = Vector(-.85, .15, -.042), angle = Angle(-90, 180, 0)  },
	["A_MuzzleSupp"] = { scale = Vector(1, 1, 1), pos = Vector(6, 0, 0), angle = Angle(0, 0, 0)  },
	["A_Suppressor"] = { scale = Vector(.85, .85, .85), pos = Vector(24, .5, 0), angle = Angle(180, -90, 0)  },
	["Left Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, -.4), angle = Angle(0, 0, 8)  },
	["Left Polex Phalange1"] = { scale = Vector(1, 1, 1), pos = Vector(1, -.5, .5), angle = Angle(12, -20, 30)  },
	["Left Polex Phalange2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(10, 0, 0)  },
	["Left Polex Phalange3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(10, 10, 0)  },
	--["A_Optic"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0)  },
	--["ejector"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0)  },
}

SWEP.WorldModelBoneMods = {["ATTACH_ModKit"] = { scale = Vector(.9, .9, .9), pos = Vector(5, 0, 0), angle = Angle(0, 0, 0)  },
["ATTACH_Muzzle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0)  },}

SWEP.VElements = {
	--["sights_folded"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_springm14_rail.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(90, 0, 90), size = Vector(1.1, 1.1, 1.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["rail_sights"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_modkit_05.mdl", bone = "A_Optic", rel = "", pos = Vector(-.01, -1.35, 3.69), angle = Angle(90, 0, 90), size = Vector(.9, 1, .9), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = false },
	["sight_kobra"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_kobra_l.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["sight_kobra_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_kobra") or nil,
	["sight_eotech"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_eotech_l.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["sight_eotech_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_eotech") or nil,
	["sight_rds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_aimpoint_l.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(90, 90, 0), size = Vector(0.78, 0.78, 0.78), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["sight_rds_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_rds") or nil,
	["scope_2xrds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_aimp2x_l.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["scope_c79"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_elcan.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(90, 90, 0), size = Vector(.92, .92, .92), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["scope_c79_lens"] = { type = "Model", model = "models/rtcircle.mdl", bone = "Lense_RT", rel = "scope_c79", pos = Vector(50, -50.08, 0), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {}, active = false },
	["scope_po4x"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_po4x24.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(90, 90, 0), size = Vector(.92, .92, .92), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["scope_mosin"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_mosin_l.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(90, 90, 0), size = Vector(.85, .85, .85), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["scope_mosin_lens"] = { type = "Model", model = "models/rtcircle.mdl", bone = "RT", rel = "scope_mosin", pos = Vector(0, -0.783, 0), angle = Angle(0, 90, 0), size = Vector(0.421, 0.421, 0.421), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {}, bonemerge = true, active = false},
	["scope_mx4"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_m40_l.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(90, 90, 0), size = Vector(.84, .84, .84), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["scope_mx4_lens"] = { type = "Model", model = "models/rtcircle.mdl", bone = "RT", rel = "scope_mx4", pos = Vector(0, 0, 0), angle = Angle(0, 90, 0), size = Vector(0.45, 0.45, 0.45), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {}, bonemerge = false, active = false },
	["suppressor"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_suppressor_ak.mdl", bone = "A_Suppressor", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["pso1_lens"] = { type = "Model", model = "models/rtcircle.mdl", bone = "A_Optic", rel = "", pos = Vector(-.175, .425, -7), angle = Angle(-90, 0, 90), size = Vector(0.28, 0.28, 0.28), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {}, active = false }
}
SWEP.WElements = {
	["ref"] = { type = "Model", model = SWEP.WorldModel, bone = "oof", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["sight_kobra"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_kobra.mdl", bone = "ATTACH_ModKit", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["sight_eotech"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_eotech.mdl", bone = "ATTACH_ModKit", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["sight_rds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_aimpoint.mdl", bone = "ATTACH_ModKit", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["scope_2xrds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_magaim.mdl", bone = "ATTACH_ModKit", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["scope_c79"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_elcan.mdl", bone = "ATTACH_ModKit", rel = "ref", pos = Vector(-47, 10, 0), angle = Angle(0, 0, -90), size = Vector(.7, .7, .7), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["scope_po4x"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_po.mdl", bone = "ATTACH_ModKit", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["scope_mosin"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_scope_mosin.mdl", bone = "ATTACH_ModKit", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["scope_mx4"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_scope_m40.mdl", bone = "ATTACH_ModKit", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(.9, .9, .9), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["suppressor"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_sil_sec1.mdl", bone = "ATTACH_Muzzle", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
}
SWEP.Attachments = {
	[1] = {atts = { "fas2tfa_mp5_supp"}, order = 1},
	[2] = {atts = { "ins2_si_kobra", "ins2_si_eotech", "ins2_si_rds", "ins2_si_2xrds", "ins2_si_c79", "fas2tfa_svd_scope", "ins2_si_po4x", "ins2_si_mosin", "ins2_si_mx4" }, order = 2 },
	[3] = {atts = { "fas2tfa_svd_sbr" }, order = 3 },
	[4] = {atts = { "fas2tfa_ks23_plrclr" }, order = 4 },
}

SWEP.MuzzleAttachmentSilenced = 1
SWEP.MuzzleAttachment			= "muzzle" 		-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			= "ejector" 		-- Should be "2" for CSS models or "shell" for hl2 models
SWEP.MuzzleAttachmentSilenced   = 2


SWEP.AttachmentDependencies = {}
SWEP.AttachmentExclusions = {}

SWEP.SequenceRateOverride = {
[ACT_VM_PRIMARYATTACK] = .9,
[ACT_VM_RELOAD] = 1.15,
[ACT_VM_RELOAD_EMPTY] = 1.1,
}

SWEP.SequenceLengthOverride = {[ACT_VM_RELOAD] = 3,
[ACT_VM_RELOAD_EMPTY] = 4.175,
}

SWEP.StatusLengthOverride = {
[ACT_VM_RELOAD] = 2.115,
[ACT_VM_RELOAD_EMPTY] = 1.96,
}

DEFINE_BASECLASS(SWEP.Base)
function SWEP:Think2(...)
    self.Bodygroups_V[1] = self:GetStat("VElements.rail_sights.active") and 2 or 0
    --self.Bodygroups_W[1] = self:GetStat("WElements.rail_sights.active") and 1 or 0

    return BaseClass.Think2(self, ...)
end