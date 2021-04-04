//<continuation number="920">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_008.nss_MAIN
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
	#bg001_空c_03=true;
	#bg088_高級ホテルのホール_01b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_009.nss";

}

scene md03_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_007.nss"


//◆夜


	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg001_空c_03.jpg");
	FadeBG(0, true);


	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒",2000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　陽が落ちた後、茶々丸は俺を城外へ連れ出した。
　自ら車を運転して、市中を抜け、湾岸方面へ向かう。

　やがて停車した場所は、鎌倉近郊でそれなりに名を
知られている高級ホテルの駐車場だった。
　今は俺も茶々丸も私服だが、場所柄、かえって軍服
の方が違和感はなかったかもしれない。

　勿論、一目で地位姓名を特定されかねない軍装――
特に茶々丸――を避けたのには理由があるのだろうが。
　
　人気のない裏口から中へ入り、<RUBY text="エレベータ">昇降機</RUBY>に乗り込む。

　昇降機は――最上階へ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ギー。大きな扉が重々しく開く感じ
//◆最上階ホール
//◆ウォルフ

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg088_高級ホテルのホール_01b.jpg");
	FadeBG(1000, true);
	OnSE("se日常_建物_扉開く09", 1000);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	StR(1000, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	FadeStR(300, true);

//	OnSE("se擬音_コミカル_爆発01", 1000);

/*
	CreateVOICE("ウォルフ","md03/0080010a13");
	SetFont("@ＭＳ 明朝", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	MusicStart("ウォルフ",0,1000,0,1000,null,false);
	CreateText("voice01",30411,Center,inherit,auto,auto,"「パンツ!!」");
	Request("voice01",NoLog);
	Request("voice01",PushText);
	Rotate("voice01", 0, @0, @0, 90, null, false);
	Move("voice01", 0, @0, @10, null, false);

	SetBacklog("「パンツ!!」", "voice/md03/0080010a13", ウォルフ);
	CreateTextureEX("顔01", 30400, 451, 4, "cg/fw/fwウォルフ_絶叫.png");

	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/bg/bg088_高級ホテルのホール_01b.jpg");

	Move("絵st200", 0, @0, @0, AxlDxl, false);

	Shake("絵st200", 500, 10, 5, 0, 0, 750, Dxl1, false);
	Shake("絵背景100", 500, 10, 5, 0, 0, 750, Dxl1, false);

	Fade("顔01", 0, 1000, null, false);
	Fade("@boxCT", 0, 1000, null, true);

	WaitKey();

	Delete("voice01");
	FadeDelete("顔01", 150, false);
	Fade("@boxCT", 150, 0, null, true);
*/

	SetFwC("cg/fw/fwウォルフ_絶叫.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆大フォントで
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080010a13">
<FONT size=40>「パンツ!!」</FONT>

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆蹴り。どが。ウォルフ消去

	OnSE("se戦闘_攻撃_キック04", 1000);
	CreateTextureSP("蹴り", 15000, @0, @0, "cg/ef/ef042_汎用打撃.jpg");
	DeleteStR(300,false);
	FadeDelete("蹴り",300,true);

	CreatePlainEX("絵板写", 16000);
	Fade("絵板写", 0, 800, null, true);
	Shake("絵板写", 300, 0, 30, 0, 0, 1000, DxlAuto, false);

	FadeDelete("絵板写", 500, false);

	StCR(1000, @0, @0,"cg/st/st景明汚染_通常_私服.png");


	SetFwC("cg/fw/fwウォルフ_絶叫.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080020a13">
「ゲバッチョ!?」

{	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStL(300, false);
	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080030a07">
「……こいつは……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080040a00">
「茶々丸」

{	FadeStCR(300,false);
	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080050a00">
「会わせたい人間というのは、まさか、<RUBY text="・・">これ</RUBY>
ではないだろうな」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080060a07">
「え、えーっと……そのぉ……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080070a00">
「……もしそうなら、悲しむべき事だ……」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080080a00">
「俺ではなく、お前にとってだが」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆指ぽきぽき
	Move("@StMR*", 6000, 220, @0, null, false);
	DeleteStCR(2000,false);

	OnSE("se人体_体_指を鳴らす", 1000);

	SetFwC("cg/fw/fw茶々丸_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080090a07">
「待って待って待ってーーー!!
　ノーモア制裁!!　ノーモアリンチ!!」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080100a07">
「違うんスよ！　こいつアホですけど！
　アホなだけではないんです!!」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080110a00">
「ほう……？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080120a07">
「第一印象はおよそ考え得る限り最悪だった
と思いますが、どうかそれは忘れて下さい！」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080130a00">
「いいだろう」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080140a00">
「ではこの男、阿呆でないなら何なのだ。
　率直に言ってみろ」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080150a07">
「変態」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080160a00">
「そうか」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_抱く01", 1000);

	DeleteStL(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　俺は茶々丸の背後から首に両腕を巻きつけ、下顎を
固定した。
　頸骨外しの型が整う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080170a07">
「ギャーーーーーーー!!
　正直に答え過ぎたーーー!!」

{	StR(1000, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	FadeStR(300, false);
	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080180a13">
「何やってるのかね君は。
　現れるなり生命の危機に陥ったりして」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080190a07">
「おめー、誰のせいだと思ってんだよ!?」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080200a13">
「愚かな君が愚かなことをしたのだろ？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080210a00">
「その通りだ」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080220a13">
「フゥ、やっぱりね。
　彼女は僕にとって良き友人なのだが、しば
しば正当な理由もなく他人を責めるのが欠点
だな」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080230a13">
「パンツも脱がないし……」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080240a00">
「それは直してやった方が良いだろう。
　パンツはともかく」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080250a13">
「友人としての義務だと思っているよ。
　温かく見守りつつ、忠告を重ねるつもりだ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080260a00">
「ふむ。正しい対応だと思う」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080270a00">
「友人に恵まれて良かったな、茶々丸」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080280a13">
「本当だね、茶々丸君」

{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080290a07">
「うっ……うっうっ……ぐすんぐすん」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080300a13">
「君、なんでマジ泣きしてるの？」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080310a07">
「心の底から泣きたかったからだよ!!
　ちくしょー、最近なんだか世の中があてに
優しくねぇーーーッ!!」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080320a13">
「やれやれ……。
　世話の焼けるパンツ脱がない少女だ」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080330a00">
「同意する。
　ところで、パンツの変態男」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080340a13">
「何かな？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080350a00">
「これからここで、何の集まりがあるのだ？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　茶々丸を適当に捨てながら、男に訊いてみる。
　結局、詳しい事を聞き出す前にここへ来てしまった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080360a00">
「真逆パンツの着脱と健康の関連性について
討論する集会ではあるまいと信じるが――」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080370a13">
「ふーむ。
　当たらずとも、遠からず……かな」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080380a00">
「…………」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080390a07">
「嘘です！　当たってないし近くもないっ！
　だからそんな殺意に満ちた目付きでこっち
見ないで下さいお願いします!!」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080400a13">
「君はパンツを脱ぐ時に右足を最初に抜くか
それとも左足を先に抜くかで議論する人々が
いたら、滑稽だと思うかね？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080410a00">
「思う」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080420a13">
「十字を切る時にどういう順序で切るべきか
キリスト教徒同士で激しく言い争っていたら、
やはり滑稽だと思うかね？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080430a00">
「……」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080440a13">
「滑稽なのだよ」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080450a13">
「有りもしない価値を……
　有るものとして扱い、尊び、その正当性を
賭けて他人と争いさえする」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080460a13">
「滑稽だ」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080470a13">
「……しかしだね。
　これこそ知的活動ではないか？」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080480a13">
「知性以外の何を使えばこんなことができる
……？」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080490a13">
「真実に従うことは誰にでもできる……知性
なき野の獣にも。
　だが虚構に真実と同等の価値を与えてひれ
伏すようなことが、獣にできるだろうか？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080500a00">
「それは宗教論か」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080510a13">
「そうとも」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080520a13">
「宗教が人間を愚民にすると言った者もいる
が、全くの誤解だ。
　宗教こそ、極めて高度な知的活動の産物に
他ならない」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080530a13">
「宗教は人類史上、最も人間らしい発明とも
言えるのだよ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080540a00">
「成程。
　知的遊戯としての宗教……か」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080550a00">
「滑稽だな」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080560a13">
「実にね」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080570a00">
「だが、そう考えれば悪くない」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080580a13">
「だろう？」

//◆微笑
{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080590a00">
「フン……」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080600a13">
「ハッハッハッ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080610a07">
「……なんであんたら会話が通じてんの？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080620a00">
「では、ここで行われるのは宗教論争か何か
か？」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080630a13">
「そうだね。論争ではないな。
　結論は既に出ている……」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080640a13">
「結論に基づく行動についての相談だ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080650a00">
「結論とは？」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080660a13">
「神を冒涜する」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080670a13">
「尊き虚構、不可侵の希望として存在した神
なるものを……地上に引っ張り出す。
　<RUBY text="・・・・・・・">化け物のように</RUBY>実在させてしまうのだ」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080680a13">
「同志湊斗景明。
　挨拶が遅れてしまったが……僕は今日君に
出会えたことを生涯の喜びとするよ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080690a00">
「…………。
　まだ、名を聞いていなかったな」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080700a13">
「ウォルフ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080710a00">
「ウォルフ……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　<RUBY text="ＷＯＬＦ">ウォルフ</RUBY>。
　その名前はごく最近、何処かで目に――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080720a13">
「教授と呼んでくれても構わない。
　……おや、バルトロメオじゃないか」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆常闇
	StCL(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStCL(1000, true);

	SetFwC("cg/fw/fw常闇斎_敬意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0080730b37">
「良い夜でございます。
　ウォルフ教授」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0080740b37">
「湊斗様も、良くぞお越し下さいました」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080750a00">
「……バルトロメオ？」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0080760b37">
「洗礼名ですよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　<RUBY text="クリスチャンネーム">洗礼名</RUBY>？
　六波羅は<RUBY text="キリスト">基督</RUBY>教を事実上の禁教扱いにしていたはず
だが……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080770a13">
「君が来たということは、そろそろ時間かな」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0080780b37">
「はい。
　皆様、もう間もなく参られます」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080790a13">
「そうかそうか。
　それで……そちらの御婦人は？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　今日の昼に面識を得たばかりの柳生常闇斎――その
背後を見やって、今知り合ったばかりのウォルフ教授
が問う。
　同じ事は俺も気に掛かっていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆桜子

	StL(1000, @100, @0, "cg/st/st桜子_通常_私服a.png");
	FadeStL(300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　二十歳かそこらと見える女性だ。
　整った容貌をしている……が、印象は陰鬱だった。

　瞳が<RUBY text="くら">昏</RUBY>い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【桜子】
<voice name="桜子" class="桜子" src="voice/md03/0080800b28">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　心ここにあらずの<RUBY text="てい">態</RUBY>である。
　俺にも教授にも、関心を払う様子が無かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0080810b37">
「今回より新規に参加される方です。
　湊斗様と同じく」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080820a13">
「ほォ。
　では今日は二名もの新たな仲間を迎え入れ
られるわけか」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080830a13">
「輝かしい日だな！」

{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/md03/0080840b28">
「……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080850a07">
「あ、常闇。来たか。
　良かった。ちと話があるんだ」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0080860b37">
「何でございましょう？　堀越中将様」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080870a07">
「やっ、昼におめーと会ったすぐ後にさ。
　堀越から連絡が来て――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　常闇斎に近寄り、茶々丸が二言三言囁く。

　それを黙って聞き終え。
　やや間を置いて、柳生の男は頷いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	StR(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStL(300, false);
	FadeStR(300, false);

	SetFwC("cg/fw/fw常闇斎_思考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0080880b37">
「……左様でございますか。
　確かに、放置するのは危険かもしれません」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080890a07">
「あては明日から篠川へ行かなきゃなんねえ。
　それで、頼みたいんだが……」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0080900b37">
「お任せ下さいませ。
　信頼の置ける者を選び、調査に向かわせま
しょう」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080910a07">
「助かるわ」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0080920b37">
「何程のことでもありません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　常闇斎が薄く微笑んだ時だった。
　――照明が落ちる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se日常_機械_スイッチON", 1000);
	SetVolume("@mbgm*", 1000, 0, null);


//◆光量低下。薄暗く

	DeleteStA(1000,false);
	CreateColorEX("黒", 5000, "BLACK");
	Fade("黒", 1000, 700, null, true);

}

..//ジャンプ指定
//次ファイル　"md03_009.nss"