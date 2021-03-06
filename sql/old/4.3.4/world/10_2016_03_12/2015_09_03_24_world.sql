-- A lot of missing npcs/gobs/quest relations/quests/phases etc..
-- http://www.wowwiki.com/Storm_Peaks_quests
-- http://www.wowwiki.com/Sons_of_Hodir
-- http://www.wowhead.com/faction=1119#comments:id=905880
SET @NJORMELD           := 30099; -- At Fjorn's Anvil
SET @NJORMELD2          := 30127; -- At Dun Niffelem
SET @SNORRI_NPC         := 30123; -- At Fjorn's Anvil
SET @SNORRI_MOUNT       := 30124; -- Snorri spell_click
SET @NPC_BUNNY          := 30122; -- Storm Peaks Anvil Bunny
SET @NPC_SR2            := 30120; -- Seething Revenant (phase 2)
SET @NPC_SR3            := 30387; -- Seething Revenant (phase 3)
SET @NPC_FGS            := 30121; -- Frost Giant Stormherald
SET @NPC_BR             := 30160; -- Brittle Revenant
SET @NPC_SOH2           := 30262; -- Son of Hodir (phase 2)
SET @NPC_BF             := 30320; -- Battlescarred Frostworg (phase 2)
SET @SM                 := 30260; -- Stoic Mammoth (phase 2)
SET @RJ                 := 30422; -- Roaming Jormungar
SET @WARBEAR            := 29918; -- Warbear Matriarch
SET @HYLDSMEET_WB       := 30174; -- Hyldsmeet Warbear
SET @BUNNY_SPEAR        := 30246; -- Dun Niffelem Spear Chain Bunny (Phase 2)
SET @F_WORG             := 30219; -- Ethereal Frostwarg
SET @SF_INFIL           := 30222; -- Stormforged Infiltrator

SET @NPC_THORIM2        := 30390; -- at Thunderfall
SET @NPC_THORIM3        := 30295; -- at Terrace of the Makers

SET @GUID_BUNNY1        := 63373;  -- 4 required NPC
SET @GUID_BUNNY2        := 129993;  -- 6 required NPC
SET @GUID_BUNNY         := 116620; -- 23 required NPC
SET @GUID               := 142335; -- 77 reqiured NPC
SET @OGUID              := 20918;  -- 17 requied GO
SET @GUID_GO            := 21065;  -- 20 required GO

