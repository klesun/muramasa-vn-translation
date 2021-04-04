#include "nssex/function_tokuten.nss"

//=============================================================================//
//■EXTRA [3 Dimension]■
//=============================================================================//
chapter main
{
	//★タイトルの状態
	$SYSTEM_menu_lock = true;

	$DebugMode=false;

	//特典用
	$TOKUTEN=false;
	TokutenPatch();

	if(!$TOKUTEN&&#SelectDxNumber>48){
		#DxPage=1;
		#SelectDxName="九〇式指揮官騎";
		#SelectDxNumber=21;
	}


	$DxFirst=true;
	DxBase();

	if(!#DxPageFirst){
		#DxPage=1;
		#SelectDxName="九〇式指揮官騎";
		#SelectDxNumber=21;
		#av_九〇式指揮官騎=true;
		#av_九四式指揮官騎=true;
		#DxPageFirst=true;
	}

	$DxLoop=true;
	while($DxLoop){
		Dimension();
	}

	CreateEffect("@システムエキストラ/背景", 2500, 0, 0, 1024, 576, "Plain");
	Request("@システムエキストラ/背景",Passive);

	Wait(16);
}

chapter main2
{
	Dx();
}

function DxBase()
{
	$エキストラ立体=true;

	LoadImage("DxImage0", "cg/sys/extra/3d/NO.png");
//	LoadImage("DxImage1", "cg/sys/extra/3d/サムネイルボタンoff.png");
//	LoadImage("DxImage2", "cg/sys/extra/3d/サムネイルボタンover.png");
//	LoadImage("DxImage3", "cg/sys/extra/3d/サムネイルボタンon.png");

//	LoadImage("NoData", "cg/sys/extra/3d/CG_NODATA.jpg");

	//■定義「背景」
	CreateTexture("DxGround", 1000, 0, 0, "cg/sys/extra/3d/3Dビュアー背景.png");

	//■各種定義
	Array($DxNutName,"Back","Next","Exit");
	AssocArray($DxNutName,"Back","Next","Exit");

	Array($DxNutName[Back],948,438,true,前頁,Back);
	Array($DxNutName[Next],948,474,true,次頁,Next);
	Array($DxNutName[Exit],948,510,true,退出,Exit);

	$WhileCount=0;
	while(Count($DxNutName)>$WhileCount){
		if($DxNutName[$WhileCount][2]){
			$DxX=$DxNutName[$WhileCount][0];
			$DxY=$DxNutName[$WhileCount][1];

			$DxNutBase="Dx"+$DxNutName[$WhileCount];
			CreateChoice($DxNutBase);
			SetAlias($DxNutBase, $DxNutBase);

			$DxNutImage1=$DxNutBase+"Image1";
			$DxNutFail="cg/sys/extra/3d/ボタン/"+$DxNutName[$WhileCount][3]+"-001.png";
			LoadImage($DxNutImage1, $DxNutFail);
			$DxNutImage2=$DxNutBase+"Image2";
			$DxNutFail="cg/sys/extra/3d/ボタン/"+$DxNutName[$WhileCount][3]+"-002.png";
			LoadImage($DxNutImage2, $DxNutFail);
			$DxNutImage3=$DxNutBase+"Image3";
			$DxNutFail="cg/sys/extra/3d/ボタン/"+$DxNutName[$WhileCount][3]+"-003.png";
			LoadImage($DxNutImage3, $DxNutFail);

			$DxNutTemp1=$DxNutBase+"/img";
			CreateTexture($DxNutTemp1, 1000, $DxX, $DxY, $DxNutImage1);

			$DxNutHit=$DxNutBase+"/MouseUsual/hit";
			CreateTexture($DxNutHit, 1000, $DxX, $DxY, $DxNutImage1);
			$DxNutOver=$DxNutBase+"/MouseOver/nut";
			CreateTexture($DxNutOver, 1000, $DxX, $DxY, $DxNutImage2);
			$DxNutClick=$DxNutBase+"/MouseClick/nut";
			CreateTexture($DxNutClick, 1000, $DxX, $DxY, $DxNutImage3);
			Request($DxNutHit, "Erase");
		}
		$WhileCount++;
	}

	//■ＤＸ変数定義
	Dx();
}



