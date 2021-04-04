//<continuation number="1020">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_022.nss_MAIN
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
	#bg062_普陀楽城大手道_03=true;
	#bg070_普陀楽城内階段ホール_03=true;
	#bg069_普陀楽城内広間_01b=true;
	#bg069_普陀楽城内広間_01c=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_厩衆=true;

	$PreGameName = $GameName;
	$GameName = "mb02_023vs.nss";

}

scene mb02_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"mb02_021.nss"

//◆移動
//◆本丸
//◆内部
//◆広間
	SoundPlay("@mbgm16",0,1000,true);
	PrintBG("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg062_普陀楽城大手道_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	WaitKey(1000);

	DrawTransition("絵暗転", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);

	WaitKey(1000);

	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	WaitKey(1000);
	FadeBG(0,true);
	DrawTransition("絵暗転", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);

	WaitKey(1000);

	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	OnBG(100,"bg069_普陀楽城内広間_01b.jpg");
	FadeBG(0,true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	WaitKey(500);

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220010b20">
「……この辺りが限界ですね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　廊下を抜け、階段を三度登り。
　評議にでも使われるのであろう広間にまで達して、
先行の密偵は足を止めた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220020b20">
「ここから先は警備に隙間が無くなります。
　やり過ごすのは難しいでしょう」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220030a00">
「わかりました。
　この先の道順は？」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220040b20">
「突き当たりの階段を、この二つ上の階まで
登って下さい。
　最上階ではありませんからご注意を」


//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220050b20">
「そこから真っ直ぐに廊下をゆき、三つ目の
枝道で曲がり、進んだ先が目的の場所です」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220060a00">
「…………。
　微妙に遠い」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　つまりはリスクが高い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220070a02">
「おい密偵。
　その部屋は、ここからみてどっちだ？」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220080b20">
「方角ですか？
　多分……ほぼ真上になるかと思います」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220090a02">
「湊斗さん。
　<RUBY text="・・・・">突き破り</RUBY>ましょう」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220100a00">
「……」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220110b20">
「……」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220120a00">
「その手があったか」


{	FwC("cg/fw/fw岩田_驚き.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220130b20">
「ほ、本気ですか？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220140a00">
「最も合理的です。
　最短距離であり、且つ派手な騒ぎを起こす
という方針にも沿う」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220150b20">
「……はぁ。
　決められたのなら、止めはしませんが」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220160a00">
「後は我々の領分。
　貴方はどうぞお戻り下さい」


{
//◆ＳＥ：短剣を投げる音。しゅっ。終了待ちしない
	CreateSE("SE01","se戦闘_攻撃_ナイフ投げ01");
	MusicStart("SE01",0,500,0,1000,null,false);
	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220170b20">
「わかりました……」


{
//◆ＳＥ：短剣が刺さる音。とすっ。終了待ちしない
	CreateSE("SE01","se戦闘_攻撃_ナイフ投げ02");
	MusicStart("SE01",0,800,0,1000,null,false);
	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220180a02">
「じゃあ行きましょう、湊斗さん。
　ここで装甲して構いませんね？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220190a00">
「――――」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220200a02">
「湊斗さん？」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0220210b20">
「…………」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220220a02">
「……？
　おい、いつまで突っ立ってんだあんた」


//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220230a02">
「さっさと逃げ――」


{	SetVolume("@mbgm*", 200, 0, null);
	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220240a00">
「一条！　廊下へ戻れ！」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220250a02">
「!?」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆照明がつく。一瞬ホワイトアウトはさせるが、皓々
//◆となったら雰囲気が出ないので、ＣＧ上は非常灯く
//◆らいの明かりか。
//◆林立する六波羅厩衆
//◆厩衆は要するにフルメタルニンジャ。
//嶋：「3d厩衆_立ち_通常」などを使用してください【09/14】
	#av_厩衆=true;

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se日常_建物_照明点灯");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 1500, "#FFFFFF");
	OnBG(100,"bg069_普陀楽城内広間_01c.jpg");
	FadeBG(0,true);

	CreateTextureEX("絵演鎧１", 900, Center, InBottom, "cg/st/3d厩衆_立ち_通常.png");
	CreateTextureEX("絵演鎧２", 700, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀.png");
	CreateTextureEX("絵演鎧３", 600, Center, InBottom, "cg/st/3d厩衆_立ち_戦闘.png");
	CreateTextureEX("絵演鎧４", 800, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀b.png");
	CreateTextureEX("絵演鎧５", 600, Center, InBottom, "cg/st/3d厩衆_立ち_通常b.png");
	CreateTextureEX("絵演鎧６", 700, Center, InBottom, "cg/st/3d厩衆_立ち_通常b.png");

	SetVertex("絵演鎧*", Center, bottom);
	Zoom("絵演鎧２", 0, 900, 900, null, true);
	Zoom("絵演鎧３", 0, 840, 840, null, true);
	Zoom("絵演鎧４", 0, 970, 970, null, true);
	Zoom("絵演鎧５", 0, 840, 840, null, true);
	Zoom("絵演鎧６", 0, 900, 900, null, true);


	Move("絵演鎧１", 0, @-420, @0, null, true);
	Move("絵演鎧２", 0, @-180, @0, null, true);
	Move("絵演鎧３", 0, @-10, @0, null, true);
	Move("絵演鎧４", 0, @120, @0, null, true);
	Move("絵演鎧５", 0, @360, @0, null, true);
	Move("絵演鎧６", 0, @520, @0, null, true);

	Request("絵演鎧*", Smoothing);

	FadeDelete("絵色白", 1000, true);

	OnSE("se戦闘_銃器_複数構える01",1000);
	OnSE("se戦闘_動作_刀構え03",1000);
	OnSE("se戦闘_動作_鎧_踏み込み01",1000);

	Fade("絵演鎧*", 800, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　遅かった。遅過ぎた。
　周囲を取り囲む武者――武者――武者。

　異形の竜騎兵の包囲陣。
　それは最早、這い出る隙間も無かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220260a02">
「なっ――」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220270a01">
《……そんなっ!?
　いつの間に!!》


{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0220280b37">
「<RUBY text="ステルス">対探査迷彩</RUBY>というものが大英連邦の独占物
であると――全く前例の無い新技術であると
信じていたのですか？
　こんな、誰でも欲しがりそうな技術が」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220290a00">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆柳生常闇斎

	CreateColorEX("絵色100", 999, "BLACK");

	StR(1000, @0, @0,"cg/st/st常闇斎_通常_私服.png");

	Fade("絵色100", 500, 200, null, false);
	FadeStR(500,true);

	SoundPlay("@mbgm13",0,1000,true);

	SetFwC("cg/fw/fw常闇斎_思考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0220300b37">
「とんでもありません。<RUBY text="・・">我々</RUBY>は古くから――
とてもとても古くから、同じ武者の<RUBY text="かんかく">探査</RUBY>さえ
幻惑する力を追求してきましたとも。
　この醜い姿を優しい闇に隠すために」


//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0220310b37">
「<RUBY text="・・・・">貴方たち</RUBY>に優しい死を与えるために」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220320a00">
（この男……！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　あの時の<RUBY text="けたい">怪態</RUBY>な侍だ。
　能舞台で、遊佐童心に成りすましていた……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0220330b37">
「無論、それが大英連邦の現技術ほどの水準
にあったとは申しませんが。
　動きを抑えれば、劒冑の熱源探査すら騙し
おおせる……その程度には達しています」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220340a01">
《…………》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/0220350b40">
《ふむ。
　そういえば月山鍛冶の一派がさような隠遁
の業を究めていると、師に伺った事があった
……》


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220360a01">
《先に言いなさいよ！　能無し！》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220370a00">
（……人の事は言えんぞ。俺達も）


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/0220380b40">
《ふん、忘れておったわ。
　吾には興味のない事なのでな》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/0220390b40">
《先刻もそう言うたであろうが？》


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220400a01">
《忘れました。
　興味ないから！》


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220410a09">
「しかし驚いたのう。
　いや、あるいはかくもあらんと思えばこそ、
常闇の手まで煩わせて布陣を整えたのだが」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220420a09">
「まさか、本当に劒冑を持つ者であろうとは」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆童心
	StL(1000, @0, @0,"cg/st/st童心_通常_私服a.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220430a02">
「……坊主！」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220440a00">
「古河公方……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　遊佐童心。彼までもが、いる。
　普陀楽城の陰の支配者――とは最早呼べまい。表に
おいても王である事を自ら豪語した、<RUBY text="たいひょう">大兵</RUBY>の僧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220450a00">
「何故、と尋ねた方が宜しいか」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220460a09">
「訊いてくれると、こちらは格好がつくのう」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220470a00">
「何故？」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220480a09">
「ふっふぅ！
　おぬしらは隠密などに向いておらんという
ことよ」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220490a00">
「……何とも耳に痛い限り」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　耳鳴りがしそうなほど。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_宥め.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220500a09">
「ま、おぬしらを責めるのは酷かな。
　おぬしらを動かした者の問題が大であろう」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220510a09">
「雷蝶殿にも困ったものじゃて……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　ちらり、と入道が視線を動かす。

{	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　まるでそれを待ち侘びていたかのように、立ち尽く
していた岩田女史がぐらりと<RUBY text="かし">傾</RUBY>いだ。
　そのまま無力に……無抵抗に倒れ伏す。

　<RUBY text="うなじ">項</RUBY>から喉まで、<RUBY text="クナイ">苦無</RUBY>が突き立っていた。
　おそらく即死であったろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220520a09">
「いま動くというのは、余りに<RUBY text="・・">正直</RUBY>過ぎよう。
　<RUBY text="はかりごと">謀事</RUBY>には向かぬ御仁じゃ……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220530a00">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220540a09">
「おぬしらの裏を読めれば、何をするか読む
のも易い。
　ま……邦氏殿下を狙うのが妥当よなァ？」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220550a09">
「殿下を襲われ、傷ひとつでも負わされたが
最後、幕閣にわしの立場は<RUBY text="の">無</RUBY>うなる。
　<RUBY text="ゆうべ">昨夜</RUBY>のような<RUBY text="・・">説教</RUBY>なら獅子吼殿もうるさく
言うまいが、事がそうなっては……な」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220560a00">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220570a09">
「では殿下が狙われるとして、いつ来るか。
　そいつはやはり、皆の気が抜けているおり
……大きな催しのあった直後ではないかな？」


{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220580a09">
「とまぁこんなところよ。
　いや、偉そうに語った後で何だが、あまり
大した種明かしではなかったのう！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　言って、莞爾と笑う童心入道。
　俺は内心で諸手を上げた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220590a00">
（駄目だこれは）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　最初から俺の手に負える仕事ではなかったらしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220600a09">
「しかし、わからんこともある……」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220610a00">
「……？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220620a09">
「不思議そうな顔をつくらずとも良いぞ。
　何がわからんのかは承知であろう」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220630a09">
「おぬしらは何処の者じゃ？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220640a00">
「立場上、答えられる質問ではない。
　しかしたった今、貴方自らが推測を語られ
たようだが」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220650a09">
「小弓公方の<RUBY text="てか">手下</RUBY>と申すか」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220660a00">
「答えられる立場にない」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220670a09">
「違うのう」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220680a00">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220690a09">
「小弓の<RUBY text="よりき">寄騎</RUBY>におぬしらのような者はおらん。
　その二領の劒冑にも見覚えはない」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220700a09">
「それ以上に……
　六波羅に<RUBY text="こうべ">頭</RUBY>を垂れるような玉ではなかろ？
ぬしらは」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220710a02">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220720a09">
「如何に？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220730a00">
「答えられる立場にない……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220740a09">
「で、あろうのぅ。
　ならばさて、答えられる立場にしてやらね
ばならぬが……」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0220750b37">
「<RUBY text="せめどい">拷問</RUBY>を受ける虜囚というものは、如何なる
秘密も口にして良いことになっております。
　古河中将様」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220760a09">
「おう、おう。
　さようであったか！」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220770a00">
（村正）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220780a01">
《なに？》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220790a00">
（この付近で、最も強力な磁場の在処を探れ）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220800a01">
《……？　諒解》


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220810a09">
「寡聞にして知らなんだわ。
　ふむぅ、悪くない」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220820a09">
「特にそちらの娘御は良いのぅ。
　秘密の訊き出し甲斐がある」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_怒りc.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220830a02">
「……<RUBY text="・・">どぶ</RUBY>みたいな目で見るんじゃねえよ。
　豚坊主が」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220840a09">
「はあっはっは！
　それがたまらん、それがたまらん」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220850a09">
「邪なものへの憤り、正しき憎悪というやつ
は実に良い。実に美しく実に旨い。
　昨夕もしこたま味わったばかりであるが、
全く飽きるということはないのぅ！」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220860a02">
「……姫さまのことか!!」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220870a09">
「くふぅ。それよそれ、その怒り。
　やれ、惜しいことよな。その怒りに任せて
舞台で襲って来てくれておれば、事はもっと
早かったんだがの」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220880a02">
「あれも罠かよ……！
　いちいちやることが<RUBY text="・・・・・">ねちっこい</RUBY>なてめぇは」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0220890a09">
「いやいや、一石二鳥を狙ってみたまでの事。
　おぬしらがおらんでもあれはやっておった。
やらずにおこうかい？　あんな面白きことを
のう！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220900a01">
《御堂。見つけたけど……》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220910a00">
（そこまで糸を射ち飛ばせるか？）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220920a01">
《ええ》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220930a00">
（良し。やれ）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220940a01">
《破壊するの？》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220950a00">
（いや。その磁気を<RUBY text="・・">回せ</RUBY>）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0220960a01">
《諒解》


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220970a02">
「……坊主。
　てめぇだけは――――」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0220980a00">
「一条」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0220990a02">
「え？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0221000a00">
「いいか。
　装甲して脱出しろ」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0221010a02">
「は……っ？」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0221020b37">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

//◆村正、糸射出
//◆糸が帯電。びぃーん。
//◆照明が過充電、一斉に割れる。ばりーん。
//◆暗闇に
//◆ずどーん。下の方で爆音。大揺れ

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se特殊_電撃_帯電02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	CreateColorEX("絵色黒", 5000, "#000000");
	CreateTextureEX("絵背景100", 5100, Center, Middle, "cg/ef/ef045_スパーク.jpg");

	Fade("絵色白", 200, 800, null, true);
	Fade("絵色白", 200, 0, null, true);
	Wait(100);
	Fade("絵色白", 0, 1000, null, true);
	Wait(100);
	CreateSE("SE02","se日常_建物_照明破損");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵色黒", 0, 1000, null, true);
	Fade("絵背景100", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景100", 0, 0, null, true);
	Wait(50);
	Fade("絵背景100", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景100", 0, 0, null, true);
	Wait(100);
	CreateSE("SE03","se戦闘_破壊_爆発01");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　幾つかの事態がほぼ同時に、しかし段階的に起きた。

　まず照明が一斉に、音を立てて破裂した。
　辺りが再び闇に閉ざされる。

　それだけならば、武者にとって何程のこともない。
　一瞬は惑乱しても、すぐに視覚を取り戻す。

{	MusicStart("SE03",0,1000,0,1000,null,false);}
　だが続いて何かが爆発し、足元が大きく揺らいだと
あっては――混乱も一瞬では済まない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	ClearFadeAll(1000, true);


}

..//ジャンプ指定
//次ファイル　"mb02_023vs.nss"