DELETE FROM `creature` WHERE `id` IN (@NJORMELD,@SNORRI_NPC,@NPC_BUNNY,@NPC_SR2,@NPC_FGS,@NPC_BR,@NPC_SR3,@NPC_SOH2,@NPC_BF,@SM,@RJ,@BUNNY_SPEAR,@NPC_THORIM3);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID+0,@NJORMELD,571,1,4,24531,0,7183.295,-3519.859,827.4118,0.03490658,300,0,0,50400,0,0,0,0,0),
(@GUID+1,@SNORRI_NPC,571,1,4,26772,0,7167.375,-3543.059,827.746,6.056293,300,0,0,50400,0,0,0,0,0),
(@GUID+2,@NPC_BUNNY,571,1,4,19595,0,7219.52,-3645.4,824.558,2.61799,300,0,0,4979,0,0,0,0,0),
(@GUID+3,@NPC_SR2,571,1,4,25680,0,7268.63,-3640.36,825.267,2.37365,120,5,0,12600,0,1,0,0,0),
(@GUID+4,@NPC_SR2,571,1,4,25680,0,7192.8,-3665,824.727,6.05783,120,5,0,12600,0,1,0,0,0),
(@GUID+5,@NPC_SR2,571,1,4,25680,0,7250.05,-3636.57,825.872,-1.4385,120,5,0,12600,0,1,0,0,0),
(@GUID+6,@NPC_SR2,571,1,4,25680,0,7201.55,-3622.78,823.52,5.55015,120,5,0,12600,0,1,0,0,0),
(@GUID+7,@NPC_SR2,571,1,4,25680,0,7223.84,-3676.14,828.727,2.17625,120,5,0,12600,0,1,0,0,0),
(@GUID+8,@NPC_FGS,571,1,4,24531,0,7201.98,-3624.42,823.542,5.13733,120,0,0,48700,0,0,0,0,0),
(@GUID+9,@NPC_FGS,571,1,4,24531,0,7251.04,-3644,823.097,3.15905,120,0,0,48700,0,0,0,0,0),
(@GUID+10,@NPC_FGS,571,1,4,24531,0,7220.33,-3671.06,823.633,1.67552,120,0,0,50400,0,0,0,0,0),
(@GUID+11,@NPC_BR,571,1,4,26698,0,7419.28,-3141.33,837.577,1.34635,300,0,0,12600,0,0,0,0,0),
(@GUID+12,@NPC_BR,571,1,4,26698,0,7359.13,-3103.31,837.534,4.17214,300,0,0,12600,0,2,0,0,0),
(@GUID+13,@NPC_BR,571,1,4,26698,0,7376.07,-3153.04,837.577,1.80255,300,0,0,12600,0,0,0,0,0),
(@GUID+14,@NPC_BR,571,1,4,26698,0,7315.46,-3179.34,837.617,1.60589,300,0,0,12600,0,0,0,0,0),
(@GUID+15,@NPC_BR,571,1,4,26698,0,7255.27,-3083.26,837.577,-2.07948,300,0,0,12600,0,0,0,0,0),
(@GUID+16,@NPC_BR,571,1,4,26698,0,7405.8,-3082.12,837.57,-0.036917,300,0,0,12600,0,0,0,0,0),
(@GUID+17,@NPC_BR,571,1,4,26698,0,7300.77,-3084.76,837.577,3.23101,300,0,0,12600,0,0,0,0,0),
(@GUID+18,@NPC_SR3,571,1,8,0,0,7231.77,-3648.91,823.616,5.67933,600,0,0,12600,0,0,0,0,0),
(@GUID+19,@NPC_SR3,571,1,8,0,0,7181.85,-3561.65,827.102,1.34394,600,0,0,12600,0,0,0,0,0),
(@GUID+20,@NPC_SR3,571,1,8,0,0,7171.87,-3564.23,826.705,1.05727,600,0,0,12600,0,0,0,0,0),
(@GUID+21,@NPC_SR3,571,1,8,0,0,7235.26,-3480.56,850.328,4.32905,600,0,0,12600,0,0,0,0,0),
(@GUID+22,@NPC_SR3,571,1,8,0,0,7190.62,-3549.54,827.918,1.28897,600,0,0,12600,0,0,0,0,0),
(@GUID+23,@NPC_SR3,571,1,8,0,0,7146.46,-3553.65,830.519,0.613523,600,0,0,12600,0,0,0,0,0),
(@GUID+24,@NPC_SR3,571,1,8,0,0,7209.96,-3426.8,839.399,1.92906,600,0,0,12600,0,0,0,0,0),
(@GUID+25,@NPC_SR3,571,1,8,0,0,7191.38,-3364.16,846.246,1.41463,600,0,0,12600,0,0,0,0,0),
(@GUID+26,@NPC_SR3,571,1,8,25680,0,7224.41,-3496.64,840.3,3.8813,300,0,0,12600,0,0,0,0,0),
(@GUID+27,@NPC_SOH2,571,1,4,24531,0,7200.93,-2751.15,777.517,1.58738,300,0,0,73050,0,0,0,0,0),
(@GUID+28,@NPC_SOH2,571,1,4,24531,0,7305.37,-2755.09,775.266,1.22173,300,0,0,73050,0,0,0,0,0),
(@GUID+29,@NPC_SOH2,571,1,4,24531,0,7316.17,-2635.26,814.969,3.28639,300,0,0,75600,0,0,0,0,0),
(@GUID+30,@NPC_SOH2,571,1,4,24531,0,7125.52,-2690.9,786.766,0.244346,300,0,0,75600,0,0,0,0,0),
(@GUID+31,@NPC_SOH2,571,1,4,24531,0,7126.99,-2749.76,786.682,0.261799,300,0,0,73050,0,0,0,0,0),
(@GUID+32,@NPC_SOH2,571,1,4,24531,0,7450.26,-2713.95,809.15,4.57385,300,0,0,73050,0,0,0,0,0),
(@GUID+33,@NPC_SOH2,571,1,4,24531,0,7241.71,-2883.89,824.505,5.93024,300,0,0,73050,0,2,0,0,0),
(@GUID+34,@NPC_SOH2,571,1,4,24531,0,7206.07,-2828.19,824.699,1.46608,300,0,0,73050,0,0,0,0,0),
(@GUID+35,@NPC_SOH2,571,1,4,24531,0,7327.04,-2396.17,749.132,0.84682,300,0,0,75600,0,0,0,0,0),
(@GUID+36,@NPC_SOH2,571,1,4,24531,0,7303.96,-2519.59,750.318,2.88288,300,0,0,75600,0,2,0,0,0),
(@GUID+37,@NPC_SOH2,571,1,4,24531,0,7419.77,-2885.54,823.037,1.64061,300,0,0,75600,0,0,0,0,0),
(@GUID+38,@NPC_SOH2,571,1,4,24531,0,7288.75,-2579.84,750.516,1.13446,300,0,0,75600,0,0,0,0,0),
(@GUID+39,@NPC_SOH2,571,1,4,24531,0,7239.24,-2638.54,753.62,5.48033,300,0,0,75600,0,0,0,0,0),
(@GUID+40,@NPC_SOH2,571,1,4,24531,0,7431.13,-2429.4,753.04,4.09782,300,0,0,73050,0,0,0,0,0),
(@GUID+41,@NPC_SOH2,571,1,4,24531,0,7394.44,-2524.73,749.249,5.16889,300,0,0,73050,0,2,0,0,0),
(@GUID+42,@NPC_SOH2,571,1,4,24531,0,7407.6,-2934.94,847.905,1.95477,300,0,0,75600,0,0,0,0,0),
(@GUID+43,@NPC_BF,571,1,4,26331,0,7401.46,-2522.13,749.245,5.24142,300,0,0,60875,0,2,0,0,0),
(@GUID+44,@NPC_BF,571,1,4,26331,0,7311.83,-2530.07,749.488,2.87671,300,0,0,60875,0,2,0,0,0),
(@GUID+45,@SM,571,1,4,0,0,7143.71,-2251.43,760.439,1.29097,300,0,0,11379,0,0,0,0,0),
(@GUID+46,@SM,571,1,4,27281,0,7172.8,-2257.74,759.628,1.11662,300,0,0,11379,0,0,0,0,0),
(@GUID+47,@SM,571,1,4,27281,0,7218.29,-2214.53,759.112,3.43747,300,0,0,11379,0,0,0,0,0),
(@GUID+48,@SM,571,1,4,27281,0,7164.95,-2214.65,758.563,4.15611,300,0,0,11379,0,0,0,0,0),
(@GUID+49,@SM,571,1,4,0,0,7105.5,-2211.86,759.098,0.688573,300,0,0,11379,0,0,0,0,0),
(@GUID+50,@SM,571,1,4,27281,0,7110.67,-2133.14,758.775,5.04282,300,0,0,11379,0,0,0,0,0),
(@GUID+51,@SM,571,1,4,27281,0,7071.03,-2168.81,760.815,0.91791,300,0,0,11379,0,0,0,0,0),
(@GUID+52,@SM,571,1,4,27281,0,7028.51,-2077.67,753.23,5.25331,300,0,0,11379,0,0,0,0,0),
(@GUID+53,@SM,571,1,4,27281,0,7106.01,-1988.13,771.455,4.35011,300,0,0,11379,0,0,0,0,0),
(@GUID+54,@SM,571,1,4,0,0,7041.36,-1981.59,776.354,0.266033,300,0,0,11379,0,0,0,0,0),
(@GUID+55,@SM,571,1,4,0,0,7133.88,-2039.53,771.902,3.57334,300,0,0,11379,0,0,0,0,0),
(@GUID+56,@SM,571,1,4,27281,0,7077.88,-2078.98,759.218,1.99469,300,0,0,11379,0,0,0,0,0),
(@GUID+57,@RJ,571,1,4,26262,0,7188.82,-2320.21,757.813,-1.87154,300,0,0,12175,0,0,0,0,0),
(@GUID+58,@RJ,571,1,4,26262,0,7250.3,-2342.8,751.68,0.851782,300,0,0,12600,0,0,0,0,0),
(@GUID+59,@RJ,571,1,4,26262,0,7149.57,-2163.88,761.147,2.97457,300,0,0,12600,0,0,0,0,0),
(@GUID+60,@RJ,571,1,4,26262,0,7194.98,-2195.57,761.949,-0.387345,300,0,0,12600,0,0,0,0,0),
(@GUID+61,@RJ,571,1,4,26262,0,7157.35,-2262.32,761.623,0.494206,300,0,0,12600,0,0,0,0,0),
(@GUID+62,@RJ,571,1,4,26262,0,7252.51,-2230.52,760.183,3.20023,300,0,0,12175,0,0,0,0,0),
(@GUID+63,@RJ,571,1,4,26262,0,7082.68,-2112.98,758.537,3.60123,300,0,0,12175,0,0,0,0,0),
(@GUID+64,@RJ,571,1,4,26262,0,7138.08,-2036.25,771.858,2.03839,300,0,0,12600,0,0,0,0,0),
(@GUID+65,@RJ,571,1,4,26262,0,7065.27,-2070.9,759.016,0.790229,300,0,0,12600,0,0,0,0,0),
(@GUID+66,@RJ,571,1,4,26262,0,7142.27,-2214.55,758.268,5.21568,300,0,0,12600,0,0,0,0,0),
(@GUID+67,@RJ,571,1,4,26262,0,7093.6,-2159.45,758.662,5.46951,300,0,0,12175,0,0,0,0,0),
(@GUID+68,@RJ,571,1,4,26262,0,7050.49,-2148.12,755.994,5.28631,300,0,0,12175,0,0,0,0,0),
(@GUID+69,@RJ,571,1,4,26262,0,7117.06,-2117.56,760.043,4.86823,300,0,0,12175,0,0,0,0,0),
(@GUID+70,@RJ,571,1,4,26262,0,7134.93,-2112.19,761.723,0.788161,300,0,0,12600,0,0,0,0,0),
(@GUID+71,@RJ,571,1,4,26262,0,7123.43,-2085.57,764.362,5.11831,300,0,0,12175,0,0,0,0,0),
(@GUID+72,@BUNNY_SPEAR,571,1,4,0,0,7266.99,-2753.76,870.875,6.23082,180,0,0,9215,0,0,0,0,0),
(@GUID+73,@BUNNY_SPEAR,571,1,4,0,0,7347.33,-2809.35,868.826,0.122173,180,0,0,9215,0,0,0,0,0),
(@GUID+74,@BUNNY_SPEAR,571,1,4,0,0,7215.59,-2712.18,894.848,0.034907,180,0,0,9215,0,0,0,0,0),
(@GUID+75,@BUNNY_SPEAR,571,1,4,0,0,7393.33,-2841.03,888.614,6.14356,180,0,0,9215,0,0,0,0,0),
(@GUID+76,@NPC_THORIM3,571,1,1,0,0,7762.389,-2159.516,1233.409,1.53589,300,0,0,13481,0,0,0,0,0);