function Dx()
{
	//■選択肢
	if(!$TOKUTEN){
		Array($Dx,"何か","村正","三世村正レーサー偽装","三世村正・虎徹装備","銀星号","正宗","虎徹","真改","月山従三位","羽黒山","湯殿山","髭切","膝丸","銘伏","同田貫","青江貞次","厩衆","黒瀬童子","八八式竜騎兵","八八式指揮官騎","九〇式竜騎兵","九〇式指揮官騎","九四式竜騎兵","九四式指揮官騎","零零式竜騎兵","ウィリアム・バロウズ","アスカロンⅦ","ST05ワーウルフ","GR03ガルム","GR08トロール","ST09ユーウォーキー","アベンジ","ウルティマ・シュール","スーパーハウンド","RG10","ホットボルト","セクシー","ザ・ゲイシャ","ジェントルダッシュ","GUTSEIDER","ヘッド","ボーディ","レフター","ライター","荒覇吐","八剣姫","ここが境界線");
		AssocArray($Dx,"何か","村正","三世村正レーサー偽装","三世村正・虎徹装備","銀星号","正宗","虎徹","真改","月山従三位","羽黒山","湯殿山","髭切","膝丸","銘伏","同田貫","青江貞次","厩衆","黒瀬童子","八八式竜騎兵","八八式指揮官騎","九〇式竜騎兵","九〇式指揮官騎","九四式竜騎兵","九四式指揮官騎","零零式竜騎兵","ウィリアム・バロウズ","アスカロンⅦ","ST05ワーウルフ","GR03ガルム","GR08トロール","ST09ユーウォーキー","アベンジ","ウルティマ・シュール","スーパーハウンド","RG10","ホットボルト","セクシー","ザ・ゲイシャ","ジェントルダッシュ","GUTSEIDER","ヘッド","ボーディ","レフター","ライター","荒覇吐","八剣姫","ここが境界線");
	}else{
		Array($Dx,"何か","村正","三世村正レーサー偽装","三世村正・虎徹装備","銀星号","正宗","虎徹","真改","月山従三位","羽黒山","湯殿山","髭切","膝丸","銘伏","同田貫","青江貞次","厩衆","黒瀬童子","八八式竜騎兵","八八式指揮官騎","九〇式竜騎兵","九〇式指揮官騎","九四式竜騎兵","九四式指揮官騎","零零式竜騎兵","ウィリアム・バロウズ","アスカロンⅦ","ST05ワーウルフ","GR03ガルム","GR08トロール","ST09ユーウォーキー","アベンジ","ウルティマ・シュール","スーパーハウンド","RG10","ホットボルト","セクシー","ザ・ゲイシャ","ジェントルダッシュ","GUTSEIDER","ヘッド","ボーディ","レフター","ライター","荒覇吐","八剣姫","ここが境界線","空白１","空白２","蜘蛛","女王蟻","天牛虫","コントラバス","百足","七節","亀","足利茶々丸","バートリィ","鳩","破壊ロボ","五階層方陣","金神","長坂右京","神を目指した夢の成れの果て","ガレーキープ","ヴィッカースメイフライMk4C型","摩天蛟","GHQ戦艦","オウカちゃん","すーぱーそに子");
		AssocArray($Dx,"何か","村正","三世村正レーサー偽装","三世村正・虎徹装備","銀星号","正宗","虎徹","真改","月山従三位","羽黒山","湯殿山","髭切","膝丸","銘伏","同田貫","青江貞次","厩衆","黒瀬童子","八八式竜騎兵","八八式指揮官騎","九〇式竜騎兵","九〇式指揮官騎","九四式竜騎兵","九四式指揮官騎","零零式竜騎兵","ウィリアム・バロウズ","アスカロンⅦ","ST05ワーウルフ","GR03ガルム","GR08トロール","ST09ユーウォーキー","アベンジ","ウルティマ・シュール","スーパーハウンド","RG10","ホットボルト","セクシー","ザ・ゲイシャ","ジェントルダッシュ","GUTSEIDER","ヘッド","ボーディ","レフター","ライター","荒覇吐","八剣姫","ここが境界線","空白１","空白２","蜘蛛","女王蟻","天牛虫","コントラバス","百足","七節","亀","足利茶々丸","バートリィ","鳩","破壊ロボ","五階層方陣","金神","長坂右京","神を目指した夢の成れの果て","ガレーキープ","ヴィッカースメイフライMk4C型","摩天蛟","GHQ戦艦","オウカちゃん","すーぱーそに子");
	}
	$DxCount=Count($Dx);
	$要素数=1;

	Array($Dx[村正],1,"村正",true);
	Array($Dx[三世村正レーサー偽装],2,"三世村正レーサー偽装");
	Array($Dx[三世村正・虎徹装備],3,"三世村正・虎徹装備");
	Array($Dx[銀星号],4,"銀星号",true);
	Array($Dx[正宗],5,"正宗",true);
	Array($Dx[虎徹],6,"虎徹",true);
	Array($Dx[真改],7,"真改");
	Array($Dx[月山従三位],8,"月山従三位");
	Array($Dx[羽黒山],9,"羽黒山");
	Array($Dx[湯殿山],10,"湯殿山");
	Array($Dx[髭切],11,"髭切");
	Array($Dx[膝丸],12,"膝丸");
	Array($Dx[銘伏],13,"銘伏");
	Array($Dx[同田貫],14,"同田貫");
	Array($Dx[青江貞次],15,"青江貞次");
	Array($Dx[厩衆],16,"厩衆");
	Array($Dx[黒瀬童子],17,"黒瀬童子");
	Array($Dx[八剣姫],18,"八剣姫");
	Array($Dx[ここが境界線],19,"ここが境界線");
	Array($Dx[八八式竜騎兵],20,"八八式竜騎兵");
	Array($Dx[八八式指揮官騎],21,"八八式指揮官騎");
	Array($Dx[九〇式竜騎兵],22,"九〇式竜騎兵");
	Array($Dx[九〇式指揮官騎],23,"九〇式指揮官騎");
	Array($Dx[九四式竜騎兵],24,"九四式竜騎兵");
	Array($Dx[九四式指揮官騎],25,"九四式指揮官騎");
	Array($Dx[零零式竜騎兵],26,"零零式竜騎兵");
	Array($Dx[ウィリアム・バロウズ],27,"ウィリアム・バロウズ",true);
	Array($Dx[アスカロンⅦ],28,"アスカロンⅦ");
	Array($Dx[ST05ワーウルフ],29,"ST-05ワーウルフ");
	Array($Dx[GR03ガルム],30,"GR-03ガルム");
	Array($Dx[GR08トロール],31,"GR-08トロール");
	Array($Dx[ST09ユーウォーキー],32,"ST-09ユーウォーキー");
	Array($Dx[アベンジ],33,"アベンジ");
	Array($Dx[ウルティマ・シュール],34,"ウルティマ・シュール");
	Array($Dx[スーパーハウンド],35,"スーパーハウンド");
	Array($Dx[RG10],36,"RG-10");
	Array($Dx[ホットボルト],37,"ホットボルト");
	Array($Dx[セクシー],38,"セクシー");
	Array($Dx[ザ・ゲイシャ],39,"ザ・ゲイシャ");
	Array($Dx[ジェントルダッシュ],40,"ジェントルダッシュ");
	Array($Dx[GUTSEIDER],41,"GUTS EIDER");
	Array($Dx[ヘッド],42,"ヘッド",true);
	Array($Dx[ボーディ],43,"ボーディ",true);
	Array($Dx[レフター],44,"レフター");
	Array($Dx[ライター],45,"ライター");
	Array($Dx[荒覇吐],46,"荒覇吐");

	if($TOKUTEN){
		Array($Dx[空白１],774,"何か");
		Array($Dx[空白２],774,"何か");
		Array($Dx[蜘蛛],901,"三世村正");
		Array($Dx[女王蟻],902,"ニ世村正");
		Array($Dx[天牛虫],903,"正宗");
		Array($Dx[コントラバス],904,"ウィリアム・バロウズ");
		Array($Dx[百足],905,"真改");
		Array($Dx[七節],906,"銘伏");
		Array($Dx[亀],907,"同田貫");
		Array($Dx[足利茶々丸],908,"茶々丸虎徹");
		Array($Dx[バートリィ],909,"バートリィ");
		Array($Dx[鳩],910,"鳩");
		Array($Dx[破壊ロボ],911,"村正");
		Array($Dx[五階層方陣],912,"五階層方陣");
		Array($Dx[金神],913,"金神");
		Array($Dx[長坂右京],914,"長坂右京");
		Array($Dx[神を目指した夢の成れの果て],915,"神を目指した夢の成れの果て");
		Array($Dx[ガレーキープ],916,"ガレーキープ");
		Array($Dx[ヴィッカースメイフライMk4C型],917,"ヴィッカースメイフライMk4C型");
		Array($Dx[摩天蛟],918,"摩天蛟");
		Array($Dx[GHQ戦艦],919,"GHQ戦艦");
		Array($Dx[オウカちゃん],920,"オウカちゃん");
		Array($Dx[すーぱーそに子],921,"すーぱーそに子");

		$DxWhile=49;
		while($DxCount>$DxWhile){
			DxDebug();
			$DxWhile++;
		}
	}

	$DxWhile=1;
	while($DxCount>$DxWhile){
		if(!$format){
			//■デバッグモード用
			if($DebugMode){
				DxDebug();
			}
		}else{
			DxFormat();
		}
		$DxWhile++;
	}
}

