//<continuation number="2090">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_007.nss_MAIN
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
	#bg013_鎌倉俯瞰a_03=true;
	#bg009_鎌倉住宅街a_03=true;
	#bg007_若宮大路a_03=true;
	#bg007_若宮大路a_01=true;

	#ev106_雄飛と見下ろす村正_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma03_008.nss";

}

scene ma03_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_006.nss"

//◆鎌倉・夜


	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg013_鎌倉俯瞰a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm23",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　大鳥香奈枝と行動を共にする――
　といっても、彼女を関東拘置所へ連れてゆくわけに
はまさかいかない。

　彼女には署長の役宅に一室を用意することになった。
　八幡宮からは近い。駅までの距離もほどほど。生活
環境が合うかどうかは不明だが、交通の便の面で彼女
を不自由させることはないだろう。

　宵闇の下の通りを歩く。
　会話はない。

　別に隔意を示しているわけではなかった――先方が
どうかは知れないが。
　ただ、考えをまとめていただけだ。

　実のところ、悩むほどのことはなかった。
　銀星号追跡者としての俺の立場を保障する二者――
親王と署長の裁断が下った以上、今後の行動に彼女を
帯同するのは止むを得ない。

　その点が動かしようもないのなら、後は可能な限り
彼女を危険から遠ざけるよう配慮するのみだった。
　おそらくそれは難しくはないだろう。

　大尉は武者ではなく、銀星号や寄生体に対して抗戦
の<RUBY text="すべ">術</RUBY>を持たない。だが逆に言えば戦えない人間を戦闘
にまで介入させる謂れはないということになる。
　危険の少ない捜査段階でのみ協力を仰げば良いのだ。

　その方面ではむしろ俺よりよほど有能ではないかと
思われた。
　銀星号の問題に他者を巻き込むと思えば<RUBY text="じくじ">忸怩</RUBY>たるが、
利害損得の話にあえて限るならそう悪いことでもない。

