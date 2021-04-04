//<continuation number="1370">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_003.nss_MAIN
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
	#bg111_武帝の宮_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_オーリガ=true;

	$PreGameName = $GameName;

	$GameName = "md06_004.nss";

}

scene md06_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_002.nss"

//◆武帝の宮。武者が数人立ち並ぶ？

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100, "bg111_武帝の宮_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

	SoundPlay("@mbgm24", 0, 1000, true);

	#voice_on_オーリガ=true;

	StC(1000, @0, @0, "cg/st/stオーリガ_通常_私服.png");
	FadeStC(300, true);

	SetFwR("cg/fw/fwオーリガ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030010b01">
「ようこそ、知事殿。
　歓迎します」

{	FwR("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030020b01">
「こんな所ですが、どうか堅苦しくなさらず」

{	NwR("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030030e201">
「は……どうも」

{	FwR("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030040b01">
「本当ならまずはテラスの方にご案内して、
お茶を差し上げるべきなんでしょうけど。
　お察しするに、話を急いだ方があなたには
親切のようだ」

{	NwR("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030050e201">
「確かに……。
　今は玉露とアールグレイの区別もつきそう
にない」

{	FwR("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030060b01">
「ここへ来られる方は大半そうですよ。
　お茶を一杯楽しむ間に国が滅びると信じて
いる」

{	NwR("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030070e201">
「……」

{	FwR("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030080b01">
「申し遅れましたが、私はオーリガ。
〝武帝〟の渉外担当です」

//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030090b01">
「代表して話をさせて頂くことになりますが、
構いませんか」

{	NwR("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030100e201">
「それは勿論。
　決定権も、貴方が？」

{	FwR("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030110b01">
「いえ。私は話をするだけ。
　決定は、あちらの」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆キャラ消し

	DeleteStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆ボックスを適当な位置に動かすか。
　
　　　　　　　「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0, "cg/st/stオーリガ_通常_私服.png");
	FadeStR(300, true);

	SetNwC("cg/fw/nw知事.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030120e201">
「……あの方は？」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030130b01">
「〝武帝〟」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030140b01">
「この名は私達の総称ですが、もし誰か一人
が担うとするなら、それはあの人になります。
〝武帝〟が最も小さかった時、既に〝武帝〟
であった人なので」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030150e201">
「……？
　要は、貴方がたの社長ですか？」

{	FwC("cg/fw/fwオーリガ_笑顔.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030160b01">
「社長！　いいな、社長。
　ええ、そう考えてもらって問題ありません」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030170b01">
「利益追求にまるで興味を示してくれない、
困った社長ですけどね」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　
　　　　　　　「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0, "cg/st/stオーリガ_通常_私服.png");
	FadeStR(300, true);


	SetFwC("cg/fw/fwオーリガ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030180b01">
「おっと。
　<RUBY text="・・">社長</RUBY>は無駄口を好まれない」

//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030190b01">
「あなたもお急ぎだ。
　早速、本題に入りましょう」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030200e201">
「ええ。
　……単刀直入に言えば、貴方がたの<RUBY text="ちから">武力</RUBY>を
お借りしたい」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030210b01">
「<RUBY text="ロシア">露帝</RUBY>軍の攻撃を防ぐために、ですね」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030220e201">
「ご存知でしたか」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030230b01">
「<RUBY text="・・・・・">当社の業務</RUBY>は質の良い情報を常に確保して
おかねば成り立ちません。
　地球の裏側の政変も一時間以内に報告され
ますし、隣近所の動静ならもっと早い」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030240e201">
「……説明せずに済むのは助かります。
　仰る通り、函館の露帝軍が」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030250b01">
「明朝、あなたの陸奥へ渡海侵攻を仕掛ける」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030260e201">
「……<RUBY text="・・">明朝</RUBY>!?」

{	FwC("cg/fw/fwオーリガ_笑顔.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030270b01">
「おや。それはご存知なかったんですか。
　まいったな、情報はタダ売りするもんじゃ
ないんだけど……まぁ仕方ない。今回限りの
サービスってことで」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030280b01">
「明日の朝ですよ。露帝軍の予定表に、陸奥
へピクニックって書いてあるのは。
　てっきりあなたもそれを知ったから慌てて
ここへ来られたんだと思ってました」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030290e201">
「……いや……
　猶予が許されないのはわかっていましたが、
まさか……明朝とは」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030300e201">
「間違いないのですか？」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030310b01">
「波と風の状況が良くなかったら順延される
かもしれませんね」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030320e201">
「…………」

{	FwC("cg/fw/fwオーリガ_笑顔.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030330b01">
「気が変わって<RUBY text="カミカゼ">神風</RUBY>を祈るつもりになられた
のなら、良い神社をご紹介しますが」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030340e201">
「結構です。神風では何も解決しないという
ことは、先の大戦で充分に学びましたから。
　やはり貴方がたにお願いしたい」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030350e201">
「まだ間に合うなら、ですが……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwオーリガ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030360b01">
「間に合わないとしたら？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030370e201">
「神社を。
　何なら身投げに向いた断崖絶壁とか、二度
と出てこられない樹海とかでも」

{	FwC("cg/fw/fwオーリガ_笑顔.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030380b01">
「大丈夫。ご心配なく。
　この場で契約が結ばれれば、充分間に合い
ます」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030390b01">
「〝武帝〟の戦力は機動性と即応性において
人語に落ちません。
　しかも今回は距離が近い……これは何より
幸いでしたね」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030400e201">
「少し言葉を足して下さい。
　不幸中の、と」

{	FwC("cg/fw/fwオーリガ_笑顔.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030410b01">
「不幸な時こそ小さな幸運が必要だって思い
ませんか？
　平穏の中の幸運は大抵気付かれもしないし、
その程度の価値です」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030420b01">
「それで、ご依頼は。
　必要な規模の戦力を必要な期間だけ、津軽
海峡の防衛隊として雇用なさりたい？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030430e201">
「は……あ、いや。
　こちらとしては防衛ではなく、先制攻撃を
お願いしたいのです」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030440b01">
「先制攻撃」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030450e201">
「露帝軍が函館から動く前に。
　損害を与え……撤退させて頂きたい」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030460b01">
「なるほど」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030470b01">
「私達の要求する雇用料金は、ほとんど必要
経費程度。
　それでも安くはない額だし、継続的に雇う
となれば大金になる」

//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030480b01">
「今の陸奥に、その余裕はありませんか」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030490e201">
「……身も蓋もない」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030500b01">
「失礼」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030510e201">
「しかしその通りです。
　経済は混乱する一方、出費は嵩む一方なの
で」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030520e201">
「私の一存で動かせる金では……」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030530b01">
「短期間の雇用しかできない。
　なら守るより、攻撃を」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030540b01">
「正しいお考えです」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030550e201">
「……」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030560b01">
「攻撃に優る防御はありませんしね。
　函館で戦えば陸奥に被害が及ぶ心配はない
というのも大きい」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030570b01">
「私達の性質にもその方が適している」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030580e201">
「では？」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030590b01">
「問題ありません。
　当方としては、何も」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030600e201">
「おお……」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030610b01">
「後は。
　……<RUBY text="・・・">あなた</RUBY>次第です」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030620e201">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwオーリガ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030630b01">
「〝武帝〟の契約が如何なるものかは？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030640e201">
「……耳にしています。
　噂を、色々と」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030650b01">
「理由を含めて、詳しいご説明をするべきで
しょうね」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030660e201">
「理由ですか……
　それは遠慮させて下さい」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030670b01">
「ご興味ない？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030680e201">
「というより、聞かない方が良さそうなので。
　多分、酷く心地の悪い話でしょうから」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030690e201">
「余計なことは聞かず、自分の責任を果たす
ことだけ考えて死にたいのです」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030700b01">
「わかりました。
　なら控えましょう」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030710b01">
「ところで、今のお言葉は契約条件の承服を
意味するものと考えてよろしいのですか？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030720e201">
「……ええ。
　身の回りの整理はすべて済ませてきました。
ここから生きて帰るつもりはありません」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030730e201">
「煮るなり焼くなり、如何様にも。
　……いえ、なるたけ楽な方法を選んで頂き
たくはありますが」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030740b01">
「結構です。
　それで？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030750e201">
「……？　それで？」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030760b01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw知事.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030770e201">
「他にも何か必要なのですか。
　払えるものは払います……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030780e201">
「陸奥が守られるのであれば……何でも」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030790b01">
「そうですか」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030800b01">
「では最後に確認しましょう。
　知事殿、あなたは<RUBY text="ちから">武力</RUBY>を求めますか？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030810e201">
「はい……
　是非とも」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030820b01">
「〝武帝〟！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	DeleteStR(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　
　　　「――――――――――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0, "cg/st/stオーリガ_通常_私服.png");
	FadeStR(300, true);

	SetNwC("cg/fw/nw知事.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030830e201">
「……」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030840b01">
「承認が下りました」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030850b01">
「直ちに部隊を編成、函館へ向かわせます。
　露帝軍の司令部を壊滅させ、主だった艦船
も航行不能に」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030860b01">
「今夜一杯で全て片付くでしょう」

//◆嘆息
{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030870e201">
「……っ……」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030880b01">
「肩の荷が下りたというお顔をしてます」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030890e201">
「そうですね。
　重いやつを下ろしました」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030900e201">
「感謝します……」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030910b01">
「そんなものは要りません。
　これは契約なんですから」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030920b01">
「ただ……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030930e201">
「は」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030940b01">
「あなたが大きな誤解をしていなければ良い
のですが」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0030950e201">
「誤解？」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030960b01">
「…………」

{	FwC("cg/fw/fwオーリガ_通常b.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030970b01">
「<RUBY text="くらべたてわき">蔵部帯刀</RUBY>！」

{	NwC("cg/fw/nw武者.png");}
//【ｅｔｃ／蔵部】
<voice name="ｅｔｃ／蔵部" class="その他男声" src="voice/md06/0030980e147">
「はッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がしゃっ。武者が一歩歩いた音

	OnSE("se特殊_鎧_駆動音02", 1000);

	WaitKey(500);

	SetFwC("cg/fw/fwオーリガ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0030990b01">
「今回は君の隊に任せる」

{	NwC("cg/fw/nw武者.png");}
//【ｅｔｃ／蔵部】
<voice name="ｅｔｃ／蔵部" class="その他男声" src="voice/md06/0031000e147">
「有難く」

{	FwC("cg/fw/fwオーリガ_通常b.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031010b01">
「〝武帝〟の掟を言え」

{	NwC("cg/fw/nw武者.png");}
//【ｅｔｃ／蔵部】
<voice name="ｅｔｃ／蔵部" class="その他男声" src="voice/md06/0031020e147">
「善悪相殺！」

{	FwC("cg/fw/fwオーリガ_通常b.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031030b01">
「ならばどうする？」

{	NwC("cg/fw/nw武者.png");}
//【ｅｔｃ／蔵部】
<voice name="ｅｔｃ／蔵部" class="その他男声" src="voice/md06/0031040e147">
「殺めた敵兵の数を勘定し」

{	SetVolume("@mbgm*", 1000, 0, null);}
//【ｅｔｃ／蔵部】
<voice name="ｅｔｃ／蔵部" class="その他男声" src="voice/md06/0031050e147">
「同じ数だけ、陸奥の民衆も殺して参る」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031060b01">
「よろしい」

{	SoundPlay("@mbgm04", 0, 1000, true);
	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031070e201">
「……!?」

{	FwC("cg/fw/fwオーリガ_通常b.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031080b01">
「但し、<RUBY text="・・">一名</RUBY>減らしておくこと」

{	NwC("cg/fw/nw武者.png");}
//【ｅｔｃ／蔵部】
<voice name="ｅｔｃ／蔵部" class="その他男声" src="voice/md06/0031090e147">
「はッ」

{	FwC("cg/fw/fwオーリガ_通常b.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031100b01">
「行け」

{	NwC("cg/fw/nw武者.png");}
//【ｅｔｃ／蔵部】
<voice name="ｅｔｃ／蔵部" class="その他男声" src="voice/md06/0031110e147">
「御免！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆がしゃっ。去る
	CreateSE("SE01","se人体_足音_鎧_複数駆け去る01");
	MusicStart("SE01",0,800,0,1000,null,false);

	SetNwC("cg/fw/nw知事.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031120e201">
「……まっ、待て！」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031130b01">
「何か？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031140e201">
「陸奥の民衆も殺す、と聞こえたぞ!?」

{	FwC("cg/fw/fwオーリガ_笑顔.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031150b01">
「そう言いましたので」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031160e201">
「私だけではないのか!?」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031170b01">
「依頼人の御命は必ず頂きます。
　が……今回の場合、それだけではどうにも
なりませんね」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031180b01">
「今時の軍は将軍が一人死んだ程度で止まる
ものでもないですし。
　相当量の殺戮が必要……となるとあなたの
命だけでは<RUBY text="・・・・・・・">勘定が合わない</RUBY>」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031190b01">
「ですので、不足分はあなたの味方から。
　守ろうとしたものから頂きます」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031200e201">
「……敵と味方を同じ数、殺すのか」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031210b01">
「ええ、そうです」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031220e201">
「――――――」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031230b01">
「やはり多少の誤解があったようですね。
　けど、後悔はなさらなくていいんですよ」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031240b01">
「あなたは何も間違ったことをしていない」

//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031250b01">
「〝武帝〟が介入しなければ、陸奥の人々が
ただ一方的に殺されるだけだった。
　露帝の正義のもと、ただただ一方的に」

{	FwC("cg/fw/fwオーリガ_笑顔.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031260b01">
「しかし私達が動くからにはそうはさせない。
　必ず、両方に均等な死を与えます」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031270b01">
「正義が勝利することのないように」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031280e201">
「…………なぜ」

{	FwC("cg/fw/fwオーリガ_通常b.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031290b01">
「……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031300e201">
「なぜ、そんなことをする？」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031310b01">
「理由は聞きたくないと、先程」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031320e201">
「なぜだ!?」

{	FwC("cg/fw/fwオーリガ_瞑目.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031330b01">
「…………。
　<RUBY text="・・">なぜ</RUBY>」

//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031340b01">
「なぜ、敵も味方も殺してしまうのか？
　なぜ、善しも悪しきも殺してしまうのか？」

{	FwC("cg/fw/fwオーリガ_通常.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031350b01">
「お答えしましょう」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0031360e201">
「…………」

{	FwC("cg/fw/fwオーリガ_通常b.png");}
//【オーリガ】
<voice name="オーリガ" class="オーリガ" src="voice/md06/0031370b01">
「あなたが求めた<RUBY text="ちから">武力</RUBY>とは、
　……そういうものだから」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

//◆フェードアウト
//◆テロップ「ＥＮＤ」
	CreateColorEX("黒", 6000, "BLACK");
	Fade("黒", 1500, 1000, null, true);

	WaitPlay("@mbgm*", null);

	CreateTextureEX("絵エンド", 6000, 20, Middle, "cg/sys/Telop/lg_エンド.png");
	Fade("絵エンド", 1000, 1000, null, true);

//◆ウェイト
	WaitKey(3000);

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md06_004.nss"