function DxFormat()
{
	VariableValue(#,"av_"+$Dx[$DxWhile],false);
	VariableValue(#,"aw_"+$Dx[$DxWhile],false);
}
function DxDebug()
{
	VariableValue(#,"av_"+$Dx[$DxWhile],true);
	if($Dx[$DxWhile][2]){
		VariableValue(#,"aw_"+$Dx[$DxWhile],true);
	}
}

function Dimension()
{
	if($DxFirst){
	}else{
		CreateTexture("DxScreen", 10000, 0, 0, SCREEN);
		Fade("DxNext/MouseUsual/img", 0, 1000, null, false);
		Fade("DxBack/MouseUsual/img", 0, 1000, null, false);
	}

	$DxMaxCount=24;
	$DxMaxPage=Integer($DxCount/$DxMaxCount);
	if(($DxCount%$DxMaxCount)>0){
		$DxMaxPage+=1;
		$DxOverPage=$DxMaxPage+1;
	}

	$X=910;
	$Y=28;
	$DxWhile2=((#DxPage-1)*$DxMaxCount)+1;//ほんとの番号
	$DxWhile=1;//選択番号
	while($DxMaxCount>=$DxWhile){
		$nutbase="Dx"+$DxWhile;

		$nut=$nutbase+"/*/*";
		Delete($nut);
		$nut=$nutbase+"/*";
		Delete($nut);

		CreateChoice($nutbase);
		SetAlias($nutbase, $nutbase);
		if(VariableValue(#,"av_"+$Dx[$DxWhile2])&&($DxCount>$DxWhile2)&&!Strstr($Dx[$DxWhile2],"空白")){
			VariableValue($,"DxCheck"+$Dx[$DxWhile],true);

			//特典用
			if($DxWhile2>48){
				$DxIndex="cgex";
			}else{
				$DxIndex="cg";
			}

			$img1=$DxIndex+"/sys/extra/3d/ネームプレート/"+$Dx[$DxWhile2][1]+"-001.png";
			$img2=$DxIndex+"/sys/extra/3d/ネームプレート/"+$Dx[$DxWhile2][1]+"-002.png";
			$img3=$DxIndex+"/sys/extra/3d/ネームプレート/"+$Dx[$DxWhile2][1]+"-003.png";
		}else{
			VariableValue($,"DxCheck"+$Dx[$DxWhile],false);
			$img1="DxImage0";
			$img2="DxImage0";
			$img3="DxImage0";
		}
		$nut=$nutbase+"/img";
		CreateTexture($nut, 1000, $X, $Y, $img1);
		$nut=$nutbase+"/img2";
		CreateTexture($nut, 1000, $X, $Y, $img3);
		Fade($nut, 0, 0, null, true);

		$nut=$nutbase+"/MouseUsual/hit";
		CreateTexture($nut, 1000, $X, $Y, $img1);
		Request($nut,Erase);
		$nut=$nutbase+"/MouseOver/hit";
		CreateTexture($nut, 1000, $X, $Y, $img2);
		$nut=$nutbase+"/MouseClick/hit";
		CreateTexture($nut, 1000, $X, $Y, $img3);

		if($DxWhile2>=$DxCount||Strstr($Dx[$DxWhile2],"空白")){
			Request($nutbase,UnClickable);
			$nut=$nutbase+"/*/*";
			Request($nut, Erase);
			$nut=$nutbase+"/*";
			Request($nut, Erase);
		}else if(VariableValue(#,"av_"+$Dx[$DxWhile2])!=true){
			Request($nutbase,UnClickable);
			$nut=$nutbase+"/*/*";
			Request($nut, Erase);
		}

		$DxWhile2++;
		$DxWhile++;
		if($DxWhile==13){
			$X=910;
			$Y=238;
		}else{
			$X-=30;
		}
	}

	Fade("*/MouseOver/*", 0, 0, null, false);
	Fade("*/MouseClick/*", 0, 0, null, true);

	//●初期武者表示
	$DxNumber=#SelectDxName;
	$SelectDxIco=#SelectDxNumber-((#DxPage-1)*$DxMaxCount);
	DxFadeSet();

	//●セットネクストフォーカス
	Array($DxForcus,"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","Exit","Next","Back");
	AssocArray($DxForcus,"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","Exit","Next","Back");
	Array($DxForcus[1],Exit,13,2,12);
	Array($DxForcus[2],14,14,3,1);
	Array($DxForcus[3],15,15,4,2);
	Array($DxForcus[4],16,16,5,3);
	Array($DxForcus[5],17,17,6,4);
	Array($DxForcus[6],18,18,7,5);
	Array($DxForcus[7],19,19,8,6);
	Array($DxForcus[8],20,20,9,7);
	Array($DxForcus[9],21,21,10,8);
	Array($DxForcus[10],22,22,11,9);
	Array($DxForcus[11],23,23,12,10);
	Array($DxForcus[12],24,24,1,11);
	Array($DxForcus[13],1,Back,14,24);
	Array($DxForcus[14],2,2,15,13);
	Array($DxForcus[15],3,3,16,14);
	Array($DxForcus[16],4,4,17,15);
	Array($DxForcus[17],5,5,18,16);
	Array($DxForcus[18],6,6,19,17);
	Array($DxForcus[19],7,7,20,18);
	Array($DxForcus[20],8,8,21,19);
	Array($DxForcus[21],9,9,22,20);
	Array($DxForcus[22],10,10,23,21);
	Array($DxForcus[23],11,11,24,22);
	Array($DxForcus[24],12,12,13,23);

	Array($DxForcus[Exit],Next,1,13,24);
	Array($DxForcus[Next],Back,Exit,13,24);
	Array($DxForcus[Back],13,Next,13,24);

	if(#DxPage==2){
		Array($DxForcus[11],11,11,12,10);
		Array($DxForcus[12],12,12,1,11);
		Array($DxForcus[13],1,Back,14,22);
		Array($DxForcus[22],10,10,13,21);
	
		Array($DxForcus[Exit],Next,1,13,22);
		Array($DxForcus[Next],Back,Exit,13,22);
		Array($DxForcus[Back],13,Next,13,22);
	}else if(#DxPage==3){
		Array($DxForcus[10],10,10,11,9);
		Array($DxForcus[11],11,11,12,10);
		Array($DxForcus[12],12,12,1,11);
		Array($DxForcus[13],1,Back,14,21);
		Array($DxForcus[21],9,9,13,20);
	
		Array($DxForcus[Exit],Next,1,13,21);
		Array($DxForcus[Next],Back,Exit,13,21);
		Array($DxForcus[Back],13,Next,13,21);
	}

	$DxWhile=1;
	while(Count($DxForcus)>$DxWhile){
		$basenut="Dx"+$DxForcus[$DxWhile]+"/MouseUsual/hit";
		$up="Dx"+$DxForcus[$DxWhile][0]+"/MouseUsual/hit";
		$down="Dx"+$DxForcus[$DxWhile][1]+"/MouseUsual/hit";
		$left="Dx"+$DxForcus[$DxWhile][2]+"/MouseUsual/hit";
		$right="Dx"+$DxForcus[$DxWhile][3]+"/MouseUsual/hit";
		SetNextFocus($basenut, $up, UP);
		SetNextFocus($basenut, $down, DOWN);
		SetNextFocus($basenut, $left, LEFT);
		SetNextFocus($basenut, $right, RIGHT);
		$DxWhile++;
	}

	//●描画
	if($DxFirst){
		Fade("@スクリーン", 500, 0, null, true);
		Delete("@スクリーン");

		$DxFirst=false;
	}else{
		Fade("DxScreen", 300, 0, null, true);
		Delete("DxScreen");
	}

	//★選択開始
	$DimensionWhile=true;
	while($DimensionWhile){
		$SelectDxIco=0;
		select{
			//★キーダウン系
			if($SYSTEM_keydown_f){
				if(!#SYSTEM_window_full_lock){
					#SYSTEM_window_full=!#SYSTEM_window_full;
					#SYSTEM_window_full_lock=false;
					Wait(300);
					$SYSTEM_keydown_f=false;
				}
			}else if($SYSTEM_r_button_down){
				$DimensionWhile=false;$DxLoop=false;break;
			}
	
			case Dx1{$SelectDxIco=1;}
			case Dx2{$SelectDxIco=2;}
			case Dx3{$SelectDxIco=3;}
			case Dx4{$SelectDxIco=4;}
			case Dx5{$SelectDxIco=5;}
			case Dx6{$SelectDxIco=6;}
			case Dx7{$SelectDxIco=7;}
			case Dx8{$SelectDxIco=8;}
			case Dx9{$SelectDxIco=9;}
			case Dx10{$SelectDxIco=10;}
			case Dx11{$SelectDxIco=11;}
			case Dx12{$SelectDxIco=12;}
			case Dx13{$SelectDxIco=13;}
			case Dx14{$SelectDxIco=14;}
			case Dx15{$SelectDxIco=15;}
			case Dx16{$SelectDxIco=16;}
			case Dx17{$SelectDxIco=17;}
			case Dx18{$SelectDxIco=18;}
			case Dx19{$SelectDxIco=19;}
			case Dx20{$SelectDxIco=20;}
			case Dx21{$SelectDxIco=21;}
			if(#DxPage!=3){
				case Dx22{$SelectDxIco=22;}
			}
			if(#DxPage!=2&&#DxPage!=3){
				case Dx23{$SelectDxIco=23;}
				case Dx24{$SelectDxIco=24;}
			}

			case DxExit{
				//Request("@決定サウンズ", Stop);
				//SetVolume("@決定サウンズ", 0, 1000, NULL);
				//Request("@決定サウンズ", Play);
				$DimensionWhile=false;$DxLoop=false;break;
			}case DxNext{
				//Request("決定サウンド", Stop);
				//Request("決定サウンド", Play);
				$DimensionWhile=false;
				#DxPage++;
				if(#DxPage==$DxOverPage){#DxPage=1;}
			}case DxBack{
				//Request("決定サウンド", Stop);
				//Request("決定サウンド", Play);
				$DimensionWhile=false;
				#DxPage--;
				if(#DxPage==0){#DxPage=$DxMaxPage;}
			}
		}

		if($SelectDxIco!=0&&VariableValue($,"DxCheck"+$Dx[$SelectDxIco])){
			DxFade();
		}
	}
}


function DxFade()
{
	CreateTexture("スクリーン", 3000, 0, 0, SCREEN);

	$DxNumber=$SelectDxIco+((#DxPage-1)*$DxMaxCount);
	#SelectDxNumber=$DxNumber;
	#SelectDxName=$Dx[$DxNumber];
	DxFadeSet();

	Fade("スクリーン", 300, 0, null, true);
	Delete("スクリーン");

	$SelectDxIco=0;
}

function DxFadeSet()
{
	//特典用
	if(#SelectDxNumber>48){
		$DxIndex="cgex";
	}else{
		$DxIndex="cg";
	}

	$mov=String("dx/3d/ex_%03d.ngs",$Dx[$DxNumber][0]);
	$img1=$DxIndex+"/sys/extra/3d/ネームプレート大/"+$Dx[$DxNumber][1]+".png";
	$img2=$DxIndex+"/sys/extra/3d/各スペック/"+$Dx[$DxNumber][1]+"スペック.png";
	if(VariableValue(#,"aw_"+$Dx[$DxNumber])){
		$img2="cg/sys/extra/3d/各スペック/"+$Dx[$DxNumber][1]+"（開放）スペック.png";
	}

	CreateTexture("DxName", 1000, 480, 28, $img1);
	CreateTexture("DxSpec", 1000, 60, 436, $img2);
	CreateMovie("DxMovie", 1000, 80, 28, true, false, $mov);
	$nut="Dx"+$SelectDxIco+"/img2";
	Fade("Dx*/img2", 0, 0, null, true);
	Fade($nut, 0, 1000, null, true);
}
