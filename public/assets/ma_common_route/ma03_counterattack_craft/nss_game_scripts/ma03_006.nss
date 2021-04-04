//<continuation number="160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_006.nss_MAIN
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
	#bg031_八幡宮境内_03=true;


	//▼ルートフラグ、選択肢、次のGameName
	$ma03_005a_routeFlag02=false;

	$PreGameName = $GameName;

	$GameName = "ma03_007.nss";

}

scene ma03_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_005a.nss"
//前ファイル　"ma03_005b.nss"

//◆合流
	PrintBG("上背景", 30000);
//	OnBG(100,"bg031_八幡宮境内_03.jpg");
	OnBG(100,"bg031_八幡宮境内_03.jpg","path");
	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("上背景");

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0060010a11">
「……そうか……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0060020a00">
「何にしろ、彼女はＧＨＱの士官です。
　つまりは銀星号問題にＧＨＱを介入させる
ことにもなり得ます。その危険性については
お考えですか？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0060030a11">
「<RUBY text="・・">危険</RUBY>、か」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0060040a00">
「はい」

</PRE>
	SetTextEXC();
	if($ma03_005a_routeFlag02==true){
		TypeBeginCIFO();//―――――――――――――――――――――――――
	}else{
		TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――
	}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　明言は避ける。
　だが意図が通じていない筈はなかった。

　銀星号は一面、現代の武力の極峰だ。
　銀星号に対して連盟軍が軍事的な興味を持たない、
　あるいは、既に<RUBY text="・・">接触</RUBY>を果たしていないと、どうして
断定できるだろう？

　署長とは昨日も話し合ったのだ。
　銀星号には<RUBY text="・・・">後援者</RUBY>がいる筈だ――と。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0060050a11">
「だがその危険は既に冒しているだろう？
　先日の事件で、お前は彼女と共闘している」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0060060a00">
「必要と判断しましたので。
　あの折はまず、試薬のつもりで銀星号の名
を出してみました」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0060070a00">
「特別な反応はなし。ほぼ無関心に近いほど
でした。
　しかしそれは、単に彼女が何も知らされて
いないだけかもしれません」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0060080a11">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0060090a00">
「今後、捜査活動を共にするとなれば……
　彼女を通して情報が全て黒幕に筒抜け、と
いう可能性さえ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　考え過ぎだろうとは思う。
　だが可能性は可能性だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0060100a00">
「――自分はそれでも構いませんが。
　そのような運びとなれば必ず何らかの反応
がある筈。伸ばされてきた黒い腕を、逆手に
取りましょう」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0060110a11">
「その覚悟なら、私から言うことは何もない。
　お前に全て任せる」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0060120a00">
「署長。
　……宜しいのですか？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0060130a11">
「とうに、腹は決めているよ。
　私にできる事はそれしかないんだ。銀星号
の件に関する限り、お前は好きなように私を
使え」

//【署長】
<voice name="署長" class="署長" src="voice/ma03/0060140a11">
「いいな？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0060150a00">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0060160a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_007.nss"