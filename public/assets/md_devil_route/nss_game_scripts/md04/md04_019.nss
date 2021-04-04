//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_019.nss_MAIN
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
	#bg009_鎌倉住宅街a_01=true;
	#bg007_若宮大路a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_020.nss";

}

scene md04_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_018.nss"


//◆鎌倉


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg009_鎌倉住宅街a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm26", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(500);

//◆村正
	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　普陀楽城にはやはり近付けなかった。

　城を攻めている軍勢の隙間を縫うことからして容易
ではない。
　城壁を、中の兵に気付かれず越えるのは更に難しい。

　夜陰に乗じて忍び込むのも無理だった。
　平時ならいざ知らず今は戦時、夜襲を警戒している
ため昼間よりも厄介なほど。

　有体に言って、手も足も出ない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0190010a01">
（……なんて、弱音を吐いてる場合じゃない
のに）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　昔、祖父と母とに連れられていくつもの戦場を見て
回ったことがある。
　だから、何となく情勢は察せられた。

　この城は落ちようとしている。

　落城の混乱に紛れ込めば、侵入は果たせるだろう。
　……侵入だけなら、簡単に違いない。

　しかし、その渦中で一人の人間を探すのは、きっと
不可能だ。
　荒れ狂う海に落とした針を拾いにゆくのと同じこと
になる。

　城が落ちる前に手立てを考えなくてはならないのだ。
　城内に入り、景明と会う手立てを。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動
//◆進駐軍兵

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	DeleteStL(0,true);

	OnBG(100, "bg007_若宮大路a_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	Wait(500);

	StR(1000, @-50, @0, "cg/st/stＧＨＱ兵士_通常_制服.png");
	StCR(1000, @150, @0, "cg/st/stＧＨＱ兵士_通常_制服.png");
	FadeStR(300, false);
	FadeStCR(300, true);

	SetNwC("cg/fw/nwＧＨＱ兵士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆「hey,dwarf! Let's play together」
//【ｅｔｃ／巡回兵Ａ】
<voice name="ｅｔｃ／巡回兵Ａ" class="その他男声" src="voice/md04/0190020e117">
「おい、蝦夷の姉ちゃん。
　オレと一緒に遊ぼうぜ！」

{	NwC("cg/fw/nwＧＨＱ兵士Ｂ.png");}
//【ｅｔｃ／巡回兵Ｂ】
<voice name="ｅｔｃ／巡回兵Ｂ" class="その他男声" src="voice/md04/0190030e118">
「ハハハハハ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆兵士消す

	DeleteStCR(300,false);
	DeleteStR(300,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　外出禁止の指示は緩められている。
　自宅への帰宅は許可。何か特別な用事があって外出
したい者は巡回の兵士に事情を話して証明書をもらう
こと。……という放送が、先刻あった。

　彼らが勝ちつつあることと無関係ではあるまい。
　ともかくもそのお陰で、町の中での行動はしやすく
なっている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0190040a01">
（浮ついてる感じね）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　たった今すれ違った兵士の印象を思う。
　彼らの使う言語はさっぱりわからないが、顔と口調
で大体の意味は察せられた。

　勝利を目前にして、気が大きくなっているのだろう。
　構ってはいられない。

　どうにかして、城へ近付ける所を探さないと――
　
　私は鎌倉の町を走り続けた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearFadeAll(0,true);

}

..//ジャンプ指定
//次ファイル　"md04_020.nss"