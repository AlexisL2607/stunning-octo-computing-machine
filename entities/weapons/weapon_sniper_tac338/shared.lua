if SERVER then
    SWEP.Weight = 5
    SWEP.AutoSwitchTo = true
    SWEP.AutoSwitchFrom = true
    AddCSLuaFile("shared.lua")
end

if CLIENT then
SWEP.PrintName				= "Tac-338"		-- Weapon name (Shown on HUD)	
SWEP.Slot					= 1			                        -- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos				= 73			                    -- Position in the slot
SWEP.DrawAmmo = false
SWEP.DrawCrosshair			= true		                        -- Draw the crosshair?
SWEP.DrawCrosshairIS		= false                             -- Draw the crosshair in ironsights?
end

-- Variables that are used on both client and server
SWEP.Gun = ("tfa_ins2_tac338") -- must be the name of your swep but NO CAPITALS!
SWEP.Category				= "TFA Insurgency" --Category where you will find your weapons
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			= "shell" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.Manufacturer = "McMillan" --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""


SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false		-- Should the weapon icon bounce?

SWEP.Weight					= 35		-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon
SWEP.Type = "Bolt-Action Rifle"
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg makes for good sniper rifles

SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/v_tac338.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_tac338_tfa.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base" --the Base this weapon will work on. PLEASE RENAME THE BASE! 
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false
SWEP.ShowWorldModel			= true
SWEP.UseHands = true

SWEP.Primary.Sound			= Sound("weapons/tfa_ins2_tac338/m40a1_fp.wav")
SWEP.Primary.SilencedSound			= Sound("weapons/tfa_ins2_tac338/m40a1_suppressed_fp.wav")		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 255			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 5		-- Size of a clip
SWEP.Primary.DefaultClip		= 0		-- Bullets you start with
SWEP.Primary.KickUp			= 0.95		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.75		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.55		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false	-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "SniperRound"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
SWEP.MoveSpeed = 0.89 --Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed  * 0.86 --Multiply the player's movespeed by this when sighting.
-- Pistol, buckshot, and slam always ricochet. 
--Use AirboatGun for a light metal peircing shotgun pellets
SWEP.SelectiveFire		= FALSE	

SWEP.data 				= {}				--The starting firemode

SWEP.Primary.Damage		= 94	-- Base damage per bullet
SWEP.Primary.Spread		= .021	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .002 -- Ironsight accuracy, should be the same for shotguns
SWEP.Primary.StaticRecoilFactor = 0.95
SWEP.Secondary.IronFOV			= 70		-- How much you 'zoom' in. Less is more!

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(-2.65, 0, -0.288)
SWEP.IronSightsAng = Vector(0.495, -0.06, 0.3)
SWEP.IronSightsPos_EOTech = Vector(-2.65, 0, -0.711)
SWEP.IronSightsAng_EOTech = Vector(0.495, -0.06, 0.3)
SWEP.IronSightsPos_RDS = Vector(-2.65, 0, -0.711)
SWEP.IronSightsAng_RDS = Vector(0.495, -0.06, 0.3)
SWEP.IronSightsPos_2XRDS = Vector(-2.635, -1, -0.559)
SWEP.IronSightsAng_2XRDS = Vector(0.005, -0.06, 0.3)
SWEP.IronSightsPos_C79 = Vector(-2.644, -5.4, -0.971)
SWEP.IronSightsAng_C79 = Vector(0.005, -0.2, 0.6)
SWEP.IronSightsPos_PO4X = Vector(-2.563, -5, -0.416)
SWEP.IronSightsAng_PO4X = Vector(0.005, -0.2, 0.6)
SWEP.IronSightsPos_Kobra = Vector(-2.65, 0, -0.471)
SWEP.IronSightsAng_Kobra = Vector(0.495, -0.06, 0.3)
SWEP.IronSightsPos_Mosin = Vector(-2.595, -0.8, 0.02)
SWEP.IronSightsAng_Mosin = Vector(0.005, 0.06, 0.1)
SWEP.IronSightsPos_MX4 = Vector(-2.635, -0.8, -0.1)
SWEP.IronSightsAng_MX4 = Vector(0.005, 0.06, 0.1)
SWEP.RunSightsPos = Vector(4.762, -4.238, -0.717)
SWEP.RunSightsAng = Vector(-6.743, 46.284, 0)
SWEP.InspectPos = Vector(7.76, 1.178, 0.016)
SWEP.InspectAng = Vector(1, 37.277, 3.2)
SWEP.FireModeName = "Bolt-Action"

