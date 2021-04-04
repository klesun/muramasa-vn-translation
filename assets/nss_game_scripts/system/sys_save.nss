//=============================================================================//
.//■セーブ■
//=============================================================================//
chapter main
{
	//★ロックの場合
	if($SYSTEM_save_lock){
		return;
	}

	Wait(16);

	//★超速からの変遷用
	$SYSTEM_keydown_esc=false;
	$SYSTEM_buttondown_close=false;

	//■準備「スクリーン」//※右クリックから来ていなければ
	if(!$SYSTEM_menu_enable){
		CreateTexture("video",10000,center,middle,VIDEO);
		CreateTexture("SaveScreen", 20000, 0, 0, VIDEO);
	}else{
		CreateTexture("SaveScreen", 20000, 0, 0, SCREEN);
	}

	//行間調整
	$SYSTEM_text_margin_column=0;
	$SYSTEM_text_margin_row=0;

	//デリート初期化
	$SaveDelete=false;

	//初回無し
	$SaveFiest=false;

	//■定義「共通素材」
	SaveReady();

	//■アニメーション定義
	//CreateSaveAnime();

	//■開始「セーブ画面」
	$SYSTEM_menu_save_enable=true;
	while($SYSTEM_menu_save_enable){

		//▼定義
		SaveSet();

		//▼描画
		SaveFade();

		//▼選択肢
		SaveSelect();
	}


	//★終了動作「描画」
	CreateTexture("システム背景SL", 20100, 0, 0, SCREEN);

	Delete("WND");
	Delete("Save*");
	Delete("@Save*");
	Fade("システム背景SL",300,0,null,true);

	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;

	$SYSTEM_menu_save_enable=false;
}







.//■共通定義
function SaveReady()
{
/*
..	//■準備「フォント」
	LoadFont("SaveFont01", "@ＭＳ 明朝", 18, #000000, #FFFFFF, 500, RIGHT, "あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわをんがぎぐげござじずぜぞだぢづでどばびぶべぼぱぴぷぺぽぁぃぅぇぉっゃゅょアイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヲンガギグゲゴザジズゼゾダヂヅデドバビブベボパピプペポァィゥェォッャュョ、。ー…！？―「」『』１２３４５６７８９０");
	LoadFont("SaveFont02", "@ＭＳ 明朝", 18, #000000, #FFFFFF, 500, RIGHT, "一今日敵味方思分行時言聞見何人終好急");
	LoadFont("SaveFont03", "@ＭＳ 明朝", 18, #000000, #FFFFFF, 500, RIGHT, "化八九〇零式竜騎兵航太刀数真打劔冑御堂武者雄飛湊斗景明光統世村正銀星号綾祢一条大鳥香奈枝足利茶々丸署長護氏永倉岡部童心獅子吼川雪車町金神様幕府六波羅家大和国空甲鉄電磁赤青白黒色ＧＨＱ");

	LoadFont("SaveFont04", "ＭＳ 明朝", 18, #000000, #000000, 500, null, "1234567890.１２３４５６７８９０-:");
	LoadFont("SaveFont05", "ＭＳ 明朝", 18, #FFFFFF, #000000, 500, null, "1234567890.１２３４５６７８９０-:");
	LoadFont("SaveFont06", "@ＭＳ 明朝", 20, #000000, #FFFFFF, 500, RIGHT, "―　 プロローグ第一二三四五編騎鮮紅双老逆襲震天宿星英雄復讐魔王悪鬼");
*/

..	//■準備「サムネイルのための窓」
	CreateName("WND");
	SetAlias("WND","WND");

..	//■ロード「共通画像系」
	//NO用
	//LoadImage("SaveImageNO","cg/sys/save/000-選択.png");
	//SetAlias("SaveImageNO","SaveImageNO");
	//HIT用
	LoadImage("SaveImage0","cg/sys/save/001-選択.png");
	SetAlias("SaveImage0","SaveImage0");
	//Waku用
	LoadImage("SaveImage5","cg/sys/save/選択中サムネールワク.png");
	SetAlias("SaveImage5","SaveImage5");
/*
	//Usual用
	LoadImage("SaveImage1","cg/sys/save/選択_off.png");
	SetAlias("SaveImage1","SaveImage1");
	//Over用
	LoadImage("SaveImage2","cg/sys/save/選択_over.png");
	SetAlias("SaveImage2","SaveImage2");
	//Click用
	LoadImage("SaveImage3","cg/sys/save/選択_on.png");
	SetAlias("SaveImage3","SaveImage3");
	//Index用
	LoadImage("SaveImage4","cg/sys/save/txt_totaltime.png");
	SetAlias("SaveImage4","SaveImage4");
*/

..	//▼定義「背景」


..	//▼定義「サムネイル枠」
	CreateTexture("SaveCase",11000,center,middle,"cg/sys/save/サムネールワク.png");
	SetAlias("SaveCase", "SaveCase");

..	//▼定義「プロセス」
	//CreateProcess("セーブプロセス", 150, 0, 0, "SaveAnime2");
	//SetAlias("セーブプロセス", "セーブプロセス");
/*
..	//▼定義「NOサムネイルベース」
	CreateTexture("SaveNOT",10009,216,34,"cg/sys/save/NODATAベース.png");
	SetAlias("SaveNOT", "SaveNOT");
*/
..	//▼定義「NEW」
	CreateTexture("SaveNEW",10050,1000,1000,"cg/sys/save/新マーク.png");
	SetAlias("SaveNEW", "SaveNEW");

..	//▼定義「番号」
	$SaveBanX=0;
	$SaveBanY=0;
	if(#save_page==1){
		//CreateTexture("SaveBan1",10010,$SaveBanX,$SaveBanY,"cg/sys/save/SAVE-LOAD背景.png");
		//SetAlias("SaveBan1", "SaveBan1");
	}

..	//▼定義「出口」
	$SaveExitX=810;
	$SaveExitY=322;
	CreateChoice("SaveEXIT");
	CreateTexture("SaveEXIT/MouseUsual/hit",10010,$SaveExitX,$SaveExitY,"cg/sys/save/退出ボタン-001.png");
	CreateTexture("SaveEXIT/icon",10010,$SaveExitX,$SaveExitY,"cg/sys/save/退出ボタン-001.png");
	CreateTexture("SaveEXIT/MouseOver/icon",10050,$SaveExitX,$SaveExitY,"cg/sys/save/退出ボタン-002.png");
	CreateTexture("SaveEXIT/MouseClick/icon",10050,$SaveExitX,$SaveExitY,"cg/sys/save/退出ボタン-003.png");
	Request("SaveEXIT/MouseUsual/hit", Erase);

..	//▼定義「←矢印」
	$SaveLeftX=790;
	$SaveLeftY=34;
	CreateChoice("SaveLEFT");
	CreateTexture("SaveLEFT/MouseUsual/hit",10010,$SaveLeftX,$SaveLeftY,"cg/sys/save/前頁ボタン-001.png");
	CreateTexture("SaveLEFT/icon",10010,$SaveLeftX,$SaveLeftY,"cg/sys/save/前頁ボタン-001.png");
	CreateTexture("SaveLEFT/MouseOver/icon",10050,$SaveLeftX,$SaveLeftY,"cg/sys/save/前頁ボタン-002.png");
	CreateTexture("SaveLEFT/MouseClick/icon",10050,$SaveLeftX,$SaveLeftY,"cg/sys/save/前頁ボタン-003.png");
	Request("SaveLEFT/MouseUsual/hit", Erase);
	Request("SaveLEFT",UnClickable);

..	//▼定義「→矢印」
	$SaveRightX=790;
	$SaveRightY=130;
	CreateChoice("SaveRIGHT");
	CreateTexture("SaveRIGHT/MouseUsual/hit",10010,$SaveRightX,$SaveRightY,"cg/sys/save/次頁ボタン-001.png");
	CreateTexture("SaveRIGHT/icon",10010,$SaveRightX,$SaveRightY,"cg/sys/save/次頁ボタン-001.png");
	CreateTexture("SaveRIGHT/MouseOver/icon",10050,$SaveRightX,$SaveRightY,"cg/sys/save/次頁ボタン-002.png");
	CreateTexture("SaveRIGHT/MouseClick/icon",10050,$SaveRightX,$SaveRightY,"cg/sys/save/次頁ボタン-003.png");
	Request("SaveRIGHT/MouseUsual/hit", Erase);
	Request("SaveRIGHT",UnClickable);

..	//▼定義「消去」
	$SaveDeleteX=790;
	$SaveDeleteY=226;
	CreateChoice("SaveDELETE");
	CreateTexture("SaveDELETE/MouseUsual/hit",10010,$SaveDeleteX,$SaveDeleteY,"cg/sys/save/削除ボタン-001.png");
	CreateTexture("SaveDELETE/icon",10010,$SaveDeleteX,$SaveDeleteY,"cg/sys/save/削除ボタン-001.png");
	CreateTexture("SaveDELETE/MouseOver/icon",10050,$SaveDeleteX,$SaveDeleteY,"cg/sys/save/削除ボタン-002.png");
//	CreateTexture("SaveDELETE/MouseClick/icon",10050,$SaveDeleteX,$SaveDeleteY,"cg/sys/save/削除ボタン-003.png");
	CreateTexture("SaveDELETE/icon2",10050,$SaveDeleteX,$SaveDeleteY,"cg/sys/save/削除ボタン-003.png");
	Request("SaveDELETE/MouseUsual/hit", Erase);
	Request("SaveDELETE",UnClickable);

	Delete("SaveDELETE/MouseClick");
	Fade("SaveDELETE/icon2", 0, 0, null, false);

/*
..	//▼定義「１ページ」
	$SavePage1X=305;
	$SavePage1Y=548;
	CreateChoice("SavePAGE1");
	CreateTexture("SavePAGE1/MouseUsual/hit",10010,$SavePage1X,$SavePage1Y,"cg/sys/save/page_off.png");
	CreateTexture("SavePAGE1/MouseUsual/icon",10010,$SavePage1X,$SavePage1Y,"cg/sys/save/page_off.png");
	CreateTexture("SavePAGE1/MouseOver/icon",10050,$SavePage1X,$SavePage1Y,"cg/sys/save/page_over.png");
	CreateTexture("SavePAGE1/MouseClick/icon",10050,$SavePage1X,$SavePage1Y,"cg/sys/save/page_on.png");
	Request("SavePAGE1/MouseUsual/hit", Erase);

	CreateTexture("SavePAGE1_ON",10050,$SavePage1X,$SavePage1Y,"cg/sys/save/page_over.png");
	SetAlias("SavePAGE1_ON", "SavePAGE1_ON");

..	//▼定義「２ページ」
	$SavePage2X=372;
	$SavePage2Y=548;
	CreateChoice("SavePAGE2");
	CreateTexture("SavePAGE2/MouseUsual/hit",10010,$SavePage2X,$SavePage2Y,"cg/sys/save/page_off.png");
	CreateTexture("SavePAGE2/MouseUsual/icon",10010,$SavePage2X,$SavePage2Y,"cg/sys/save/page_off.png");
	CreateTexture("SavePAGE2/MouseOver/icon",10050,$SavePage2X,$SavePage2Y,"cg/sys/save/page_over.png");
	CreateTexture("SavePAGE2/MouseClick/icon",10050,$SavePage2X,$SavePage2Y,"cg/sys/save/page_on.png");
	Request("SavePAGE2/MouseUsual/hit", Erase);

	CreateTexture("SavePAGE2_ON",10050,$SavePage2X,$SavePage2Y,"cg/sys/save/page_over.png");
	SetAlias("SavePAGE2_ON", "SavePAGE2_ON");

..	//▼定義「３ページ」
	$SavePage3X=439;
	$SavePage3Y=548;
	CreateChoice("SavePAGE3");
	CreateTexture("SavePAGE3/MouseUsual/hit",10010,$SavePage3X,$SavePage3Y,"cg/sys/save/page_off.png");
	CreateTexture("SavePAGE3/MouseUsual/icon",10010,$SavePage3X,$SavePage3Y,"cg/sys/save/page_off.png");
	CreateTexture("SavePAGE3/MouseOver/icon",10050,$SavePage3X,$SavePage3Y,"cg/sys/save/page_over.png");
	CreateTexture("SavePAGE3/MouseClick/icon",10050,$SavePage3X,$SavePage3Y,"cg/sys/save/page_on.png");
	Request("SavePAGE3/MouseUsual/hit", Erase);

	CreateTexture("SavePAGE3_ON",10050,$SavePage3X,$SavePage3Y,"cg/sys/save/page_over.png");
	SetAlias("SavePAGE3_ON", "SavePAGE3_ON");

..	//▼定義「４ページ」
	$SavePage4X=506;
	$SavePage4Y=548;
	CreateChoice("SavePAGE4");
	CreateTexture("SavePAGE4/MouseUsual/hit",10010,$SavePage4X,$SavePage4Y,"cg/sys/save/page_off.png");
	CreateTexture("SavePAGE4/MouseUsual/icon",10010,$SavePage4X,$SavePage4Y,"cg/sys/save/page_off.png");
	CreateTexture("SavePAGE4/MouseOver/icon",10050,$SavePage4X,$SavePage4Y,"cg/sys/save/page_over.png");
	CreateTexture("SavePAGE4/MouseClick/icon",10050,$SavePage4X,$SavePage4Y,"cg/sys/save/page_on.png");
	Request("SavePAGE4/MouseUsual/hit", Erase);

	CreateTexture("SavePAGE4_ON",10050,$SavePage4X,$SavePage4Y,"cg/sys/save/page_over.png");
	SetAlias("SavePAGE4_ON", "SavePAGE4_ON");
*/

}

