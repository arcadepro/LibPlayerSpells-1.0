--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2013-2014 Adirelle (adirelle@gmail.com)

This file is part of LibPlayerSpells-1.0.

LibPlayerSpells-1.0 is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

LibPlayerSpells-1.0 is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with LibPlayerSpells-1.0.  If not, see <http://www.gnu.org/licenses/>.
--]]

local lib = LibStub("LibPlayerSpells-1.0")
if not lib then return end
lib:__RegisterSpells("DEATHKNIGHT", 70000, 1, {
	COOLDOWN = {
		  61999, -- Raise Ally
		[ 47528] = "INTERRUPT", -- Mind Freeze
		[108199] = "CROWD_CTL", -- Gorefiend's Grasp (knockback)
		AURA = {
			HARMFUL = {
				  51399, -- Death Grip (taunt)
				  56222, -- Dark Command (taunt)
				[221562] = "CROWD_CTL", -- Asphyxiate (stun)
			},
			PERSONAL = {
				188290, -- Death and Decay
				212552, -- Wraith Walk
				SURVIVAL = {
					48707, -- Anti-Magic Shield
					55233, -- Vampiric Blood
					81256, -- Dancing Rune Weapon
				},
			},
		},
	},
	AURA = {
		HELPFUL = {
			3714, -- Path of Frost
		},
		HARMFUL = {
			 55078, -- Blood Plague
			206930, -- Hearth Strike (slow)
		},
		PERSONAL = {
			 77535, -- Blood Shield
			 81141, -- Crimson Scourge
			195181, -- Bone Shield
		},
		PET = {
			[111673] = "INVERT_AURA", -- Control Undead
		},
	},
}, {
	-- map aura to provider(s)
	[51399] = 49576, -- Death Grip (taunt)
	[55078] = { -- Blood Plague
		 50842, -- Blood Boil
		195292, -- Death's Caress
	},
	[77535] = { -- Blood Shield
		77513, -- Mastery: Blood Shield
	},
	[ 81256] = 49028, -- Dancing Rune Weapon
	[ 81141] = 81136, -- Crimson Scourge
	[188290] = 43265, -- Death and Decay
	[195181] = 195182, -- Bone Shield <- Marrowrend
}, {
	-- map aura to modified spell(s)
	[77535] = { -- Blood Shield
		49998, -- Death Strike
	},
	[81141] = 43265, -- Crimson Scourge -> Death and Decay
})
