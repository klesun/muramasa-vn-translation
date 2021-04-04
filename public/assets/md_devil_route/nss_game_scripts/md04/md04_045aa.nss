//<continuation number="1520">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_045aa.nss_MAIN
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
	#ev229_茶々丸ＥＤ=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameCircle=0;

}

scene md04_045aa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_045a.nss"


//◆ＥＶ：茶々丸ＥＤ


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");

	CreateTextureSP("イベント絵上", 4010, -330, InBottom, "cg/ev/resize/ev229_茶々丸ＥＤm.jpg");
	CreateTextureSP("イベント絵", 4000, @0, @0, "cg/ev/ev229_茶々丸ＥＤ.jpg");
	CreateSE("SE01","se背景_ガヤ_燃える町並み_L");
	MusicStart("SE01",2000,1000,0,1000,null,false);

	Wait(5000);

	Delete("上背景");
	FadeDelete("黒幕１",3500,true);

	SetVolume("SE*", 5000, 0, null);

	Wait(1000);
	SoundPlay("@mbgm19", 0, 1000, true);

	Move("イベント絵上", 6000, @0, -25, DxlAuto, true);


	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1300a07">
「いやーめっちゃ苦戦しましたね」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1310a00">
「……そうだな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　茶々丸と二人、瓦礫の山の上に腰掛けている。

　ほんの少し過去まで、この場所は普陀楽城天守閣と
呼ばれていた。
　今は面影もない。そうしたのは俺達ではなく、あの
敵将の剛力だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("イベント絵上", 1000, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1320a00">
「勝率、百回に一回程度だったのではないか」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1330a07">
「冷静に考えてそんなもんですね」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1340a00">
「…………。
　お前の言う事は二度と信じないようにして
おく」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1350a07">
「わ、わんもあちゃんす！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　夕闇が世界を覆っている。

　銀色の星が幾つも、蛍のように舞っていた。
　しかし、最も強い輝きを放つ筈の者はそこにいない。

　既に鍛造雷弾は落とされ、銀星号はそれと共に姿を
消している。
　
　光がどうなったのか、俺にはわからなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1360a00">
「…………」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1370a07">
「戻ってくるよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　俺の不安を察してか、茶々丸が言った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1380a07">
「御姫は必ず神に至る。
　神を奪って帰ってくる」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1390a07">
「だってお兄さんがここにいるんだから」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1400a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　二度と信じないと言った矢先だ。
　俺は何も答えなかった。

　胸の内でだけ、頷いておいた。

　黙って時を過ごす。
　破局という瞬間が穏やかに流れてゆく。

　世界はこれから終わるのだろう。
　しかし辺りは、既に終わりを迎えたかのように……
ただ静かであった。

　音はなく、光と闇だけが移ろっている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1410a07">
「あのね」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1420a00">
「……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1430a07">
「お兄さんに教えてない秘密が、まだひとつ
だけあるんだ」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1440a00">
「言ってみろ」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1450a07">
「うん。
　実はさ」

{	FwC("cg/fw/fw茶々丸_照れ.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1460a07">
「一目惚れだったんだ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1470a00">
「……」

{	FwC("cg/fw/fw茶々丸_照れ.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1480a07">
「最初に声を聴いた<RUBY text="とき">瞬間</RUBY>から好きでした。
　……知ってた？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1490a00">
「……」

{	FwC("cg/fw/fw茶々丸_照れ.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1500a07">
「……」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1510a00">
「そうか」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1520a07">
「うん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　世界が終わってゆく。

　やがて神は、降り立つだろう。
　この静かなる光陰の海に。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(5000, 3000);

//◆ＥＮＤ

/*
//あきゅん「演出：このエンド居る？　いらんでしょ」
	CreateColorEX("黒幕１", 5000, "BLACK");

	SetVolume("@mbgm*", 6000, 0, null);

	Fade("黒幕１", 3000, 1000, null, true);

	CreateTextureEX("END", 15000, @900, @520, "cg/sys/Telop/lg_エンド.png");
	Fade("END", 1000, 1000, null, true);
	Fade("END", 5000, 0, null, true);
*/


}

..//ジャンプ指定
//次ファイル