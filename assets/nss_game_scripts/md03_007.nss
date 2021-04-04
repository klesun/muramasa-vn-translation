//<continuation number="620">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_007.nss_MAIN
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
	#bg057_普陀楽城廊下_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_008.nss";

}

scene md03_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md03_006.nss"


//◆廊下・昼

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg057_普陀楽城廊下_01.jpg");
	FadeBG(0, true);


	SoundPlay("@mbgm16", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　評議は二時間余りを費やして終了した。

　長い廊下を、次の執務地に向かって歩く。
　茶々丸の背後に付くのは俺だけだ。他の幕僚はめい
めい指示を与えられ、既に去っている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070010a00">
「……評議の場ではああ言ったが。
　実際、俺に公方職の代行が務まるかどうか
は知らんぞ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070020a07">
「平気っしょ。お兄さん、適性ありそうだし。
　あてもなるたけ早めに戻ってくるしさ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070030a00">
「篠川へ何をしに行く？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　何やらを見物に行くような話だったが。
　額面通りには受け取れない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070040a07">
「今、獅子吼の下で編成が進んでる六波羅の
決戦兵力に……
　ちょっと<RUBY text="・">手</RUBY>を加えてこようと思って」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070050a00">
「ほう」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070060a07">
「つまりね――」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070070a00">
「待て」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070080a07">
「あい？」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070090a00">
「誰か来る」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070100a07">
「ん？
　…………ああ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070110a07">
「あいつなら気にしなくても平気。
　<RUBY text="・・・・">こっち側</RUBY>だから」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070120a00">
「……何？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆常闇斎

	StL(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStL(500, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　その異貌の男は、完璧な礼節と共に現れた。
　両足を屈し、<RUBY text="こうべ">頭</RUBY>を深く垂れる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_敬意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070130b37">
「堀越中将様。
　御帰城、お慶び申し上げます」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070140a07">
「ういっさ。
　また世話んなるわ」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070150b37">
「はは」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070160a00">
「……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070170a07">
「あ、紹介しないとね。
　こいつは柳生常闇斎」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070180a07">
「聞いたことある？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");

	CreateTextureEX("絵演窓上/絵演背景", 16100, 100, -144, "cg/bg/bg057_普陀楽城廊下_01.jpg");
	Request("絵演窓上/絵演背景", Smoothing);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);

	CreateTextureEX("絵演窓上/絵立絵", 16200, -200, -450, "cg/st/resize/st常闇斎_通常_私服l.png");
	Move("絵演窓上", 0, @0, @128, null, true);


	Move("絵演窓上/絵演背景", 2000, @0, @100, AxlDxl, false);
	Move("絵演窓上/絵立絵", 2000, @0, @300, AxlDxl, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　無い筈がなかった。
　この大和で武に携わるなら、避けて通れぬ名だ。

　剣を手にする者ならば、聞かずには済ませられない
名だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw景明汚染_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070190a00">
「六波羅新陰流宗主」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070200a07">
「そうそう。
　あと、厩衆の事実上の<RUBY text="ボス">首領</RUBY>」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　厩衆。一口に言えば足利家の親衛隊である。
　六波羅幕府は全体的にその傾向があるが、わけても
厩衆は私兵的性格が濃いと一般にみられている。

　数々の裏工作に従事してきたともいう。
　その指揮官であれば――制度上の地位は高くなくと
も、隠然たる影響力は相当に強いものがあると考える
べきだ。

　ひとまずこの普陀楽に身を置くと決めた以上、無視
して良い人物ではないだろう。
　
　そう思って口を開きかけたが、相手の方が早かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_敬意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070210b37">
「柳生常闇でございます。
　湊斗景明様」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070220b37">
「お会いする機会を心待ちにしておりました」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070230a00">
「……自分を？」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070240b37">
「は。
　いささか存じ上げております」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070250a07">
「お兄さんは局地的に有名人だからねー」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070260a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　何処の局地だ？
　どうも――陰を含んだ、胡散臭いものを感じるが。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 500, false);
	FadeDelete("絵演窓上*", 500, true);
	Delete("絵演窓上*");

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070270a07">
「ほかの連中も紹介しとかないと」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070280b37">
「でしたらば、閣下。
　丁度良い折でございます」

//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070290b37">
「本日の集会に、湊斗様もお連れ下さいませ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070300a07">
「本日？」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070310b37">
「はっ。
　それをお伝えに参りました」

//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070320b37">
「本日夜、紅砂の回廊にて――とのこと」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070330a07">
「慌しい話やなー。
　けどま、確かに好都合か」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070340a07">
「お兄さん、そういうわけだから、今晩少し
付き合ってくれる？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070350a00">
「何処へだ」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070360a07">
「近場。
　くだらない趣味人どもの集まりがあるの」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070370a00">
「行かん」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070380a07">
「御姫に関わる話」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070390a00">
「……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070400a07">
「一度は会わせておきたい奴がいるんだよね。
　向こうも会いたがってたし」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070410a00">
「必要な事か」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070420a07">
「うん。多分」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070430a00">
「なら仕方あるまい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　光に関わる必要事では、選択の余地がなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070440a07">
「やった。
　じゃあ先に伝えといてよ、常闇。お兄さん
連れてくって」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070450b37">
「畏まりました。
　では、私はこれで……」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070460b37">
「次の方がお待ちの様子」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070470a07">
「およ？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆常闇去る
//◆六波羅将校

	DeleteStL(500,true);

	WaitKey(500);

	OnSE("se人体_足音_走る02", 1000);

	StL(1000, @0, @0, "cg/st/st六波羅将校_通常_制服.png");
	FadeStL(500, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　柳生常闇が<RUBY text="しずしず">静々</RUBY>去るのと入れ違いに、今度は将校が
一人、茶々丸の前にやって来た。
　見覚えは全く無い。

　が、軍章は堀越公方府の所属を示している。
　茶々丸の配下のようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@OnSE*", 1000, 0, null);


	SetNwC("cg/fw/nw堀越軍将校.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ｅｔｃ／急使】
<voice name="ｅｔｃ／急使" class="その他男声" src="voice/md03/0070480e047">
「閣下！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070490a07">
「どした？
　こんなツルツルした廊下で走ると転ぶよ」

{	NwC("cg/fw/nw堀越軍将校.png");}
//【ｅｔｃ／急使】
<voice name="ｅｔｃ／急使" class="その他男声" src="voice/md03/0070500e047">
「それが、急報でして。
　堀越館からの」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070510a07">
「急？
　……内容は？」

{	NwC("cg/fw/nw堀越軍将校.png");}
//【ｅｔｃ／急使】
<voice name="ｅｔｃ／急使" class="その他男声" src="voice/md03/0070520e047">
「こちらに」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　通信文らしきものを、将校は上官に差し出した。
　受け取り、開いて、茶々丸がさっと目を通す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070530a07">
「…………」

//◆険しい表情
{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070540a07">
「……………………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070550a00">
「……？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070560a07">
「わかった。
　行ってよし」

{	NwC("cg/fw/nw堀越軍将校.png");}
//【ｅｔｃ／急使】
<voice name="ｅｔｃ／急使" class="その他男声" src="voice/md03/0070570e047">
「はッ」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆将校去る

	DeleteStL(300,false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070580a00">
「……何があった？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070590a07">
「…………」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070600a07">
「村正が……逃げた……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070610a00">
「…………」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070620a07">
「野郎」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


//◆くしゃり。紙を丸める

	OnSE("se日常_物_紙を潰す01", 1000);
	WaitKey(1000);

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md03_008.nss"