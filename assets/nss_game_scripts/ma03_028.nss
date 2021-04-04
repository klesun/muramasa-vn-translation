//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_028.nss_MAIN
{


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

//	$Ichizyou_Flag = 4;
//	$Kanae_Flag = 3;
//	$Others_Flag = 4;
//	$Muramasa_Flag = 4;

	if($Others_Flag >= $Ichizyou_Flag && $Others_Flag >= $Kanae_Flag && $Others_Flag >= $Muramasa_Flag){}
	else{judgment_of_count();}

	SatugaiSystem();

	if($その他死亡 == true){
		judgment_of_count();
		$BasGameName = $GameName;
		$GameName = $GameName + "_routeA";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		$操殺害 = true;
		$GameName = "ma03_029.nss";

	}else if($香奈枝死亡 == true){
		$BasGameName = $GameName;
		$GameName = $GameName + "_routeH";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
		$Next_deadGame = "ma03_029.nss";
		$GameName = "mz01_002.nss";
	}else if($一条死亡 == true){
		$BasGameName = $GameName;
		$GameName = $GameName + "_routeH";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
		$Next_deadGame = "ma03_029.nss";
		$GameName = "mz01_001.nss";
	}else if($村正死亡 == true){
		$BasGameName = $GameName;
		$GameName = $GameName + "_routeH";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
//		$Next_deadGame = "ma03_029.nss";
		$GameName = "mz01_003.nss";
	}else{
		judgment_of_count();
		$BasGameName = $GameName;
		$GameName = $GameName + "_routeA";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		$操殺害 = true;
		$GameName = "ma03_029.nss";
	}


}


scene ma03_028.nss
{

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg038_サーキット直線_03.jpg");

	WaitKey();

..//ジャンプ指定
//前ファイル　"ma03_027vs.nss"

}


scene ma03_028.nss_routeH
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

.//●アナザー以外を選択の場合
//●アナザー以外を選択の場合
	PrintBG("上背景", 30000);
	OnBG(100,"bg038_サーキット直線_03.jpg");
	Delete("上背景");

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0280010a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0280020a01">
《そう。
　わかった》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0280030a01">
《なら、せめて……
　あの子が生き延びることを祈りましょう》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0280040a00">
「……ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(0, 2000);

..//ヒロイン殺害スクリプトへ
//◆ヒロイン殺害スクリプトへ


}


//――――――――――――――――――――――――――――――
.//●アナザー選択の場合
//●アナザー選択の場合
scene ma03_028.nss_routeA
{


	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//◆黒画面
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	FadeDelete("上背景",500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　――どのように努力しても。
　彼女を憎むことはできそうになかった。

　嫌うことも。
　その誤り、為した行為の瑕瑾をあげつらうことさえ。

　彼女が父に尽くしたのは孝の道に沿う。
　人としての美しい在り方。

　ただ従い、ただ尽くし、ただ捧げる――
　それは忠孝の一種ではあっても決して高等なもので
はないと、かつて述べた学人がいる。

　俺もその見解に同意できる。

　だが――
　一途な、愚直な孝の姿を前に据えて、賢しらな口を
叩き、未熟と断ずる度量は、俺の持ち合わせるもので
はなかった。

　人として。
　彼女は正しく在ると、心は理屈を超えてそう評する。

　――<RUBY text="・・・">だから</RUBY>。
　俺は皇路操を殺すことになった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆サーキット内
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg038_サーキット直線_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　皇路操は倒れている。
　青い甲鉄が粉々になって、周囲に散らばり、あたか
も菫の花畑のような情景をつくっていた。

　彼女の瞳は俺を映さない。
　既にここにはいないのだとわかった。

　彼女は彼女のいるべき世界へと行った。
　世界の最先端。
　唯一人の、彼女だけの処へ。

　――<RUBY text="レディ・ザ・ソニック">音速領域の姫</RUBY>。
　彼女はもう、この下界には帰ってこない。

　ここに横臥するのは、彼女の名残り。
　彼女を偲ぶ、最後のよすが。

　それを断ち切った。
　完全に。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざぶしゅ。生々しい殺害音
	PrintGO("上背景", 5000);
	CreateColorSP("絵黒地", 10, "#000000");
	Delete("上背景");

	CreateSE("SE01a","se戦闘_攻撃_刀振る01");
	SL_down(@0, @0,1000);

	MusicStart("SE01a",0,1000,0,1100,null,false);
	SL_downfade2(10);
	WaitKey(300);
	CreateSE("SE01b","se人体_血_血しぶき01");
	CreateColorEX("絵血", 150, "#CC0000");
	Fade("絵血", 600, 1000, null, false);
	SL_centerdam(@0, @0,1000);
	MusicStart("SE01b",0,1000,0,1200,null,false);
	SL_centerdamfade2(10);
	WaitAction("絵血", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　――こうして彼女はいなくなり。
　後には俺の、罪だけが残る。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ヒロインキル終了後、合流
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_029.nss"