
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu03cbb.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg086_病室_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	if($同行者 == "本家"){call_scene @->md05_004byoushitsu03cbb_ho.nss;}
	else if($同行者 == "統"){call_scene @->md05_004byoushitsu03cbb_su.nss;}
	else if($同行者 == "村正"){call_scene @->md05_004byoushitsu03cbb_mu.nss;}
	else{}

	$PreGameName = $GameName;
	$GameName = "md05_004gameover.nss";

}

scene md05_004byoushitsu03cbb.nss
{

..//ジャンプ指定
//前ファイル　"md05_004byoushitsu03cb.nss"

//●湊斗光を
//◆フラグ分岐



}


//――――――――――――――――――――――――――――――
.//◆※本家
//◆$本家同行_Flag
scene md05_004byoushitsu03cbb_ho.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);

	CreateWindow("絵窓", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 5010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 5020, -180, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, -30, InBottom, "cg/st/st景明汚染_戦闘_制服.png");

	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");

	SetFwC("cg/fw/fw本家_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【本家】
<voice name="本家" class="本家" src="voice/md05/004by0240b52">
「景明、貴様……」

{	FwC("cg/fw/fw本家_怒り.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md05/004by0250b52">
「逆心を起こしたか!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぶす。
	OnSE("se戦闘_攻撃_刀刺さる01", 1000);

	CreateColorEX("フラッシュ赤", 20000, "#990000");
	Fade("フラッシュ赤",300,1000,null,true);

	Delete("絵窓");

	FadeDelete("フラッシュ赤",300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　老人は短刀を抜き、あなたの胸を突き刺した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆白銀光
//◆→●失敗

	CreateColorEXadd("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",1000,1000,null,true);
	SetVolume("@mbgm*", 1000, 0, null);



..//ジャンプ指定
//次ファイル　"md05_004gameover.nss"

}


//――――――――――――――――――――――――――――――
.//◆※統
//◆$統同行_Flag
scene md05_004byoushitsu03cbb_su.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);
	CreateWindow("絵窓", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 5010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 5020, -180, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, -30, InBottom, "cg/st/st景明汚染_戦闘_制服.png");
	SoundPlay("@mbgm30", 0, 1000, true);


	Delete("上背景");

	SetFwC("cg/fw/fw統_優しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【統】
<voice name="統" class="統" src="voice/md05/004by0260b46">
「うーん……ごめんよ、景明。
　かーさんそのギャグちょっとわからない」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆白銀光
//◆→●失敗

	CreateColorEXadd("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",1000,1000,null,true);
	SetVolume("@mbgm*", 1000, 0, null);



..//ジャンプ指定
//次ファイル　"md05_004gameover.nss"


}

//――――――――――――――――――――――――――――――
.//◆※村正
//◆$村正同行_Flag
scene md05_004byoushitsu03cbb_mu.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);

	CreateWindow("絵窓", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 5010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 5020, -180, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, -30, InBottom, "cg/st/st景明汚染_戦闘_制服.png");
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004by0270a01">
《ええ。わかってる。
　これが私達の、やらなくてはならないこと》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004by0280a01">
《待ってて。すぐに終わらせるから……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆病床の光
//◆攻撃
//◆がきーん。受け止められる
//◆洗脳景明

	CreateTextureEX("絵背景10", 6000, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");
	Fade("絵背景10", 1000, 1000, null, true);
	WaitKey(300);
	OnSE("se戦闘_攻撃_剣戟弾く01", 1000);

	CreateTextureEX("絵背景20", 6100, @0, @0, "cg/ef/ef008_汎用上下軌道.jpg");
	Fade("絵背景20", 300, 1000, null, true);

	CreateWindow("絵窓", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 5010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 5020, -180, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, -30, InBottom, "cg/st/st景明汚染_戦闘_制服.png");

	DrawDelete("絵背景*", 150, 100, "slide_04_00_0", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004by0290a01">
《……御堂!?》

//◆顔グラは洗脳景明
{	FwC("cg/fw/fw景明汚染_哄笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004by0300a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　あなたは村正の爪を受け止めた。

　……当然の事。
　湊斗景明が湊斗光を殺させるはずがない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆白銀光
//◆→●失敗

	CreateColorEXadd("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",1000,1000,null,true);

	SetVolume("@mbgm*", 1000, 0, null);


..//ジャンプ指定
//次ファイル　"md05_004gameover.nss"

}