SWEP.ViewModelBoneMods = {
        ["R Hand"] = { scale = Vector(0.8, 0.8, 0.8), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
        ["L Hand"] = { scale = Vector(0.8, 0.8, 0.8), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.ViewModelBoneMods = {
        ["A_Optic"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0.6, 0), angle = Angle(0, 0, 0) }
}

SWEP.WorldModelBoneMods = {
        ["ATTACH_Laser"] = { scale = Vector(1.2, 1.2, 1.2), pos = Vector(0.2, 1, -0.3), angle = Angle(0, 0, 0) },
        ["ATTACH_Muzzle"] = { scale = Vector(0.6, 0.6, 0.6), pos = Vector(0, 0, -0.3), angle = Angle(0, 0, 0) },
        ["ATTACH_ModKit"] = { scale = Vector(1, 1, 1), pos = Vector(0.2, 0, 0), angle = Angle(0, 0, 0) },
}

SWEP.Offset = {
	Pos = {
		Up = -1,
		Right = 0.964,
		Forward = 5
	},
	Ang = {
		Up = 0,
		Right = -12,
		Forward = 180
	},
	Scale = 1
} --Procedural world model animation, defaulted for CS:S purposes.

SWEP.Attachments = {
                        [1] = { offset = { 0, 0 }, atts = { "ins2_br_supp" }, order = 2 },
                        [4] = { offset = { 0, 0 }, atts = { "ins2_si_eotech", "ins2_si_rds", "ins2_si_kobra", "ins2_si_2xrds", "ins2_si_c79", "ins2_si_po4x", "ins2_si_mx4", "ins2_si_mosin" }, order = 2 },
                        [5] = { offset = { 0, 0 }, atts = { "ins2_ub_laser" }, order = 4 }
}

SWEP.WElements = {
	["ref"] = { type = "Model", model = SWEP.WorldModel, bone = "oof", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.9, 0.9, 0.9), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
        ["sights_folded"] = { type = "Model", model = "models/weapons/upgrades/w_standard_tac388.mdl", bone = "M40_LP", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = true, bonemerge = true },
        ["laser"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_laser_sec.mdl", bone = "ATTACH_Laser", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
        ["suppressor"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_sil_sec1.mdl", bone = "ATTACH_Muzzle", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
        ["sight_eotech"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_eotech.mdl", bone = "ATTACH_ModKit", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["sight_kobra"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_kobra.mdl", bone = "ATTACH_ModKit", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["sight_rds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_aimpoint.mdl", bone = "ATTACH_ModKit", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["scope_2xrds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_magaim.mdl", bone = "ATTACH_ModKit", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["scope_po4x"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_po.mdl", bone = "ATTACH_ModKit", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
	["scope_c79"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_elcan.mdl", bone = "ATTACH_ModKit", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
        ["scope_mosin"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_scope_mosin.mdl", bone = "ATTACH_ModKit", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
        ["scope_mx4"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/w_scope_m40.mdl", bone = "ATTACH_ModKit", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
}

SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA

SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = false --Shoot shells through blowback animations
SWEP.Blowback_Shell_Effect = "ShellEject"--Which shell effect to use
SWEP.LuaShellEject = false --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "RifleShellEject" --The effect used for shell ejection; Defaults to that used for blowback

SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only

SWEP.VElements = {
	["sights_folded"] = { type = "Model", model = "models/weapons/upgrades/a_standard_tac388.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 90, 180), size = Vector(0.7, 0.7, 0.7), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = true, bonemerge = true },
        ["suppressor"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_suppressor_ins.mdl", bone = "A_Muzzle_Supp", rel = "", pos = Vector(-6.711, -0.322, -0.072), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
        ["sight_eotech"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_eotech.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["sight_eotech_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_eotech") or nil,
        ["sight_rds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_aimpoint.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(90, 90, 0), size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
	["sight_rds_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_rds") or nil,
        ["scope_2xrds"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_aimp2x.mdl", bone = "A_Optic", rel = "", pos = Vector(0, -0.094, 0), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
        ["scope_c79"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_elcan.mdl", bone = "A_Optic", rel = "", pos = Vector(0, -0.145, 0), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
        ["sight_kobra"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_kobra.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(90, 90, 0), size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
        ["sight_kobra_lens"] = (TFA.INS2 and TFA.INS2.GetHoloSightReticle) and TFA.INS2.GetHoloSightReticle("sight_kobra") or nil,
        ["scope_mx4"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_m40.mdl", bone = "A_Optic", rel = "", pos = Vector(-0.046, -0.132, 1.2), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
        ["scope_mosin"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_mosin.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
        ["scope_po4x"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_optic_po4x24.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
        ["laser_beam"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "", rel = "laser", pos = Vector(0, 0, -2.388), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
	["laser"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_laser_band.mdl", bone = "A_Underbarrel", rel = "", pos = Vector(12.331, 1.077, 0.614), angle = Angle(0, 0, 90), size = Vector(1.2, 1.2, 1.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false }
}

SWEP.LaserSightModAttachment = 1
SWEP.LaserSightModAttachmentWorld = 3

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "base_sprint", --Number for act, String/Number for sequence
		["is_idle"] = true
	}
}

SWEP.PumpAction = {
	["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
	["value"] = ACT_VM_PULLBACK_LOW, --Number for act, String/Number for sequence
	["value_is"] = ACT_VM_PULLBACK_HIGH
}	

SWEP.EventTable = {
	[ACT_VM_PULLBACK_LOW] = {
		{ ["time"] = 15 / 30, ["type"] = "lua", ["value"] = function(wep,vm)
			if wep and wep.EventShell then
				wep:EventShell()
			end
		end, ["client"] = true, ["server"] = true }
	},
	[ACT_VM_PULLBACK_HIGH] = {
		{ ["time"] = 15 / 30, ["type"] = "lua", ["value"] = function(wep,vm)
			if wep and wep.EventShell then
				wep:EventShell()
			end
		end, ["client"] = true, ["server"] = true }
	}
}
