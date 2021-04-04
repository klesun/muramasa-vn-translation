//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_022a.nss_MAIN
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

//	$Kanae_Flag = 3;
//	$Ichizyou_Flag = 4;

//嶋：特殊仕様です
	if($ma04_022a_routeFlag==true){$ma04_022a_routeFlag = false;}
	else{$Others_Flag = $Others_Flag+4;SetHex();}

	RouteChicker();

	if($RC_N["アナザー"] < $RC_N["一条"] && $RC_N["アナザー"] < $RC_N["香奈枝"] && $RC_N["アナザー"] < $RC_N["村正"]){

		SatugaiSystem();
		judgment_of_count();

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_Oth";
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

		$グレイワンド殺害 = true;
		$PreGameName = $GameName;
		$GameName = "ma04_023.nss";

	}else if($RC_N["一条"] < $RC_N["アナザー"] && $RC_N["一条"] < $RC_N["香奈枝"] && $RC_N["一条"] < $RC_N["村正"]){
		$PreGameName = $GameName;
		$GameName = "ma04_022b.nss";
	}else if($RC_N["香奈枝"] < $RC_N["アナザー"] && $RC_N["香奈枝"] < $RC_N["一条"] && $RC_N["香奈枝"] < $RC_N["村正"]){
		$PreGameName = $GameName;
		$GameName = "ma04_022b.nss";
	}else if($RC_N["村正"] < $RC_N["アナザー"] && $RC_N["村正"] < $RC_N["一条"] && $RC_N["村正"] < $RC_N["香奈枝"]){
		$PreGameName = $GameName;
		$GameName = "ma04_022b.nss";
	}else{

		SatugaiSystem();
		judgment_of_count();

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_Oth";
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

		$グレイワンド殺害 = true;
		$PreGameName = $GameName;
		$GameName = "ma04_023.nss";
	}

	//▼ルートフラグ、選択肢、次のGameName

//	$GameName = "ma04_022b.nss";
//	$GameName = "ma04_023.nss";


}

scene ma04_022a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_022.nss"

//●娘だ
	PrintBG("上背景", 30000);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　そうだ。
　確かにこの少女は、<RUBY text="・・・・・・">あいつと同じ</RUBY>――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆好感度画面表示
//◆アナザーに＋５？
//◆アナザーが最高値になったらキル判定。このまま進行。
//◆そうでなければ「●違う」"ma04_022b.nss"へ
//$Another_Flag = $Another_Flag+5;
	$ma04_022a_routeFlag = true;
	$Others_Flag = $Others_Flag+4;

	judgment_of_count();

}

