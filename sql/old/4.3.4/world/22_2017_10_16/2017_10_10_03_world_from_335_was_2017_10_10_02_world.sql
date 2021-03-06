-- Dawnstart Spire overhaul
SET @GUID_1 := 81865; -- Arcane Reaver #1
SET @GUID_2 := 81867; -- Arcane Reaver #2
SET @GUID_3 := 81869; -- Arcane Reaver #3
SET @GUID_4 := 81860; -- Arcane Reaver #4
SET @PATHID_1 := @GUID_1 * 10;
SET @PATHID_2 := @GUID_2 * 10;
SET @PATHID_3 := @GUID_3 * 10;
SET @PATHID_4 := @GUID_4 * 10;

UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE `guid` IN (81863, 81861, 81859, 81858);
UPDATE `creature` SET `position_x`=7818.52, `position_y`=-7875.30, `position_z`=167.145, `orientation`=1.7218, `spawndist`=0, `MovementType`=0 WHERE `guid`=81938;
UPDATE `creature` SET `position_x`=7830.56, `position_y`=-7877.31, `position_z`=169.147, `orientation`=4.6435, `spawndist`=0, `MovementType`=2 WHERE `guid`=@GUID_1;
UPDATE `creature` SET `position_x`=7830.46, `position_y`=-7883.70, `position_z`=169.238, `orientation`=4.6435, `spawndist`=0, `MovementType`=2 WHERE `guid`=@GUID_2;
UPDATE `creature` SET `position_x`=7788.29, `position_y`=-7866.93, `position_z`=167.249, `orientation`=1.6346, `spawndist`=0, `MovementType`=2 WHERE `guid`=@GUID_3;
UPDATE `creature` SET `position_x`=7866.38, `position_y`=-7865.52, `position_z`=169.709, `orientation`=1.7868, `spawndist`=0, `MovementType`=2 WHERE `guid`=@GUID_4;

DELETE FROM `creature` WHERE `guid` IN (81868, 81862);

DELETE FROM `creature_addon` WHERE `guid` IN (@GUID_1, @GUID_2, @GUID_3, @GUID_4);
INSERT INTO `creature_addon` (`guid`, `path_id`, `bytes2`) VALUES 
(@GUID_1, @PATHID_1, 4097),
(@GUID_2, @PATHID_2, 4097),
(@GUID_3, @PATHID_3, 4097),
(@GUID_4, @PATHID_4, 4097);

DELETE FROM `waypoint_data` WHERE `id` IN (@PATHID_1, @PATHID_2, @PATHID_3, @PATHID_4);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`) VALUES
(@PATHID_1, 1, 7830.25, -7906.69, 169.243),
(@PATHID_1, 2, 7826.57, -7907.71, 169.240),
(@PATHID_1, 3, 7824.40, -7911.16, 169.240),
(@PATHID_1, 4, 7808.62, -7917.26, 169.244),
(@PATHID_1, 5, 7812.92, -7927.34, 170.889),
(@PATHID_1, 6, 7821.23, -7932.56, 173.071),
(@PATHID_1, 7, 7830.24, -7934.47, 175.291),
(@PATHID_1, 8, 7838.78, -7932.69, 177.055),
(@PATHID_1, 9, 7847.03, -7928.16, 178.839),
(@PATHID_1, 10, 7851.27, -7920.12, 180.428),
(@PATHID_1, 11, 7854.10, -7911.47, 180.429),
(@PATHID_1, 12, 7867.72, -7911.44, 180.715),
(@PATHID_1, 13, 7878.59, -7911.82, 182.803),
(@PATHID_1, 14, 7867.72, -7911.44, 180.715),
(@PATHID_1, 15, 7854.10, -7911.47, 180.429),
(@PATHID_1, 16, 7851.27, -7920.12, 180.428),
(@PATHID_1, 17, 7847.03, -7928.16, 178.839),
(@PATHID_1, 18, 7838.78, -7932.69, 177.055),
(@PATHID_1, 19, 7830.24, -7934.47, 175.291),
(@PATHID_1, 20, 7821.23, -7932.56, 173.071),
(@PATHID_1, 21, 7812.92, -7927.34, 170.889),
(@PATHID_1, 22, 7808.62, -7917.26, 169.244),
(@PATHID_1, 23, 7824.40, -7911.16, 169.240),
(@PATHID_1, 24, 7826.57, -7907.71, 169.240),
(@PATHID_1, 25, 7830.25, -7906.69, 169.243),
(@PATHID_1, 26, 7830.56, -7877.31, 169.147),
(@PATHID_2, 1, 7830.90, -7842.99, 169.391),
(@PATHID_2, 2, 7846.70, -7841.67, 170.134),
(@PATHID_2, 3, 7846.84, -7824.87, 170.581),
(@PATHID_2, 4, 7835.30, -7817.69, 170.466),
(@PATHID_2, 5, 7800.81, -7815.93, 170.603),
(@PATHID_2, 6, 7795.67, -7818.42, 170.734),
(@PATHID_2, 7, 7794.67, -7834.75, 169.453),
(@PATHID_2, 8, 7808.46, -7840.24, 168.951),
(@PATHID_2, 9, 7821.20, -7833.64, 170.003),
(@PATHID_2, 10, 7827.38, -7834.57, 170.058),
(@PATHID_2, 11, 7830.90, -7842.99, 169.391),
(@PATHID_2, 12, 7830.46, -7883.70, 169.238),
(@PATHID_2, 13, 7830.90, -7842.99, 169.391),
(@PATHID_2, 14, 7827.38, -7834.57, 170.058),
(@PATHID_2, 15, 7821.20, -7833.64, 170.003),
(@PATHID_2, 16, 7808.46, -7840.24, 168.951),
(@PATHID_2, 17, 7794.67, -7834.75, 169.453),
(@PATHID_2, 18, 7795.67, -7818.42, 170.734),
(@PATHID_2, 19, 7800.81, -7815.93, 170.603),
(@PATHID_2, 20, 7835.30, -7817.69, 170.466),
(@PATHID_2, 21, 7846.84, -7824.87, 170.581),
(@PATHID_2, 22, 7846.70, -7841.67, 170.134),
(@PATHID_2, 23, 7830.90, -7842.99, 169.391),
(@PATHID_2, 24, 7830.46, -7883.70, 169.238),
(@PATHID_3, 1, 7785.77, -7833.79, 170.696),
(@PATHID_3, 2, 7788.42, -7818.38, 171.033),
(@PATHID_3, 3, 7785.77, -7833.79, 170.696),
(@PATHID_3, 4, 7788.29, -7866.93, 167.249),
(@PATHID_3, 5, 7791.01, -7896.47, 166.752),
(@PATHID_3, 6, 7792.55, -7906.87, 167.080),
(@PATHID_3, 7, 7791.01, -7896.47, 166.752),
(@PATHID_3, 8, 7788.29, -7866.93, 167.249),
(@PATHID_4, 1, 7857.40, -7825.82, 170.856),
(@PATHID_4, 2, 7866.38, -7865.52, 169.704),
(@PATHID_4, 3, 7870.51, -7891.75, 167.853),
(@PATHID_4, 4, 7870.07, -7903.79, 167.394),
(@PATHID_4, 5, 7870.51, -7891.75, 167.852),
(@PATHID_4, 6, 7866.38, -7865.52, 169.703);
