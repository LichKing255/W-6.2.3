ALTER TABLE `locales_quest`
DROP COLUMN `ObjectiveText1_loc1`,
DROP COLUMN `ObjectiveText1_loc2`,
DROP COLUMN `ObjectiveText1_loc3`,
DROP COLUMN `ObjectiveText1_loc4`,
DROP COLUMN `ObjectiveText1_loc5`,
DROP COLUMN `ObjectiveText1_loc6`,
DROP COLUMN `ObjectiveText1_loc7`,
DROP COLUMN `ObjectiveText1_loc8`,
DROP COLUMN `ObjectiveText1_loc9`,
DROP COLUMN `ObjectiveText1_loc10`,
DROP COLUMN `ObjectiveText2_loc1`,
DROP COLUMN `ObjectiveText2_loc2`,
DROP COLUMN `ObjectiveText2_loc3`,
DROP COLUMN `ObjectiveText2_loc4`,
DROP COLUMN `ObjectiveText2_loc5`,
DROP COLUMN `ObjectiveText2_loc6`,
DROP COLUMN `ObjectiveText2_loc7`,
DROP COLUMN `ObjectiveText2_loc8`,
DROP COLUMN `ObjectiveText2_loc9`,
DROP COLUMN `ObjectiveText2_loc10`,
DROP COLUMN `ObjectiveText3_loc1`,
DROP COLUMN `ObjectiveText3_loc2`,
DROP COLUMN `ObjectiveText3_loc3`,
DROP COLUMN `ObjectiveText3_loc4`,
DROP COLUMN `ObjectiveText3_loc5`,
DROP COLUMN `ObjectiveText3_loc6`,
DROP COLUMN `ObjectiveText3_loc7`,
DROP COLUMN `ObjectiveText3_loc8`,
DROP COLUMN `ObjectiveText3_loc9`,
DROP COLUMN `ObjectiveText3_loc10`,
DROP COLUMN `ObjectiveText4_loc1`,
DROP COLUMN `ObjectiveText4_loc2`,
DROP COLUMN `ObjectiveText4_loc3`,
DROP COLUMN `ObjectiveText4_loc4`,
DROP COLUMN `ObjectiveText4_loc5`,
DROP COLUMN `ObjectiveText4_loc6`,
DROP COLUMN `ObjectiveText4_loc7`,
DROP COLUMN `ObjectiveText4_loc8`,
DROP COLUMN `ObjectiveText4_loc9`,
DROP COLUMN `ObjectiveText4_loc10`;

CREATE TABLE IF NOT EXISTS `locales_quest_template_objective` (
  `ID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `Locale` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `Description` TEXT,
  PRIMARY KEY (`ID`,`Locale`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

ALTER TABLE `quest_template` DROP COLUMN `RequiredFactionId1`, DROP COLUMN `RequiredFactionId2`, DROP COLUMN `RequiredFactionValue1`, DROP COLUMN `RequiredFactionValue2`, DROP COLUMN `RequiredNpcOrGo1`, DROP COLUMN `RequiredNpcOrGo2`, DROP COLUMN `RequiredNpcOrGo3`, DROP COLUMN `RequiredNpcOrGoCount10`, DROP COLUMN `RequiredNpcOrGoCount9`, DROP COLUMN `RequiredNpcOrGoCount8`, DROP COLUMN `RequiredNpcOrGoCount7`, DROP COLUMN `RequiredNpcOrGoCount6`, DROP COLUMN `RequiredNpcOrGoCount5`, DROP COLUMN `RequiredNpcOrGoCount4`, DROP COLUMN `RequiredNpcOrGoCount3`, DROP COLUMN `RequiredNpcOrGoCount2`, DROP COLUMN `RequiredNpcOrGoCount1`, DROP COLUMN `RequiredNpcOrGo10`, DROP COLUMN `RequiredNpcOrGo9`, DROP COLUMN `RequiredNpcOrGo8`, DROP COLUMN `RequiredNpcOrGo7`, DROP COLUMN `RequiredNpcOrGo6`, DROP COLUMN `RequiredNpcOrGo5`, DROP COLUMN `RequiredNpcOrGo4`, DROP COLUMN `RequiredItemCount10`, DROP COLUMN `RequiredItemCount9`, DROP COLUMN `RequiredItemCount8`, DROP COLUMN `RequiredItemCount7`, DROP COLUMN `RequiredItemCount6`, DROP COLUMN `RequiredItemCount5`, DROP COLUMN `RequiredItemCount4`, DROP COLUMN `RequiredItemCount3`, DROP COLUMN `RequiredItemCount2`, DROP COLUMN `RequiredItemCount1`, DROP COLUMN `RequiredItemId10`, DROP COLUMN `RequiredItemId9`, DROP COLUMN `RequiredItemId8`, DROP COLUMN `RequiredItemId7`, DROP COLUMN `RequiredItemId6`, DROP COLUMN `RequiredItemId5`, DROP COLUMN `RequiredItemId4`, DROP COLUMN `RequiredItemId3`, DROP COLUMN `RequiredItemId2`, DROP COLUMN `RequiredItemId1`, DROP COLUMN `ObjectiveText10`, DROP COLUMN `ObjectiveText9`, DROP COLUMN `ObjectiveText8`, DROP COLUMN `ObjectiveText7`, DROP COLUMN `ObjectiveText6`, DROP COLUMN `ObjectiveText5`, DROP COLUMN `ObjectiveText4`, DROP COLUMN `ObjectiveText3`, DROP COLUMN `ObjectiveText2`, DROP COLUMN `ObjectiveText1`, DROP COLUMN `RequiredSpellCast6`, DROP COLUMN `RequiredSpellCast5`, DROP COLUMN `RequiredSpellCast4`, DROP COLUMN `RequiredSpellCast3`, DROP COLUMN `RequiredSpellCast2`, DROP COLUMN `RequiredSpellCast1`, DROP COLUMN `RequiredSpell`, DROP COLUMN `SourceItemCount`, DROP COLUMN `RequiredCurrencyCount4`, DROP COLUMN `RequiredCurrencyCount3`, DROP COLUMN `RequiredCurrencyCount2`, DROP COLUMN `RequiredCurrencyCount1`, DROP COLUMN `RequiredCurrencyId4`, DROP COLUMN `RequiredCurrencyId3`, DROP COLUMN `RequiredCurrencyId2`, DROP COLUMN `RequiredCurrencyId1`,    CHANGE `RewardOrRequiredMoney` `RewardMoney` INT(11) DEFAULT '0' NOT NULL,     CHANGE `CompletedText` `CompletedText` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ;
ALTER TABLE `quest_template` ADD COLUMN `Flags2` INT(10) UNSIGNED DEFAULT '0' NOT NULL AFTER `Flags`,    CHANGE `Flags` `Flags` INT(10) UNSIGNED DEFAULT '0' NOT NULL;