//<continuation number="250">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_023.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_024.nss";

}

scene mc04_023.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_022vs.nss"

//◆※隠しイベント
//◆さよフラグ二つとも有る場合のみ

//◆山林？　夜
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	OnSE("se自然_火_火災倒壊", 600);
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg022_山林a_03.jpg");
	Delete("上背景");
	Fade("黒幕１",2000,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　どれくらいの間、灰燼に帰してゆく館を眺めていた
だろうか。
　……いつからか、傍らに人の気配があった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ヤングさよ
	StL(1000,@0,@0,"cg/st/stさよ吸血_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwさよ吸血_沈静.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230010a04">
「…………」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230020a00">
「…………」


{
	SetVolume("@OnSE*", 1000, 0, null);
	FwC("cg/fw/fwさよ吸血_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230030a04">
「そろそろ、ここを離れた方が宜しいですよ。
　異変を察した軍がやってくる頃合かと……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230040a00">
「…………」


{	FwC("cg/fw/fwさよ吸血_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230050a04">
「……」

//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230060a04">
「……如何されました？」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230070a00">
「……」


{	FwC("cg/fw/fwさよ吸血_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230080a04">
「……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230090a00">
「……妹を……」


{	FwC("cg/fw/fwさよ吸血_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230100a04">
「はい」


{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230110a00">
「妹を、亡くしました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　どうしてか。
　俺は見も知らぬ女性に、そう告げていた。

　懺悔のように。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fwさよ吸血_沈静.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230120a04">
「――――」


{	FwC("cg/fw/fwさよ吸血_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230130a04">
「そうですか……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230140a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	SoundPlay("@mbgm31",2000,1000,true);
	WaitKey(1500);
	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230150a00">
「……なぜ……」


{	FwC("cg/fw/fwさよ吸血_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230160a04">
「……？」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230170a00">
「なぜ……
　助けられなかったのでしょう」


{	FwC("cg/fw/fwさよ吸血_沈静.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230180a04">
「…………」


{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230190a00">
「なぜ……自分は」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　光を、死なせてしまったのか。

　……わかり切ったことだ。
　助けられなかったのは、助ける方法が<RUBY text="・・・・">無かった</RUBY>から
だ。

　二年前――あるいはそれより以前にか――俺の<RUBY text="ほし">運命</RUBY>
は定まり、果たすべき<RUBY text="みち">使命</RUBY>も決していた。
　これはとうに、定まっていた結末。

　わかっているのだ。
　
　だからきっと、俺の愚にもつかぬ自問は、その<RUBY text="ほし">運命</RUBY>
をこそ問うているのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230200a00">
「なぜ」


{	FwC("cg/fw/fwさよ吸血_沈静.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230210a04">
「……お辛いのですね」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230220a00">
「辛い？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　突拍子もない言葉に、俺は首を傾げた。
　重く鈍い思考をどう巡らせてみても、どうしてその
ような事を言われたのか理解できない。

　俺が辛い？
　……そんな筈はなかった。

　湊斗景明は傷ついていないのだから。
　傷つき、生命を奪われるのは、常に俺以外の人間だ。

　俺が我意を通した為に、戦い斬られた人々。
　ただ善良であり、ただ俺の近くにいたが為に、斬ら
れた人々。

　辛かったのは彼らだ。

　湊斗景明は辛くなどない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230230a00">
「辛くはありません」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230240a00">
「辛くなど」


{	FwC("cg/fw/fwさよ吸血_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230250a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(1000);

//◆ウェイト

}

..//ジャンプ指定
//次ファイル　"mc04_024.nss"