.//■素材定義２
function SaveSet()
{
..	//▲サムネイル初期化
	Delete("@WND/Savenum_*");
	Delete("*/*/prd");
	Move("SaveNEW",0,0,-100,null,false);

..	//▲リクエスト
/*
	Request("SavePAGE1",Clickable);
	Request("SavePAGE2",Clickable);
	Request("SavePAGE3",Clickable);
	Request("SavePAGE4",Clickable);

	Request("SavePAGE1/MouseUsual/icon", Enter);
	Request("SavePAGE1/MouseOver/icon", Enter);
	Request("SavePAGE1/MouseClick/icon", Enter);
	Request("SavePAGE2/MouseUsual/icon", Enter);
	Request("SavePAGE2/MouseOver/icon", Enter);
	Request("SavePAGE2/MouseClick/icon", Enter);
	Request("SavePAGE3/MouseUsual/icon", Enter);
	Request("SavePAGE3/MouseOver/icon", Enter);
	Request("SavePAGE3/MouseClick/icon", Enter);
	Request("SavePAGE4/MouseUsual/icon", Enter);
	Request("SavePAGE4/MouseOver/icon", Enter);
	Request("SavePAGE4/MouseClick/icon", Enter);
*/

..	//●変数「ページ初期設定」
	if(#SavePage==1){
		$SaveGroval=1;$SaveMax=20;
		//Request("SavePAGE1",UnClickable);
		//Request("SavePAGE1/MouseUsual/icon", Erase);
		//Request("SavePAGE1/MouseOver/icon", Erase);
		//Request("SavePAGE1/MouseClick/icon", Erase);
		CreateTexture("SaveBack",10000,center,middle,"cg/sys/save/数字01-20背景save.png");
		SetAlias("SaveBack", "SaveBack");
	}else if(#SavePage==2){
		$SaveGroval=21;$SaveMax=40;
		//Request("SavePAGE2",UnClickable);
		//Request("SavePAGE2/MouseUsual/icon", Erase);
		//Request("SavePAGE2/MouseOver/icon", Erase);
		//Request("SavePAGE2/MouseClick/icon", Erase);
		CreateTexture("SaveBack",10000,center,middle,"cg/sys/save/数字21-40背景save.png");
		SetAlias("SaveBack", "SaveBack");
	}else if(#SavePage==3){
		$SaveGroval=41;$SaveMax=60;
		//Request("SavePAGE3",UnClickable);
		//Request("SavePAGE3/MouseUsual/icon", Erase);
		//Request("SavePAGE3/MouseOver/icon", Erase);
		//Request("SavePAGE3/MouseClick/icon", Erase);
		CreateTexture("SaveBack",10000,center,middle,"cg/sys/save/数字41-60背景save.png");
		SetAlias("SaveBack", "SaveBack");
	}else if(#SavePage==4){
		$SaveGroval=61;$SaveMax=80;
		//Request("SavePAGE4",UnClickable);
		//Request("SavePAGE4/MouseUsual/icon", Erase);
		//Request("SavePAGE4/MouseOver/icon", Erase);
		//Request("SavePAGE4/MouseClick/icon", Erase);
		CreateTexture("SaveBack",10000,center,middle,"cg/sys/save/数字61-80背景save.png");
		SetAlias("SaveBack", "SaveBack");
	}else if(#SavePage==5){
		$SaveGroval=81;$SaveMax=100;
		//Request("SavePAGE4",UnClickable);
		//Request("SavePAGE4/MouseUsual/icon", Erase);
		//Request("SavePAGE4/MouseOver/icon", Erase);
		//Request("SavePAGE4/MouseClick/icon", Erase);
		CreateTexture("SaveBack",10000,center,middle,"cg/sys/save/数字80-100背景save.png");
		SetAlias("SaveBack", "SaveBack");
	}else{
		$SaveGroval=1;$SaveMax=20;
		#SavePage=1;
		//Request("SavePAGE1",UnClickable);
		//Request("SavePAGE1/MouseUsual/icon", Erase);
		//Request("SavePAGE1/MouseOver/icon", Erase);
		//Request("SavePAGE1/MouseClick/icon", Erase);
		CreateTexture("SaveBack",10000,center,middle,"cg/sys/save/数字01-20背景save.png");
		SetAlias("SaveBack", "SaveBack");
	}

	//サムネイルサイズ
	#SYSTEM_save_thumbnail_width=160;
	#SYSTEM_save_thumbnail_height=90;

	//カウント初期化
	$SaveCount=1;

	//行数
	$Gyou1=5;
	$Gyou2=10;
	$Gyou3=15;
	$Gyou4=20;

..	//●変数「初期位置」
	//サムネイル（大）
	$PreSaveVisionX=810;
	$PreSaveVisionY=416;
	//サムネイル
	$PreSaveThumX=600;
	$PreSaveThumY=34;
	$SaveThumX_plus=-190;
	$SaveThumY_plus=100;
	//ユージュアル、オーバー、クリック
	$PreSaveBaseX=600;
	$PreSaveBaseY=34;
	$SaveBaseX_plus=-190;
	$SaveBaseY_plus=100;
	//情報（ナンバー）
	$PreSaveNumberX=234;
	$PreSaveNumberY=242;
	//情報（テキスト）
	$PreSaveCommentX=924;
	$PreSaveCommentY=45;
	$SaveCommentH=340;
	$SaveCommentV=120;
	$Save_text_margin_column=-1;
	$Save_text_margin_row=25;
	//情報（日にち）
	$PreSaveDateX=821;
	$PreSaveDateY=516;
	//情報（時間）
	$PreSaveTimeX=68;
	$PreSaveTimeY=528;
	//情報（タイトル）
	$PreSaveChapterX=955;
	$PreSaveChapterY=41;
	//情報（インデックス）
	$PreSaveIndexX=385;
	$PreSaveIndexY=411;
	//NEW（ナンバー）
	$SaveNewX_plus=164;
	$SaveNewY_plus=64;

..	//●変数「初期変数の値を代入」
	$SaveVisionX=$PreSaveVisionX;
	$SaveVisionY=$PreSaveVisionY;
	$SaveThumX=$PreSaveThumX;
	$SaveThumY=$PreSaveThumY;
	$SaveBaseX=$PreSaveBaseX;
	$SaveBaseY=$PreSaveBaseY;
	$SaveNumberX=$PreSaveNumberX;
	$SaveNumberY=$PreSaveNumberY;
	$SaveDateX=$PreSaveDateX;
	$SaveDateY=$PreSaveDateY;
	$SaveCommentX=$PreSaveCommentX;
	$SaveCommentY=$PreSaveCommentY;
	$SaveTimeX=$PreSaveTimeX;
	$SaveTimeY=$PreSaveTimeY;
	$SaveChapterX=$PreSaveChapterX;
	$SaveChapterY=$PreSaveChapterY;
	$SaveIndexX=$PreSaveIndexX;
	$SaveIndexY=$PreSaveIndexY;

..//■選択肢作成
	while($SaveGroval<=$SaveMax){
...		//▼定義「選択肢」
		$SaveChoiceName="Savenum_"+$SaveCount;
		CreateChoice($SaveChoiceName);
		SetAlias($SaveChoiceName,$SaveChoiceName);

		$SaveChoiceNameEX=$SaveChoiceName;
		$SaveChoiceName="@"+$SaveChoiceName;

...		//●データ移動
		if($SaveCount<=$Gyou1){
			$SaveThumY=$PreSaveThumY+($SaveThumY_plus*($SaveCount-1));
			$SaveBaseY=$PreSaveBaseY+($SaveBaseY_plus*($SaveCount-1));
		}else if($SaveCount<=$Gyou2){
			$SaveThumY=$PreSaveThumY+($SaveThumY_plus*($SaveCount-$Gyou1-1));
			$SaveThumX=$PreSaveThumX+$SaveThumX_plus;
			$SaveBaseY=$PreSaveBaseY+($SaveBaseY_plus*($SaveCount-$Gyou1-1));
			$SaveBaseX=$PreSaveBaseX+$SaveBaseX_plus;
		}else if($SaveCount<=$Gyou3){
			$SaveThumY=$PreSaveThumY+($SaveThumY_plus*($SaveCount-$Gyou2-1));
			$SaveThumX=$PreSaveThumX+($SaveThumX_plus*2);
			$SaveBaseY=$PreSaveBaseY+($SaveBaseY_plus*($SaveCount-$Gyou2-1));
			$SaveBaseX=$PreSaveBaseX+($SaveBaseX_plus*2);
		}else if($SaveCount<=$Gyou4){
			$SaveThumY=$PreSaveThumY+($SaveThumY_plus*($SaveCount-$Gyou3-1));
			$SaveThumX=$PreSaveThumX+($SaveThumX_plus*3);
			$SaveBaseY=$PreSaveBaseY+($SaveBaseY_plus*($SaveCount-$Gyou3-1));
			$SaveBaseX=$PreSaveBaseX+($SaveBaseX_plus*3);
		}else if($SaveCount<=$Gyou5){
			$SaveThumY=$PreSaveThumY+($SaveThumY_plus*($SaveCount-$Gyou4-1));
			$SaveThumX=$PreSaveThumX+($SaveThumX_plus*4);
			$SaveBaseY=$PreSaveBaseY+($SaveBaseY_plus*($SaveCount-$Gyou4-1));
			$SaveBaseX=$PreSaveBaseX+($SaveBaseX_plus*4);
		}

		//スマガ、フラッシュ吐き出しのズレ
		if($SaveCount==1||$SaveCount==2||$SaveCount==3||$SaveCount==6||$SaveCount==7||$SaveCount==10){
			//$SaveThumX+=1;
			//$SaveBaseX+=1;
		}

		//枠の位置
		$SaveWakuX=$SaveBaseX-3;
		$SaveWakuY=$SaveBaseY-3;

//		$SaveBaseY=$PreSaveBaseY+($SaveBaseY_plus*($PreSaveCount-1));
//		$SaveNumberY=$PreSaveNumberY+($SaveNumberY_plus*($PreSaveCount-1));
//		$SaveDateY=$PreSaveDateY+($SaveDateY_plus*($PreSaveCount-1));
//		$SaveCommentY=$PreSaveCommentY+($SaveCommentY_plus*($PreSaveCount-1));

...		//●データ位置「セーブデータ変数位置とデータ取得」
		if(ExistSave($SaveGroval)){
			$SaveCountmg=String("%s/%04d/thum.npf",#SYSTEM_save_path,$SaveGroval);//サムネイル
			$date=String("%s/%04d/date.npf",#SYSTEM_save_path,$SaveGroval);//日付
			$cmt=String("%s/%04d/cmt.npf",#SYSTEM_save_path,$SaveGroval);//コメント
			$cpt=String("%s/%04d/cpt.npf",#SYSTEM_save_path,$SaveGroval);//タイトル
			$tm=String("%s/%04d/tm.npf",#SYSTEM_save_path,$SaveGroval);//プレイ時間
			$date=ReadFile($date);
			$cmt=ReadFile($cmt);
			$cpt=ReadFile($cpt);
			$tm=ReadFile($tm);
			$num=String("No %02d<PRE>.</PRE>",$SaveGroval); //ナンバー
			if($cpt=="0"){$cpt=" ";}
			if($cmt=="0"){$cmt=" ";}
		}else{
			$date="<PRE></PRE>";
			$cmt="　データ無し";
			$cpt=" ";
			$tm=" ";
			$num=String("No %02d<PRE>.</PRE>",$SaveGroval); //ナンバー
		}

		//●ナット名「サムネイル」
		$SaveThumImage="@WND/"+$SaveChoiceNameEX+"_img";
		$SaveThum="@WND/"+$SaveChoiceNameEX+"_btn";
		$SaveOverVision=$SaveChoiceName+"/MouseOver/prd";
		$SaveClickVision=$SaveChoiceName+"/MouseClick/prd";

		//●ナット名「Usual」
		$SaveUsualHit=$SaveChoiceName+"/MouseUsual/hit";
		$SaveUsualNut=$SaveChoiceName+"/MouseUsual/img";
//		$SaveUsualText1=$SaveChoiceName+"/MouseUsual/date";
//		$SaveUsualText2=$SaveChoiceName+"/MouseUsual/cmt";
//		$SaveUsualText3=$SaveChoiceName+"/MouseUsual/num";

		//●ナット名「Over」
		$SaveOverNut=$SaveChoiceName+"/MouseOver/img";
		$SaveOverText1=$SaveChoiceName+"/MouseOver/date";
		$SaveOverText2=$SaveChoiceName+"/MouseOver/cmt";
		$SaveOverText3=$SaveChoiceName+"/MouseOver/num";
		$SaveOverText4=$SaveChoiceName+"/MouseOver/tm";
		$SaveOverText5=$SaveChoiceName+"/MouseOver/cpt";
		$SaveOverWaku=$SaveChoiceName+"/MouseOver/waku";
		$SaveOverIndex=$SaveChoiceName+"/MouseOver/index";

		//●ナット名「Click」
		$SaveClickNut=$SaveChoiceName+"/MouseClick/img";
		$SaveClickText1=$SaveChoiceName+"/MouseClick/date";
		$SaveClickText2=$SaveChoiceName+"/MouseClick/cmt";
		$SaveClickText3=$SaveChoiceName+"/MouseClick/num";
		$SaveClickText4=$SaveChoiceName+"/MouseClick/tm";
		$SaveClickText5=$SaveChoiceName+"/MouseClick/cpt";
		$SaveClickWaku=$SaveChoiceName+"/MouseClick/waku";
		//$SaveClickIndex=$SaveChoiceName+"/MouseClick/index";

...	//▼定義「常設サムネイル」
		if(ExistSave($SaveGroval)){
			LoadImage($SaveThumImage, $SaveCountmg);
			CreateTexture($SaveThum,10009,$SaveThumX,$SaveThumY,$SaveThumImage);
		}else{
			$SaveThumImage="@SaveImage0";
		}

...	//▼定義「サムネイル大」
		if(ExistSave($SaveGroval)){
			CreateTexture($SaveOverVision,10000,$SaveVisionX,$SaveVisionY,$SaveThumImage);
			$shimanut=$SaveChoiceName+"/*/prd";
			Request($shimanut, Smoothing);
			SetVertex($shimanut, 0, 0);
			Zoom($shimanut, 0, 1199, 1199, null, false);
		}

...	//▼定義「Usual」
		//サムネイル
		CreateTexture($SaveUsualHit,10010,$SaveBaseX,$SaveBaseY,"@SaveImage0");
//		CreateTexture($SaveUsualNut,10010,$SaveBaseX,$SaveBaseY,"@SaveImage1");

...	//▼定義「Over」
		if(ExistSave($SaveGroval)){
			//サムネイル
			//CreateTexture($SaveOverNut,10010,$SaveBaseX,$SaveBaseY,$SaveThumImage);
		}
		//日にち
		SetFont("ＭＳ 明朝",18,#000000,#000000,500,null);
		CreateText($SaveOverText1, 10010, $SaveDateX, $SaveDateY, Auto, Auto, $date);
		//プレイ時間
		SetFont("ＭＳ 明朝",18,#FFFFFF,#000000,500,null);
		CreateText($SaveOverText4, 10010, $SaveTimeX, $SaveTimeY, Auto, Auto, $tm);
		//テキスト
		$SYSTEM_text_margin_column=$Save_text_margin_column;$SYSTEM_text_margin_row=$Save_text_margin_row;
		SetFont("@ＭＳ 明朝",18,#000000,#FFFFFF,500,RIGHT);
		CreateText($SaveOverText2, 10010, $SaveCommentX, $SaveCommentY, $SaveCommentH, $SaveCommentV, $cmt);
		$SYSTEM_text_margin_column=0;$SYSTEM_text_margin_row=0;
		//タイトル
		SetFont("@ＭＳ 明朝",20,#000000,#FFFFFF,500,RIGHT);
		CreateText($SaveOverText5, 10010, $SaveChapterX, $SaveChapterY, Auto, Auto, $cpt);
		//選択枠
		CreateTexture($SaveOverWaku,11010,$SaveWakuX,$SaveWakuY,"SaveImage5");
		//ナンバー
		//SetFont("ＭＳ 明朝",25,#FFFFFF,#FFFFFF,500,null);
		//CreateText($SaveOverText3, 10010, $SaveNumberX, $SaveNumberY, Auto, Auto, $num);
		//インデックス
		//CreateTexture($SaveOverIndex,10050,$SaveIndexX,$SaveIndexY,"@SaveImage4");
		//SetAlias($SaveOverIndex, $SaveOverIndex);
		SetVertex($SaveOverText2, 0, 0);
		Rotate($SaveOverText2, 0, @0, @0, @90, null, false);
		SetVertex($SaveOverText5, 0, 0);
		Rotate($SaveOverText5, 0, @0, @0, @90, null, false);

...	//▼定義「NEW判定」
		if($SaveGroval==#LATEST_SAVE_NUM){
			$new_X=$SaveThumX+$SaveNewX_plus;
			$new_Y=$SaveThumY+$SaveNewY_plus;
			Move("SaveNEW",0,$new_X,$new_Y,null,false);
		}

...	//▼クリッカブル＆イレース
		if(!ExistSave($SaveGroval)){
		}

		$SaveCount++;
		$SaveGroval++;
	}

..	//▼準備「最終準備」
	Delete("@Savenum_*/MouseClick");

	Request("@Savenum_*/*",PushText);
	Request("@Savenum_*/*/*",PushText);
	Request("*/MouseUsual/hit",Erase);

	Fade("@WND/Savenum_*",0,0,null,false);
	Fade("Save*",0,0,null,false);
	Fade("*/MouseUsual/*",0,0,null,false);
	Fade("*/MouseOver/*",0,0,null,false);
	Fade("*/MouseClick/*",0,0,null,false);
	Fade("SaveScreen", 0, 1000, null, true);

..	//▼準備「フォーカス」
	SaveFocus();
}



.//■動作「描画開始」
function SaveFade()
{
..	//▼アニメ動作
	if($SaveFiest){
		SaveAnime();
//		Request("セーブプロセス", Start);
//		WaitAction("セーブプロセス", null);
		$SaveFiest=0;
	}else{
		if(#SavePage==1){Fade("SaveBan1",0,1000,null,false);Fade("SavePAGE1_ON", 0, 1000, null, false);}
		else if(#SavePage==2){Fade("SaveBan2",0,1000,null,false);Fade("SavePAGE2_ON", 0, 1000, null, false);}
		else if(#SavePage==3){Fade("SaveBan3",0,1000,null,false);Fade("SavePAGE3_ON", 0, 1000, null, false);}
		else if(#SavePage==4){Fade("SaveBan4",0,1000,null,false);Fade("SavePAGE4_ON", 0, 1000, null, false);}
		else if(#SavePage==5){Fade("SaveBan5",0,1000,null,false);Fade("SavePAGE5_ON", 0, 1000, null, false);}
		Fade("*/MouseUsual/*",0,1000,null,true);
		Fade("SaveAnime0020",0,1000,null,false);
		Fade("@WND/Savenum_*",0,1000,null,false);
		Fade("SaveBack", 0, 1000, null, true);
		Fade("SaveNOT",0,1000,null,false);
		Fade("SaveNEW",0,1000,null,false);
		Fade("SaveCase",0,1000,null,false);
		Fade("SaveScreen", 300, 0, null, true);
	}
}



.//■選択「選択開始」
function SaveSelect()
{
	$SYSTEM_menu_save_enable=true;
	$SYSTEM_keydown_esc=false;
	$SYSTEM_r_button_down=false;
	while($SYSTEM_menu_save_enable)
	{
		select{
			if($SYSTEM_r_button_down||$SYSTEM_keydown_s){$SYSTEM_menu_save_enable=false;break;}
			case @Savenum_1{do_save(1);}
			case @Savenum_2{do_save(2);}
			case @Savenum_3{do_save(3);}
			case @Savenum_4{do_save(4);}
			case @Savenum_5{do_save(5);}
			case @Savenum_6{do_save(6);}
			case @Savenum_7{do_save(7);}
			case @Savenum_8{do_save(8);}
			case @Savenum_9{do_save(9);}
			case @Savenum_10{do_save(10);}
			case @Savenum_11{do_save(11);}
			case @Savenum_12{do_save(12);}
			case @Savenum_13{do_save(13);}
			case @Savenum_14{do_save(14);}
			case @Savenum_15{do_save(15);}
			case @Savenum_16{do_save(16);}
			case @Savenum_17{do_save(17);}
			case @Savenum_18{do_save(18);}
			case @Savenum_19{do_save(19);}
			case @Savenum_20{do_save(20);}

			if($Trial){
				case SavePAGE1{
					if(#SavePage!=1){
						CreateTexture("SaveScreen", 20000, 0, 0, SCREEN);
						#SavePage=1;
						return;
					}
				}
				case SavePAGE2{
					if(#SavePage!=2){
						CreateTexture("SaveScreen", 20000, 0, 0, SCREEN);
						#SavePage=2;
						return;
					}
				}
				case SavePAGE3{
					if(#SavePage!=3){
						CreateTexture("SaveScreen", 20000, 0, 0, SCREEN);
						#SavePage=3;
						return;
					}
				}
				case SavePAGE4{
					if(#SavePage!=4){
						CreateTexture("SaveScreen", 20000, 0, 0, SCREEN);
						#SavePage=4;
						return;
					}
				}
			}
			case SaveRIGHT{
				CreateTexture("SaveScreen", 20000, 0, 0, SCREEN);
				#SavePage++;
				if(#SavePage>=6){#SavePage=1;}
				return;
			}
			case SaveLEFT{
				CreateTexture("SaveScreen", 20000, 0, 0, SCREEN);
				#SavePage--;
				if(#SavePage<=0){#SavePage=5;}
				return;
			}
			case SaveDELETE{
				if($SaveDelete){
					$SaveDelete=false;
					Fade("SaveDELETE/icon2", 150, 0, null, true);
				}else{
					$SaveDelete=true;
					Fade("SaveDELETE/icon2", 150, 1000, null, true);
				}
			}
			case SaveEXIT{$SYSTEM_menu_save_enable=false;}
			if(!$SYSTEM_menu_save_enable){break;}

			//★キーダウン系
			if($SYSTEM_keydown_f){
				if(!#SYSTEM_window_full_lock){
					#SYSTEM_window_full=!#SYSTEM_window_full;
					#SYSTEM_window_full_lock=false;
					Wait(300);
					$SYSTEM_keydown_f=false;
				}
			}else if($SYSTEM_keydown_esc||$SYSTEM_buttondown_close){
				call_chapter nss/sys_close.nss;
			}else if($SYSTEM_keydown_t){
				call_chapter nss/sys_reset.nss;
			}else if($SYSTEM_keydown_r){
				call_chapter nss/sys_backselect.nss;
			}
		}
	}
}














.//■マクロ「セーブ動作」
function do_save($SaveCount)
{
	$SaveGroval=$SaveCount+((#SavePage-1)*20);
	$save=true;
	$save_check=false;

..	//▼確認「新規か上書きか？」
	if(!ExistSave($SaveGroval)){
		if($SaveDelete){
			return;
		}
	}else{
		if(!#no_ask){
			SaveDialog();
//			SaveDialogTrial();
		}
	}


..	//▼取得「日時・画像・メッセージ」
	if($save){
		if(!$SaveDelete){
...			//●ホイールキャンセル
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;

...			//●時間管理「プレイ時間」
			#LATEST_SAVE_NUM=$SaveGroval;
			$PLAY_TIME+=(Time()-#START_TIME);
			#START_TIME=Time();
	
...			//■セーブ
			Save($SaveGroval);
	
...			//●データ位置「日付とメッセージとプレイ時間とタイトル」
			$date=String("%s/%04d/date.npf",#SYSTEM_save_path,$SaveGroval);
			$cmt=String("%s/%04d/cmt.npf",#SYSTEM_save_path,$SaveGroval);
			$tm=String("%s/%04d/tm.npf",#SYSTEM_save_path,$SaveGroval);
			$cpt=String("%s/%04d/cpt.npf",#SYSTEM_save_path,$SaveGroval);
	
...			//●データ取得「日付」
			DateTime($SaveThumYyyy,$mm,$dd,$hh24,$mi,$ss);
			$date_str=String("%04d-%02d-%02d %02d:%02d:%02d",$SaveThumYyyy,$mm,$dd,$hh24,$mi,$ss);
			//$date_str=$SaveThumYyyy+"<PRE>-</PRE>"+$mm+"<PRE>-</PRE>"+$dd+" "+$hh24+"<PRE>:</PRE>"+$mi;
	//		$date_str=$SaveThumYyyy+"<PRE>-</PRE>"+$mm+"<PRE>-</PRE>"+$dd+"<PRE> </PRE>"+$hh24+"<PRE>:</PRE>"+$mi+"<PRE>:</PRE>"+$ss;
	//		$date_str=$SaveThumYyyy+"<PRE>-</PRE>"+$mm+"<PRE>-</PRE>"+$dd;
	
...			//●データ取得「メッセージ」
			$cmt_str=$SYSTEM_last_text;
	
...			//●データ取得「プレイ時間」
			$tm_str=String("%03d:%02d:%02d",$PLAY_TIME/3600,Integer($PLAY_TIME-(3600*Integer($PLAY_TIME/3600)))/60,$PLAY_TIME%60);
	
	//		$tm_str="PLAY TIME  ";
	//		if($PLAY_TIME/(3600)){$tm_str=$tm_str+($PLAY_TIME/(3600));}else{$tm_str=$tm_str+"00";}
	//		$mm=Integer($PLAY_TIME-(3600*Integer(($PLAY_TIME/3600))))/60;
	//		if($mm<10){$mm="0"+String($mm);}
	//		$tm_str=$tm_str+":";
	//		$tm_str=$tm_str+$mm;
	
...			//●データ取得「タイトル」
			$cpt_str=$TITLE_NOW;
	
...			//●データ書き出し
			WriteFile($date,$date_str);
			WriteFile($cmt,$cmt_str);
			WriteFile($tm,$tm_str);
			WriteFile($cpt,$cpt_str);
	
			SaveThumbnail();
	
			if(!#no_ask){
				SaveDialog2();
			}
		}else{
			DeleteSaveFile($SaveGroval);

			SaveThumbnail();
		}
	}

	Zoom("MSGWND/MSG_msg",150,0,1000, Dxl1, false);
	Zoom("MSGWND/MSG_msg2",150,0,1000, Dxl1, false);
	Zoom("MSGWND/MSG_*/*/*",150,0,1000, Dxl1, false);

	Fade("MSGWND/MSG_*",150,0,null,false);
	Fade("MSGWND/MSG_*/*/*",150,0,null,false);
	WaitAction("MSGWND/MSG_*",null);

	Delete("MSGWND");
}




.//■マクロ「上書き確認ダイアログ」
function SaveDialog()
{
	//■定義「メッセージウインドウ作成」
	CreateName("MSGWND");

	//▲画像ロード
	LoadImage("MSGWND/IMG_yes_on","cg/sys/dialog/003-承認.png");
	LoadImage("MSGWND/IMG_yes_over","cg/sys/dialog/002-承認.png");
	LoadImage("MSGWND/IMG_yes_off","cg/sys/dialog/001-承認.png");

	LoadImage("MSGWND/IMG_no_on","cg/sys/dialog/003-否認.png");
	LoadImage("MSGWND/IMG_no_over","cg/sys/dialog/002-否認.png");
	LoadImage("MSGWND/IMG_no_off","cg/sys/dialog/001-否認.png");

	//■定義「背景」
	CreateColor("MSGWND/MSG_bak", 1010000, Center, Middle, 1024, 576, BLACK);

	//■定義「選択肢」
	//box
	if($SaveDelete){
		CreateTexture("MSGWND/MSG_msg",1010000,Center,Middle,"cg/sys/dialog/記録を削除してよろしいか.png");
	}else{
		CreateTexture("MSGWND/MSG_msg",1010000,Center,Middle,"cg/sys/dialog/記録を上書きして良いか.png");
	}
	Request("MSGWND/MSG_msg", Smoothing);
	//YES
	CreateChoice("MSGWND/MSG_yes");
	CreateTexture("MSGWND/MSG_yes/MouseUsual/img",1012000,515,397,"MSGWND/IMG_yes_off");
	CreateTexture("MSGWND/MSG_yes/MouseOver/img",1011000,515,397,"MSGWND/IMG_yes_over");
	CreateTexture("MSGWND/MSG_yes/MouseClick/img",1011000,515,397,"MSGWND/IMG_yes_on");
	//NO
	CreateChoice("MSGWND/MSG_no");
	CreateTexture("MSGWND/MSG_no/MouseUsual/img",1012000,471,397,"MSGWND/IMG_no_off");
	CreateTexture("MSGWND/MSG_no/MouseOver/img",1011000,471,397,"MSGWND/IMG_no_over");
	CreateTexture("MSGWND/MSG_no/MouseClick/img",1011000,471,397,"MSGWND/IMG_no_on");

	SetVertex("MSGWND/MSG_yes/*/*", 0, Middle);
	SetVertex("MSGWND/MSG_no/*/*", 28, Middle);

	//▲セットフォーカス
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",LEFT);
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",RIGHT);
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",DOWN);
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",UP);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",LEFT);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",RIGHT);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",DOWN);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",UP);

	//●最終準備
	Fade("MSGWND/MSG_*",0,0,null,false);
	Fade("MSGWND/MSG_*/*/*",0,0,null,false);
	Zoom("MSGWND/MSG_msg", 0, 0, 1000, null, false);
	Zoom("MSGWND/MSG_*/*/*", 0, 0, 1000, null, false);

	//★描画開始
	Zoom("MSGWND/MSG_msg",150,1000,1000, Dxl1, false);
	Zoom("MSGWND/MSG_*/*/*",150,1000,1000, Dxl1, false);
	Fade("MSGWND/MSG_msg",150,1000,null,false);
	Fade("MSGWND/MSG_*/MouseUsual/*",150,1000,null,false);
	Fade("MSGWND/MSG_bak",150,800,null,false);
	WaitAction("MSGWND/MSG_*",null);

	//★選択肢開始
	if($SYSTEM_XBOX360_change_user_state){DialogChangeState();}
	$SYSTEM_r_button_down=false;$SYSTEM_XBOX360_button_b_down=false;
	select{
		if($SYSTEM_XBOX360_change_user_state){DialogChangeState();}
		if($SYSTEM_r_button_down||$SYSTEM_XBOX360_button_b_down){$save=false;break;}

		case MSGWND/MSG_yes{
		}case MSGWND/MSG_no{
			//所定の動作
			Wait(200);
			$save=false;
		}

		//★キーダウン系
		if($SYSTEM_keydown_f){
			if(!#SYSTEM_window_full_lock){
				#SYSTEM_window_full=!#SYSTEM_window_full;
				#SYSTEM_window_full_lock=false;
				Wait(300);
				$SYSTEM_keydown_f=false;
			}
		}else if($SYSTEM_keydown_esc||$SYSTEM_buttondown_close){
			Zoom("MSGWND/MSG_msg", 150, 0, 1000, null, false);
			Zoom("MSGWND/MSG_*/*/*", 150, 0, 1000, null, false);
			Fade("MSGWND/MSG_msg",150,0,null,false);
			Fade("MSGWND/MSG_*/*/*",150,0,null,false);
			WaitAction("MSGWND/MSG_*/*/*",null);
			
			$InDialog=true;
			call_chapter nss/sys_close.nss;
			$InDialog=false;

			Zoom("MSGWND/MSG_msg",150,1000,1000, Dxl1, false);
			Zoom("MSGWND/MSG_*/*/*",150,1000,1000, Dxl1, false);
			Fade("MSGWND/MSG_msg",150,1000,null,false);
			Fade("MSGWND/MSG_*/MouseUsual/*",150,1000,null,false);
			WaitAction("MSGWND/MSG_*/*/*",null);
		}else if($SYSTEM_keydown_t&&!$SYSTEM_menu_lock){
			Zoom("MSGWND/MSG_msg", 150, 0, 1000, null, false);
			Zoom("MSGWND/MSG_*/*/*", 150, 0, 1000, null, false);
			Fade("MSGWND/MSG_msg",150,0,null,false);
			Fade("MSGWND/MSG_*/*/*",150,0,null,false);
			WaitAction("MSGWND/MSG_*/*/*",null);
			
			$InDialog=true;
			call_chapter nss/sys_reset.nss;
			$InDialog=false;

			Zoom("MSGWND/MSG_msg",150,1000,1000, Dxl1, false);
			Zoom("MSGWND/MSG_*/*/*",150,1000,1000, Dxl1, false);
			Fade("MSGWND/MSG_msg",150,1000,null,false);
			Fade("MSGWND/MSG_*/MouseUsual/*",150,1000,null,false);
			WaitAction("MSGWND/MSG_*/*/*",null);
		}else if($SYSTEM_keydown_r&&ExistSave(9999)&&!$SYSTEM_backselect_lock){
			Zoom("MSGWND/MSG_msg", 150, 0, 1000, null, false);
			Zoom("MSGWND/MSG_*/*/*", 150, 0, 1000, null, false);
			Fade("MSGWND/MSG_msg",150,0,null,false);
			Fade("MSGWND/MSG_*/*/*",150,0,null,false);
			WaitAction("MSGWND/MSG_*/*/*",null);
			
			$InDialog=true;
			call_chapter nss/sys_backselect.nss;
			$InDialog=false;

			Zoom("MSGWND/MSG_msg",150,1000,1000, Dxl1, false);
			Zoom("MSGWND/MSG_*/*/*",150,1000,1000, Dxl1, false);
			Fade("MSGWND/MSG_msg",150,1000,null,false);
			Fade("MSGWND/MSG_*/MouseUsual/*",150,1000,null,false);
			WaitAction("MSGWND/MSG_*/*/*",null);
		}
	}
	$SYSTEM_r_button_down=false;$SYSTEM_XBOX360_button_b_down=false;
	$save_check=true;
}

.//■マクロ「上手にセーブできましたダイアログ」
function SaveDialog2()
{
	if(!$save_check){
		//■定義「メッセージウインドウ作成」
		CreateName("MSGWND");

		//■定義「背景」
		CreateColor("MSGWND/MSG_bak", 1010000, Center, Middle, 1024, 576, BLACK);
	}

	//■定義「選択肢」
	//box
	CreateTexture("MSGWND/MSG_msg2",1010000,Center,88,"cg/sys/dialog/記録しました.png");
	Request("MSGWND/MSG_msg2", Smoothing);

	//●最終準備
	if(!$save_check){
		Fade("MSGWND/MSG_*",0,0,null,false);
		//Zoom("MSGWND/MSG_msg2", 0, 0, 1000, null, false);
	}else{
		Fade("MSGWND/MSG_msg2",0,0,null,false);
	}

	//★描画開始
	if(!$save_check){
		//Zoom("MSGWND/MSG_msg2",150,1000,1000, Dxl1, false);
		//Fade("MSGWND/MSG_msg2",150,1000,null,false);
		//Fade("MSGWND/MSG_bak",150,800,null,false);
		Fade("MSGWND/MSG_bak",0,800,null,false);
		Fade("MSGWND/MSG_msg2",0,1000,null,false);
	}else{
		Fade("MSGWND/MSG_msg2",0,1000,null,false);
		Fade("MSGWND/MSG_msg",0,0,null,false);
		Fade("MSGWND/MSG_*/*/*",0,0,null,false);
	}
	WaitAction("MSGWND/MSG_*",null);

	//★選択肢開始
	if($SYSTEM_XBOX360_change_user_state){DialogChangeState();}
	$SYSTEM_r_button_down=false;$SYSTEM_XBOX360_button_b_down=false;
	$SYSTEM_l_button_down=false;$SYSTEM_keydown_enter=false;
	select{
		if($SYSTEM_XBOX360_change_user_state){DialogChangeState();}
		if($SYSTEM_l_button_down||$SYSTEM_keydown_enter||$SYSTEM_r_button_down||$SYSTEM_XBOX360_button_b_down){break;}

		//★キーダウン系
		if($SYSTEM_keydown_f){
			if(!#SYSTEM_window_full_lock){
				#SYSTEM_window_full=!#SYSTEM_window_full;
				#SYSTEM_window_full_lock=false;
				Wait(300);
				$SYSTEM_keydown_f=false;
			}
		}else if($SYSTEM_keydown_esc||$SYSTEM_buttondown_close){
			Zoom("MSGWND/MSG_msg2", 150, 0, 1000, null, false);
			Fade("MSGWND/MSG_msg2",150,0,null,false);
			WaitAction("MSGWND/MSG_*",null);
			
			$InDialog=true;
			call_chapter nss/sys_close.nss;
			$InDialog=false;
			
			Zoom("MSGWND/MSG_msg2",150,1000,1000, Dxl1, false);
			Fade("MSGWND/MSG_msg2",150,1000,null,false);
			WaitAction("MSGWND/MSG_*",null);
		}else if($SYSTEM_keydown_t&&!$SYSTEM_menu_lock){
			Zoom("MSGWND/MSG_msg2", 150, 0, 1000, null, false);
			Fade("MSGWND/MSG_msg2",150,0,null,false);
			WaitAction("MSGWND/MSG_*",null);
			
			$InDialog=true;
			call_chapter nss/sys_reset.nss;
			$InDialog=false;

			Zoom("MSGWND/MSG_msg2",150,1000,1000, Dxl1, false);
			Fade("MSGWND/MSG_msg2",150,1000,null,false);
			WaitAction("MSGWND/MSG_*",null);
		}else if($SYSTEM_keydown_r&&ExistSave(9999)&&!$SYSTEM_backselect_lock){
			Zoom("MSGWND/MSG_msg2", 150, 0, 1000, null, false);
			Fade("MSGWND/MSG_msg2",150,0,null,false);
			WaitAction("MSGWND/MSG_*",null);
			
			$InDialog=true;
			call_chapter nss/sys_backselect.nss;
			$InDialog=false;

			Zoom("MSGWND/MSG_msg2",150,1000,1000, Dxl1, false);
			Fade("MSGWND/MSG_msg2",150,1000,null,false);
			WaitAction("MSGWND/MSG_*",null);
		}
		$SYSTEM_l_button_down=false;$SYSTEM_keydown_enter=false;
	}
	$SYSTEM_r_button_down=false;$SYSTEM_XBOX360_button_b_down=false;
}


function aaa()
{
	//★選択肢開始
	if($SYSTEM_XBOX360_change_user_state){DialogChangeState();}
	$SYSTEM_r_button_down=false;$SYSTEM_XBOX360_button_b_down=false;
	select{
		if($SYSTEM_XBOX360_change_user_state){DialogChangeState();}
		if($SYSTEM_r_button_down||$SYSTEM_XBOX360_button_b_down){break;}

		//★キーダウン系
		if($SYSTEM_keydown_f){
			if(!#SYSTEM_window_full_lock){
				#SYSTEM_window_full=!#SYSTEM_window_full;
				#SYSTEM_window_full_lock=false;
				Wait(300);
				$SYSTEM_keydown_f=false;
			}
		}else if($SYSTEM_keydown_esc){
			Zoom("MSGWND/MSG_msg2", 150, 0, 1000, null, false);
			Fade("MSGWND/MSG_msg2",150,0,null,false);
			WaitAction("MSGWND/MSG_*",null);
			
			$InDialog=true;
			call_chapter nss/sys_close.nss;
			$InDialog=false;
			
			Zoom("MSGWND/MSG_msg2",150,1000,1000, Dxl1, false);
			Fade("MSGWND/MSG_msg2",150,1000,null,false);
			WaitAction("MSGWND/MSG_*",null);
		}else if($SYSTEM_keydown_t&&!$SYSTEM_menu_lock){
			Zoom("MSGWND/MSG_msg", 150, 0, 1000, null, false);
			Zoom("MSGWND/MSG_*/*/*", 150, 0, 1000, null, false);
			Fade("MSGWND/MSG_msg",150,0,null,false);
			Fade("MSGWND/MSG_*/*/*",150,0,null,false);
			WaitAction("MSGWND/MSG_*/*/*",null);
			
			$InDialog=true;
			call_chapter nss/sys_reset.nss;
			$InDialog=false;

			Zoom("MSGWND/MSG_msg",150,1000,1000, Dxl1, false);
			Zoom("MSGWND/MSG_*/*/*",150,1000,1000, Dxl1, false);
			Fade("MSGWND/MSG_msg",150,1000,null,false);
			Fade("MSGWND/MSG_*/MouseUsual/*",150,1000,null,false);
			WaitAction("MSGWND/MSG_*/*/*",null);
		}else if($SYSTEM_keydown_r&&ExistSave(9999)&&!$SYSTEM_backselect_lock){
			Zoom("MSGWND/MSG_msg", 150, 0, 1000, null, false);
			Zoom("MSGWND/MSG_*/*/*", 150, 0, 1000, null, false);
			Fade("MSGWND/MSG_msg",150,0,null,false);
			Fade("MSGWND/MSG_*/*/*",150,0,null,false);
			WaitAction("MSGWND/MSG_*/*/*",null);
			
			$InDialog=true;
			call_chapter nss/sys_backselect.nss;
			$InDialog=false;

			Zoom("MSGWND/MSG_msg",150,1000,1000, Dxl1, false);
			Zoom("MSGWND/MSG_*/*/*",150,1000,1000, Dxl1, false);
			Fade("MSGWND/MSG_msg",150,1000,null,false);
			Fade("MSGWND/MSG_*/MouseUsual/*",150,1000,null,false);
			WaitAction("MSGWND/MSG_*/*/*",null);
		}
	}
	$SYSTEM_r_button_down=false;$SYSTEM_XBOX360_button_b_down=false;
}


.//■マクロ「体験版用上書き確認ダイアログ」
function SaveDialogTrial()
{
	#ResetMessage="上書きしてもよろしいですか？";
	if(!Message("スマガ　上書き確認",#ResetMessage,OKCANCEL)){
		Wait(200);
		$save=false;
	}
}


.//■マクロ「セーブ上書き」
function SaveThumbnail()
{
..		//●変数「初期変数の値を代入」
		$SaveVisionX=$PreSaveVisionX;
		$SaveVisionY=$PreSaveVisionY;
		$SaveThumX=$PreSaveThumX;
		$SaveThumY=$PreSaveThumY;
		$SaveBaseX=$PreSaveBaseX;
		$SaveBaseY=$PreSaveBaseY;
		$SaveNumberX=$PreSaveNumberX;
		$SaveNumberY=$PreSaveNumberY;
		$SaveDateX=$PreSaveDateX;
		$SaveDateY=$PreSaveDateY;
		$SaveCommentX=$PreSaveCommentX;
		$SaveCommentY=$PreSaveCommentY;
		$SaveTimeX=$PreSaveTimeX;
		$SaveTimeY=$PreSaveTimeY;
		$SaveChapterX=$PreSaveChapterX;
		$SaveChapterY=$PreSaveChapterY;
		$SaveIndexX=$PreSaveIndexX;
		$SaveIndexY=$PreSaveIndexY;

..		//▼定義「選択肢」
		$SaveChoiceName="Savenum_"+$SaveCount;
//		CreateChoice($SaveChoiceName);
//		SetAlias($SaveChoiceName,$SaveChoiceName);

		$SaveChoiceNameEX=$SaveChoiceName;
		$SaveChoiceName="@"+$SaveChoiceName;

..		//●データ移動
		if($SaveCount<=$Gyou1){
			$SaveThumY=$PreSaveThumY+($SaveThumY_plus*($SaveCount-1));
			$SaveBaseY=$PreSaveBaseY+($SaveBaseY_plus*($SaveCount-1));
		}else if($SaveCount<=$Gyou2){
			$SaveThumY=$PreSaveThumY+($SaveThumY_plus*($SaveCount-$Gyou1-1));
			$SaveThumX=$PreSaveThumX+$SaveThumX_plus;
			$SaveBaseY=$PreSaveBaseY+($SaveBaseY_plus*($SaveCount-$Gyou1-1));
			$SaveBaseX=$PreSaveBaseX+$SaveBaseX_plus;
		}else if($SaveCount<=$Gyou3){
			$SaveThumY=$PreSaveThumY+($SaveThumY_plus*($SaveCount-$Gyou2-1));
			$SaveThumX=$PreSaveThumX+($SaveThumX_plus*2);
			$SaveBaseY=$PreSaveBaseY+($SaveBaseY_plus*($SaveCount-$Gyou2-1));
			$SaveBaseX=$PreSaveBaseX+($SaveBaseX_plus*2);
		}else if($SaveCount<=$Gyou4){
			$SaveThumY=$PreSaveThumY+($SaveThumY_plus*($SaveCount-$Gyou3-1));
			$SaveThumX=$PreSaveThumX+($SaveThumX_plus*3);
			$SaveBaseY=$PreSaveBaseY+($SaveBaseY_plus*($SaveCount-$Gyou3-1));
			$SaveBaseX=$PreSaveBaseX+($SaveBaseX_plus*3);
		}else if($SaveCount<=$Gyou5){
			$SaveThumY=$PreSaveThumY+($SaveThumY_plus*($SaveCount-$Gyou4-1));
			$SaveThumX=$PreSaveThumX+($SaveThumX_plus*4);
			$SaveBaseY=$PreSaveBaseY+($SaveBaseY_plus*($SaveCount-$Gyou4-1));
			$SaveBaseX=$PreSaveBaseX+($SaveBaseX_plus*4);
		}

		//スマガ、フラッシュ吐き出しのズレ
		if($SaveCount==1||$SaveCount==2||$SaveCount==3||$SaveCount==6||$SaveCount==7||$SaveCount==10){
			//$SaveThumX+=1;
			//$SaveBaseX+=1;
		}

		//枠の位置
		$SaveWakuX=$SaveBaseX-3;
		$SaveWakuY=$SaveBaseY-3;

..	//●データ消去（オリジナル）
	$SaveUsualDelete=$SaveChoiceName+"/MouseUsual/*";
	$SaveOverDelete=$SaveChoiceName+"/MouseOver/*";
//	$SaveClickDelete=$SaveChoiceName+"/MouseClick/*";
	$SaveThumDelete="@WND/"+$SaveChoiceNameEX+"_btn";

	Delete($SaveUsualDelete);
	Delete($SaveOverDelete);
//	Delete($SaveClickDelete);
	Delete($SaveThumDelete);


..		//●データ位置「セーブデータ変数位置とデータ取得」
		if(ExistSave($SaveGroval)){
			$SaveCountmg=String("%s/%04d/thum.npf",#SYSTEM_save_path,$SaveGroval);//サムネイル
			$date=String("%s/%04d/date.npf",#SYSTEM_save_path,$SaveGroval);//日付
			$cmt=String("%s/%04d/cmt.npf",#SYSTEM_save_path,$SaveGroval);//コメント
			$cpt=String("%s/%04d/cpt.npf",#SYSTEM_save_path,$SaveGroval);//タイトル
			$tm=String("%s/%04d/tm.npf",#SYSTEM_save_path,$SaveGroval);//プレイ時間
			$date=ReadFile($date);
			$cmt=ReadFile($cmt);
			$cpt=ReadFile($cpt);
			$tm=ReadFile($tm);
			$num=String("No %02d<PRE>.</PRE>",$SaveGroval); //ナンバー
			if($cpt=="0"){$cpt=" ";}
			if($cmt=="0"){$cmt=" ";}
		}else{
			$date="<PRE></PRE>";
			$cmt="　データ無し";
			$cpt=" ";
			$tm=" ";
			$num=String("No %02d<PRE>.</PRE>",$SaveGroval); //ナンバー
		}

		//●ナット名「サムネイル」
		$SaveThumImage="@WND/"+$SaveChoiceNameEX+"_img";
		$SaveThum="@WND/"+$SaveChoiceNameEX+"_btn";
		$SaveOverVision=$SaveChoiceName+"/MouseOver/prd";
		$SaveClickVision=$SaveChoiceName+"/MouseClick/prd";

		//●ナット名「Usual」
		$SaveUsualHit=$SaveChoiceName+"/MouseUsual/hit";
		$SaveUsualNut=$SaveChoiceName+"/MouseUsual/img";
//		$SaveUsualText1=$SaveChoiceName+"/MouseUsual/date";
//		$SaveUsualText2=$SaveChoiceName+"/MouseUsual/cmt";
//		$SaveUsualText3=$SaveChoiceName+"/MouseUsual/num";

		//●ナット名「Over」
		$SaveOverNut=$SaveChoiceName+"/MouseOver/img";
		$SaveOverText1=$SaveChoiceName+"/MouseOver/date";
		$SaveOverText2=$SaveChoiceName+"/MouseOver/cmt";
		$SaveOverText3=$SaveChoiceName+"/MouseOver/num";
		$SaveOverText4=$SaveChoiceName+"/MouseOver/tm";
		$SaveOverText5=$SaveChoiceName+"/MouseOver/cpt";
		$SaveOverWaku=$SaveChoiceName+"/MouseOver/waku";
		$SaveOverIndex=$SaveChoiceName+"/MouseOver/index";

		//●ナット名「Click」
		$SaveClickNut=$SaveChoiceName+"/MouseClick/img";
		$SaveClickText1=$SaveChoiceName+"/MouseClick/date";
		$SaveClickText2=$SaveChoiceName+"/MouseClick/cmt";
		$SaveClickText3=$SaveChoiceName+"/MouseClick/num";
		$SaveClickText4=$SaveChoiceName+"/MouseClick/tm";
		$SaveClickText5=$SaveChoiceName+"/MouseClick/cpt";
		$SaveClickWaku=$SaveChoiceName+"/MouseClick/waku";
		//$SaveClickIndex=$SaveChoiceName+"/MouseClick/index";

..		//▼定義「常設サムネイル」
		if(ExistSave($SaveGroval)){
			LoadImage($SaveThumImage, $SaveCountmg);
			CreateTexture($SaveThum,10009,$SaveThumX,$SaveThumY,$SaveThumImage);
		}else{
			$SaveThumImage="@SaveImage0";
		}

..		//▼定義「サムネイル大」
		if(ExistSave($SaveGroval)){
			CreateTexture($SaveOverVision,10000,$SaveVisionX,$SaveVisionY,$SaveThumImage);
			$shimanut=$SaveChoiceName+"/*/prd";
			Request($shimanut, Smoothing);
			SetVertex($shimanut, 0, 0);
			Zoom($shimanut, 0, 1199, 1199, null, false);
		}

..		//▼定義「Usual」
		//サムネイル
		CreateTexture($SaveUsualHit,10010,$SaveBaseX,$SaveBaseY,"@SaveImage0");
//		CreateTexture($SaveUsualNut,10010,$SaveBaseX,$SaveBaseY,"@SaveImage1");

..		//▼定義「Over」
		if(ExistSave($SaveGroval)){
			//サムネイル
			//CreateTexture($SaveOverNut,10010,$SaveBaseX,$SaveBaseY,$SaveThumImage);
		}
		//日にち
		SetFont("ＭＳ 明朝",18,#000000,#000000,500,null);
		CreateText($SaveOverText1, 10010, $SaveDateX, $SaveDateY, Auto, Auto, $date);
		//プレイ時間
		SetFont("ＭＳ 明朝",18,#FFFFFF,#000000,500,null);
		CreateText($SaveOverText4, 10010, $SaveTimeX, $SaveTimeY, Auto, Auto, $tm);
		//テキスト
		$SYSTEM_text_margin_column=$Save_text_margin_column;$SYSTEM_text_margin_row=$Save_text_margin_row;
		SetFont("@ＭＳ 明朝",18,#000000,#FFFFFF,500,RIGHT);
		CreateText($SaveOverText2, 10010, $SaveCommentX, $SaveCommentY, $SaveCommentH, $SaveCommentV, $cmt);
		$SYSTEM_text_margin_column=0;$SYSTEM_text_margin_row=0;
		//タイトル
		SetFont("@ＭＳ 明朝",20,#000000,#FFFFFF,500,RIGHT);
		CreateText($SaveOverText5, 10010, $SaveChapterX, $SaveChapterY, Auto, Auto, $cpt);
		//選択枠
		CreateTexture($SaveOverWaku,11010,$SaveWakuX,$SaveWakuY,"SaveImage5");
		//ナンバー
		//SetFont("ＭＳ 明朝",25,#000000,#000000,500,null);
		//CreateText($SaveOverText3, 10010, $SaveNumberX, $SaveNumberY, Auto, Auto, $num);
		//インデックス
		//CreateTexture($SaveOverIndex,10050,$SaveIndexX,$SaveIndexY,"@SaveImage4");
		//SetAlias($SaveOverIndex, $SaveOverIndex);
		SetVertex($SaveOverText2, 0, 0);
		Rotate($SaveOverText2, 0, @0, @0, @90, null, false);
		SetVertex($SaveOverText5, 0, 0);
		Rotate($SaveOverText5, 0, @0, @0, @90, null, false);

..		//▼定義「NEW」
		if(ExistSave($SaveGroval)){
			$new_X=$SaveThumX+$SaveNewX_plus;
			$new_Y=$SaveThumY+$SaveNewY_plus;
			Move("SaveNEW",0,$new_X,$new_Y,null,false);
		}else if($SaveGroval==#LATEST_SAVE_NUM){
			Move("SaveNEW",0,0,-100,false);
			#LATEST_SAVE_NUM=0;
		}

..	//▼準備「最終準備」
	Delete("@Savenum_*/MouseClick");

	$SaveAllText=$SaveChoiceName+"/*/*";
	$SaveOverAll=$SaveChoiceName+"/MouseOver/*";
	$SaveClickAll=$SaveChoiceName+"/MouseClick/*";
	Request($SaveAllText,PushText);
	Request("*/MouseUsual/hit",Erase);

	Fade($SaveOverAll,0,0,null,false);
	Fade($SaveClickAll,0,0,null,false);

..	//▼準備「フォーカス」
	SaveFocus();
}


.//■マクロ「フォーカス」
function SaveFocus()
{
	SetNextFocus("@Savenum_1/MouseUsual/hit","SaveLEFT/MouseUsual/hit",RIGHT);
	SetNextFocus("@Savenum_2/MouseUsual/hit","SaveRIGHT/MouseUsual/hit",RIGHT);
	SetNextFocus("@Savenum_3/MouseUsual/hit","SaveDELETE/MouseUsual/hit",RIGHT);
	SetNextFocus("@Savenum_4/MouseUsual/hit","SaveEXIT/MouseUsual/hit",RIGHT);
	SetNextFocus("@Savenum_5/MouseUsual/hit","@Savenum_20/MouseUsual/hit",RIGHT);
	SetNextFocus("@Savenum_6/MouseUsual/hit","@Savenum_1/MouseUsual/hit",RIGHT);
	SetNextFocus("@Savenum_7/MouseUsual/hit","@Savenum_2/MouseUsual/hit",RIGHT);
	SetNextFocus("@Savenum_8/MouseUsual/hit","@Savenum_3/MouseUsual/hit",RIGHT);
	SetNextFocus("@Savenum_9/MouseUsual/hit","@Savenum_4/MouseUsual/hit",RIGHT);
	SetNextFocus("@Savenum_10/MouseUsual/hit","@Savenum_5/MouseUsual/hit",RIGHT);
	SetNextFocus("@Savenum_11/MouseUsual/hit","@Savenum_6/MouseUsual/hit",RIGHT);
	SetNextFocus("@Savenum_12/MouseUsual/hit","@Savenum_7/MouseUsual/hit",RIGHT);
	SetNextFocus("@Savenum_13/MouseUsual/hit","@Savenum_8/MouseUsual/hit",RIGHT);
	SetNextFocus("@Savenum_14/MouseUsual/hit","@Savenum_9/MouseUsual/hit",RIGHT);
	SetNextFocus("@Savenum_15/MouseUsual/hit","@Savenum_10/MouseUsual/hit",RIGHT);
	SetNextFocus("@Savenum_16/MouseUsual/hit","@Savenum_11/MouseUsual/hit",RIGHT);
	SetNextFocus("@Savenum_17/MouseUsual/hit","@Savenum_12/MouseUsual/hit",RIGHT);
	SetNextFocus("@Savenum_18/MouseUsual/hit","@Savenum_13/MouseUsual/hit",RIGHT);
	SetNextFocus("@Savenum_19/MouseUsual/hit","@Savenum_14/MouseUsual/hit",RIGHT);
	SetNextFocus("@Savenum_20/MouseUsual/hit","@Savenum_15/MouseUsual/hit",RIGHT);
	SetNextFocus("SaveLEFT/MouseUsual/hit","@Savenum_16/MouseUsual/hit",RIGHT);
	SetNextFocus("SaveRIGHT/MouseUsual/hit","@Savenum_17/MouseUsual/hit",RIGHT);
	SetNextFocus("SaveDELETE/MouseUsual/hit","@Savenum_18/MouseUsual/hit",RIGHT);
	SetNextFocus("SaveEXIT/MouseUsual/hit","@Savenum_19/MouseUsual/hit",RIGHT);

	SetNextFocus("@Savenum_1/MouseUsual/hit","@Savenum_2/MouseUsual/hit",DOWN);
	SetNextFocus("@Savenum_2/MouseUsual/hit","@Savenum_3/MouseUsual/hit",DOWN);
	SetNextFocus("@Savenum_3/MouseUsual/hit","@Savenum_4/MouseUsual/hit",DOWN);
	SetNextFocus("@Savenum_4/MouseUsual/hit","@Savenum_5/MouseUsual/hit",DOWN);
	SetNextFocus("@Savenum_5/MouseUsual/hit","@Savenum_1/MouseUsual/hit",DOWN);
	SetNextFocus("@Savenum_6/MouseUsual/hit","@Savenum_7/MouseUsual/hit",DOWN);
	SetNextFocus("@Savenum_7/MouseUsual/hit","@Savenum_8/MouseUsual/hit",DOWN);
	SetNextFocus("@Savenum_8/MouseUsual/hit","@Savenum_9/MouseUsual/hit",DOWN);
	SetNextFocus("@Savenum_9/MouseUsual/hit","@Savenum_10/MouseUsual/hit",DOWN);
	SetNextFocus("@Savenum_10/MouseUsual/hit","@Savenum_6/MouseUsual/hit",DOWN);
	SetNextFocus("@Savenum_11/MouseUsual/hit","@Savenum_12/MouseUsual/hit",DOWN);
	SetNextFocus("@Savenum_12/MouseUsual/hit","@Savenum_13/MouseUsual/hit",DOWN);
	SetNextFocus("@Savenum_13/MouseUsual/hit","@Savenum_14/MouseUsual/hit",DOWN);
	SetNextFocus("@Savenum_14/MouseUsual/hit","@Savenum_15/MouseUsual/hit",DOWN);
	SetNextFocus("@Savenum_15/MouseUsual/hit","@Savenum_11/MouseUsual/hit",DOWN);
	SetNextFocus("@Savenum_16/MouseUsual/hit","@Savenum_17/MouseUsual/hit",DOWN);
	SetNextFocus("@Savenum_17/MouseUsual/hit","@Savenum_18/MouseUsual/hit",DOWN);
	SetNextFocus("@Savenum_18/MouseUsual/hit","@Savenum_19/MouseUsual/hit",DOWN);
	SetNextFocus("@Savenum_19/MouseUsual/hit","@Savenum_20/MouseUsual/hit",DOWN);
	SetNextFocus("@Savenum_20/MouseUsual/hit","@Savenum_16/MouseUsual/hit",DOWN);
	SetNextFocus("SaveLEFT/MouseUsual/hit","SaveRIGHT/MouseUsual/hit",DOWN);
	SetNextFocus("SaveRIGHT/MouseUsual/hit","SaveDELETE/MouseUsual/hit",DOWN);
	SetNextFocus("SaveDELETE/MouseUsual/hit","SaveEXIT/MouseUsual/hit",DOWN);
	SetNextFocus("SaveEXIT/MouseUsual/hit","SaveLEFT/MouseUsual/hit",DOWN);

	SetNextFocus("@Savenum_1/MouseUsual/hit","@Savenum_6/MouseUsual/hit",LEFT);
	SetNextFocus("@Savenum_2/MouseUsual/hit","@Savenum_7/MouseUsual/hit",LEFT);
	SetNextFocus("@Savenum_3/MouseUsual/hit","@Savenum_8/MouseUsual/hit",LEFT);
	SetNextFocus("@Savenum_4/MouseUsual/hit","@Savenum_9/MouseUsual/hit",LEFT);
	SetNextFocus("@Savenum_5/MouseUsual/hit","@Savenum_10/MouseUsual/hit",LEFT);
	SetNextFocus("@Savenum_6/MouseUsual/hit","@Savenum_11/MouseUsual/hit",LEFT);
	SetNextFocus("@Savenum_7/MouseUsual/hit","@Savenum_12/MouseUsual/hit",LEFT);
	SetNextFocus("@Savenum_8/MouseUsual/hit","@Savenum_13/MouseUsual/hit",LEFT);
	SetNextFocus("@Savenum_9/MouseUsual/hit","@Savenum_14/MouseUsual/hit",LEFT);
	SetNextFocus("@Savenum_10/MouseUsual/hit","@Savenum_15/MouseUsual/hit",LEFT);
	SetNextFocus("@Savenum_11/MouseUsual/hit","@Savenum_16/MouseUsual/hit",LEFT);
	SetNextFocus("@Savenum_12/MouseUsual/hit","@Savenum_17/MouseUsual/hit",LEFT);
	SetNextFocus("@Savenum_13/MouseUsual/hit","@Savenum_18/MouseUsual/hit",LEFT);
	SetNextFocus("@Savenum_14/MouseUsual/hit","@Savenum_19/MouseUsual/hit",LEFT);
	SetNextFocus("@Savenum_15/MouseUsual/hit","@Savenum_20/MouseUsual/hit",LEFT);
	SetNextFocus("@Savenum_16/MouseUsual/hit","SaveLEFT/MouseUsual/hit",LEFT);
	SetNextFocus("@Savenum_17/MouseUsual/hit","SaveRIGHT/MouseUsual/hit",LEFT);
	SetNextFocus("@Savenum_18/MouseUsual/hit","SaveDELETE/MouseUsual/hit",LEFT);
	SetNextFocus("@Savenum_19/MouseUsual/hit","SaveEXIT/MouseUsual/hit",LEFT);
	SetNextFocus("@Savenum_20/MouseUsual/hit","@Savenum_1/MouseUsual/hit",LEFT);
	SetNextFocus("SaveLEFT/MouseUsual/hit","@Savenum_1/MouseUsual/hit",LEFT);
	SetNextFocus("SaveRIGHT/MouseUsual/hit","@Savenum_2/MouseUsual/hit",LEFT);
	SetNextFocus("SaveDELETE/MouseUsual/hit","@Savenum_3/MouseUsual/hit",LEFT);
	SetNextFocus("SaveEXIT/MouseUsual/hit","@Savenum_4/MouseUsual/hit",LEFT);

	SetNextFocus("@Savenum_1/MouseUsual/hit","@Savenum_5/MouseUsual/hit",UP);
	SetNextFocus("@Savenum_2/MouseUsual/hit","@Savenum_1/MouseUsual/hit",UP);
	SetNextFocus("@Savenum_3/MouseUsual/hit","@Savenum_2/MouseUsual/hit",UP);
	SetNextFocus("@Savenum_4/MouseUsual/hit","@Savenum_3/MouseUsual/hit",UP);
	SetNextFocus("@Savenum_5/MouseUsual/hit","@Savenum_4/MouseUsual/hit",UP);
	SetNextFocus("@Savenum_6/MouseUsual/hit","@Savenum_10/MouseUsual/hit",UP);
	SetNextFocus("@Savenum_7/MouseUsual/hit","@Savenum_6/MouseUsual/hit",UP);
	SetNextFocus("@Savenum_8/MouseUsual/hit","@Savenum_7/MouseUsual/hit",UP);
	SetNextFocus("@Savenum_9/MouseUsual/hit","@Savenum_8/MouseUsual/hit",UP);
	SetNextFocus("@Savenum_10/MouseUsual/hit","@Savenum_9/MouseUsual/hit",UP);
	SetNextFocus("@Savenum_11/MouseUsual/hit","@Savenum_15/MouseUsual/hit",UP);
	SetNextFocus("@Savenum_12/MouseUsual/hit","@Savenum_11/MouseUsual/hit",UP);
	SetNextFocus("@Savenum_13/MouseUsual/hit","@Savenum_12/MouseUsual/hit",UP);
	SetNextFocus("@Savenum_14/MouseUsual/hit","@Savenum_13/MouseUsual/hit",UP);
	SetNextFocus("@Savenum_15/MouseUsual/hit","@Savenum_14/MouseUsual/hit",UP);
	SetNextFocus("@Savenum_16/MouseUsual/hit","@Savenum_20/MouseUsual/hit",UP);
	SetNextFocus("@Savenum_17/MouseUsual/hit","@Savenum_16/MouseUsual/hit",UP);
	SetNextFocus("@Savenum_18/MouseUsual/hit","@Savenum_17/MouseUsual/hit",UP);
	SetNextFocus("@Savenum_19/MouseUsual/hit","@Savenum_18/MouseUsual/hit",UP);
	SetNextFocus("@Savenum_20/MouseUsual/hit","@Savenum_19/MouseUsual/hit",UP);
	SetNextFocus("SaveLEFT/MouseUsual/hit","SaveEXIT/MouseUsual/hit",UP);
	SetNextFocus("SaveRIGHT/MouseUsual/hit","SaveLEFT/MouseUsual/hit",UP);
	SetNextFocus("SaveDELETE/MouseUsual/hit","SaveRIGHT/MouseUsual/hit",UP);
	SetNextFocus("SaveEXIT/MouseUsual/hit","SaveDELETE/MouseUsual/hit",UP);
}







.//■マクロ「先頭アニメーション」
function CreateSaveAnime()
{
	CreateTexture("SaveAnime0000", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0000.png");
	CreateTexture("SaveAnime0001", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0001.png");
	CreateTexture("SaveAnime0002", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0002.png");
	CreateTexture("SaveAnime0003", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0003.png");
	CreateTexture("SaveAnime0004", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0004.png");
	CreateTexture("SaveAnime0005", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0005.png");
	CreateTexture("SaveAnime0006", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0006.png");
	CreateTexture("SaveAnime0007", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0007.png");
	CreateTexture("SaveAnime0008", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0008.png");
	CreateTexture("SaveAnime0009", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0009.png");
	CreateTexture("SaveAnime0010", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0010.png");
	CreateTexture("SaveAnime0011", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0011.png");
	CreateTexture("SaveAnime0012", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0012.png");
	CreateTexture("SaveAnime0013", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0013.png");
	CreateTexture("SaveAnime0014", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0014.png");
	CreateTexture("SaveAnime0015", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0015.png");
	CreateTexture("SaveAnime0016", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0016.png");
	CreateTexture("SaveAnime0017", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0017.png");
	CreateTexture("SaveAnime0018", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0018.png");
	CreateTexture("SaveAnime0019", 10000, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0019.png");
	CreateTexture("SaveAnime0020", 10005, 0, 0, "cg/sys/save/セーブアニメ連番/セーブ_0020.png");
	Fade("SaveAnime*", 0, 0, null, true);

	SetAlias("SaveAnime0000","SaveAnime0000");
	SetAlias("SaveAnime0001","SaveAnime0001");
	SetAlias("SaveAnime0002","SaveAnime0002");
	SetAlias("SaveAnime0003","SaveAnime0003");
	SetAlias("SaveAnime0004","SaveAnime0004");
	SetAlias("SaveAnime0005","SaveAnime0005");
	SetAlias("SaveAnime0006","SaveAnime0006");
	SetAlias("SaveAnime0007","SaveAnime0007");
	SetAlias("SaveAnime0008","SaveAnime0008");
	SetAlias("SaveAnime0009","SaveAnime0009");
	SetAlias("SaveAnime0010","SaveAnime0010");
	SetAlias("SaveAnime0011","SaveAnime0011");
	SetAlias("SaveAnime0012","SaveAnime0012");
	SetAlias("SaveAnime0013","SaveAnime0013");
	SetAlias("SaveAnime0014","SaveAnime0014");
	SetAlias("SaveAnime0015","SaveAnime0015");
	SetAlias("SaveAnime0016","SaveAnime0016");
	SetAlias("SaveAnime0017","SaveAnime0017");
	SetAlias("SaveAnime0018","SaveAnime0018");
	SetAlias("SaveAnime0019","SaveAnime0019");
	SetAlias("SaveAnime0020","SaveAnime0020");

}


function CreateLoadAnime()
{
	CreateTexture("SaveAnime0000", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0000.png");
	CreateTexture("SaveAnime0001", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0001.png");
	CreateTexture("SaveAnime0002", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0002.png");
	CreateTexture("SaveAnime0003", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0003.png");
	CreateTexture("SaveAnime0004", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0004.png");
	CreateTexture("SaveAnime0005", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0005.png");
	CreateTexture("SaveAnime0006", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0006.png");
	CreateTexture("SaveAnime0007", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0007.png");
	CreateTexture("SaveAnime0008", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0008.png");
	CreateTexture("SaveAnime0009", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0009.png");
	CreateTexture("SaveAnime0010", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0010.png");
	CreateTexture("SaveAnime0011", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0011.png");
	CreateTexture("SaveAnime0012", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0012.png");
	CreateTexture("SaveAnime0013", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0013.png");
	CreateTexture("SaveAnime0014", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0014.png");
	CreateTexture("SaveAnime0015", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0015.png");
	CreateTexture("SaveAnime0016", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0016.png");
	CreateTexture("SaveAnime0017", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0017.png");
	CreateTexture("SaveAnime0018", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0018.png");
	CreateTexture("SaveAnime0019", 10000, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0019.png");
	CreateTexture("SaveAnime0020", 10005, 0, 0, "cg/sys/save/ロードアニメ連番/ロード_0020.png");
	Fade("SaveAnime*", 0, 0, null, true);

	SetAlias("SaveAnime0000","SaveAnime0000");
	SetAlias("SaveAnime0001","SaveAnime0001");
	SetAlias("SaveAnime0002","SaveAnime0002");
	SetAlias("SaveAnime0003","SaveAnime0003");
	SetAlias("SaveAnime0004","SaveAnime0004");
	SetAlias("SaveAnime0005","SaveAnime0005");
	SetAlias("SaveAnime0006","SaveAnime0006");
	SetAlias("SaveAnime0007","SaveAnime0007");
	SetAlias("SaveAnime0008","SaveAnime0008");
	SetAlias("SaveAnime0009","SaveAnime0009");
	SetAlias("SaveAnime0010","SaveAnime0010");
	SetAlias("SaveAnime0011","SaveAnime0011");
	SetAlias("SaveAnime0012","SaveAnime0012");
	SetAlias("SaveAnime0013","SaveAnime0013");
	SetAlias("SaveAnime0014","SaveAnime0014");
	SetAlias("SaveAnime0015","SaveAnime0015");
	SetAlias("SaveAnime0016","SaveAnime0016");
	SetAlias("SaveAnime0017","SaveAnime0017");
	SetAlias("SaveAnime0018","SaveAnime0018");
	SetAlias("SaveAnime0019","SaveAnime0019");
	SetAlias("SaveAnime0020","SaveAnime0020");
}


function SaveAnime2()
{
	$SaveAnimeCount=0;
	$SaveAnimeTexture=0;
	while($SaveAnimeCount<32)
	{
		$SaveAnimeCountPre=$SaveAnimeTexture;
		$SaveAnimeTexture=String("@SaveAnime%04d",$SaveAnimeCount);
		$SaveAnimeCount+=1;

		Fade($SaveAnimeTexture, 0, 1000, null, true);
		Fade($SaveAnimeCountPre, 0, 0, null, false);
		Draw();

		if($SaveAnimeCount==27)
		{
			if(#SavePage==1){Fade("@SaveBan1",200,1000,null,false);Fade("@SavePAGE1_ON", 200, 1000, null, false);}
			else if(#SavePage==2){Fade("@SaveBan2",200,1000,null,false);Fade("@SavePAGE2_ON", 200, 1000, null, false);}
			else if(#SavePage==3){Fade("@SaveBan3",200,1000,null,false);Fade("@SavePAGE3_ON", 200, 1000, null, false);}
			else if(#SavePage==4){Fade("@SaveBan4",200,1000,null,false);Fade("@SavePAGE4_ON", 200, 1000, null, false);}
			Fade("@WND/Savenum_*",200,1000,null,false);
			Fade("@SaveNEW",200,1000,null,false);
			Fade("@SaveNOT",200,1000,null,false);
			Fade("@*/MouseUsual/*",200,1000,null,false);
		}

		if($SaveAnimeCount==31)
		{
			Fade("@SaveBack", 0, 1000, null, true);
		}
	}
}

function SaveAnime()
{
	$SaveAnimeCount=0;
	$SaveAnimeTexture=0;
	while($SaveAnimeCount<21)
	{
		$SaveAnimeCountPre=$SaveAnimeTexture;
		$SaveAnimeTexture=String("@SaveAnime%04d",$SaveAnimeCount);
		$SaveAnimeCount+=1;

		Fade($SaveAnimeTexture, 0, 1000, null, false);
		Wait(32);
		Fade($SaveAnimeCountPre, 0, 0, null, false);

		if($SaveAnimeCount==18)
		{
			if(#SavePage==1){Fade("@SaveBan1",100,1000,null,false);Fade("@SavePAGE1_ON", 100, 1000, null, false);}
			else if(#SavePage==2){Fade("@SaveBan2",100,1000,null,false);Fade("@SavePAGE2_ON", 100, 1000, null, false);}
			else if(#SavePage==3){Fade("@SaveBan3",100,1000,null,false);Fade("@SavePAGE3_ON", 100, 1000, null, false);}
			else if(#SavePage==4){Fade("@SaveBan4",100,1000,null,false);Fade("@SavePAGE4_ON", 100, 1000, null, false);}
			Fade("@WND/Savenum_*",100,1000,null,false);
			Fade("@SaveNEW",100,1000,null,false);
			Fade("@SaveNOT",100,1000,null,false);
			Fade("*/MouseUsual/*",100,1000,null,false);
		}

		if($SaveAnimeCount==21)
		{
			Fade("@SaveBack", 0, 1000, null, true);
		}
	}

	Draw();
}









