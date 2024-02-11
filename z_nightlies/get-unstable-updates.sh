#/bin/bash
function goto_console_directory () {
	cd /media/fat/_Console
	}
function goto_computer_directory () {
	cd /media/fat/_Computer
	}
function goto_n64_directory () {
	cd /media/fat/games/N64
	}
function goto_arcade_directory () {
	cd /media/fat/_Arcade/cores
	}
function get_home_directory () {
	home_directory=$(pwd)
	}
function goto_home_directory () {
	cd $home_directory
	}

get_home_directory
# source website is: https://raw.githubusercontent.com/MiSTer-unstable-nightlies/Unstable_Folder_MiSTer/main/db_unstable_nightlies_folder.json	}
# Saturn core unstable example: 
# https://github.com/MiSTer-unstable-nightlies/Saturn_MiSTer/releases/download/unstable-builds/Saturn_unstable_20240126_1481d9.rbf

goto_home_directory
rm db_unstable_nightlies_folder.json 2>/dev/null
echo " "
echo " "
echo "Updating Unstable Nightlies Database..."

function get_latest_updates () {
	wget https://raw.githubusercontent.com/MiSTer-unstable-nightlies/Unstable_Folder_MiSTer/main/db_unstable_nightlies_folder.json
	AcornAtom_Unstable=$(cat db_unstable_nightlies_folder.json | grep AcornAtom_unstable | cut -d\" -f4)

	AcornElectron_unstable=$(cat db_unstable_nightlies_folder.json | grep AcornElectron_unstable | cut -d\" -f4)

	AliceMC10_unstable=$(cat db_unstable_nightlies_folder.json | grep AliceMC10_unstable | cut -d\" -f4)

	Amstrad_unstable=$(cat db_unstable_nightlies_folder.json | grep Amstrad_unstable | cut -d\" -f4)

	AppleII_unstable=$(cat db_unstable_nightlies_folder.json | grep Apple-II_unstable | cut -d\" -f4)

	ArcadeGalaga_unstable=$(cat db_unstable_nightlies_folder.json | grep Arcade-Galaga_unstable | cut -d\" -f4)

	ArcadeGalaxian_unstable=$(cat db_unstable_nightlies_folder.json | grep Arcade-Galaxian_unstable | cut -d\" -f4)

	ArcadeQbert_unstable=$(cat db_unstable_nightlies_folder.json | grep Arcade-QBert_unstable | cut -d\" -f4)

	SegaSystem1_unstable=$(cat db_unstable_nightlies_folder.json | grep Arcade-SEGASYS1_unstable | cut -d\" -f4)

	ArcadeSpaceInvaders_unstable=$(cat db_unstable_nightlies_folder.json | grep Arcade-SpaceInvaders_unstable | cut -d\" -f4)

	ArcadeTecmo_unstable=$(cat db_unstable_nightlies_folder.json | grep Arcade-Tecmo_unstable | cut -d\" -f4)

	AtariLynx_unstable=$(cat db_unstable_nightlies_folder.json | grep AtariLynx_unstable | cut -d\" -f4)

	AtariST_unstable=$(cat db_unstable_nightlies_folder.json | grep AtariST_unstable | cut -d\" -f4)

	C64_unstable=$(cat db_unstable_nightlies_folder.json | grep C64_unstable | cut -d\" -f4)

	CoCo3_unstable=$(cat db_unstable_nightlies_folder.json | grep CoCo3_unstable | cut -d\" -f4)

	Coleco_unstable=$(cat db_unstable_nightlies_folder.json | grep ColecoVision_unstable | cut -d\" -f4)

	GBA_unstable=$(cat db_unstable_nightlies_folder.json | grep GBA_unstable | cut -d\" -f4)

	Gameboy_unstable=$(cat db_unstable_nightlies_folder.json | grep Gameboy_unstable | cut -d\" -f4)

	SegaGenesis_unstable=$(cat db_unstable_nightlies_folder.json | grep Genesis_unstable | cut -d\" -f4)

	AppleMac_unstable=$(cat db_unstable_nightlies_folder.json | grep MacPlus_unstable | cut -d\" -f4)

	SegaMegaCD_unstable=$(cat db_unstable_nightlies_folder.json | grep MegaCD_unstable | cut -d\" -f4)

	SegaMegaDrive_unstable=$(cat db_unstable_nightlies_folder.json | grep MegaDrive_unstable | cut -d\" -f4)

	MinimigAGA_unstable=$(cat db_unstable_nightlies_folder.json | grep Minimig_unstable | cut -d\" -f4)

	NES_unstable=$(cat db_unstable_nightlies_folder.json | grep NES_unstable | cut -d\" -f4)

	NeoGeo_unstable=$(cat db_unstable_nightlies_folder.json | grep NeoGeo_unstable | cut -d\" -f4)

	PC88_unstable=$(cat db_unstable_nightlies_folder.json | grep PC88_unstable | cut -d\" -f4)

	PSX_unstable=$(cat db_unstable_nightlies_folder.json | grep PSX_unstable | cut -d\" -f4)

	Sega32X_unstable=$(cat db_unstable_nightlies_folder.json | grep S32X_unstable | cut -d\" -f4)

	SegaMasterSystem_unstable=$(cat db_unstable_nightlies_folder.json | grep SMS_unstable | cut -d\" -f4)

	SNES_unstable=$(cat db_unstable_nightlies_folder.json | grep SNES_unstable | cut -d\" -f4)

	SegaSaturnDualSDRAM_unstable=$(cat db_unstable_nightlies_folder.json | grep Saturn_DualSDRAM_unstable_2024 | cut -d\" -f4)

	SegaSaturnSingleSDRAM_unstable=$(cat db_unstable_nightlies_folder.json | grep Saturn_SingleSDRAM_unstable | cut -d\" -f4)

	SegaSaturn_unstable=$(cat db_unstable_nightlies_folder.json | grep Saturn_unstable | cut -d\" -f4)

	TatungEinstein_unstable=$(cat db_unstable_nightlies_folder.json | grep TatungEinstein_unstable | cut -d\" -f4)

	TurboGrafx16_unstable=$(cat db_unstable_nightlies_folder.json | grep TurboGrafx16_unstable | cut -d\" -f4)

	X68000_unstable=$(cat db_unstable_nightlies_folder.json | grep X68000_unstable | cut -d\" -f4)
	
	ZXSpectrum_unstable=$(cat db_unstable_nightlies_folder.json | grep ZX-Spectrum_unstable | cut -d\" -f4)
	
	AO486_unstable=$(cat db_unstable_nightlies_folder.json | grep ao486_unstable | cut -d\" -f4)

	#https://github.com/MiSTer-unstable-nightlies/Menu_MiSTer/releases/download/unstable-builds/menu_unstable_20231204_05f0db.rbf
	#Saturn_Unstable=$(cat db_unstable_nightlies_folder.json | grep Saturn_unstable | cut -d\" -f4)
	}

function get_latest_n64_updates () {
	goto_home_directory
	pwd
	rm db.json.zip 2>/dev/null
	rm db.json 2>/dev/null
	wget https://raw.githubusercontent.com/RobertPeip/Mister64/db/db.json.zip
	unzip db.json.zip
	rm db.json.zip
	N64_latest=$(cat db.json | cut -d\" -f28)
	N64_database=$(cat db.json | cut -d\" -f44)
	echo $N64_latest
	echo $N64_database
	}


function get_latest_core () {
	if [ $1 2>/dev/null == "atom" ]; then
	goto_computer_directory
	pwd
	rm AcornAtom_unstable* 2>/dev/null
	wget $AcornAtom_unstable
	fi

	if [ $1 2>/dev/null == "electron" ]; then
	goto_computer_directory
	pwd
	rm AcornElectron_unstable* 2>/dev/null
	wget $AcornElectron_unstable
	fi
	
	if [ $1 2>/dev/null == "mc10" ]; then
	goto_computer_directory
	pwd
	rm AliceMC10_unstable* 2>/dev/null
	wget $AliceMC10_unstable
	fi

	if [ $1 2>/dev/null == "amstrad" ]; then
	goto_computer_directory
	pwd
	rm Amstrad_unstable* 2>/dev/null
	wget $Amstrad_unstable
	fi

	if [ $1 2>/dev/null == "apple2" ]; then
	goto_computer_directory
	pwd
	rm Apple-II_unstable* 2>/dev/null
	wget $AppleII_unstable
	fi

	if [ $1 2>/dev/null == "galaga" ]; then
	goto_arcade_directory
	pwd
	rm Arcade-Galaga_unstable* 2>/dev/null
	wget $ArcadeGalaga_unstable
	fi

	if [ $1 2>/dev/null == "galaxian" ]; then
	goto_arcade_directory
	pwd
	rm Arcade-Galaxian_unstable* 2>/dev/null
	wget $ArcadeGalaxian_unstable
	fi

	if [ $1 2>/dev/null == "qbert" ]; then
	goto_arcade_directory
	pwd
	rm AcornElectron_unstable* 2>/dev/null
	wget $AcornElectron_unstable
	fi

	if [ $1 2>/dev/null == "segasys1arcade" ]; then
	goto_arcade_directory
	pwd
	rm Arcade-SEGASYS1_unstable* 2>/dev/null
	wget $SegaSystem1_unstable
	fi

	if [ $1 2>/dev/null == "spaceinvaders" ]; then
	goto_arcade_directory
	pwd
	rm Arcade-SpaceInvaders_unstable* 2>/dev/null
	wget $ArcadeSpaceInvaders_unstable
	fi

	if [ $1 2>/dev/null == "tecmoarcade" ]; then
	goto_arcade_directory
	pwd
	rm Arcade-Tecmo_unstable* 2>/dev/null
	wget $ArcadeTecmo_unstable
	fi

	if [ $1 2>/dev/null == "lynx" ]; then
	goto_console_directory
	pwd
	rm AtariLynx_unstable* 2>/dev/null
	wget $AtariLynx_unstable
	fi

	if [ $1 2>/dev/null == "atarist" ]; then
	goto_computer_directory
	pwd
	rm AtariST_unstable* 2>/dev/null
	wget $AtariST_unstable
	fi

	if [ $1 2>/dev/null == "c64" ]; then
	goto_computer_directory
	pwd
	rm C64_unstable* 2>/dev/null
	wget $C64_unstable
	fi

	if [ $1 2>/dev/null == "coco3" ]; then
	goto_computer_directory
	pwd
	rm CoCo3_unstable* 2>/dev/null
	wget $CoCo3_unstable
	fi

	if [ $1 2>/dev/null == "coleco" ]; then
	goto_console_directory
	pwd
	rm ColecoVision_unstable* 2>/dev/null
	wget $Coleco_unstable
	fi

	if [ $1 2>/dev/null == "gba" ]; then
	goto_console_directory
	pwd
	rm GBA_unstable* 2>/dev/null
	wget $GBA_unstable
	fi

	if [ $1 2>/dev/null == "gameboy" ]; then
	goto_console_directory
	pwd
	rm Gameboy_unstable* 2>/dev/null
	wget $Gameboy_unstable
	fi

	if [ $1 2>/dev/null == "genesis" ]; then
	goto_console_directory
	pwd
	rm Genesis_unstable* 2>/dev/null
	wget $SegaGenesis_unstable
	fi

	if [ $1 2>/dev/null == "macintosh" ]; then
	goto_computer_directory
	pwd
	rm MacPlus_unstable* 2>/dev/null
	wget $AppleMac_unstable
	fi

	if [ $1 2>/dev/null == "segacd" ]; then
	goto_console_directory
	pwd
	rm MegaCD_unstable* 2>/dev/null
	wget $SegaMegaCD_unstable
	fi

	if [ $1 2>/dev/null == "megadrive" ]; then
	goto_console_directory
	pwd
	rm MegaDrive_unstable* 2>/dev/null
	wget $SegaMegaDrive_unstable
	fi

	if [ $1 2>/dev/null == "minimig" ]; then
	goto_computer_directory
	pwd
	rm Minimig_unstable* 2>/dev/null
	wget $MinimigAGA_unstable
	fi

	if [ $1 2>/dev/null == "nes" ]; then
	goto_console_directory
	pwd
	rm NES_unstable* 2>/dev/null
	wget $NES_unstable
	fi

	if [ $1 2>/dev/null == "neogeo" ]; then
	goto_arcade_directory
	pwd
	rm NeoGeo_unstable* 2>/dev/null
	wget $NeoGeo_unstable
	fi

	if [ $1 2>/dev/null == "pc88" ]; then
	goto_computer_directory
	pwd
	rm PC88_unstable* 2>/dev/null
	wget $PC88_unstable
	fi
	
	if [ $1 2>/dev/null == "psx" ]; then
	goto_console_directory
	pwd
	rm PSX_unstable* 2>/dev/null
	wget $PSX_unstable
	fi

	if [ $1 2>/dev/null == "32x" ]; then
	goto_console_directory
	pwd
	rm S32X_unstable* 2>/dev/null
	wget $Sega32X_unstable
	fi

	if [ $1 2>/dev/null == "sms" ]; then
	goto_console_directory
	pwd
	rm SMS_unstable* 2>/dev/null
	wget $SegaMasterSystem_unstable
	fi
	
	if [ $1 2>/dev/null == "snes" ]; then
	goto_console_directory
	pwd
	rm SNES_unstable* 2>/dev/null
	wget $SNES_unstable
	fi

	if [ $1 2>/dev/null == "saturn2ram2024" ]; then
	goto_console_directory
	pwd
	rm Saturn_DualSDRAM_unstable* 2>/dev/null
	wget $SegaSaturnDualSDRAM_unstable
	fi

	if [ $1 2>/dev/null == "saturn1ram" ]; then
	goto_console_directory
	pwd
	rm Saturn_SingleSDRAM_unstable* 2>/dev/null
	wget $SegaSaturnSingleSDRAM_unstable
	fi

	if [ $1 2>/dev/null == "saturn" ]; then
	goto_console_directory
	pwd
	rm Saturn_unstable* 2>/dev/null
	wget $SegaSaturn_unstable
	fi

	if [ $1 2>/dev/null == "einstein" ]; then
	goto_computer_directory
	pwd
	rm TatungEinstein_unstable* 2>/dev/null
	wget $TatungEinstein_unstable
	fi

	if [ $1 2>/dev/null == "tg16" ]; then
	goto_console_directory
	pwd
	rm TurboGrafx16_unstable* 2>/dev/null
	wget $TurboGrafx16_unstable
	fi

	if [ $1 2>/dev/null == "x68000" ]; then
	goto_computer_directory
	pwd
	rm X68000_unstable* 2>/dev/null
	wget $X68000_unstable
	fi

	if [ $1 2>/dev/null == "zxspectrum" ]; then
	goto_computer_directory
	pwd
	rm ZX-Spectrum_unstable* 2>/dev/null
	wget $ZXSpectrum_unstable
	fi

	if [ $1 2>/dev/null == "ao486" ]; then
	goto_computer_directory
	pwd
	rm ao486_unstable* 2>/dev/null
	wget $AO486_unstable
	fi

	if [ $1 2>/dev/null == "n64" ]; then
	goto_console_directory
	rm N64* 2>/dev/null
	wget $N64_latest
	goto_n64_directory
	rm N64-database.txt
	wget $N64_database
	fi
	
	if [ $1 2>/dev/null == "list" ]; then
	Unstable_list=$(cat db_unstable_nightlies_folder.json | grep https | grep -v menu_unstable | cut -d\" -f4 | sort | cut -d\/ -f9)
	N64_list=$(echo $N64_latest | cut -d\/ -f9)
	List=$(echo $Unstable_list $N64_list)
	echo -e "\nCurrent Cores Listed\n================================"
	echo $List | tr ' ' '\n' | sort | column -d
	#| sort | column -d 
	#cat db_unstable_nightlies_folder.json | grep https | cut -d\" -f4 | sort | cut -d\/ -f9 | column -d
	fi
	
	if [ $1 2>/dev/null == "url" ]; then
	URL_list=$(cat db_unstable_nightlies_folder.json | grep https | cut -d\" -f4) 
	echo -e "\nCore URLs Listed\n================================"
	echo $N64_latest $URL_list | tr ' ' '\n' | sort
	fi
	}

get_latest_updates
get_latest_n64_updates
goto_home_directory
get_latest_core $1 $N64_latest
goto_home_directory

echo " "
echo " "
echo "Available systems are:"
echo "atom electron mc10 amstrad apple2 galaga galaxian qbert segasys1arcade spaceinvaders tecmoarcade lynx atarist c64 coco3 coleco gba gameboy genesis macintosh segacd megadrive minimig nes 
neogeo pc88 psx 32x sms snes saturn2ram2024 saturn1ram saturn einstein tg16 x68000 zxspectrum ao486 n64" | tr ' ' '\n' | sort | column -d
echo " "
echo "Syntax is \"get-unstable-nightlies.sh <system>\""
echo "Type \"get-unstable-nightlies.sh list\" for current list of rbf files"
echo "Type \"get-unstable-nightlies.sh url\" for URLs of rbf files"






