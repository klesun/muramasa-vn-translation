	//<continuation number="30">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_014.nss_MAIN
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
	#bg045_普陀楽城公方の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_015.nss";

}

scene mb02_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_013.nss"

//◆フェード
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg045_普陀楽城公方の間_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　岩の上に旅寝をすればいと寒し
　　　　　　　　　　　苔の衣を我に貸さなん
　
　　　　　　　　　　　　　……小野小町が僧遍昭へ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆邦氏私室
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm22",0,1000,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0140010a00">
「後撰和歌集にございます」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0140020b49">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　最初、何のことやらわからなかった様子の邦氏へ、
俺は端的にその一言だけ告げた。
　大和にあって貴族に列する者ならば、歌は基礎教養
の範疇。これで充分だろう。

　数秒して。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_恋情.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	SetComic(@0,@0,3);}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0140030b49">
「はうっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteComic();

	OnSE("se人体_衝撃_転倒01",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　足利邦氏は卒倒した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェード
	SetVolume("@mbgm*", 2500, 0, null);
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　世を背く苔の衣はただ一重
　　　　　　　貸さねば疎しいざ二人寝ん
　
　　　　　　　　　　　　　　　　　……遍昭の返歌

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 1000);

}

..//ジャンプ指定
//次ファイル　"mb02_015.nss"