if SERVER then
    SWEP.Weight = 5
    SWEP.AutoSwitchTo = true
    SWEP.AutoSwitchFrom = true
    AddCSLuaFile("shared.lua")
end

if CLIENT then
SWEP.PrintName				= "Fiveseven"		-- Weapon name (Shown on HUD)	
SWEP.Slot					= 1			                        -- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos				= 73			                    -- Position in the slot
SWEP.DrawAmmo = false
SWEP.DrawCrosshair			= true		                        -- Draw the crosshair?
SWEP.DrawCrosshairIS		= false                             -- Draw the crosshair in ironsights?
end

-- Variables that are used on both client and server
SWEP.Category				= "TFA Insurgency" --Category where you will find your weapons
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			= "shell" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.Manufacturer = "FN" --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Author				= "The Master MLG"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""


SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false		-- Should the weapon icon bounce?
SWEP.Weight					= 35		-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "pistol"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg makes for good sniper rifles

SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/v_fiveseven_eft.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_fiveseven_eft.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base" --the Base this weapon will work on. PLEASE RENAME THE BASE! 
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false
SWEP.ShowWorldModel			= true
SWEP.UseHands = true

SWEP.Primary.Sound			= Sound("weapons/tfa_fiveseven_eft/fiveseven_eft_fire-1.wav")
SWEP.Primary.SilencedSound			= Sound("weapons/tfa_fiveseven_eft/fnp_suppressed_tp.wav")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 615			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 15	-- Size of a clip
SWEP.Primary.DefaultClip		= 0		-- Bullets you start with
SWEP.Primary.KickUp			= 0.625	-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.375		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.05		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false	-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "pistol"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. 
--Use AirboatGun for a light metal peircing shotgun pellets
SWEP.SelectiveFire		= false

SWEP.Secondary.IronFOV			= 70		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode

SWEP.Primary.Damage		= 24	-- Base damage per bullet
SWEP.Primary.Spread		= .016	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .013 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-1.88, 0, 0.6)
SWEP.IronSightsAng = Vector(0.209, -0.138, 0)
SWEP.RunSightsPos = Vector(4.762, -4.238, -0.717)
SWEP.RunSightsAng = Vector(-6.743, 46.284, 0)
SWEP.InspectPos = Vector(7.76, -2, 0.016)
SWEP.InspectAng = Vector(1, 37.277, 3.2)
SWEP.VMPos = Vector(-0.389, -0.290 , 0.020)
SWEP.VMAng = Vector(0,0,0)
SWEP.VMPos_Additive = false

SWEP.Offset = {
	Pos = {
		Up = -1.8,
		Right = 1.1,
		Forward = 4.295
	},
	Ang = {
		Up = -1.043,
		Right = 0,
		Forward = 180,
	},
	Scale = 0.9
} --Procedural world model animation, defaulted for CS:S purposes.

SWEP.VElements = {
                        ["suppressor"] = { type = "Model", model = "models/weapons/upgrades/a_suppressor_fiveseven.mdl", bone = "A_Muzzle", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
                        ["laser"] = { type = "Model", model = "models/weapons/upgrades/a_flashlight_fiveseven_eft.mdl", bone = "A_Underbarrel", rel = "", pos = Vector(-0.29, 0, 0), angle = Angle(0, 0, 180), size = Vector(0.76, 0.76, 0.76), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	                ["laser_beam"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "A_Beam", rel = "laser", pos = Vector(-0.6, 0.05, -0.6), angle = Angle(0, 0, 0), size = Vector(2, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = false, active = false },
}

SWEP.WElements = {
	["ref"] = { type = "Model", model = SWEP.WorldModel, bone = "oof", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.9, 0.9, 0.9), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
        ["laser"] = { type = "Model", model = "models/weapons/upgrades/a_flashlight_fiveseven_eft.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(8.942, 1.144, -2.381), angle = Angle(180, 180, 0), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
	["suppressor"] = { type = "Model", model = "models/weapons/upgrades/a_suppressor_fiveseven.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(9.682, 1.123, -3.499), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
}

SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA

SWEP.BlowbackEnabled = false
SWEP.BlowbackVector = Vector(0,-2,0.0)
SWEP.Blowback_Shell_Effect = "ShellEject"

SWEP.LuaShellEject = true

SWEP.ViewModelBoneMods = {
        ["R Hand"] = { scale = Vector(0.8, 0.8, 0.8), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
        ["L Hand"] = { scale = Vector(0.8, 0.8, 0.8), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}


SWEP.Attachments = {
                        [8] = { offset = { 0, 0 }, atts = { "ins2_br_supp" }, order = 3 },
                        [9] = { offset = { 0, 0 }, atts = { "ins2_ub_laser" }, order = 4 },
}

SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "base_sprint", --Number for act, String/Number for sequence
		["value_empty"] = "empty_sprint",
		["is_idle"] = true
	}
}

SWEP.LaserSightModAttachment = 1
SWEP.LaserSightModAttachmentWorld = 4