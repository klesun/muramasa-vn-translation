//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_004.nss_MAIN
{

	$TITLE_NOW=" ――――　悪鬼編　―――― ";

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
	#bg016_公園b_01=true;
	#bg007_若宮大路b_01=true;
	#bg009_鎌倉住宅街b_01=true;
	#bg013_鎌倉俯瞰d_01=true;
	#bg013_鎌倉俯瞰d_02=true;
	#bg013_鎌倉俯瞰d_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_005.nss";

}

scene md06_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_003.nss"


//◆雨の音
//◆公園？
//◆小ウェイト
//◆村正
	PrintBG("上背景", 30000);
	CreateSE("SEL01","se自然_水_雨音02_L");
	MusicStart("SEL01",2000,500,0,1000,null,true);
	CreateColorSP("黒", 3000, "BLACK");

	CreateColorSP("もうひとつの黒", 140, "BLACK");
	OnBG(150, "bg016_公園b_01.jpg");
	FadeBG(0, true);
	Delete("上背景");

	$SYSTEM_effect_rain_dencity = 40;
	$$SYSTEM_effect_rain_speed = 128;
	CreateEffect("絵効果雨", 2000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);

	FadeDelete("黒", 4000, true);

	WaitKey(800);

	SoundPlay("@mbgm31", 0, 1000, true);


	StR(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0040010a01">
「……御堂……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0040020a00">
「…………」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0040030a01">
「風邪を引いてしまうから……
　ね、もう帰りましょう……？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0040040a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト

	WaitKey(1000);

	SetVolume("SEL*", 2500, 0, null);

//◆フェードアウト
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	DeleteStA(0,true);
	Delete("@OnBG*");
	Delete("絵効果雨");

	WaitPlay("SEL*", null);

	CreateColorSP("絵色黒覆下", 10000, "#000000");
	CreateColorSP("絵色黒覆", 15010, "#000000");
	Move("絵色黒覆", 0, -512, @0, null, true);

	CreateTextureSP("序文", 15000, Center, Middle, "cg/sys/Telop/tp_悪鬼編序文.png");
	Zoom("序文", 0, 700, 700, null, true);
	Request("序文", Smoothing);

	Fade("絵色黒", 2000, 0, null, true);

	WaitKey(2000);

	FadeDelete("絵色黒覆", 2000, true);

	WaitKey(4000);

	Fade("絵色黒", 3000, 1000, null, true);
	Delete("序文");
	Wait(2000);

/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　これは英雄の物語ではない。

　装甲悪鬼村正の物語である。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

*/

//◆タイトル：装甲悪鬼村正　悪鬼編
	CreateTextureSP("悪鬼編", 15000, Center, Middle, "cg/sys/Telop/lg_悪鬼編.png");
	Fade("絵色黒", 2000, 0, null, true);

	WaitKey(3000);

	Fade("絵色黒", 2000, 10000, null, true);


//◆※この編でbg013を使う場合はbg013bにすること
//◆鎌倉市街・昼
	OnBG(130, "bg013_鎌倉俯瞰d_01.jpg");
	FadeBG(0, true);

	Fade("絵効果雨", 0, 1000, null, true);

	Delete("悪鬼編");
	Delete("もうひとつの黒");
	Delete("絵色黒覆下");
	FadeDelete("絵色黒", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　争乱は野に満つ。

　天文学者を一人残らず絶句させた怪星は既に無い。
　しかし星の唄に導かれた戦火までもが陽炎のように
消え失せてくれることはなく――国内にも国外にも、
吶喊の響きが渦巻いていた。

　人は人を殺し、人に殺される。
　人は死んで死骸となり、その背に次の死骸を積む。

　天は燃え、風は猛り、地は腐りゆく。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg012_鎌倉駅前周辺_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0040050a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　俺は生きていた。

　確かに自分で自分を殺したのに。
　闇に沈んで二度と浮かび上がらぬ筈の意識は、どう
してか目覚めを迎え、全てが終わった世界を眺めたの
だった。

　光が最後の力で俺を癒したのかもしれないと、村正
は言った。
　証拠は無い。だが俺も、ほかに思い当たるところは
なかった。

　だとすれば、光はなぜ俺を生かしたのだろう。
　
　そう考えるようになったのは最近のことで、最後の
戦いの後しばらくは、疑問など思い浮かばなかった。

　これはこれで悪くなかろうとだけ思っていた。
　俺には約束があったのだ。舞殿宮そして養父との間
に――全てが終わった時、湊斗景明の罪状を告発して
処刑するという。

　俺の重ねてきた悪行に、法と正義の裁きを下し。
　命を散らされた人々の怒りと嘆きに報いる。<k>
　
　その約束だった。

　しかし、それは守られなかった。
　俺の所業の全てを知る二人、告発者たるべき彼らは、
俺を絞首台へ送る責務について黙殺を貫いた。

　何を言っても、今は休めと繰り返すだけだった。
　やがて繁忙を理由に、面会も許されなくなった。

　そうして俺は死なずにいる。

　今日も建朝寺の門を叩き、若い僧にやんわりと追い
返され、真っ直ぐ帰る気にはなれず当て<RUBY text="ど">処</RUBY>もなく鎌倉
の町を彷徨い歩きながら。
　疼きのような思いを抱える。

　何故、俺は生きているのか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg009_鎌倉住宅街a_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　生き永らえたこの身を浸すのは悔恨だけだ。

　光を殺した事。

　守るべきであったもの、
　何に代えても救わなくてはならなかったものを、
　
　俺の手が破壊した。

　……悔いる。

　何か手立てがあったのではないか、と。

　ああする以外になかった、と思えば――
　やはり悔いる。

　殺すなら、何故もっと早くに殺さなかったのか。

　決断と行動が遅れたばかりに、災禍の規模と被害者
の数は途方もないものになった。
　今なお、残り火が世界を焼いている。

　二年前、光をすぐに殺せていたなら、こんな事には
ならなかった。

　……悔いる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆移動
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


}

..//ジャンプ指定
//次ファイル　"md06_005.nss"