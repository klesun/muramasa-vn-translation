//<continuation number="810">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_032.nss_MAIN
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
	#bg018_知事執務室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_033.nss";

}

scene md04_032.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md04_031.nss"

//◆鎌倉
//◆司令部
//◆サシュアント
//◆横書き

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg013_鎌倉俯瞰a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	WaitKey(1500);

	OnBG(101, "bg018_知事執務室_01.jpg");
	FadeBG(2000, true);

	Wait(500);

	StR(1000, @0, @0, "cg/st/stサシュアント_通常_私服.png");
	FadeStR(300, true);


	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320010b25">
「ＧＨＱ内部の様子は」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆アップ
	DeleteStR(150,true);

	CreateTextureEX("サシュアント", 1000, -40, -70, "cg/st/resize/stサシュアント_通常_私服ex.png");
	Request("サシュアント", Smoothing);
	Zoom("サシュアント", 0, 900, 900, null, true);

	SetVertex("サシュアント", 520, 288);
	Zoom("サシュアント", 150, 1000, 1000, Dxl1, false);
	Move("サシュアント", 150, @0, @13, Dxl1, false);
	Fade("サシュアント", 150, 1000, null, true);

	SetFwH("cg/fw/fwサシュアント_叫び.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320020b25">
「どうだねッッッ!?」

{	FwH("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320030a03">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

//◆引き

	Zoom("サシュアント", 150, 900, 900, Axl1, false);
	FadeDelete("サシュアント", 150, true);

	StR(1000, @0, @0, "cg/st/stサシュアント_通常_私服.png");
	StL(1000, @0, @0, "cg/st/st香奈枝_通常_制服c.png");
	FadeStL(300, false);
	FadeStR(300, true);

	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320040b25">
「どうだね？」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320050a03">
「ええと、その、はい。
　やはり動揺が広がっています」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320060a04">
「ウィロー少将とキャノン中佐が全く唐突に
姿を消し、代わって伯爵が指揮の代行を宣言
されたわけですから。
　混乱はやむなきことでございましょう」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320070a03">
「説明もしておりませんしねぇ」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320080b25">
「ふむ。無理からぬ。
　だが、<RUBY text="・・">説明</RUBY>は起爆剤も同然だよ」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320090b25">
「新大陸独立派がＧＨＱの中にどの程度浸透
しているのか……それを確かめるまでは危険
過ぎる」

{	FwH("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320100a03">
「ええ、確かに」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320110b25">
「現状において、彼らは不安と不審に苛まれ
ながらも暴発までは至るまい」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320120a04">
「左様でございますな。
　まだ……しばらくの間は」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320130b25">
「<RUBY text="ゼネラル">進駐軍総司令官</RUBY>とは連絡がついたのだね？」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320140a03">
「はい。
　帰還手段の手配も済んでおります」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320150a04">
「遅くとも明後日には戻られましょう」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320160b25">
「では、私が無理をしてＧＨＱの整理に手を
つける必要はないな。
　本来の責任者に務めを果たしてもらおう」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320170b25">
「私はそれまでこの状態を維持する」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320180a03">
「その方針でよろしいかと存じます。
　けれど、六波羅軍との戦闘はいかがなさい
ますか？」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320190b25">
「……」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320200a03">
「無目的に戦争を続け、無意味な死者を増産
するのは……あまり喜ばしくないお話です」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320210b25">
「人の死が無意味であることなど有り得ない
よ、大鳥大尉。
　私はそう信じている」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320220a03">
「……」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320230b25">
「だが……そうだな。
　多くの者が望ましからぬ死を遂げることに
はなるだろう」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320240b25">
「止められるものなら、止めた方が良い」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320250a03">
「はい」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320260b25">
「方法があるかな。
　戦争というものは、一方だけの都合で開始
できるが、終了する時には両者の合意が必要
とされる」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320270a03">
「……一番簡単な手は。
　合意の必要な相手を完全に抹殺してしまう
ことです」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320280b25">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320290a03">
「鍛造雷弾……。
　お使いになりますか？　サシュアント伯爵」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320300b25">
「簡単な解決法だな。
　とても。とても」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320310a03">
「ええ」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320320b25">
「やめておこう」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320330a03">
「……」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320340b25">
「私は条件によって戦争を許容する。
　しかしいかなる条件によっても大量虐殺は
許容できない」

{	FwH("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320350a03">
「戦争がつまりは大量虐殺と同じ結果を生む
ものであっても？」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320360b25">
「そうだ」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320370b25">
「良き戦争と悪しき戦争の区別などない。
　だが平和の前提である戦争と、次の戦争の
前提でしかない戦争、その違いはある」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320380b25">
「鍛造雷弾による未曾有の大虐殺でこの戦争
の幕を下ろすのなら――大和の人々は自失し、
屈服し……
　五十年後に再び立ち上がるだろう」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320390b25">
「そして千年間、憎悪に燃えるだろう」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320400a03">
「…………」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320410b25">
「我々は国際統和共栄連盟」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320420b25">
「全世界に憎悪と争乱の種ではなく、平和と
繁栄の種を撒かねばならない」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320430a03">
「はい。
　……<RUBY text="・・・・・・・">女王陛下の平和</RUBY>と、<RUBY text="・・・・・・・">女王陛下の繁栄</RUBY>を」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320440b25">
「たとえこの大和が未開の後進国であろうと、
住むのが劣等人種であろうと例外にはしない。
　むしろ、だからこそだ……我々の優越する
文明をもって正しく導くべきだ」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320450b25">
「これは使命なのだよ」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320460a03">
「……」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320470b25">
「そうではないかね？」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320480a03">
「はい、伯爵。
　仰る通りです」

{	DeleteStA(300,false);
	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320490a03">
（……でも大和国民にアンケートを取ったら、
『誰も頼んでねーだろ』って回答が九割以上
を占めると思います）

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320500a04">
（ツッコミ自重。
　こういうお人だと、最初からわかっていた
ではありませんか）

{	FwH("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320510a04">
（国連本部ではマシな方ですぞ）

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320520a03">
（わかってましてよ。
　論法はともかく、結論は好都合ですし……）

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0);//―――――――――――――――――――――――――――――

//◆サシュアントアップ
	DeleteStR(150,true);

	CreateTextureEX("サシュアント", 1000, -40, -70, "cg/st/resize/stサシュアント_通常_私服ex.png");
	Request("サシュアント", Smoothing);
	Zoom("サシュアント", 0, 900, 900, null, true);

	SetVertex("サシュアント", 520, 288);
	Zoom("サシュアント", 150, 1000, 1000, Dxl1, false);
	Move("サシュアント", 150, @0, @13, Dxl1, false);
	Fade("サシュアント", 150, 1000, null, true);
	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320530b25">
「…………」

{	FwH("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320540a03">
「きゃおっ!?」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆引き
	Zoom("サシュアント", 150, 900, 900, Axl1, false);
	FadeDelete("サシュアント", 150, true);
	StR(1000, @0, @0, "cg/st/stサシュアント_通常_私服.png");
	StL(1000, @0, @0, "cg/st/st香奈枝_通常_制服c.png");
	FadeStL(300, false);
	FadeStR(300, true);

	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320550b25">
「鍛造雷弾は使えない。
　それで簡単に勝利を得られるとしても」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320560b25">
「いや……だからこそでもある。
　ＧＨＱ内の洗浄が済むまでは、勝利しても
<RUBY text="・・">誰の</RUBY>勝利になるやら知れたものではないから
ね」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320570a03">
「え、ええ」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320580b25">
「良い収拾の方法はあるだろうか」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320590a03">
「やはり、撤兵するしかありませんでしょう」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320600b25">
「こちらから攻撃したのだから、こちらから
退くのは道理とも言える。
　しかしただ退けば六波羅軍の追撃を受ける
だろう」

{	FwH("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320610a04">
「横浜にまで攻め込まれかねませんな」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320620b25">
「それは望ましくない結末だ」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320630a03">
「撤退は、後方から少しずつ。
　平行して停戦交渉を進めましょう」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320640b25">
「見込みがあるかね？
　単なる痛み分けでは困る……相応の条件を
つけ、進駐軍の優位を示した上で和睦せねば
ならない」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320650b25">
「さもなくば女王の御名に傷がつく」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320660a03">
「やり方次第です。
　朝廷を利用しては如何でしょう」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320670b25">
「京都朝廷……大和の名目上の君主か。
　確かに、和平の仲介者としては最適だな」

{	FwH("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320680a03">
「鎌倉にいる舞殿宮殿下なら、窓口になって
下さると思います」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320690b25">
「よろしい。任せよう。
　すぐに動いてくれたまえ」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320700a03">
「わかりました」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320710b25">
「良い報告を待っている」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320720a04">
「……サシュアント卿」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320730b25">
「何かね？」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320740a04">
「どうか身辺にはご注意を。
　護衛の兵を離されませぬように」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320750b25">
「ああ……わかっている。
　ここは<RUBY text="・・">敵地</RUBY>だと、心得ているよ」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320760b25">
「本当は一個師団引き連れて来たかった程だ。
　六波羅に阻まれるにしろ独立派に阻まれる
にしろ、それでは大和に踏み込めないだろう
から断念したがね」

{	FwH("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320770a04">
「は……」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0320780b25">
「安心したまえ。
　迂闊に出歩くような真似はしない」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320790a04">
「そのようにお願いいたします」

{	FwH("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320800a04">
「お嬢さま、我々もできるだけ手早く用件を
済ませて戻りましょう」

{	FwH("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320810a03">
「ええ、そうね」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_033.nss"