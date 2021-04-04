//<continuation number="1190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_001.nss_MAIN
{

	$TITLE_NOW=" ――――　エピローグ　―――― ";

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
	#ev257_大和北方地図_a=true;
	#ev257_大和北方地図_b=true;
	#bg047_景明故郷町a_01=true;
	#bg018_知事執務室_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_002.nss";

}

scene md06_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_037vs.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");

	FadeDelete("上背景",1500,true);

//◆テロップ「Ｅｐｉｌｏｇｕｅ」
	CreateTextureEX("エピローグ", 6000, 20, Middle, "cg/sys/Telop/lg_エピローグ.png");
	Fade("エピローグ", 1000, 1000, null, true);
	WaitKey(2000);
	FadeDelete("エピローグ", 1500, true);

//◆北方の町並み。だが例によってbg047
//◆テロップ「陸奥」
	OnBG(100, "bg047_景明故郷町a_01.jpg");
	FadeBG(0, true);

	FadeDelete("黒",1500,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	CreateTextureEX("テロップ", 6000, Center, InBottom, "cg/sys/Telop/tp_陸奥.png");
	Fade("テロップ", 1000, 1000, null, true);
	WaitKey(1000);	
	FadeDelete("テロップ", 1500, true);

//◆ばたん。扉を殴り開ける勢い
//◆知事室。bg018
	CreateTextureEX("絵背景01", 100, @0, @0, "cg/bg/bg018_知事執務室_01.jpg");
	Fade("絵背景01", 1500, 1000, null, true);
	Delete("@OnBG*");

	OnSE("se日常_建物_扉開く07", 1000);

	WaitKey(500);

	SetNwC("cg/fw/nw秘書.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010010e229">
「知事！」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010020e201">
「どうした。
　その様子だと、なにやら素晴らしい吉報の
ようだが？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010030e229">
「……残念ながら」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010040e201">
「わかっている。言ってみただけだ。
　私がこの<RUBY text="むつのくに">陸奥國</RUBY>の知事を拝命してから一年、
吉報なんて聞いたためしがない」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010050e201">
「それで？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010060e229">
「<RUBY text="おおまざき">大間崎</RUBY>からの緊急報告です」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010070e201">
「<RUBY text="えぞ">北曾</RUBY>の情勢についてか？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010080e229">
「はい」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010090e201">
「<RUBY text="ロシア">露帝</RUBY>軍に動きがあったんだな？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010100e229">
「はい……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010110e201">
「待ってくれ」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010120e201">
「…………良し、心の準備は出来た。
　北曾の鎮台兵が一斉に全滅したと聞かされ
ても大丈夫だ」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010130e229">
「本当ですか？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010140e201">
「……いや。君の気配り如何によるかな。
　あまり棘のない、柔らかい言葉で、小鳥を
撫でるように伝えてくれれば……私も衝動的
にピストル自殺しなくて済むと思う」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010150e229">
「弾を抜いておいて下さい」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010160e201">
「わかった。もういい。人間、諦めが肝心だ。
　緊急報告というのをそのまま伝えてくれ」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010170e229">
「はっ」

//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010175e229">
「函館に多数の艦艇が入港しているそうです。
　戦艦ガングート、戦艦インペラトリッツァ
他、少なくとも一〇隻以上の軍艦が碇を下ろ
している模様――とのこと」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010190e201">
「……そうか。
　露帝が北曾を完全占領<RUBY text="・・">した</RUBY>という報告では
なく、いよいよ<RUBY text="・・">する</RUBY>という連絡か。つまり」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010200e201">
「なら、現実逃避する余裕くらいは有りそう
だな」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010210e229">
「いえ、知事。
　それが……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010220e201">
「？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010230e229">
「函館には陸軍も集結しつつあるらしく」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010240e201">
「……あんな所に今、露帝の陸軍が？
　なぜだ」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010250e229">
「おそらく陸海軍の共同作戦を行うためでは
ないかと」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010260e201">
「それはわかるが、何処を相手にだ。
　そんな大規模な合同作戦をやって陥とさな
くちゃいけないような大和軍の拠点が、いま
北曾にあるか？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010270e229">
「無いと思われます。
　……北曾には」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010280e201">
「…………」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010290e229">
「…………」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010300e201">
「<RUBY text="こっち">陸奥</RUBY>か!?」

{	NwC("cg/fw/nw秘書.png");}
//嶋：修正（論理）【09930】
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010310e229">
「理論的に考えて」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010320e201">
「……」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010330e229">
「……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010340e201">
「ピストル……」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010350e229">
「知事」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆渡島半島と陸奥地方
	CreateTextureSP("絵背景02", 200, Center, Middle, "cg/ev/ev257_大和北方地図_a.jpg");
	DrawTransition("絵背景02", 1000, 0, 1000, 100, null, "cg/data/blind_02_01a_1.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　大和北方領の枢要地、<RUBY text="えぞ">北曾</RUBY>。
　その現情勢は実に混沌としている。

　大和国内の動乱に乗じて渡海侵攻を果たした露帝軍、
これに対して劣勢に立たされつつも抗戦を続ける北曾
駐留軍――更に決起した先住民族、本州の戦争に敗れ
逃亡してきた軍閥残党らが入り乱れ。

　勢力図は日毎に変動し、精確な把握は誰にも不可能
という状況にまで陥っている。
　ただ<RUBY text="おしま">渡島</RUBY>半島を制圧し、本国との補給線を確立した
露帝軍の優越は誰の目にも瞭然であった。

　時間の長短はさて置き、やがて露帝は北曾の支配を
完了し、本州侵攻に取り掛かるだろうと見られていた。
　
　だが――――

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	DrawDelete("絵背景02", 1000, 1000, "blind_02_01a_0", true);

//◆知事室

	SetNwC("cg/fw/nw秘書.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010360e229">
「知事、鎮守府からの返報です」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010370e201">
「やっとか……
　何と言ってきた？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010380e229">
「露帝軍の企図は北曾を占領して本州侵攻の
足場とするにあり、従って今回の行動は津軽
海峡における航行の安全を目的とした示威と
思われる」

//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010390e229">
「動揺する<RUBY text="なか">勿</RUBY>れ、詳細を確認したのち必要に
応じて援兵を送る。
　――以上です」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010400e201">
「…………」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010410e201">
「冗談としては面白いが、それがもしも本気
だったら困るな」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010420e229">
「困りますね」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010430e201">
「本当のところは、何と言ってきたんだ？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010440e229">
「繰り返しになりますが」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010450e201">
「……」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010460e229">
「要するに、ただの威嚇だから気にしないで
おけ、と」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010470e201">
「……っ……！
　馬鹿か？　馬鹿なのかあの連中は？」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010480e201">
「露帝は北曾を征服してから本州に来る――
教えて頂くまでもない！　こっちだってその
つもりでいた！
　しかし、今はもう違う！」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010490e201">
「奴らは考えを変えた……！
　なかばゲリラ化した北曾の大和軍に構って
いても仕方ない――東北を奪えば北曾の兵も
孤立して立ち枯れになると見切ったんだよ！」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010500e229">
「ええ……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010510e201">
「示威なわけないだろうが。
　あいつらが北曾に攻めてきてからこれまで、
威嚇なんて可愛い真似を一度でもしたか!?」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010520e201">
「これ見よがしに軍事行動の準備だけして、
実際には行動しなかった、なんてことあった
か!?」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010530e229">
「全く……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010540e201">
「必要に応じて援兵!?
　それは敵軍がこの陸奥に攻め込んできたら
ってことか？　じゃあ援軍が来るまで我々は
どうしてればいいんだ？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010550e229">
「さあ……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010560e201">
「……鎮守府の連中は、もう、何だ……
　全員そろって脳に炎症でも起こしたのか？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010570e229">
「ありそうな話です」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010580e201">
「…………。
　もう一度鎮守府に繋いでくれ」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010590e201">
「私が直接、将軍と話す」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010600e229">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆北部六州と鎮守府
	CreateTextureSP("絵背景02EX", 190, Center, Middle, "cg/ev/ev257_大和北方地図_a.jpg");
	DrawTransition("絵背景02EX", 1000, 0, 1000, 100, null, "cg/data/blind_02_01a_1.png", true);

	WaitKey(1000);

	CreateTextureSP("絵背景02", 200, Center, Middle, "cg/ev/ev257_大和北方地図_b.jpg");
	DrawTransition("絵背景02", 1000, 0, 1000, 100, null, "cg/data/blind_02_01a_1.png", true);
	Delete("絵背景02EX");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　鎮守府は北大和の防衛を目的とする軍組織である。
　陸奥、陸中、陸前、羽後、羽前、そして北曾の六州
を管轄下に置く。

　まさしく露帝の極東軍を仮想敵として用意された軍
であるから、その侵攻をすぐさま撃退とはゆかずとも、
戦線を支えられるだけの戦力は当然のこと有している。
　鎮守府は支え――中央の援軍を待ち、反攻して勝つ。

　それが鎮守府の基本構想である。
　そして今回、構想は全くの画餅であった。

　大和軍は敗走を続け、北曾の失陥は今や不可避。
　かく至ったのには無論、当初の予想を超える露帝の
執拗さもあるが。それのみではなかった。

　鎮守府に二つの目と二本の腕があるならば、北方へ
向けられるのはその半分――あるいはそれ以下――で
しかないのだった。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	DrawDelete("絵背景02", 1000, 1000, "blind_02_01a_0", true);

//◆知事室

	SetNwC("cg/fw/nw知事.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010610e201">
「駄目だ……」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010620e229">
「……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010630e201">
「話になりゃしない。
　必要と判断されたら兵を送る、の繰り返し
だ」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010640e229">
「援軍は今、必要なんですが……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010650e201">
「鎮守府はわかっていない。
　……いや……わかっている、本当は！」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010660e201">
「しかしあいつらには中央の覇権争いの方が
重要なんだ。
　関八州を分捕るために、北方六州を捨てる
気でいる……」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010670e229">
「そんな」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010680e201">
「馬鹿な、って言えたら幸せだ。
　鎮守府と露帝は既に密約を結んでいて北曾
と東北の移譲で折り合いがついてる、なんて
ことは絶対に有り得ないって信じたいもんだ」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010690e229">
「…………」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010700e201">
「露帝軍は海峡を渡って来る。
　鎮守府は動かない」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010710e201">
「私の権限で使える戦力らしきものは警官隊
くらいだ。
　上陸を阻止する方法は……ない……」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010720e229">
「知事……ならいっそ……
　攻められる前に、降伏しますか」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010730e201">
「……」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010740e229">
「鎮守府が関東の抗争に介入し、北曾の旗色
が悪くなり始めた時点で、津軽地方の諸市は
露帝に保護を求める動きを起こしています。
　それに陸奥國全体が乗る形で――」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010750e201">
「悪くない。
　無抵抗で露帝の軍門に下れば、少なくとも
戦争被害は受けなくて済む理屈だ」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010760e229">
「はい」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010770e201">
「市街地を略奪され、抵抗した市民が何人か、
何十人か、何百人か殺される。
　それでも無駄に戦って惨敗するよりはまし」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010780e229">
「……はい」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010790e201">
「で、だ。
　それからどうなる？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010800e229">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw知事.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010810e201">
「露帝は封建制度の維持に固執している国だ。
　皇帝と貴族はそうするだけが生き延びる道
だと思っているし……それはあながち間違い
でもない」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010820e201">
「だから彼らは領土を広げ、占領地を農地に
して、住民を農奴にする。
　大和でもそう。既に北曾では始まっている」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010830e201">
「いずれこの陸奥も。我々も。
　銃に怯えながら畑を耕すことになる。いや
炭鉱を掘るのかもしれないし工場で人間機械
になるのかもしれないが……」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010840e201">
「抵抗しても、降伏しても、そうなる運命は
変わらんよ。
　結果は同じということだ」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010850e229">
「…………」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010860e201">
「我々の生活は徳川時代まで逆戻りする。
　いや……それ以下だな」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010870e229">
「……何か、方法はないのでしょうか」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010880e201">
「あれば是非とも知りたい。
　私自身については諦めもつく……だが家族
がいるし、家族のことを除けてもこの陸奥は
私の生まれ故郷だ」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010890e201">
「諦めをつけるには重い。
　少しばかり重過ぎる」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010900e229">
「……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010910e201">
「君も同じだったな」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010920e229">
「はい。
　ここは故郷で……家族もいます」

//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010930e229">
「どうしようもないからと、投げ出せるもの
ではありません」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010940e201">
「だがどうしようもないな……。
　住民全員でどこかへ避難できるわけもなし」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010950e229">
「そもそもこの陸奥が、<RUBY text="きた">北曾</RUBY>と<RUBY text="みなみ">関東</RUBY>から疎開
してきた人々で一杯ですからね……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010960e201">
「東西の海しか逃げ場はないか。
　神様に祈って、海を真っ二つに割って貰う
か？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010970e229">
「それで約束の地へ行き着けるなら」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010980e201">
「前世紀から延々と戦乱が続きっ放しの大陸
へ渡るのが関の山か。
　神仏の救いを夢見ることさえできない状況
とはな」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010990e229">
「不信心のつけでしょう。きっと」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011000e201">
「……」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011010e201">
「…………」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0011020e229">
「……知事？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw知事.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011030e201">
「不信心者は不信心者なりに、頼れるものは
ある……か……」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0011040e229">
「？」

{	NwC("cg/fw/nw知事.png");}
//嶋：修正（防げる）
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011050e201">
「必要なのは軍事力だ。
　侵略を妨げるだけの」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0011060e229">
「そうですが……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011070e201">
「戦力になるなら、この際悪魔でも構わない」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0011080e229">
「…………」

//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0011090e229">
「知事、それは」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011100e201">
「かの傭兵帝国は、特定の条件さえ呑むなら、
どんな依頼でも決して拒まないそうだ。
　どれほどの大国、どれほどの大軍でも敵に
回すと」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0011110e229">
「聞いたことはあります。
　しかし、その条件というのが――」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011120e201">
「ああ」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011130e201">
「さっき、拳銃使わなくて良かったな。
　この命にもっと有効な使い道があった」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0011140e229">
「……知事」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011150e201">
「そんな顔をするな。愁嘆場じみてきてこそ
ばゆくなる。
　別に高潔な自己犠牲の精神に駆られている
わけじゃない……単に責任を全うするだけだ」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011160e201">
「給料分の仕事をすると言った方がいいか。
　陸奥を守るのが私の役目だからそうする、
それだけの話だ」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0011170e229">
「…………」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011180e201">
「私は〝武帝〟に行く。
　後のことを頼む」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0011190e229">
「……はい……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_002.nss"