-- Hot and Cold (12981)
SET @NPC_BUNNY2           := 30169;     -- Smoldering Scrap Bunny

DELETE FROM `creature` WHERE `id`=@NPC_BUNNY2;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID_BUNNY+0,@NPC_BUNNY2,571,1,8,1,0,7138.416,-3553.746,832.2787,4.694936,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+1,@NPC_BUNNY2,571,1,8,1,0,7191.637,-3490.598,833.993,0.2094395,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+2,@NPC_BUNNY2,571,1,8,1,0,7181.407,-3533.111,826.9557,3.211406,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+3,@NPC_BUNNY2,571,1,8,1,0,7178.466,-3558.917,827.0338,3.351032,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+4,@NPC_BUNNY2,571,1,8,1,0,7204.097,-3497.685,830.7673,2.635447,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+5,@NPC_BUNNY2,571,1,8,1,0,7232.065,-3474.279,850.7675,3.926991,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+6,@NPC_BUNNY2,571,1,8,1,0,7206.615,-3481.997,833.5632,3.281219,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+7,@NPC_BUNNY2,571,1,8,1,0,7192.001,-3386.612,846.4163,2.111848,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+8,@NPC_BUNNY2,571,1,8,1,0,7206.483,-3460.641,835.8506,3.909538,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+9,@NPC_BUNNY2,571,1,8,1,0,7227.852,-3415.956,840.174,1.553343,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+10,@NPC_BUNNY2,571,1,8,1,0,7222.42,-3441.838,837.1934,2.146755,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+11,@NPC_BUNNY2,571,1,8,1,0,7207.466,-3438.533,838.8736,2.897247,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+12,@NPC_BUNNY2,571,1,8,1,0,7217.787,-3378.616,846.7336,5.410521,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+13,@NPC_BUNNY2,571,1,8,1,0,7206.611,-3404.196,841.4804,4.223697,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+14,@NPC_BUNNY2,571,1,8,1,0,7248.638,-3625.245,826.9236,3.647738,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+15,@NPC_BUNNY2,571,1,8,1,0,7219.116,-3607.771,822.712,1.658063,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+16,@NPC_BUNNY2,571,1,8,1,0,7204.861,-3628.249,823.5885,4.223697,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+17,@NPC_BUNNY2,571,1,8,1,0,7196.265,-3652.629,823.5908,4.886922,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+18,@NPC_BUNNY2,571,1,8,1,0,7246.637,-3648.932,823.046,0.9948376,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+19,@NPC_BUNNY2,571,1,8,1,0,7236.381,-3678.733,822.8235,0.8726646,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+20,@NPC_BUNNY2,571,1,8,1,0,7192.001,-3386.612,846.4163,2.111848,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+21,@NPC_BUNNY2,571,1,8,1,0,7217.787,-3378.616,846.7336,5.410521,120,0,0,1,0,0,0,0,0),
(@GUID_BUNNY+22,@NPC_BUNNY2,571,1,8,1,0,7206.611,-3404.196,841.4804,4.223697,120,0,0,1,0,0,0,0,0);

