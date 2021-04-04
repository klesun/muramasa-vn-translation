//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_023.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma04_023.nss","MURMASAIN_ma04_023",true);

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
	#ev925_野太刀断片_e=true;

//$完全香奈枝死亡 = true;
//$完全一条死亡 = true;
//$Kanae_Flag = 4;
//$Ichizyou_Flag = 3;
//$Muramasa_Flag = 1;

	if($グレイワンド殺害 == true){}
	else{judgment_of_count();SatugaiSystem();}

	//▼ルートフラグ、選択肢、次のGameName
	if($グレイワンド殺害 == true){
		$PreGameName = $GameName;
		$GameName = "ma04_024.nss";
	}else{
		if($完全香奈枝死亡 == true){
			if($その他死亡 == true){
				$PreGameName = $GameName;
				$GameName = "ma04_024.nss";
			}else if($一条死亡 == true){
				$Next_deadGame = "ma04_024.nss";
				$GameName = "mz01_001.nss";
			}else if($村正死亡 == true){
				$GameName = "mz01_003.nss";
			}
		}else if($完全一条死亡 == true){
			if($その他死亡 == true){
				$PreGameName = $GameName;
				$GameName = "ma04_024.nss";
			}else if($香奈枝死亡 == true){
				$Next_deadGame = "ma04_024.nss";
				$GameName = "mz01_002.nss";
			}else if($村正死亡 == true){
				$GameName = "mz01_003.nss";
			}
		}else{
			if($その他死亡 == true){
				$PreGameName = $GameName;
				$GameName = "ma04_024.nss";
			}else if($一条死亡 == true){
				$Next_deadGame = "ma04_024.nss";
				$GameName = "mz01_001.nss";
			}else if($香奈枝死亡 == true){
				$Next_deadGame = "ma04_024.nss";
				$GameName = "mz01_002.nss";
			}else if($村正死亡 == true){
				$GameName = "mz01_003.nss";
			}
		}
	}

}

scene ma04_023.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_022a.nss"
//前ファイル　"ma04_022b.nss"