　俺の思索は大体その辺りで落ち着いていた。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070010a03">
「景明さま」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070020a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	OnBG(100,"bg009_鎌倉住宅街a_03.jpg");
	StL(1000, @0, @0,"cg/st/st香奈枝_通常_私服b.png");
	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStA(0,true);
	FadeBG(0,true);
	FadeDelete("上背景", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　歩きながら、肩越しに視線を送る。
　非礼かとも思ったが、道の真ん中で立ち止まっても
仕方がない。

　重たげということもなくバスケースを右肩にかけた
彼女は、窺うような眼差しをこちらへ向けていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070030a03">
「怒ってらっしゃる？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070040a00">
「いいえ」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070050a03">
「でも、困ってはいらっしゃるのかしら」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070060a00">
「そうだとしても貴方の責任ではありません、
大尉殿。
　貴方はご自分の職責に忠実であられるだけ
なのですから」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070070a00">
「自分も己のおかれた立場、そこに発生する
責任に対して忠実であろうと思います。
　大尉殿に御協力を仰ぐことに否やはありま
せん」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070080a03">
「そうなんですの？
　なら良いのですけど……景明さまにご迷惑
をおかけするのは本意ではありませんし」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070090a04">
「ようございましたね、お嬢さま。
　ちなみに湊斗さまのご発言は意訳しますと
『すげえ邪魔だけど親王の命令だからしゃあ
ねぇのな。ケッ』ということかと思われます」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070100a03">
「がーん!?
　それは本当ですか景明さま！」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070110a00">
「はい」

{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070120a03">
「いやんっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ばた。
	CreateSE("SE01","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	DeleteStL(300,false);
	Move("@StL*", 300, @20, @180, DxlAuto, false);

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070130a04">
「お嬢さま。道端で寝ていては通行の方々の
迷惑になりますよ。
　そこのゴミ捨て場でお休みください。幸い
明日は回収日の様子」

{	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070140a03">
「あなた実はわたくしのこと嫌い!?」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070150a00">
「ですが、それはあくまで自分の心情的問題
に過ぎません。大尉殿の能力については何の
不安もなく、むしろ期待するところが大です。
　自分こそ邪魔にならぬかと不安を覚えます」

{	StL(1000, @0, @180,"cg/st/st香奈枝_通常_私服b.png");
	Move("@StL*", 300, @0, @-180, DxlAuto, false);
	FadeStL(300,false);
	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070160a03">
「まぁ、景明さまったらご謙遜を。
　今のを聞いてばあや？　わたくし景明さま
に期待をかけられていてよ！」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070170a04">
「その立ち直りの早さ、さすがでございます。
　お嬢さまはそうでなくては！」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070180a04">
「ところでお嬢さま、あらゆる生物のなかで
最も強靭なのは単細胞生物なのですがご存知
でしょうか」

{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070190a03">
「景明さま、少々お待ちくださいましねっ。
　わたくしそこの角のお肉屋さんで野暮用を
済ませて参りますので」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070200a00">
「品目不明の肉は取り扱わないと思いますが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　よくわからない主従だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070210a00">
「大尉殿」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070220a03">
「はい？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　視線を前方へ戻しつつ呼びかける。
　コッキングレバーを引き込む音が途絶え、かわりに
涼しい声が背中に触れた。

　一つ息を飲み込んでから続ける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070230a00">
「あの村のことはご存知ですか」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070240a03">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　この際、沈黙は百万の言よりも雄弁だった。
　無論の事。彼女の耳に悲報が届いていない筈がない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm18",0,1000,true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070250a00">
「面目次第もございません」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070260a03">
「なぜ、謝られますの？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070270a00">
「大尉殿の御尽力を無に帰せしめてしまいま
した。目前の戦にとらわれ、銀星号の襲来を
見逃したばかりに。
　己の無能を悔いるばかりです」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070280a00">
「無辜の死を強いられた人々にすれば……
　この悔いさえ、憎いものと映るでしょうが」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070290a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　その死を反省の材料にされたところで、それが殺さ
れた人々にとって慰めになる筈もない。
　犠牲を無駄にしないのは当然だ。しかし例え元凶を
断とうと、死者の怨念は救えない。

　救ったと思い込むことはできる。
　だがそれは生者の妄想に過ぎないのだ。

　妄想への逃避を良しとせぬのであれば、
　怨念を背に負い続けるほかはない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070300a03">
「村の話は<RUBY text="ヨコハマ">司令部</RUBY>へ戻ってすぐに聞きました」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070310a00">
「……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070320a03">
「一人も……ただの一人も……
　生き残らなかったそうですね？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070330a00">
「はい」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070340a03">
「わたくし、ずっと海外におりまして。
　大和に戻ってからまだ日が浅いんですの。
銀星号事件の、生々しい話に触れたのは今回
が初めてなのですが」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070350a03">
「どうやら、許せそうにありません」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070360a00">
「……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070370a03">
「だから、先刻のお話もあっさり受けてしま
ったのでしょうね。
　上司の意向を思えば、本当は八幡宮に張り
付いていないといけないのでしょうけれど」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070380a00">
「お気持ちはわかります。
　いえ、わかるつもりです」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070390a03">
「でも景明さまにとっては少しご事情が違う
のでしょう？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070400a00">
「…………」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070410a03">
「まだお伺いしておりませんでしたね。
　景明さまはどうして、銀星号を追うのです
か？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　詰問するような響きではない。
　いっそ優しげでさえあった。

　だからか。
　言を左右にして逃れようという意欲は<RUBY text="かえ">却</RUBY>って削がれ。

　――繰り返される惨劇に対する悲憤。
　――警察に属する者としての使命感。
　
　それらも動機には違いない。

　だが<RUBY text="・・">最初</RUBY>は違った。
　それらはこの二年間の、追走の日々の中で芽生えた
ものだった。

　最初は、ただ――――
　あいつを止めたかっただけだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070420a00">
「この先の十字路を越えればすぐに着きます」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070430a03">
「……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070440a00">
「……後程。
　落ち着いてから、ご説明しましょう」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070450a03">
「はい……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg007_若宮大路a_03.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	Wait(1000);

	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SetVolume("@mbgm*", 1500, 0, null);


	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070460a03">
「……あら？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070470a00">
「何か？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　大尉の訝しげな声。
　視線は遠く、闇の先を見つめている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070480a03">
「あの、玄関の脇に唐松の生えているお屋敷
が景明さまの？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070490a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　いや、正しくは鎌倉署長の役宅だが。
　しかし細い<RUBY text="ひとみ">眸</RUBY>をしているわりに大した視力だ。俺の
眼ではこの距離だと屋敷のシルエットしかわからない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070500a03">
「門の前にどなたかいらっしゃいましてよ。
　あれは…………あらぁ？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070510a00">
「大尉？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070520a03">
「……わたくしの知り合いです。
　いえ、そういえば……そうそう、景明さま
もご面識があるはず。そのように言っていま
したもの」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070530a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　首を傾げつつ、歩みを速める。

　近付くにつれて、香奈枝嬢の言う人影が俺の目にも
明らかになった。
　ぽつんと所在無げに立つ、小柄な姿。

　それが誰か気付くのと、その影がこちらを向くのと
は、ほぼ同時だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,true);

	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070540a02">
「湊斗さん！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070550a00">
「……貴方は」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070560a02">
「あっ、あの。
　昨日、あれから考えたんですけど、あたし、
やっぱり――」

{	StR(1000, @30, @0,"cg/st/st香奈枝_通常_私服a.png");
	Move("@StR*", 0, @-30, @0, null, false);
	FadeStR(300,false);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070570a03">
「ご機嫌よう。
　一条綾弥さん、で宜しかったかしら？」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070580a02">
「逆だッ!!<?>
{	FwC("cg/fw/fw一条_通常b.png");}
　って、なんであんたまでいる？」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070590a03">
「んまっ。
　間女の分際で家にまで押し掛けて、あまつ
さえ正妻に向かってなんて口の利きよう」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070600a03">
「あなたっ、これは一体どういう事ですの!?」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070610a00">
「いえ、そもそもがどういう事ですか」

{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070620a02">
「間女ッ!?
　正妻ッ!?」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070630a04">
「これは一大事！
　修羅場になってしまいましたよ湊斗さま。
若さゆえの過ちのツケが回ってきたのです！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　そんな借金をした覚えはない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm25",0,1000,true);

	SetFwC("cg/fw/fw一条_慌て.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070640a02">
「み、みっ、湊斗さんっ！　このでかい女は
なんなんですか、本当なんですかっ、妻って、
妻ってーー!?　このでかい女がっ」

{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070650a03">
「ぷっちん」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070660a04">
「あっ。お嬢さまの脳神経系が致命的断裂を」

//◆次、ボイスは以下の通り。
//◆Don't fuck with me! Fuck'in your baby pig!
//◆Come on, daughter of a bitch!
//◆「ドンファックウィズミー！　ファッキンユアベビィピッグ！
//◆　カマン、ドータロバビッチ！」くらいの発音か。
{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070670a03">
「なめんなゴルァ！　てめーは※※と△▲△
してろ■■が！　来いやこの○○の▼▼!!」

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070680a02">
「あァ!?　ンだァ三等兵！」

{	DeleteComic();
	FwC("cg/fw/fwさよ_驚き.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070690a04">
「風雲急を告げる湊斗家。
　憎悪と憎悪が嵐を呼び血の饗宴を招くのは
もはや時間の問題！　嗚呼、あの平和な日々
はもう帰ってこないのでありましょうかッ!?」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070700a04">
「尚、実況は鎌倉署長邸宅前から永倉さよが
お送りいたします」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070710a00">
「<RUBY text="と">止</RUBY>めて下さい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　わけがわからなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg007_若宮大路a_03.jpg");
	FadeBG(0,true);

	SetVolume("@mbgm*", 1500, 0, null);

	FadeDelete("上背景", 1000, true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070720a00">
「妻ではありません」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070730a02">
「信じてました」

{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070740a03">
「照れなくてもよろしいのに……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070750a00">
「大尉」

{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070760a03">
「あふん。その冷たい瞳も素敵」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070770a04">
「湊斗さま。脳髄をハリガネムシに食い荒ら
されたイタイ系の女を処分する最善の方法は、
心中を持ちかけて先に死なせることでござい
ますよ」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070780a03">
「その忠告はこの状況で一体どういう意味を
持つのかしら、ばあや？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070790a00">
「それで、綾弥さんはどうしてここへ？
　この家の所在をお教えした事はないと思う
のですが」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070800a02">
「すいません。
　聞いたんです……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070810a00">
「誰にでしょう」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070820a02">
「鎌倉署の窓口で、湊斗って人の家を教えて
くれって頼んだら、多分ここだって言われて」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070830a04">
「個人情報ダダ漏れでございますね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　返す言葉もない。

　六波羅の専権によって警察機構が有名無実と化して
いる現在、警察局の服務規定はただ手帳の<RUBY text="ページ">頁</RUBY>を埋める
文字列でしかなかった。
　一通り目を通している職員さえどの程度いることか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070840a00">
「……諒解しました。その点は結構です。
　御用の向きを承りましょう」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070850a02">
「…………昨日の話です」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070860a00">
「それは既にお断り致しました」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070870a02">
「でも……
　…………あたしは……ッ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070880a00">
「自分の返答は変わりません。
　お引取り下さい」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070890a02">
「湊斗さん……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070900a00">
「もう辺りも暗くなりました。お若い婦女子
の方がひとりで出歩いて良い時間帯ではあり
ません。
　宜しければ適当な所までお送りしましょう」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070910a02">
「……か、帰れません」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070920a00">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070930a02">
「あたしの考えも変わらないんですっ！
　あたしを、使ってください！　警察で……
あなたの下で！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　――そう。
　彼女は昨日も、同じ事を言ったのだ。警察署の前で。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆昨日の場面。モノクロマスク？
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg007_若宮大路a_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStA(0,true);

	SetVolume("@mbgm*", 1500, 0, null);

	FadeDelete("上背景", 1000, true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070940a02">
「あっ、あのっ。
　この間はっ、ありがとうございましたっ」

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070950a02">
「その、たっ、助けていただいて……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070960a00">
「そのような事はお気になさらず。
　迷子の世話は警察の職務です」

{	FwC("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070970a02">
「い、いえ、そっちじゃなくてっ。
　あ、いえ、それも、そうなんですけどっ」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070980a02">
「あの……
　実は、その」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070990a00">
「はい」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071000a02">
「今日はお願いがあって来たんです。
　あ、あたしを……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071010a02">
「あたしを、あなたの下で使ってください！
　何でもやりますから！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071020a00">
「…………」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0071030a11">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆復帰
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 15000, "#000000");

	OnBG(100,"bg007_若宮大路a_03.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(0,true);

	FadeDelete("上背景", 750, true);
	FadeDelete("絵暗転", 750, true);

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071040a02">
「お願いします……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071050a00">
「警察局への就職を希望されるのであれば、
学校を卒業後に採用試験を受けて下さい。
　自分には他にお答えの仕様がありません」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071060a02">
「それじゃ遅いんです！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071070a00">
「そのようなことは決して。
　貴方はお若い」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071080a00">
「警察官になるのに数年を掛けても、充分に
活躍ができるでしょう。
　それに、誰もがそうした手順を経て正式な
警官たるのです。貴方を除く事はできません」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071090a02">
「わかってます。警官でなくていいんです。
ただの下働きでいい。給料もいりません。
　何か……手伝わせてください！　あなたの
仕事を、あたしに！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071100a00">
「…………」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071110a03">
「あらまあ」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0071120a04">
「おやまあ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　大鳥主従の頓狂な声が耳を通り抜ける。
　腹の底に何か、ぐつぐつとしたものを感じていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071130a00">
「……どうして、そこまで」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071140a02">
「あたし……
　あたしは……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　思い詰めた眼差しが痛い。
　そこに込められたものが何か、理解できる。だから
痛い。

　その<RUBY text="・・">誤解</RUBY>は酷い苦痛だ。
　俺には。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071150a02">
「初めてだったんです！」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071160a03">
「まっ。
　大変聞き捨てなりませんがそれはひとまず
置きまして景明さま、そういうことでしたら
ちゃんと責任は取って差し上げませんと！」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071170a02">
「六波羅の野郎共に陰で文句を並べるだけの
奴ならどこにだっている。でも、立ち向かう
人はどこにもいない。あたしだってそうです。
せこい嫌がらせをするのがせいぜいだった」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071180a02">
「あなたが初めてなんです。口だけじゃない、
奴らと戦える人は！
　初めて……初めて見たんです……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071190a00">
「…………」

{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071200a03">
「……スルーされてます……」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0071210a04">
「空気読みましょうよお嬢さま」

{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071220a02">
「六波羅の奴らが間違ってるのはわかってた。
わかってるのに何もできない自分が嫌だった！
　あたしは間違っていることが許せない……
許したくない！　見て見ぬふりなんか嫌だ！」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071230a02">
「父様に恥じない娘でいるために……
　何かしたかったんです。なにか！　それを
ようやく見つけたんです！」

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071240a02">
「お願いします、湊斗さん！
　あなたの力になりたいんです！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　――ああ。
　この目。
　この眼。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想ＣＧ。新田雄飛

	CreateColorEXadd("絵フラ", 25000, "#FFFFFF");

	SetVolume("@mbgm*", 300, 0, null);
	OnSE("se擬音_フラッシュバック01",1000);

	Fade("絵フラ", 300, 1000, null, true);

	CreateTextureSP("絵回想", 12000, -660, -490, "cg/ev/resize/ev106_雄飛と見下ろす村正_d.jpg");
	CreateTextureEX("絵回想ＳＴ", 12100, Center, InBottom, "cg/st/st雄飛_通常_制服.png");
	Fade("絵回想ＳＴ", 0, 500, null, true);

	Wait(500);

	Fade("絵フラ", 700, 300, null, true);

	Wait(1000);

	Fade("絵フラ", 300, 1000, null, true);

	Delete("絵回想*");

	FadeDelete("絵フラ", 300, true);

	SoundPlay("@mbgm32",0,1000,true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071250a00">
「貴方は誤解している。
　何もかも誤解している」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071260a02">
「湊斗さん……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071270a00">
「貴方は俺の事を嫌っていた筈だ。
　侮蔑していた筈だ。下らない奴だと、何の
値打ちもない人間と、そう見ていた筈だ」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071280a02">
「そ、それは……知らなかったんです。
　すみません。あたしは馬鹿だったから……
何もわかってなかった。自分が大したことを
してるつもりで。本当は、あなたが」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071290a00">
「違う。嘗ての貴方の方が湊斗景明を知って
いる。正確に理解している。
　自分は一切の敬意を払うに値しない、唾棄
すべき人間です。屑としか呼びようもない」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071300a03">
「…………」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071310a02">
「なんでですかっ。
　あなたは戦っていた！　きっと、これまで
もずっと！　あたしみたいな餓鬼から馬鹿に
されても、言い訳もしないで！」

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071320a02">
「あなたは、尊敬できる人だって……
　あたしはそう思います！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071330a00">
「……っ、ぁ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　全てをぶちまけたかった。
　八つ当たり、自己の感情の無思慮な発散をしてしま
いたい。その卑劣な行為は俺をいくらかでも楽にして
くれるだろう。

　無論、許される事ではなかった。この両肩に負った
責務と、俺を後援する親王と署長の立場を思えば。
　
　だが――だが。抑え切れないものもある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071340a00">
「俺は、」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071350a00">
「<RUBY text="・・・・・・">俺は人殺しだ</RUBY>！
　そんなものを尊敬してどうする!!」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071360a02">
「それでも、あなたは多くの人を救ったじゃ
ないですか！
　あの村だって――」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071370a00">
「救っていない！
　あの村は、銀星号に滅ぼされた！」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071380a02">
「――――!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　綾弥が息を呑む。
　当然だろう。この事件はまだ報道されていない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071390a00">
「俺が代官らと争っている間に銀星号が村を
襲っていた！
　そうして皆殺しになった。誰も彼も死んだ」

{FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071400a00">
「俺が何を救った!?」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071410a02">
「……、……っ……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071420a00">
「何も救っていない。
　俺はただ殺しただけだ」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071430a02">
「……ぁ、
　…………し、を……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071440a00">
「分かったら帰れ！
　俺に近付くな……俺はお前が夢想している
ような人間じゃない。ただの人殺しだ」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071450a00">
「行け!!
　俺の近くにいれば、お前も――」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071460a02">
「でも！
　あなたはあたしを助けた！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071470a00">
「……ッ!?」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071480a02">
「あなたがいなかったら、あたしはあの時に
殺されていた！　六波羅の手で！
　今あたしが生きてるのはあなたがいたから。
　それは確かなことです！」

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071490a02">
「違いますか!?」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071500a00">
「なっ……、……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　違う。
　そうじゃない。
　そういうことじゃない――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071510a00">
「違う……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071520a02">
「違いません！
　あなたに助けられた命を、あたしも誰かを
助けるために使いたいんです！　何ができる
わけでもないけど……何かしたい」

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071530a02">
「だから、あなたの力になりたいんです！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071540a00">
「……ッ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　違う。
　何を言っているんだ、この娘は！

　違う――！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071550a03">
「……ふぅ。仕方ありませんね。
　では、景明さま。彼女の身柄はわたくしが
お預かりするという事で、如何ですかしら？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071560a00">
「大尉！」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071570a02">
「……あんたは関係ねぇだろ？」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071580a03">
「あら。大ありでしてよ？
　わたくし、進駐軍の軍人として景明さまの
お仕事に協力することになりましたから」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071590a02">
「そ……そうなのか？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071600a03">
「はい。
　でも、お覚悟はおありかしら？　わたくし
達が相手にしなくてはならないものは、幕府
よりも厄介かもしれないのですけれど」

{	FwC("cg/fw/fw一条_驚くb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071610a02">
「え？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071620a03">
「たった今、お話にもあがりましたでしょ？
　景明さまのお仕事は<RUBY text="・・・">銀星号</RUBY>事件の解決です」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071630a02">
「――――」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071640a03">
「あの村のこともその一環だったとか。
　どうします？　学生さん。悪代官に印籠を
突きつけて大団円――とまでお気楽にはいか
ない話のようでしてよ？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071650a02">
「…………。
　それ、確かなんだな？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071660a03">
「ええ」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071670a02">
「あの銀星号を……
　あの悪魔と戦うのが湊斗さんの仕事……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071680a03">
「おやめになる？」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071690a02">
「……いいや」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071700a02">
「やる。やらせてください！
　湊斗さん、お願いします！」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071710a00">
「……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071720a03">
「如何です？
　先程も申しました通り、景明さまの方で不
都合がおありなら、わたくしの方で引き受け
ますけれど」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071730a00">
「……大尉。何故……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071740a03">
「そうですね……
　多少の縁があったというのが一つ。あの村
を離れる折にたまたま出会いまして」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071750a03">
「そう、その折は、少しご協力を頂きました
のよ？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071760a00">
「……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071770a03">
「後は……
　共感、ですかしら」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071780a02">
「共感？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071790a03">
「ええ。わたくしも景明さまのことは『尊敬』
しておりますもの。
　巨大な悪に単身で立ち向かおうとする勇気
……素晴らしいです」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071800a00">
「……ッ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　貴方までが。
　そのような――世迷言を。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071810a03">
「……」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071820a02">
「……あんた、実は結構いいやつなのか？」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071830a03">
「実は結構いいやつですのよ？」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071840a02">
「そうか……悪かった。
　ただのでかい女じゃなかったんだな」

{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071850a03">
「…………」

{	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0071860a04">
「おお……お嬢さま、忍耐しておられますね。
　ぴくぴくとわななくこめかみが雄々しゅう
ございますよ」

{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071870a03">
「ふっ、ふふふ……
　この程度、何でもなくってよ」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071880a03">
「これからよろしく。
　綾弥ちゃん」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071890a02">
「苗字にちゃん付けするんじゃねえ!!
　くそ……まあいいや」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071900a02">
「とにかく礼は言っとく。
　……湊斗さんの役に立てるようにしてくれ
るなら、<RUBY text="・・">白蟻</RUBY>にだって頭くらい下げるさ」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071910a03">
「あら光栄。
　そうねぇ、景明さまのお仕事の邪魔になら
ないように頑張ってくださいましね？」

{	FwC("cg/fw/fw一条_冷笑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071920a02">
「あんたこそな、<RUBY text="ヤドロク">宿六</RUBY>進駐軍。
　足引っ張るようだったら箱詰めにして横浜
へ送り返してやる」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071930a03">
「うふふふふ……そう。
　仲良くしましょうね、<RUBY text="・・・・・・・・">景明さまのために</RUBY>」

{	FwC("cg/fw/fw一条_冷笑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071940a02">
「ああ、仲良くしてやるよ。
　<RUBY text="・・・・・・・・・">湊斗さんのためにな</RUBY>」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0071950a04">
「美しい光景でございますねぇ。
　あたかも国家間の和平会談を見ているかの
ようでございます」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071960a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　この二人は、何を言っているのだ。
　俺のため？　俺のためだと？

　俺が――何だというのだ。
　俺は――只の――罪人だというのに。

　それが――どうして――
　好意などを向けられねばならない？
　敬意などを向けられねばならない？

　それは――酷い。
　そんな話は――無い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071970a00">
「……ゃめろ」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071980a03">
「？　景明さま？」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071990a02">
「湊斗さん？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0072000a00">
「……寄るな」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0072010a04">
「おや？
　湊斗さま、顔色がよろしくありませんよ。
お疲れなのでは……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0072020a00">
「……く……くるな」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0072030a03">
「景明さま？
　なんだか、本当にご様子が――」

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0072040a00">
「触るなッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぐらっと。視界が揺れる感じ

	SetVolume("@mbgm*", 1000, 0, null);

	CreatePlainEX("絵ＥＦ", 5000);
	SetShade("絵ＥＦ", HEAVY);

	OnSE("se人体_動作_後ずさり01",1000);

	Zoom("絵ＥＦ", 300, 1250, 1250, DxlAuto, false);
	Fade("絵ＥＦ", 300, 1000, null, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0072050a00">
「――――!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
//◆ばたん。

	CreateColorEX("絵暗転", 15000, "#000000");
	Fade("絵暗転", 600, 1000, null, false);
	Move("絵ＥＦ", 600, @0, @-60, AxlAuto, true);

	OnSE("se人体_衝撃_転倒05",1000);

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0072060a02">
「……湊斗さん!?」

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0072070a02">
「ど、どうしたんですかっ、大丈夫ですか!?
　しっかりしてください！」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0072080a03">
「…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0072090a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(0, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_008.nss"