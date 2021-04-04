//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_004.nss_MAIN
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
	#bg093_山間の村b_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_005.nss";

}

scene md01_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_003.nss"

//◆村、炎上
//◆喚声やら悲鳴やら
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 5000, "#000000");
	OnBG(100,"bg093_山間の村b_03.jpg");
	//OnBG(100,"bg093_山間の村b_03.jpg");
	CreateSE("SEL01","se背景_ガヤ_建物炎上_L");
	CreateSE("SEL01b","se背景_ガヤ_悲鳴01");
	CreateProcess("プロセス１", 150, 0, 0, "fire01");
	CreateProcess("プロセス２", 150, 0, 0, "fire02");
	CreateProcess("プロセス３", 150, 0, 0, "fire03");
	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	MusicStart("SEL01b",2000,1000,0,1000,null,true);

/*
//あきゅん「演出：テストで降らせています」
	//$SYSTEM_effect_drop_image = "cg/ef/ゆっくり_S.png";
	$SYSTEM_effect_drop_image = "cg/ef/火の粉１.png";
	$SYSTEM_effect_drop_dencity = 30;
	$SYSTEM_effect_drop_speed = 3;
	$SYSTEM_effect_drop_swing = 30;
	//$SYSTEM_effect_drop_rotate_z = 360;
	CreateEffect("絵効果火粉壱", 2000, Center, Middle, 1030, 580, "Drop");
	SetAlias("絵効果火粉壱","絵効果火粉壱");
	Fade("絵効果火粉壱", 0, 1000, null, true);

	//$SYSTEM_effect_drop_image = "cg/ef/ゆっくり_S.png";
	$SYSTEM_effect_drop_image = "cg/ef/火の粉2.png";
	$SYSTEM_effect_drop_dencity = 20;
	$SYSTEM_effect_drop_speed = 5;
	$SYSTEM_effect_drop_swing = 90;
	//$SYSTEM_effect_drop_rotate_z = 360;
	CreateEffect("絵効果火粉弐", 2000, Center, Middle, 1030, 580, "Drop");
	SetAlias("絵効果火粉弐","絵効果火粉弐");
	Fade("絵効果火粉弐", 0, 1000, null, true);

	//$SYSTEM_effect_drop_image = "cg/ef/ゆっくり_S.png";
	$SYSTEM_effect_drop_image = "cg/ef/火の粉3.png";
	$SYSTEM_effect_drop_dencity = 10;
	$SYSTEM_effect_drop_speed = 10;
	$SYSTEM_effect_drop_swing = 180;
	//$SYSTEM_effect_drop_rotate_z = 360;
	CreateEffect("絵効果火粉参", 2000, Center, Middle, 1030, 580, "Drop");
	SetAlias("絵効果火粉参","絵効果火粉参");
	Fade("絵効果火粉参", 0, 1000, null, true);

	//Zoom("絵効果火粉*", 0, 2000, 2000, null, true);
	Request("絵効果火粉*", AddRender);
	Rotate("絵効果火粉*", 0, @0, @0, @-125, null,true);
*/

	WaitKey(2000);

	SetFwC("cg/fw/fw二世村正_叱咤.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0040010a15">
「御父、もういかぬ！
　敵兵の数は百や二百ではない」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0040020a15">
「このままでは皆殺しぞ！」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040030b30">
「……おのれ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL01b", 1000, 0, null);
	FadeDelete("絵暗転", 2000, true);

	StR(1000, @-30, @0,"cg/st/st二世村正_通常_私服.png");
	StL(1000, @0, @0,"cg/st/st始祖村正_通常_私服.png");

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0040040a01">
「母様、怪我……！」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0040050a15">
「構うでない。
　流れ矢が掠めただけだ」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0040060a15">
「母より自分の心配をせよ。
　焼けて崩れた家の下敷きにでもなろうもの
なら、助からぬぞ」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0040070a01">
「う、うん……」

{	Move("@StR*", 300, @30, @0, DxlAuto, false);
	FadeStR(300,false);
	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0040080a15">
「御父、とにかく今は<RUBY text="ひ">退</RUBY>こう。
　裏里まで逃れれば、奴らも追って来られぬ」

{	FadeStL(300,false);
	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040090b30">
「……」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0040100a15">
「御父！」

{	FwC("cg/fw/fw始祖村正_怒り.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040110b30">
「……何故だ。
　北朝の軍がここまで攻め入って来るなど、
有り得んことだ！」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040120b30">
「こんな筈では……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//◆浦夢
	StL(1000, @30, @0,"cg/st/st浦夢_通常_私服a.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw浦夢_頭巾口閉.png");

//嶋：修正（来られない）【090930】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0040130b16">
「長島を越えない限り、北朝はここまで来れ
ない……ですか？」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040140b30">
「浦夢殿……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0040150b16">
「では、長島は落ちたのでしょう」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040160b30">
「馬鹿な！
　今、長島を預かるのは他ならぬ飽間様ぞ」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040170b30">
「あの方なら、たとえ万の大軍を敵としても
数日は持ち堪える筈……」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0040180b16">
「戦えば、そうでしょう。
　けれど、戦わなければ、どうですか？」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040190b30">
「な、何!?」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0040200b16">
「飽間どのが北朝の軍勢を素通しにしたなら
……」

{	FwC("cg/fw/fw始祖村正_怒り.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040210b30">
「戯けたことを申すな!!」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0040220b16">
「……」

{	FwC("cg/fw/fw始祖村正_怒り.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040230b30">
「確かに当世、武人といえばどいつも達磨よ。
　<RUBY text="あっち">北朝</RUBY>へ転がり<RUBY text="こっち">南朝</RUBY>へ転がり、風向き次第で
旗幟を変えよる」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040240b30">
「だが飽間様は違うっ！
　あの方は、」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040250b30">
「……あの方だけは……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0040260b16">
「村正どの……」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0040270a15">
「……御父。
　今は考えまい」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0040280a15">
「今は逃げねばならぬ。
　忘れたか。御父は大和一の劒冑を打てと、
先の帝より勅を賜った身」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0040290a15">
「ここで命を危うくしてはならぬ！」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0040300a01">
「爺様」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040310b30">
「……くっ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_005.nss"