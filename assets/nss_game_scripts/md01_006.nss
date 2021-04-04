//<continuation number="860">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_006.nss_MAIN
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
	#bg004_鄙びた村a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_007.nss";

}

scene md01_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_005.nss"

//◆裏里
//◆わーわー。ちゃんちゃんばらばら。

	PrintBG("上背景", 30000);

	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg004_鄙びた村a_01.jpg");
	CreateSE("SE01","se背景_ガヤ_合戦01");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",2000,1000,0,1000,null,false);
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm36",0,1000,true);

	SetFwC("cg/fw/fw始祖村正_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060010b30">
「襲撃だと……
　馬鹿な！」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060020b30">
「この裏里の在り処は吉野にも教えておらぬ。
　飽間様も知らぬ」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060030b30">
「何処からも漏れていない筈だ……。
　なのに、どうして敵が！」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060040a15">
「……御父……」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060050b30">
「何故……」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060060a15">
「あれを、見よ」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060070a15">
「あの……陣頭の武者を……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆始祖妻の劒冑。なんかの微細アレンジで済ます？
	SetVolume("SE*", 300, 0, null);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	DrawDelete("黒幕１", 150, 100, "slide_01_01_1", true);

	StC(1000, @0, @0,"cg/st/3d始祖妻_立ち_抜刀.png");
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeStC(300,true);

	Wait(500);

	SetFwR("cg/fw/fw始祖村正_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060080b30">
「――――」

{	FwR("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060090a15">
「わかるであろう、御父」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060100a15">
「<RUBY text="あれ">吾</RUBY>らの目には<RUBY text="み">鑑</RUBY>える。
　鑑えてしまうわ……」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060110a15">
「あの劒冑が如何なる物か。
　如何なる<RUBY text="・・">由来</RUBY>を持つか」

{	FwR("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060120b30">
「おお……！」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060130b30">
「し、信じぬ……
　信じたくは……ない！」

{	FwR("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0060140a01">
「……嘘……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆始祖妻劒冑に、始祖妻をちらっと重ねる？
	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	CreateColorSP("絵色黒", 3000, "#000000");
	CreateTextureEX("絵演立絵上", 3110, Center, InBottom, "cg/st/st始祖妻_通常_私服.png");
	CreateTextureEX("絵演立絵", 3100, Center, InBottom, "cg/st/st始祖妻_通常_私服.png");
	Fade("絵演立絵", 0, 750, null, true);
	SetBlur("絵演立絵上", true, 3, 500, 100, false);
	FadeDelete("絵色白", 200, false);
	FadeFR2("絵演立絵上",0,750,200,0,0,20,Dxl2, true);

	CreatePlainSP("絵演板写", 3000);
	Delete("絵色黒");
	Delete("絵演立絵*");
	FadeDelete("絵演板写", 1000, true);

	SetFwR("cg/fw/fw始祖村正_険しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060150b30">
「妻よ！
　なれまでもが裏切ったのか!!」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060160b30">
「敵の手に落ち、屈従して生き延び……
　あまつさえ、我が身を劒冑に鍛えて捧げた
のかっ!!」

{	FwR("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060170a15">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);
	StR(1000, @0, @0,"cg/st/st始祖村正_通常_私服.png");
	FadeStA(0,true);
	DrawDelete("黒幕１", 150, 100, "slide_01_01_0", true);

	SetFwC("cg/fw/fw始祖村正_険しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0000]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060180b30">
「な……何たる世か……
　この世には……もはや何一つ……」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060190b30">
「何一つ……信じるに値するものがない！
　忠義も……血族の絆さえ……！」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060200b16">
「……」

{	FwC("cg/fw/fw始祖村正_怒り.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060210b30">
「お……
　おおおおおおおおおおっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆始祖、駆け出す
	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DeleteStA(300,false);
	Move("@StR*", 300, @-60, @0, Axl2, false);

	SetFwC("cg/fw/fw二世村正_叱咤.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060220a15">
「お……御父!?」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060230b16">
「駄目です！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

//◆始祖妻武者
//◆剣閃
//◆浦夢、割って入る
//◆ずばー。血
	OnSE("se人体_動作_跳躍01",1000);

	CreateWindow("絵窓", 19000, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 19010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 19020, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 19100, 50, -20, "cg/st/resize/3d始祖妻_立ち_抜刀m.png");
	SetBlur("絵窓/絵演立絵装甲", true, 3, 500, 60, true);

	Move("絵窓/絵演立絵装甲", 300, -360, @0, Dxl2, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	CreateColorSP("絵色黒", 20000, "#000000");

	Delete("絵窓");

	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_rightdown2(20010,@0, @0,1500);
	SL_rightdownfade2(10);

	Delete("絵演立");

	CreateSE("SE01b","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	StR(1100, @-60, @0,"cg/st/resize/st浦夢_通常左_私服a.png");
	StCR(1000, @60, @0,"cg/st/st始祖村正_通常_私服.png");
	Shake("@StR*", 900, 3, 0, 0, 0, 1000, null, false);
	Move("@StR*", 900, @30, @10, DxlAuto, false);
	FadeStR(0,false);
	FadeStCR(0,true);
	FadeDelete("絵色黒", 600, true);

	CreateSE("SE01c","se人体_血_たれる01");
	MusicStart("SE01c",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw浦夢_頭巾口開.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060240b16">
「ぐっ……づ……」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060250b30">
「う、浦夢殿？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060260b16">
「いのち……捨てては、いけません。
　あなたには……すること、あります！」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060270b30">
「い、いかぬ……手当てを！」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060280b16">
「大丈夫。
　私、この程度の傷では、死にません」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060290b16">
「そういう身体なのです……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆たかたか。二世と村正が駆け寄ってくる
	OnSE("se人体_動作_後ずさり01",1000);
	StL(1000, @30, @0,"cg/st/st村正_通常_私服.png");
	StCL(1000, @-90, @0,"cg/st/st二世村正_通常_私服.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	Move("@StML*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,false);
	WaitKey(200);
	FadeStCL(300,true);

	SetFwC("cg/fw/fw二世村正_叱咤.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060300a15">
「御父！　浦夢殿！」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0060310a01">
「爺様！」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060320b30">
「うてはいい。
　浦夢殿の怪我を――」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060330b16">
「村正どの。
　あなたは二人を連れて、逃げてください」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060340b16">
「ここは、私が何とかします」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060350b30">
「何を言われる！」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060360b16">
「武者に勝つことはできませんが……
　時間を稼ぐくらいなら、何とかなります」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060370b16">
「さ、早く――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆始祖妻武者
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStA(0,true);
	StL(1000, @-30, @0,"cg/st/3d始祖妻_立ち_抜刀.png");
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStA(300,false);

	DrawDelete("黒幕１", 150, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw浦夢_頭巾口開.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060380b16">
「早く！」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060390b30">
「……」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060400a15">
「御父！」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060410b30">
「で、できぬ……」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060420b30">
「うては……卑怯者になりとうない！」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060430b16">
「村正どの――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆始祖妻武者、接近？　攻撃準備
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @60, @0, DxlAuto, true);

	SetFwC("cg/fw/fw始祖村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060440b30">
「――――」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0060450b16">
「く――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆太刀？
//◆そこへ突然、矢が飛来
//◆ズガーッと武者を貫通
	CreateSE("SE03","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateMovie("絵動画", 4000, Center, Middle, false, false, "dx/mv剣戟_左から右.ngs");
	SetAlias("絵動画","絵動画");
	Request("絵動画", Play);

	Wait(100);

	Request("絵動画", Pause);
	Shake("絵動画", 300, 4, 4, 0, 0, 1000, Dxl2, false);
	CreateSE("SE03b","se戦闘_動作_空上昇01");
	MusicStart("SE03b",0,1000,0,1500,null,false);
	CreateColorEX("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 150, 1000, null, true);
	WaitKey(50);
	CreateSE("SE03c","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE03c",0,1000,0,1000,null,false);
	Delete("絵動画");
	StL(1000, @30, @0,"cg/st/3d始祖妻_立ち_抜刀.png");
	Move("@StL*", 2000, @-30, @10, DxlAuto, false);
	Shake("@StL*", 2000, 3, 0, 0, 0, 1000, DxlAuto, false);
	FadeStA(0,false);
	FadeDelete("絵色白", 1000, true);

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0060460a01">
「……あ……っ」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060470b30">
「何……？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆武者、崩れ落ちる
	CreateSE("SE01","se戦闘_衝撃_鎧転倒01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DeleteStL(300,false);
	Move("@StL*", 600, @-10, @30, DxlAuto, false);
	Shake("@StL*", 600, 3, 0, 0, 0, 1000, DxlAuto, false);

	SetFwC("cg/fw/fw始祖村正_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060480b30">
「これは……武者の矢!?
　何処から――」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060490a15">
「……」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060500a15">
「……御父。
　あれだ」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060510b30">
「…………」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060520b30">
「あの劒冑は……」

{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060530a15">
「ああ。
　……飽間様だ、な」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆フェードイン
	ClearWaitAll(2000, 1000);

//◆劒冑が砕けた。そんなＳＥ
	PrintBG("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	OnBG(100,"bg004_鄙びた村a_01.jpg");
	CreateSE("SE01","se特殊_鎧_装着03");
	CreateSE("SE01a","se戦闘_破壊_鎧05");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	FadeDelete("絵暗転", $残時間, true);

	SoundPlay("@mbgm32",0,1000,true);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0060540a01">
「……婆様……」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0060550a15">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飽間
	StL(1000, @0, @0,"cg/st/st飽間_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw飽間_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060560b50">
「……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060570b30">
「……心鉄の軸を一矢で射抜くか。
　性根は腐り果てても、腕は昔のままのよう
だな。飽間様」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060580b50">
「ああ」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060590b30">
「あなたはこの武者の後詰として来たのでは
ないのか？」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060600b50">
「そうだ」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060610b30">
「……寝返りか」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060620b50">
「情勢がまた変わったのでな。
　佐々木が丹波の<RUBY text="くにしゅう">國衆</RUBY>を連れて吉野に転んだ
……今後、畿内では南朝が盛り返す」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060630b50">
「こやつの首を手土産に、南朝へ帰参を願う
ことにした」

{	FwC("cg/fw/fw始祖村正_怒り.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060640b30">
「恥じぬか、飽間！」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060650b50">
「……」

{	FwC("cg/fw/fw始祖村正_怒り.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060660b30">
「なれの忠義はそんなにも安いのか！
　そこまで……下らぬ男だったのかっ!!」

{	FwC("cg/fw/fw飽間_沈鬱.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060670b50">
「……忠義か」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060680b50">
「あの時までは、わしも己を忠臣だと信じて
おった。
　武運つたなく敗れ死すことはあろうとも、
敵に屈して生き長らえはすまい、とな……」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060690b50">
「だがあの時……北朝の大軍が長島に迫り。
　囲まれたが最後、一門全滅は避けられぬと
悟った刹那」

{	FwC("cg/fw/fw飽間_通常a.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060700b50">
「ふっと、霜が溶けるように、忠義なるもの
の値打ちがわからなくなってしもうた……。
　我が身と一族をそのために<RUBY text="なげう">擲</RUBY>って、本当に
良いのか……と」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060710b50">
「……済まぬな。
　わしの忠義とはその程度……紛い物でしか
なかったようだ」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw始祖村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060720b30">
「……」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060730b30">
「裏切り者め……
　裏切り者め……」

{	FwC("cg/fw/fw始祖村正_怒り.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060740b30">
「裏切り者めがぁっ!!」

{	FwC("cg/fw/fw飽間_沈鬱.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060750b50">
「……」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060760b50">
「わしのことは良い。
　だが村正、妻君のことは憎んでやるな」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060770b50">
「仕方がなかったのだ……」

{	FwC("cg/fw/fw始祖村正_怒り.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060780b30">
「何が無いと云う！
　敵の手中に落ちたなら、自害して果てろと
まではあえて言うまい――だが一本の節義は
通して当然！」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060790b30">
「劒冑を鍛えて献上する者がおろうか!?
　こやつなど……もはや妻でもなければ一族
とも思わぬわ!!」

{	FwC("cg/fw/fw飽間_沈鬱.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060800b50">
「……村正。
　ぬしの妻はな」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060810b50">
「北朝に囚われた後、別の蝦夷と<RUBY text="めあ">娶</RUBY>わされ、
子を産まされたのだ」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060820b30">
「――――」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060830b50">
「そして、その子を盾に取られた。
　子の命が惜しくば、劒冑を打て……とな」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060840b50">
「目の前の子か、遠くの家族か……。
　悩んだすえ、ぬしの妻は我が身を鉄とした
のだ」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0060850b50">
「……恨むまいぞ……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0060860b30">
「………………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


//◆フェードアウト
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_007.nss"