SET @NPC            := 29914;   -- Dead Iron Giant
DELETE FROM `creature` WHERE `id`=@NPC AND `phaseMask`=4;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@GUID_BUNNY2,@NPC,571,1,4,0,0,7429.23,-3187.91,837.452,0.19249,120,0,0,50400,0,0,0,0,0),
(@GUID_BUNNY2+1,@NPC,571,1,4,0,0,7359.28,-3176.45,837.452,1.31954,120,0,0,50400,0,0,0,0,0),
(@GUID_BUNNY2+2,@NPC,571,1,4,0,0,7280.03,-3142.9,837.452,4.41243,120,0,0,50400,0,0,0,0,0),
(@GUID_BUNNY2+3,@NPC,571,1,4,0,0,7515.58,-3137.05,837.452,5.47429,120,0,0,50400,0,0,0,0,0),
(@GUID_BUNNY2+4,@NPC,571,1,4,0,0,7509.03,-3225.78,837.432,2.03661,120,0,0,50400,0,0,0,0,0),
(@GUID_BUNNY2+5,@NPC,571,1,4,0,0,7259.32,-3221.84,837.452,1.06349,120,0,0,50400,0,0,0,0,0);

UPDATE `creature` SET `phaseMask`=1 WHERE  `guid`=152124;
