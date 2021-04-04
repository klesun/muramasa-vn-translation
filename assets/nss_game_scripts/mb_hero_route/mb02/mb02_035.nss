//<continuation number="350">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_035.nss_MAIN
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
	#bg072_火災で倒壊した和風建築_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_036.nss";

}

scene mb02_035.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"mb02_034.nss"

//◆正宗サイド
//◆焼け落ちた出城
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg072_火災で倒壊した和風建築_03.jpg");
	CreateSE("SEL01","se背景_ガヤ_建物炎上_L");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SEL01",2000,1000,0,800,null,true);
	FadeDelete("絵暗転", 2000, true);

	SetFwC("cg/fw/fw童心_宥め.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350010a09">
「くはっ……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350020a09">
「はっ。
　は、は、は……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350030a02">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350040a09">
「我が婆娑羅道……潰えたり。
　一身の欲に耽溺し、徳を捨て法を忘れ理を
侮り、堕落し果てたこの身魂……遂に断たれ
たり」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350050a09">
「我は我が道を踏破し得ず。
　中途に<RUBY text="たお">斃</RUBY>る……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350060a09">
「……無念よのう……」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350070a02">
「……そんなの、当然だ。
　おまえは、間違ってたんだから」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350080a09">
「うむ。
　うむ……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350090a09">
「罪は裁かれた。
　悪は報いを受けた」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350100a09">
「世に正義はあったのう……」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350110a02">
「…………」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350120a09">
「くふっ」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350130a09">
「くふ、ふふ、ふははは」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350140a02">
「……笑うんじゃねえ」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350150a09">
「ふはっ――
　はぁはははははははは！」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350160a02">
「笑うな！
　何が可笑しい！」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350170a09">
「む？　楽しいに決まっておるではないか。
　正義はあったのだぞ………悪業への報いは
あったのだぞ？」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350180a09">
「これほど痛快な話が他にあろうか……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350190a02">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350200a09">
「おぬしこそ何故笑わん。
　この結末こそは、おぬしが求めていたもの
であろうが」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350210a02">
「――それは」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350220a09">
「おぬしは正義を掲げ。
　姦悪なるこの遊佐童心と戦い」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350230a09">
「勝利し」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350240a09">
「殺したのだ」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350250a02">
「――――」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350260a09">
「誇るがいい。
　笑うがいい」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350270a09">
「この敗者を嘲り無慈悲に哄笑するがいい！」

{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350280a09">
「<RUBY text="・・・・・・・・・・">おぬしは完璧に正しく</RUBY>、
　<RUBY text="・・・・・・・・・・・・・・・・・・・">その正しさをもってわしを殺したのだから</RUBY>
<RUBY text="・・">のう</RUBY>!!」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350290a02">
「――――――――」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350300a09">
「く、く、く……
　ふわっはっはっはっはっはっはっは!!」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350310a02">
「……黙れよ……」


{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350320a09">
「はあっはっはっはっはっはっはっは!!」


{	FwC("cg/fw/fw一条_憎悪b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0350330a02">
「黙れッ!!」


{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350340a09">
「は、は――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ざしゅざしゅざしゅ。何度も突き刺す音
	CreateSE("SEL02","se戦闘_攻撃_刀_ヒット02");
	MusicStart("SEL02",0,1000,0,1000,null,true);


	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	CreateVOICE("童心","mb02/0350350a09");
	MusicStart("童心",0,1000,0,1000,null,false);

	$残時間=RemainTime("童心");
	WaitKey($残時間);

/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆この台詞、ボイスのみ。テキスト出さず
{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0350350a09">
「ふふっ、ふふふ……
　ははは……はぁははははは…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

*/


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_036.nss"