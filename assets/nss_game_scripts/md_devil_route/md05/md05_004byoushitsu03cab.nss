
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu03cab.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg086_病室_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	if($同行者 == "本家"){call_scene @->md05_004byoushitsu03cab_ho.nss;}
	else if($同行者 == "統"){call_scene @->md05_004byoushitsu03cab_su.nss;}
	else if($同行者 == "村正"){call_scene @->md05_004byoushitsu03cab_mu.nss;}
	else{}

		$PreGameName = $GameName;
		$GameName = "md05_004gameover.nss";

}

scene md05_004byoushitsu03cab.nss
{

..//ジャンプ指定
//前ファイル　"md05_004byoushitsu03ca.nss"

//●湊斗光を
//◆フラグ分岐

}

//――――――――――――――――――――――――――――――
.//◆※本家
//◆$本家同行_Flag
scene md05_004byoushitsu03cab_ho.nss
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

	SetFwC("cg/fw/fw本家_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【本家】
<voice name="本家" class="本家" src="voice/md05/004by0080b52">
「光を守る？　当然だ！
　こやつの命は誰にも奪わせんぞ！」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md05/004by0090b52">
「景明、貴様も力を貸すのだ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004by0100a00">
「……はっ」

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
scene md05_004byoushitsu03cab_su.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	CreateWindow("絵窓", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 5010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 5020, -180, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, -30, InBottom, "cg/st/st景明汚染_戦闘_制服.png");

	Delete("上背景");

	SetFwC("cg/fw/fw統_通常a.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【統】
<voice name="統" class="統" src="voice/md05/004by0110b46">
「もちろん。
　血を分けた娘だ、守り通してみせる」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/md05/004by0120b46">
「おまえも手伝ってくれるだろ？　景明」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004by0130a00">
「……はい、統様」

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
scene md05_004byoushitsu03cab_mu.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	CreateWindow("絵窓", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 5010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 5020, -180, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, -30, InBottom, "cg/st/st景明汚染_戦闘_制服.png");


	Delete("上背景");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004by0140a01">
《えっ？
　……私がこの娘を守るの？》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004by0150a01">
《何か違うような……》

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