//◆選択分岐、合流
//◆飛翔
	PrintBG("上背景", 30000);
	CreateColorSP("絵白転", 15010, "#FFFFFF");
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵演出背景", 100, -1024, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	Delete("上背景");
	SoundPlay("@mbgm08",0,1000,true);
	CreateSE("SEL01","se戦闘_動作_空走行01_L");
	CreateTextureSP("絵ＳＴ", 100, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	Request("絵ＳＴ", Smoothing);
	Move("絵ＳＴ", 0, @220, @0, null, true);//最終位置
	Move("絵ＳＴ", 0, @1024, @120, null, true);//初期位置
	Zoom("絵ＳＴ", 0, 2000, 2000, null, true);//画面寄り演出
	Shake("絵ＳＴ", 360000, 1, 2, 0, 0, 1000, null, false);

	Move("絵演出背景", 24000, @1024, @0, null, false);

	DrawDelete("絵白転", 150, 1000, "slide_01_03_1", true);
	MusicStart("SEL01",0,1000,0,1400,null,true);
	DrawDelete("絵暗転", 150, 1000, "slide_01_03_1", true);

//プロセスの定義
	CreateProcess("Ｐ村正登場演出", 5000, 0, 0, "MURMASAIN_ma04_023");
	SetAlias("Ｐ村正登場演出","Ｐ村正登場演出");

//プロセススタート
	Request("Ｐ村正登場演出", Start);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　追う。

　母衣が軋む。
　全身の関節が悲鳴を上げる。

　構うものか。
　この太刀をあと一度、繰り出す力があれば良い。

　一太刀だけ――
　あの白銀に！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛ぶ
	WaitAction("Ｐ村正登場演出", null);
	Delete("Ｐ*");

	SetVolume("SEL*", 300, 0, null);
	CreateSE("SEP02","se戦闘_動作_空突進02");
	MusicStart("SEP02",0,1000,0,1200,null,false);
	CreateColorSPadd("絵フラ", 6000, "#FFFFFF");
	Delete("絵ＳＴ");
	Wait(10);
	Fade("絵フラ", 900, 0, null, false);
	DrawDelete("絵フラ", 600, 1000, "slide_05_00_1", true);

//◆銀星号、疾昇
	CreateColorSP("絵黒", 1, "#CC0000");
	CreateColorSP("絵黒", 8500, "#000000");
	DrawTransition("絵黒", 200, 0, 1000, 500, null, "cg/data/slide_01_03_0.png", true);
	Delete("絵演出背景");
	CreateTextureSP("絵ＥＦ", 100, -328, 0, "cg/ef/resize/ef019_銀星号突貫02tll.jpg");
	Request("絵ＥＦ", Smoothing);
	SetBlur("絵ＥＦ", true, 3, 500, 50, false);
	Zoom("絵ＥＦ", 0, 2000, 2000, null, true);
	DrawDelete("絵黒", 200, 500, "slide_01_03_1", false);
	Wait(100);
	CreateSE("SE03","se戦闘_動作_空上昇01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("絵ＥＦ", 600, @0, -1980, DxlAuto, false);
	Zoom("絵ＥＦ", 600, 1000, 1000, null, false);
	Wait(600);
	CreateSE("SE04","se戦闘_動作_空上昇01");
	MusicStart("SE04",0,1000,0,750,null,false);
	Move("絵ＥＦ", 8000, @0, -780, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　迅い――
　遠い！

　だが知ったことか。
　その姿が見える限り。
　その銀色が見える限り。

　追ってやる。
　追いついてやる。

　その羽根をつかみ――
　引き摺り落として――

　斬る。
　斬る！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――




if($グレイワンド殺害 == true){
//if_start

//――――――――――――――――――――――――――――――
.//◆「●娘だ」選択でそのまま殺した場合
	CreateColorSP("絵暗転", 10000, "#000000");
	DrawTransition("絵暗転", 100, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	CreateTextureSP("絵ＥＦ", 100, -512, -141, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	Move("絵ＥＦ", 300, -615, -196, AxlDxl, false);
	DrawDelete("絵暗転", 100, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0230010a00">
「お前もだ！
　お前も殺す！」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0230020a00">
「お前も殺す！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

}else{
//else_start


//――――――――――――――――――――――――――――――
.//◆「●違う」ルートの場合

	CreateColorSP("絵暗転", 10000, "#000000");
	DrawTransition("絵暗転", 100, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	CreateTextureSP("絵ＥＦ", 100, -512, -141, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	Move("絵ＥＦ", 300, -615, -196, AxlDxl, false);
	DrawDelete("絵暗転", 100, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0230030a00">
「銀星号……
　お前を斬る！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


}
//if_end




//――――――――――――――――――――――――――――――
.//◆合流

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【光】
<voice name="光" class="光" src="voice/ma04/0230040a14">
「良いとも。
　景明……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　既に、遥か遠いのに。
　その声はどうしてか、酷く近くに聴こえた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【光】
<voice name="光" class="光" src="voice/ma04/0230050a14">
「この<RUBY text="かお">顔貌</RUBY>を見て。
　確と見て」

//【光】
<voice name="光" class="光" src="voice/ma04/0230060a14">
「刃を差し入れてくれると云うならば」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　天頂で、銀光が煌いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【光】
<voice name="光" class="光" src="voice/ma04/0230070a14">
「いつなりと――
　その<RUBY text="あい">剣</RUBY>を受け入れよう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　銀の装甲が失われる。
　一瞬――一瞬だけ――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光の姿。口元から下だけ？　レイヤー重ねで？

	PrintGO("上背景", 20000);

	CreateTextureEX("絵ＳＴ100", 1100, Center, Middle, "cg/st/resize/st光_通常_私服_l.png");
	CreateStencil("マスク１",1110,center,Middle,128,"cg/st/resize/st光_通常_私服_l.png",false);
	SetAlias("マスク１","マスク１");
	CreateColor("マスク１/色１", 1120, 0, 0, 1024, 576, "BLACK");

	Move("絵ＳＴ100", 0, @200, @200, null, true);
	Move("マスク１", 0, @200, @200, null, true);
	DrawTransition("マスク１/色１", 0, 0, 500, 100, null, "cg/data/slide_02_00_0.png", true);


	Fade("マスク１/色１", 300, 1000, null, false);
	Fade("絵ＳＴ100", 300, 800, null, true);

	CreateTextureSP("絵背景100", 100, Center, -576, "cg/bg/resize/bg001_空c_03l.jpg");

	OnSE("se特殊_鎧_装着04",1000);


	FadeDelete("上背景", 500, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0230080a00">
「――あ――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想・養母
//あきゅん「演出：回想シーンの中身適当」
	OnSE("se擬音_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 15000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想背景", 6100, Center, Middle, "cg/ev/ev008_赤子を抱える女.jpg");

	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 400, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　
　　　　　　　　　　『景明』

　
　　　　　　　　　『約束して』

　
　　　　　　　『――この子を――』

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	WaitKey(500);

	Fade("絵白転", 400, 1000, null, true);
	Delete("絵ＳＴ100");
	Delete("マスク*");
	Delete("絵回想*");
	DeleteStA(0,true);
	FadeDelete("絵白転", 600, true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0230090a00">
「あ――――あ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号、天頂へ
	PrintGO("上背景", 15000);
	CreateColorSP("絵黒", 5500, "#000000");
	CreateTextureSP("絵ＥＦ", 100, Center, -794, "cg/ef/resize/ef019_銀星号突貫02tll.jpg");
	Move("絵ＥＦ", 0, @200, @0, null, true);
	Rotate("絵ＥＦ", 0, @0, @180, @0, null,true);
	Request("絵ＥＦ", Smoothing);
	CreateSE("SE02","se戦闘_動作_空上昇01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	DrawDelete("上背景", 200, 1000, "slide_02_01_1", true);
	Move("絵ＥＦ", 400, @0, -834, Dxl2, false);
	DrawDelete("絵黒", 200, 1000, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　銀の騎影が天空の<RUBY text="はて">涯</RUBY>へ至る。
　もはや届かない――決して。

　<RUBY text="ただひと">唯独</RUBY>りの世界。月の宮。
　その座へ女王の気高さで君臨し。

　白銀の武者は、一節の<RUBY text="うた">詩</RUBY>を唄った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE05","se戦闘_動作_空突進02");
	MusicStart("SE05",0,1000,0,1000,null,false);
	CreateTextureEX("絵ＥＦ２", 2000, -420, -276, "cg/ev/resize/ev901_銀星号天座失墜小彗星_am.jpg");
	Move("絵ＥＦ２", 200, -353, @0, null, false);
	Fade("絵ＥＦ２", 300, 1000, null, false);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【光】
<voice name="光" class="光" src="voice/ma04/0230100a14">
《吉野御流合戦礼法〝<RUBY text="つきかけ">月片</RUBY>〟が崩し……》

//【光】
<voice name="光" class="光" src="voice/ma04/0230110a14">
《<RUBY text="フォーリンダウン">天座失墜</RUBY>――――<RUBY text="レイディバグ">小彗星</RUBY>》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フォーリンダウン・レイディバグ
//◆アニメか？
//あきゅん「演出：アニメ？」

	SetVolume("@mbgm*", 500, 0, null);

	MovieSESet(20000,"mv小彗星_c","se特殊_mv用_小彗星_c");

	MovieSEStart(2000);
	CreateColorSPadd("絵白", 15000, "#FFFFFF");
	Delete("絵ＥＦ２");


	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/resize/bg042_江ノ島沿岸_03_ex01.jpg");
	CreateTextureSP("絵背景200", 10000, Center, Middle, "cg/bg/resize/bg042_江ノ島沿岸_03_ex02.png");

	Request("絵背景100", Smoothing);
	Request("絵背景200", Smoothing);

	Zoom("絵背景100", 0, 600, 600, null, true);
	Zoom("絵背景200", 0, 600, 600, null, true);

	CreateTextureEXadd("絵ef200", 2000, -55, -678, "cg/ef/resize/ef020_村正突貫02tl.jpg");
	CreateTextureEXadd("絵ef300", 2000, 313, -1103, "cg/ef/resize/ef019_銀星号突貫02t2l.jpg");
	CreateColorEXadd("城幕１", 11000, "White");
	CreateColorEXmul("城幕２", 5000, "Black");

	Request("絵ef200", Smoothing);
	Request("絵ef300", Smoothing);

	Rotate("絵ef200", 0, @0, @0, @+30, null,true);
	Rotate("絵ef300", 0, @0, @0, @+30, null,true);

	CreateSE("SE01","se戦闘_動作_空突進07");
	CreateSE("SE02","se戦闘_動作_空突進08");
	CreateSE("SE03","se戦闘_衝撃_攻撃交錯01");
	CreateSE("SE04","se戦闘_破壊_爆発09");


	WaitKey(600);

	FadeDelete("絵白", 500, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵ef200", 0, 1000, null, false);
	DrawTransition("絵ef200", 300, 0, 1000, 100, null, "cg/data/slide_04_00_1.png", false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵ef300", 0, 1000, null, false);
	DrawTransition("絵ef300", 500, 0, 1000, 100, null, "cg/data/slide_04_00_0.png", false);

	Wait(200);

	DrawTransition("絵ef200", 600, 1000, 0, 100, null, "cg/data/slide_04_00_0.png", false);
	DrawTransition("絵ef300", 600, 1000, 0, 100, null, "cg/data/slide_04_00_1.png", false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Fade("城幕２", 0, 1000, null, false);
	DrawTransition("城幕２", 300, 0, 500, 100, null, "cg/data/zzex_Slide_01_05_00.png", true);

	Fade("城幕２", 300, 0, null, false);
	DrawTransition("城幕２", 300, 600, 0, 100, Dxl1, "cg/data/zzex_Slide_01_05_00.png", false);

	Wait(500);

	MusicStart("SE04",0,1000,0,1000,null,false);
	Fade("城幕１", 0, 1000, null, false);
	DrawTransition("城幕１", 500, 0, 1000, 100, Dxl1, "cg/data/zzex_Slide_01_05_00.png", true);

	Delete("絵ef200");
	Delete("絵ef300");
	Delete("城幕２");

	Shake("絵背景200", 3000, 3, 1, 0, 0, 1000, null, false);
	Fade("城幕１", 5000, 0, null, false);

	Wait(3000);

	SetVolume("SE*", 2000, 0, null);

	CreateVOICE("ウォルフ","ma04/0230120a13");
	MusicStart("ウォルフ",0,1000,0,1000,null,false);

		$ma04_VoiceTime=RemainTime("ウォルフ");
		WaitKey($ma04_VoiceTime);

	CreateVOICE("ウォルフ","ma04/0230130a13");
	MusicStart("ウォルフ",0,1000,0,1000,null,false);


		$ma04_VoiceTime=RemainTime("ウォルフ");
		WaitKey($ma04_VoiceTime);

//◆ＣＧ：遠景・駆け上がる赤い星ＶＳ駆け下りる銀の星
//◆ずどーん。激突
//◆激突の残滓
//◆カメラ引きます。
//◆どこか（江ノ島？）の断崖から空を見上げるウォルフ教授
/*
	CreateTextureSP("絵ＥＶ54", 5100, Center, Middle, "cg/ev/ev125_空を見上げるウォルフ教授_d.jpg");
	CreateTextureSP("絵ＥＶ53", 5100, Center, Middle, "cg/ev/ev125_空を見上げるウォルフ教授_c.jpg");
	CreateTextureSP("絵ＥＶ52", 5100, Center, Middle, "cg/ev/ev125_空を見上げるウォルフ教授_b.jpg");
	CreateTextureSP("絵ＥＶ51", 5100, Center, Middle, "cg/ev/ev125_空を見上げるウォルフ教授_a.jpg");
	FadeDelete("絵白", 1000, true);
	WaitKey(1000);
	FadeDelete("絵ＥＶ51", 1000, true);
	WaitKey(1000);
	FadeDelete("絵ＥＶ52", 1000, true);
	WaitKey(1000);
	FadeDelete("絵ＥＶ53", 1000, true);
	WaitKey(1000);
*/

/*
//◆ボイスのみ。テキスト表示無し
	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/ma04/0230120a13">
「……フッフッフッフッフ……」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/ma04/0230130a13">
「ズィーク・ハイル……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
*/


	ClearWaitAll(3000, 2000);

//◆浜辺
//◆野太刀の脛巾
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg041_片瀬海岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
//あきゅん「SE：さざ波の音ループ」
	CreateSE("SEL01","se自然_水_流れる01_L");//ダミー注意
	MusicStart("SEL01",1600,1000,0,1000,null,true);
	WaitKey(2000);
	FadeDelete("絵暗転", 2000, true);
	WaitKey(2000);

	SetVolume("SEL*", 1000, 600, null);
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	WaitKey(100);
	CreateTextureSP("絵ＥＶ", 3100, Center, Middle, "cg/ev/ev925_野太刀断片_e.jpg");
	FadeDelete("絵フラ", 600, true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0230140a01">
《御堂……
　野太刀の断片……<RUBY text="はばき">脛巾</RUBY>よ》

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0230150a00">
「ああ……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆げっと。
	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	Delete("絵ＥＶ*");
	WaitKey(100);
	SetVolume("SEL*", 2000, 1000, null);
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0175]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0230160a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0230170a01">
《……御堂》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0230180a01">
《貴方は……
　本当に、<RUBY text="あれ">銀星号</RUBY>を討てる？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0230190a00">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0230200a00">
「やらねば……
　……ならぬ……」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0230210a00">
「……やらねばならないのだ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がくっ。膝をつく。
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);

//◆ばた。倒れる。
	CreateSE("SE02","se戦闘_衝撃_鎧転倒03");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreatePlainSP("絵震用", 1000);
	FadeFR2("絵震用",0,1000,200,0,0,16,DxlAuto, false);
	WaitPlay("SE02", null);

//◆ゆっくりフェードアウト
	ClearWaitAll(3000, 0);

//◆グレイワンドを殺してない場合はヒロイン殺害処理

..//ジャンプ指定
//次ファイル　"ma04_023.nss"


}



//２３４５６７８９０１２３４５６７８９０１２３４



.//プロセス用======================================================

..//村正登場演出
function MURMASAIN_ma04_023()
{
	CreateSound("SEP01", SE, "sound/se/se戦闘_動作_空突進02");
	SetVolume("SEP01", 0, 0, NULL);
	SetAlias("SEP01", "SEP01");

	Request("SEP01", "Play");
	SetVolume("SEP01", 0, 1000, null);
	Request("SEP01", Disused);

	Move("@絵ＳＴ", 600, @-1024, @-120, Dxl2, true);//画面イン
	Move("@絵ＳＴ", 400, @80, @0, null, true);//少し後退
	Wait(300);

	CreateSound("SEP02", SE, "sound/se/se戦闘_動作_空突進01");
	SetVolume("SEP02", 0, 0, NULL);
	SetAlias("SEP02", "SEP02");

	Request("SEP02", "Play");
	SetVolume("SEP02", 0, 1000, null);
	Request("SEP02", Disused);

	CreateColor("絵フラ", 6000, 0, 0, 1024, 576, "#FFFFFF");
	Request("絵フラ", AddRender);
	SetAlias("絵フラ", "絵フラ");

	Move("@絵ＳＴ", 0, @-80, @0, null, true);//後退分戻る
	Move("@絵ＳＴ", 0, @-2400, @0, DxlAuto, true);//一度画面外へ
	Wait(10);
	Fade("絵フラ", 900, 0, null, false);
	DrawTransition("絵フラ", 600, 1000, 0, 1000, null, "cg/data/slide_05_00_1.png", true);
	Request("絵フラ", UnLock);
	Request("絵フラ", Disused);

	Wait(1200);
	Zoom("@絵ＳＴ", 0, 1000, 1000, null, true);
	Move("@絵ＳＴ", 1600, @2400, @0, DxlAuto, true);
}