//――――――――――――――――――――――――――――――
.次シーン
scene ma04_022a.nss_Oth
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SoundPlay("@mbgm04",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　そう、想った瞬間。
　<RUBY text="・・">呪い</RUBY>が俺を縛った。

　俺は、先刻――
　ガーゲット少佐を殺しているから。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆斬撃。ずばしゅ。
	CreatePlainSP("絵震背景", 200);
	CreateSE("SE01","se戦闘_攻撃_刀刺さる04");
	SL_leftdown(@0, @0,3000);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("絵震背景", 600, 6, 0, 0, 0, 1000, Dxl2, false);
	SL_leftdownfade2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　刃を打ち込む。
　銀色の少女に。

　どうしようもなく似ている、その姿に。

　……驚愕を込めて、少女が俺の瞳を覗いた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆刺す。ずぶ。
	CreateSE("SE01","se戦闘_攻撃_刀刺さる05");
	SL_centerout(@0, @0,3000);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("絵震背景", 600, 0, 6, 0, 0, 1000, Dxl2, false);
	SL_centeroutfade2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　刃先を突き入れる。
　少女の胸に。

　その瞳が、
　
　どうして、と言っていた。

　
　　　　どうして殺すの。
　　　　こんなに、こんなに好きなのに。

　
　　　　　　　　愛して欲しいのに。

　
　　　　　　　　　　お父さん。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/022a0010a00">
「黙れ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬る
	CreateSE("SE01","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵血", 3000, "#CC0000");
	CreateColorSP("絵血２", 3000, "#CC0000");
	CreateColorSP("絵黒地", 1000, "#000000");
	CreateTextureSP("絵刀１", 1100, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	Wait(10);
	Fade("絵血２", 0, 0, null, true);
	Fade("絵血", 1000, 0, DxlAuto, false);
	DrawTransition("絵血", 400, 1000, 0, 100, null, "cg/data/effect_01_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　刃を打つ。
　<RUBY text="・・・・・・・・">想わずにいられぬ</RUBY>、その顔へ。

　それでも少女は訴える。
　俺に愛を訴える。

　
　　　　　　　　　　　好きなの。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/022a0020a00">
「<RUBY text="うるさ">煩</RUBY>い――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざしゅざしゅ
	CreateSE("SE01","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵血２", 0, 1000, null, true);
	Wait(10);
	Fade("絵血", 0, 1000, null, true);
	CreateTextureEX("絵刀２１", 1100, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	CreateTextureEX("絵刀２２", 1100, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	Fade("絵刀２*", 0, 750, null, true);
	CreateSE("SE01b","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵血２", 0, 0, null, true);
	Fade("絵血", 1000, 200, DxlAuto, false);
	DrawTransition("絵血", 400, 1000, 200, 100, null, "cg/data/effect_01_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　
　　　　　　　　　　　愛して。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/022a0030a00">
「死ね」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずしゅずしゅ
	CreateSE("SE01","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵血２", 0, 1000, null, true);
	Wait(10);
	Fade("絵血", 0, 1000, null, true);
	CreateTextureEX("絵刀３１", 1100, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
	CreateTextureEX("絵刀３２", 1100, Center, Middle, "cg/ef/ef017_汎用正面軌道.jpg");
	Fade("絵刀３*", 0, 750, null, true);
	CreateSE("SE01b","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵血２", 0, 0, null, true);
	Fade("絵血", 1000, 400, DxlAuto, false);
	DrawTransition("絵血", 400, 1000, 400, 100, null, "cg/data/effect_01_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　
　　　　　　　　　愛してください。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/022a0040a00">
「死ね」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざっくし
	CreateSE("SE01","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵血２", 0, 1000, null, true);
	Wait(10);
	Fade("絵血", 0, 1000, null, true);
	CreateTextureEX("絵刀４１", 1100, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	Fade("絵刀４*", 0, 750, null, true);
	Fade("絵血２", 0, 0, null, true);
	Fade("絵血", 1000, 600, DxlAuto, false);
	DrawTransition("絵血", 400, 1000, 600, 100, null, "cg/data/effect_01_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　
　　　　　　　　　　愛して――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/022a0050a00">
「死ね」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/022a0060a00">
「死ね」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/022a0070a00">
「死ねぇぇぇぇぇぇぇぇぇぇぇぇぇぇぇぇ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆滅多切り
//◆殺したイメージ
	SetVolume("SE*", 100, 0, null);
	PrintGO("上背景", 15000);
	CreateSE("SE01","se人体_血_血しぶき01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵血", 2000, "#CC0000");
	CreateColorSP("絵黒床", 10, "#000000");
	Delete("上背景");
	Wait(10);
	Delete("絵血");

	SL_centerdam(@0, @0,1500);
	SL_centerdamfade2(10);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/ma04/022a0080a14">
「く」

//【光】
<voice name="光" class="光" src="voice/ma04/022a0090a14">
「くっ」

//【光】
<voice name="光" class="光" src="voice/ma04/022a0100a14">
「あははははは！
　あぁぁはははははははは！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 5000);
	OnBG(100,"bg001_空c_03.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	FadeStL(0,true);
	DrawDelete("上背景", 300, 1000, "slide_02_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　俺は血溜まりの中に立って頭上を見据えた。
　<RUBY text="・・・">後一つ</RUBY>だ。

　銀星号は笑っている。
　今こそ魔王の如く哄笑している。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【光】
<voice name="光" class="光" src="voice/ma04/022a0110a14">
「愉快！　愉快！
　見せてもらったぞ、景明！」

//【光】
<voice name="光" class="光" src="voice/ma04/022a0120a14">
「見事な――
　何とも素晴らしい愛しっぷりだ!!」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/022a0130a00">
「……銀星号ォォ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　殺させたな。
　俺に<RUBY text="・・・・・">こんなもの</RUBY>を、殺させたな。

　殺させて<RUBY text="たの">愉</RUBY>しんだな。

　<RUBY text="ひかる">銀星号</RUBY>――違う――
　
　<RUBY text="まおう">銀星号</RUBY>が!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【光】
<voice name="光" class="光" src="voice/ma04/022a0140a14">
「はははははは！
　あっははははははははははははは!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Move("@StL*", 600, @-60, @0, null, false);
	DeleteStA(600,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　舞い上がる。
　あくまでも優美に――細身の魚が湖水を躍るように。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStR(0,true);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 100, 100, "slide_03_01_0", true);
	DrawDelete("絵暗転", 100, 100, "slide_03_01_0", true);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/022a0150a00">
「逃がすかァァァァァァ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	$残時間=RemainTime("SE01");
	WaitKey($残時間);
	SetVolume("SE*", 200, 0, null);


..//ジャンプ指定?
//次ファイル　"ma04_023.nss"

}


