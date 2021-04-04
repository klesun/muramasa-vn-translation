//<continuation number="510">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_009.nss_MAIN
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
	#bg088_高級ホテルのホール_01b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_010.nss";

}

scene md03_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md03_008.nss"


	PrintBG("上背景", 30000);
	CreateColorEX("黒", 5000, "BLACK");
	Fade("黒", 0, 500, null, true);
	OnBG(100, "bg088_高級ホテルのホール_01b.jpg");
	FadeBG(0, true);

	FadeDelete("上背景", 1000, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　暗闇ではない、だが薄闇に閉ざされた空間に、複数
の人間が音もなく踏み入ってくる気配があった。
　数人……十人、いやもっと多い。

　彼らは並ぶことも、陣形を取ることもなく、勝手に
思い思いの場所へ身を置いた様子だ。
　しかし、意図してかどうか――俺そして付近の数人
を取り囲むように広がっていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090010a13">
「集まったようだね」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090020a13">
「さて……今夜は新しい仲間が二人もいる。
　まず、我々の紹介から始めたいと思うが、
異論はないかな？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆拍手。ぱちぱちぱち

	OnSE("se人体_動作_拍手01", 1000);
	Wait(300);
	OnSE("se人体_動作_拍手01", 1000);
	Wait(200);
	OnSE("se人体_動作_拍手01", 1000);

	WaitKey(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　互いの顔も見えない空間に、手を打つ音だけが響き
渡る。
　賛同の意思を表明したのだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm02", 0, 1000, true);
	SetFwC("cg/fw/fwウォルフ_思索.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090030a13">
「宜しい。
　では……<RUBY text="・・・">我々を</RUBY>語ろう」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090040a13">
「今、ここに集った人間は何もかも不揃いだ。
　例えば、僕は妄想狂のレッテルを貼られた
学徒」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――




//◆茶々丸
	
	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStL(300, true);
	
	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090050a13">
「彼女は生まれながらの異能者」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆常闇

	StR(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStR(1000, true);

	SetFwC("cg/fw/fwウォルフ_思索.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090060a13">
「隠れ切支丹」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆消す

	DeleteStA(300,true);

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090070a13">
「そして――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　教授はぐるりと腕を回し、室内の各所を示す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090080a13">
「大陸経済界の黒幕。
　新興宗教の大幹部。
　処刑されたはずの連続殺人犯。
　その名を知らぬ者はいない銀幕スター」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090090a13">
「退役軍人、道化師、大地主、多重人格者、
財閥のトップ、物理学者、神父、高級娼婦、
禅宗の破門僧、株で大儲けしたものの使い道
がない青年、天才料理人、占星術師――」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090100a13">
「バラバラだ。全くバラバラだ。
　人種や国籍さえ統一されていない」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090110a13">
「一体、これは何の集団だ？
　全人類からクジか何かで選ばれて集まった
だけか？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0090120a00">
「…………」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090130a13">
「違うね……。
　我々を結集したのは願いだ」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090140a13">
「ただ一つの欲求のため、我々は集った」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0090150a00">
「それは何だ」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090160a13">
「神」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090170a13">
「神だよ！」

{	NwC("cg/fw/nw緑龍会Ａ.png");}
//【ｅｔｃ／緑龍会Ａ】
<voice name="ｅｔｃ／緑龍会Ａ" class="その他男声" src="voice/md03/0090180e290">
「神……そう神だ」

{	NwC("cg/fw/nw緑龍会Ｂ.png");}
//【ｅｔｃ／緑龍会Ｂ】
<voice name="ｅｔｃ／緑龍会Ｂ" class="その他男声" src="voice/md03/0090190e291">
「そんなものがいるなら是非とも見たいね」

{	NwC("cg/fw/nw緑龍会Ｃ.png");}
//【ｅｔｃ／緑龍会Ｃ】
<voice name="ｅｔｃ／緑龍会Ｃ" class="その他男声" src="voice/md03/0090200e292">
「もう神くらいしか興味はない……」

{	NwC("cg/fw/nw緑龍会Ｄ.png");}
//【ｅｔｃ／緑龍会Ｄ】
<voice name="ｅｔｃ／緑龍会Ｄ" class="その他女声" src="voice/md03/0090210e293">
「神が必要です。
　罪深き私を完膚なく否定するために」

{	NwC("cg/fw/nw緑龍会Ｅ.png");}
//【ｅｔｃ／緑龍会Ｅ】
<voice name="ｅｔｃ／緑龍会Ｅ" class="その他男声" src="voice/md03/0090220e294">
「人間を愛するのも憎むのも育てるのも殺す
のも嬲るのも、何もかも飽きた！
　人ならぬものに会いたい。神を見たい！」

{	NwC("cg/fw/nw緑龍会Ｆ.png");}
//【ｅｔｃ／緑龍会Ｆ】
<voice name="ｅｔｃ／緑龍会Ｆ" class="その他男声" src="voice/md03/0090230e295">
「いやぁギャグとして最高だと思うんだよね。
『神様は本当にいたんです！』っての」

{	NwC("cg/fw/nw緑龍会Ｇ.png");}
//【ｅｔｃ／緑龍会Ｇ】
<voice name="ｅｔｃ／緑龍会Ｇ" class="その他男声" src="voice/md03/0090240e296">
「カァーーカカッ!!
　神なんていねえ！　いたら殺す！」

{	NwC("cg/fw/nw緑龍会Ｈ.png");}
//【ｅｔｃ／緑龍会Ｈ】
<voice name="ｅｔｃ／緑龍会Ｈ" class="その他女声" src="voice/md03/0090250e297">
「神様ならきっと、わたしを愛してくれる」

{	NwC("cg/fw/nw緑龍会Ｉ.png");}
//【ｅｔｃ／緑龍会Ｉ】
<voice name="ｅｔｃ／緑龍会Ｉ" class="その他男声" src="voice/md03/0090260e298">
「神を……」

{	NwC("cg/fw/nw緑龍会Ｊ.png");}
//【ｅｔｃ／緑龍会Ｊ】
<voice name="ｅｔｃ／緑龍会Ｊ" class="その他女声" src="voice/md03/0090270e299">
「神を――」

{	NwC("cg/fw/nw緑龍会Ｋ.png");}
//【ｅｔｃ／緑龍会Ｋ】
<voice name="ｅｔｃ／緑龍会Ｋ" class="その他男声" src="voice/md03/0090280e300">
「神を！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0090290a00">
「…………」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090300a07">
「どうよお兄さん。
　世にもくだらねー屑どもばっかだろ？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090310a07">
「こいつら、もう人間じゃ満足できないんだ。
　神なんてもんにすがらないと人生やってけ
ねえ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090320a07">
「そのためなら何だってする気でいる」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0090330a00">
「……何でも？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090340a07">
「今ここにいる連中には、目的のほかにもう
いっこ共通項があってね。
　<RUBY text="・・・・・・・・・">金と人間を動かせる</RUBY>っていう」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090350a07">
「こいつらはその力で裏からサポートする。
　あてとお兄さんがこれからやることを――」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090360a07">
「<RUBY text="おひめ">銀星号</RUBY>を神にする計画を」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0090370a00">
「…………」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090380a07">
「この会は元々、生きるのに飽きたやつらが
集まって手慰みの魔術やら錬金術やらに耽る、
オカルト結社でしかなかった。
　でも、今は少し違う……」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090390a13">
「いくつかの出来事があった」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090400a13">
「まず、僕が神の実在を推論したこと。
　……けれどこの時は、僕自身が論文の正否
について自信を欠いていた」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0090410a13">
「僕は自分の論文に、<RUBY text="・・・">夢想論</RUBY>と題さなくては
ならなかった。
　だが、しかし――」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090420a07">
「そのウォルフの論文を、あてが読んだ」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090430a07">
「<RUBY text="・・・・・・・・・・・・・">既に神の存在を感受していた</RUBY>あてが」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0090440a00">
「感受……？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090450a07">
「あてには聴こえるんだ。
　声が……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090460a07">
「あてはヒトとして生まれなかったから。
　ヒトには聴こえない声が聴こえる」

//◆怒り表情
{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090470a07">
「地の底で<RUBY text="・・・・・・">ぎゃあぎゃあ</RUBY>騒いでる奴の声がね」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0090480a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　何を言っているのだ、という俺の内心は闇でも誤魔
化せないほど表情に出たのだろう。
　
　茶々丸がにやりと笑ったようだった――凄絶に。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090490a07">
「聴いてみるかい、お兄さん？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090500a07">
「味わってみるかい、<RUBY text="・・・・・・・・">足利茶々丸の世界</RUBY>を！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0090510a07">
「これさあ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	OnSE("se特殊_陰義_発動04", 1000);

	CreateColorSP("白", 5000, "WHITE");
	DrawTransition("白", 1000, 0, 1000, 300, null, "cg/data/zoom_01_00_1.png", true);
	WaitKey(500);

}

..//ジャンプ指定
//次ファイル　"md03_010.nss"