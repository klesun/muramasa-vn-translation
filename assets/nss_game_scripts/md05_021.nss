//<continuation number="120">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_021.nss_MAIN
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
	#bg109_宇宙空間=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_022.nss";

}

scene md05_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_020vs.nss"


//◆※以下、モニター展開時は高度計を０で固定。宇宙
//◆空間なので。
//◆黒


//無音のほうがいい？ inc櫻井

	PrintBG("上背景", 30000);
	CreateColorSP("下黒", 90, "BLACK");
	CreateTextureSP("地球", 80, @0, @0, "cg/ev/ev238_地球と太陽と月と金神_b.jpg");


//	CreateTextureSP("コクピット", 10000, @0, @0, "cg/cp/mura/フレーム.png");
//	Zoom("コクピット", 0, 950, 950, null, true);
//	Move("コクピット", 0, @-50, @-50, null, true);





	FadeDelete("上背景",1500,true);
//	FadeDelete("黒",1500,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　…………

　………………………………………………

　体が……熱い。

　燃えるようだ。

　皮膚という皮膚が焼け爛れている。

　息も苦しい……。

　ここは何処なのか。

　俺は何処にいるのか。

　俺は……地獄に堕ちたのか……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆暗い空。つか宇宙なんだが。

	CreateTextureEX("宇宙", 900, 0, @0, "cg/bg/bg204_横旋回背景_04.jpg");
	CreateTextureEX("宇宙2", 900, 0, @0, "cg/bg/bg204_横旋回背景_04.jpg");

//	CreateTextureEXadd("宇宙3", 900, 0, @-200, "cg/bg/bg204_横旋回背景_04.jpg");
//	CreateTextureEXadd("宇宙4", 900, 0, @-200, "cg/bg/bg204_横旋回背景_04.jpg");
//	Zoom("宇宙3", 0, 1100, 1100, null, true);
//	Zoom("宇宙4", 0, 1100, 1100, null, true);
//	Rotate("宇宙3", 0, @0, @180, @0, null,true);
//	Rotate("宇宙4", 0, @0, @180, @0, null,true);


//	Move("宇宙", 20000, @-400, @0, null, false);
//	Zoom("宇宙", 0, 1500, 1500, null, false);

	CreateSCR1("@宇宙","@宇宙2",40000,-300,@0);
//	CreateSCR2("@宇宙3","@宇宙4",40000,-800,@0);

	Wait(2000);
//	Fade("宇宙", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　闇だ。

　黒く、昏い。

　やはり地獄か。

　だが、それにしては不純だ……。

　小さな輝きが幾つも見える。

　完全な暗黒ではなかった。

　……ここは、何処だ？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆暗い空間に漂う村正
//◆村正最終_騎航_通常を１２０〜１８０度回転させて
//◆表示。それでどうにも不自然なようなら新規作成


//■宇宙っぽくしてみようとしたけれどダサい。 inc櫻井

	CreateTextureEX("muramasa", 1000, @-100, @-250, "cg/st/3d村正最終_騎航_通常5.png");
	Rotate("muramasa", 0, @0, @0, @120, null, true);
	Request("muramasa", Smoothing);


	Move("muramasa", 13000, @100, @0, AxlDxl, false);
	Fade("muramasa", 1000, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0210010a01">
《……御堂》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0210020a00">
（……村正か？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　喉が詰まり、声は出せない。
　それでも思念は伝わった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0210030a01">
《ええ。
　身体はどう？　応急の処置はしてみたけど》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0210040a00">
（痛むが……
　全く動かせない程ではない）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　筋肉の動きを確認する。
　完全に断裂している箇所は無い――そして痛まずに
動かせる箇所も無い。

　特に胸の周辺は酷かった。
　胸骨が割れているらしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0210050a01">
《蹴りを受ける直前に磁気の壁を張ったんだ
けど……それでも防ぎ切れなかった》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0210060a00">
（……そうか）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　しかし磁気障壁の反発効果があったればこそ、この
程度の負傷で済んでいるのだろう。
　砕け散っていても不思議はなかったのだ。あの一蹴
にはそれだけの威力があった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0210070a01">
《それでね、御堂》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0210080a00">
（うむ？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0210090a01">
《……蹴りと磁気反発、あと直前の空間歪曲
も変な感じに作用して、なんか結構遠くまで
飛ばされたみたいなのよね》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0210100a00">
（どの辺りだ）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0210110a01">
《うーん……あれを見てくれる？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0210120a00">
（あれ？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　脳裏に響く金打声が示す方向へ視線をやる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("下黒", 0, true);
	Fade("宇宙*", 2000, 0, null, false);
	Fade("muramasa", 2000, 0, null, true);
	Delete("宇宙*");
	Delete("muramasa");


}

..//ジャンプ指定
//次ファイル　"md05_022.nss"

