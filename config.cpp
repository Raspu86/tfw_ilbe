class CfgPatches
{
	class tfw_ilbe {
		
		units[] = {
			"tfw_ilbe_wd"
		};
		requiredVersion = 1.0;
		requiredAddons[] = {"task_force_radio", "task_force_radio_items"};
		author[] = {"Raspu"};
		version = 1.1;
		versionStr = "1.1";
		versionAr[] = {1,1,0};
	};
};

class CfgFactionClasses {
	class rhs_faction_usmc_wd
	{
	backpack_tf_faction_radio_api = "tfw_ilbe_wd";
	};
	class rhs_faction_usmc_d
	{
	backpack_tf_faction_radio_api = "tfw_ilbe_d";
	};
};

#include "\tfw_ilbe\CfgFunctions.cpp"
	
class CfgVehicles {

	class TFAR_Bag_Base;

	class tfw_ilbe_wd: TFAR_Bag_Base {
		author = "Raspu";
		scope=2;
		displayName="ILBE AP MARPAT-WD RT-1523G (ASIP)";
		descriptionShort = "RT-1523G (ASIP) long range radio 20km";
		picture="\tfw_ilbe\data\icons\ilbe_icon.paa";
		model="\tfw_ilbe\data\model\tfw_ilbe.p3d";
		hiddenSelectionsTextures[] = {"\tfw_ilbe\data\model\ilbe_co.paa"};
		hiddenSelections[] = {"camo"};
		maximumLoad=240;
		mass=80;
		isbackpack=1;
		tf_encryptionCode = "tf_west_radio_code";
		tf_dialog = "rt1523g_radio_dialog";
		tf_subtype = "digital_lr";
		tf_range = 17000;
	};
	class tfw_ilbe_d: tfw_ilbe_wd {
		displayName = "ILBE AP MARPAT-D RT-1523G (ASIP)";
		picture="\tfw_ilbe\data\icons\ilbe_icon_d.paa";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\tfw_ilbe\data\model\ilbe_d_co.paa"};
	};
	class tfw_ilbe_coy: tfw_ilbe_wd {
		displayName = "ILBE AP Coyote RT-1523G (ASIP)";
		picture="\tfw_ilbe\data\icons\ilbe_icon_coy.paa";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\tfw_ilbe\data\model\ilbe_coy_co.paa"};
	};
	class tfw_ilbe_gr: tfw_ilbe_wd {
		displayName = "ILBE AP Green RT-1523G (ASIP)";
		picture="\tfw_ilbe\data\icons\ilbe_icon_gr.paa";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\tfw_ilbe\data\model\ilbe_gr_co.paa"};
	};
	class tfw_ilbe_a_wd: TFAR_Bag_Base {
		author = "Raspu";
		scope=2;
		displayName="ILBE AP MARPAT-WD ANT RT-1523G (ASIP)";
		descriptionShort = "RT-1523G (ASIP) long range radio 20km";
		picture="\tfw_ilbe\data\icons\ilbe_icon.paa";
		model="\tfw_ilbe\data\model\antenna\tfw_ilbe_ant.p3d";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\tfw_ilbe\data\model\ilbe_co.paa"};
		maximumLoad=240;
		mass=80;
		isbackpack=1;
		tf_encryptionCode = "tf_west_radio_code";
		tf_dialog = "rt1523g_radio_dialog";
		tf_subtype = "digital_lr";
		tf_range = 25000;
		 
		class AnimationSources {
			class ant {
			source = user;
			AnimPeriod=1;
			initPhase = 0;
			};	
		};
	};
	class tfw_ilbe_a_d: tfw_ilbe_a_wd {
		displayName="ILBE AP MARPAT-D ANT RT-1523G (ASIP)";
		picture="\tfw_ilbe\data\icons\ilbe_icon_d.paa";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\tfw_ilbe\data\model\ilbe_d_co.paa"};
		 
		class AnimationSources {
			class ant {
			source = user;
			AnimPeriod=1;
			initPhase = 0;
			};	
		};
	};
	class tfw_ilbe_a_coy: tfw_ilbe_a_wd {
		displayName="ILBE AP Coyote ANT RT-1523G (ASIP)";
		picture="\tfw_ilbe\data\icons\ilbe_icon_coy.paa";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\tfw_ilbe\data\model\ilbe_coy_co.paa"};
		 
		class AnimationSources {
			class ant {
			source = user;
			AnimPeriod=1;
			initPhase = 0;
			};	
		};
	};
	class tfw_ilbe_a_gr: tfw_ilbe_a_wd {
		displayName="ILBE AP Green ANT RT-1523G (ASIP)";
		picture="\tfw_ilbe\data\icons\ilbe_icon_gr.paa";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\tfw_ilbe\data\model\ilbe_gr_co.paa"};
		 
		class AnimationSources {
			class ant {
			source = user;
			AnimPeriod=1;
			initPhase = 0;
			};	
		};
	};
};