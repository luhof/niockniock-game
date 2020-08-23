/// @description ?

var zikmu = undefined;
switch(room){
	case rVillage:
	case rSwordPath:
	case rSatanPath:
	case rFountain:
	case rWizard:
	case rBar:
	case rCinema:
	case rFamilyHouse:
	case rSlimePlain:
	case rWoodEntrance:
	case rLostWoods:
		zikmu = sndVillage;
		break;
	case rHouseNiockNiock:
	case rFamilyInside:
	case rHouseMom:
	case rHouseGirl:
	case rCinemaEntrance:
	case rHouseWizard:
	case rGarage:
		zikmu = sndInside;
		break;
	case rCinemaInside:
		zikmu = sndMovie
		break;
	case rShop:
		zikmu = sndSupermarker;
		break;
	case rCornDen:
		zikmu = sndCornDude;
		break;
	case rSatanInside:
		zikmu = sndLair;
		break;
	case rSatanLair:
		zikmu = undefined;
		break;
	case rSatanInsideLimbo:
	case rSatanPathLimbo:
	case rSwordPathLimbo:
	case rVillageLimbo:
	case rHouseNiockNiockLimbo:
	case rHouseGirlLimbo:
		zikmu = sndLimbo;
		break;
	case rCinematicIntro:
	case rCinematicIntroWait:
	case rMenu:
		zikmu = sndDream;
		break;
	case rCinematic1:
	case rCinematic2:
	case rCinematic21:
	case rCinematicCredits:
	case rCinematicTheEnd:
		zikmu = sndSatie;
		break;
}

PlayMusic(zikmu);	
