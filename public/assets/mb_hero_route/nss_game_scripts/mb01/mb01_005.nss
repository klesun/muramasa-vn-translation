//<continuation number="1990">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_005.nss_MAIN
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
	#bg027_普陀楽評議の間_01=true;
	#bg063_普陀楽城内廊下_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_006.nss";

}

scene mb01_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb01_004.nss"


//◆普陀楽城
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg027_普陀楽評議の間_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050010a07">
「スーパーサイクロンでどーだ？」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050020a08">
「嫌よ、そんなの。
　究極美麗でいいじゃない」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050030a07">
「何ですかその下品の極地。
　じゃー、マッスルストロングとか」


{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050040a08">
「どうもいまいちねぇ。
　……金剛大華輪」


{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050050a07">
「うわ、ありえねー。
　せめてダイアモンドファイヤーにしない？」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050060a08">
「うーん……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050070a06">
「……童心殿。
　これは何の討議だ？」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050080a09">
「いや、何でござろうか……
　それがしにもよく」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050090a07">
「んー？
　あぁ、新しい名前だよ」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050100a06">
「名前？」


{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050110a07">
「うん。
　今回、なんでか知らんけど<RUBY text="おじじ">大将領</RUBY>を失って
しまったあてら六波羅であるわけだーが」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050120a07">
「まぁ、それはそれとしておいて。
　いい機会だし、新しい方向性を打ち出して
みるのもいーんでないかなと」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050130a06">
「……それで？」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050140a07">
「まずは形からってことで名前から。
　……あ、ゴールドサンダー幕府とかどうよ」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050150a08">
「悪くないわね！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050160a06">
「貴様らの頭が限りなく悪いわ!!」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050170a09">
「まぁまぁ。
　いや、ご両所……それも結構でござるが、
ひとまず目先の要件から片付けようではござ
らんか」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050180a07">
「なんかあったっけ？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050190a06">
「……有り過ぎるわ。
　貴様、この状況がわかっているのか？」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050200a07">
「たぶん。
　おじじが死んで、幕府崩壊の危機ー」


{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050210a07">
「あれ？
　なんか大変っぽい？」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050220a09">
「うむ。なかなか、大変でござるぞ。
　ふわっはっはっはっはっはっはっ」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050230a06">
「今更気付くな！
　童心殿も、他人事のように笑っている場合
か」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050240a07">
「冗談だっつーの。真に受けんなよ。
　で？　雷蝶。あれどーなったのさ。八幡宮
事件の調査」


{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050250a08">
「……進展はないわね。
　何もかも闇の中。一体、何があったのやら」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050260a06">
「ふん……まあいい。
　殿下が亡くなられたのは最早疑えぬ事実だ
ろう。事態の詳細など、それに比すれば些細
な事だ」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050270a09">
「そうさな。
　その事実にどう対応するかを今は考えねば
ならぬて」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050280a08">
「ええ……
　まずは盛大な国葬を執り行ないましょう。
天下を征されたお父様の葬儀ですもの。朝廷
に掛け合って皇族の出席も仰がないと……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――


	SetFwC("cg/fw/fw獅子吼_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050290a06">
「戯け。
　そんな事はどうでも良い」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050300a08">
「どうでもいいわけないでしょ！
　お父様の弔いなのよ!?」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050310a06">
「だから？
　たかが死体を焼いて埋めるだけの事だろう
が。いや……その手間さえいらんではないか」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050320a07">
「死体ねーもんなー」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050330a08">
「こ、こっ、この不敬者！
　お父様に忠誠を誓った口で、よくもそんな
事を……！」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050340a06">
「俺が忠誠を誓ったのは生ける大将領殿下だ。
　死せる殿下ではない」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050350a06">
「そんな何の役にも立たぬ代物に構っていら
れるか。
　今は危急の時だ」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050360a08">
「や、役に立たぬ代物……？
　あんた……そこまでっ」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050370a09">
「まぁ、ま。
　雷蝶殿……」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050380a08">
「童心様っ！　今のを聞きましたでしょう!?
　礼節を知らない<RUBY text="またもの">陪臣</RUBY>上がりの戯言と、聞き
流しておくにも限度があります！」


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050390a08">
「お父様がいなくなったのをいい事に、下劣
な<RUBY text="さが">性</RUBY>を剥き出しにして……！
　元より性根はそんなものとわかっていたけ
れど、いざ見せられればやっぱり許せないわ」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050400a06">
「ふん。好きにほざけ。
　貴様如きが俺の性をどう測ろうと、興味は
ない」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050410a06">
「俺は己の為すべきを為すだけだ。
　妨げる者は駆逐する。雷蝶、貴様がほざく
以上の事をしようというなら、最初に槍玉に
上げるべきはそのけばけばしい首になるな」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050420a08">
「……ッッ」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050430a06">
「もっとも……そんな心配はしていないが。
　なぁ、<RUBY text="・・・">なぜか</RUBY>殿下の後継者になれなかった
次男坊。貴様にもし度胸の欠片もあったなら、
そんな立場に甘んじてはいなかったろうな？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆ジャキ。立ち上がって太刀に手を掛ける雷蝶
//◆応じて立つ獅子吼

	StR(1000, @120, @30,"cg/st/st雷蝶_通常_制服.png");
	CreateSE("SE01","se人体_衝撃_転倒05");
	CreateSE("SE01b","se戦闘_動作_刀構え02");
	StL(1000, @-120, @30,"cg/st/st獅子吼_通常_制服.png");
	CreateSE("SE02","se人体_動作_立ち上がる_畳");

	MusicStart("SE01",0,1000,0,1250,null,false);
	Move("@StR*", 300, @-30, @-30, DxlAxl, false);
	FadeStR(300,false);
	Wait(200);
	MusicStart("SE01b",0,1000,0,1000,null,false);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("@StL*", 300, @30, @-30, DxlAxl, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw童心_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050440a09">
「雷蝶殿」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050450a08">
「……」


{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050460a09">
「ここは殿中ゆえ。
　鯉口三寸抜かば、即ち謀叛でござる」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050470a08">
「ぐっ……」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050480a09">
「無論、獅子吼殿……
　殊更に挑発の言を弄し、かような愚行へと
追いやった貴殿も糾問は免れぬぞ」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050490a06">
「……チ」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050500a09">
「双方、お座りあれい。
　……己の立場というものを今一度思い出さ
れては如何かな」


{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050510a08">
「……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050520a06">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆座る
	CreateSE("SE01","se人体_動作_立ち上がる_畳");
	CreateSE("SE01b","se人体_動作_立ち上がる_畳");
	MusicStart("SE01",0,1000,0,800,null,false);
	Move("@StR*", 300, @0, @30, null, false);
	DeleteStR(300,false);
	Wait(150);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Move("@StL*", 300, @0, @30, null, false);
	DeleteStL(300,true);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050530a09">
「結構でござる。
　では評議を続けると致そう」


{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050540a07">
「やー、なんかおじじの苦労が偲ばれるね。
　よくこんな連中をまとめてたもんだ。いな
くなって初めてわかる人間の真価」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050550a07">
「突き上げる追悼の思いに胸を塞がれた足利
茶々丸は、激情のままカステラを貪り食う事
で涙に代えるのであった」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050560a08">
「代えるなよ……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050570a09">
「……さて。
　殿下の葬儀は無論、大事でござる。六波羅
一門の面目にも関わることであれば」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050580a06">
「それは否定せぬが――」


{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050590a08">
「ふん！　お黙り、成り上がり者。
　流石は童心入道様、こんな輩とは違って物
の道理というものを良くわかってらっしゃい
ます」


{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050600a09">
「ま、ま。雷蝶殿。
　話は最後までお聞き願いたい」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050610a09">
「……確かに葬儀は大事。
　しかし、大事の中にも軽重がござる。順序
と言い換えてもようござるが」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050620a08">
「順序？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050630a09">
「お考え頂きたい。
　現状で莫大な費用と人員を投じねばならぬ
国葬など執り行えば、さて、いかが相成るで
ござろう」


//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050640a09">
「遺憾ながら、いま幕府の足元は揺れており
申す。……その揺れを、大敵ＧＨＱ、そして
各地に潜伏する倒幕主義者どもが虎視眈々と
窺っておることは疑いもなき事」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050650a08">
「でも、だからといって……！」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050660a09">
「無論、無論。雷蝶殿のご心痛はわかり申す。
父君の葬礼を後回しにせねばならぬなど、子
として立つ瀬の無い想いでござろう！
　しかし真実、殿の御霊安からんを思えば」


//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050670a09">
「ここはまず、幕府の緩んだ<RUBY text="たが">箍</RUBY>を締め直し、
邦氏公のもと体制を再建してこそ、草葉の陰
で殿もご安堵なさるのではあるまいか……。
　如何かな」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050680a08">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050690a09">
「今はとにかく、朝廷を動かし、邦氏公への
大将領宣下を急がせては……？
　然る後、新たな大将領の名をもって、国葬
を執り行えばよろしゅうござろう」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050700a07">
「あい。異議なーし」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050710a06">
「それが当然の筋書きだな。
　馬鹿でなければ誰もがそう考えるだろう」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050720a08">
「うぐ……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050730a09">
「雷蝶殿」


{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050740a08">
「……い……異存はありません。
　確かに……その方が無難でしょうから」


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050750a08">
「少し気が急いていたようです。
　……申し訳ありません、童心様」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050760a09">
「いやいや、一刻も早く父を弔いたいと願う
は、孝心ある子であればまったく当然のこと。
　政略を説いて邪魔立てするそれがしこそ、
恥ずかしゅうて身の置き所もござらん」


{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050770a08">
「いえ……」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050780a07">
「残念だったな秀吉くん。
　まっ、大徳寺はまたにしとけよ。信長公も
秀勝も逃げやしねーからさ」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050790a08">
「!!
　な、何を言っているのかわからないわね」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050800a06">
「……ふっ」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆たしなめ
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050810a09">
「茶々丸殿」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050820a07">
「へいへー」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050830a08">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050840a09">
「室町探題の報告によれば、朝廷工作の目処
はついておるとの事。おおかた武家伝奏が形
ばかり渋っているのでござろう。
　金でつついてやればすぐ動くわ」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050850a06">
「邦氏公の大将領襲位は、幕府の健在を誇示
する事になる……少なくとも外面の上ではな。
　今は何よりそこが肝要だ」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050860a07">
「上辺を取り繕えば中身もその内ついてくる
ってか。確かにな。
　まー八幡宮の親王あたりが邪魔しなけりゃ、
うまくいくんじゃねーの？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050870a06">
「今は建朝寺の親王だ。
　ふん……あの高貴な鶏に何ができる？　頭
の中で陰謀めいたものを弄んでいるとしても、
実行するだけの手腕がなければ何の害も無い」


{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050880a08">
「……そうね」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050890a09">
「余計な茶々を入れてくるようなら、金では
なく針で尻をつついてやれば良かろうよ。
　人を改心させるに経文などいらぬ。<RUBY text="こがね">黄金</RUBY>と
<RUBY text="はがね">鋼鉄</RUBY>があれば済むものだからのう」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050900a07">
「坊主の台詞じゃねえぞ」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050910a06">
「今更だがな。
　で……差し当たっての方針はそれで良いと
してだ」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050920a06">
「我々の身の振りをどうする」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050930a09">
「うむ……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――


	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050940a06">
「いつまでも普陀楽城に雁首揃えているわけ
にはいかん。
　足元が崩れては元も子もない。各々の公方
府へ戻り、管区の混乱を平定する必要がある」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050950a07">
「あっちこっちでキナ臭い連中がちょこまか
してるみたいだかんなー。
　そろそろどっかで火がつくか？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050960a09">
「そうなる前に手を打たねばいかんのう。
　だがさて、この城に邦氏公をひとり残して
ゆくわけにもいかぬし……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050970a06">
「ああ。
　そんな真似をすれば、邦氏公の首は三日と
経たず倒幕派どもの宴へ供されることになる
だろうよ」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050980a07">
「大宰府の<RUBY text="ユキツラ">幸行</RUBY>でも呼ぶ？」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050990a08">
「馬鹿言わないで頂戴」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051000a09">
「犬さん犬さん、餌をやるからおいでなさい、
てか……喜んで来るだろうの」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051010a06">
「軍を率いてな。
　関東を舞台に、我々と奴で決戦だ……」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051020a07">
「面白いじゃん？」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051030a08">
「面白さで選ぶなっつーの。
　あんな獅子身中の虫の標本みたいなやつを
呼ばなくたって、麿たちのうち一人が残れば
済むことでしょう」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051040a09">
「ふむう、ご尤もでござる。
　して、誰がその任を負うべきですかな？」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051050a08">
「……麿とて<RUBY text="おゆみ">軍管区</RUBY>の情勢が気にならないと
言えば嘘になります。
　けれど、麿は邦氏にとっては叔父」


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051060a08">
「一番近い肉親です。
　他の誰が残るより、麿が残る方が、邦氏を
安心させてやれるでしょう」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051070a09">
「……成程、成程。
　如何にも、左様でござりましょうなァ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051080a07">
「そーお？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051090a06">
「…………」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051100a08">
「……」


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051110a08">
「童心様のご賛同が頂けるなら安心です。
　では、この件はそのように――」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051120a06">
「立場は？」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051130a08">
「え？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051140a06">
「立場はどうする。
　貴様が一人、邦氏公を抱えてこの城に残る
のなら、事実上の後見人だ」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051150a06">
「小弓公方のままでその役を務めるのか？
　それとも、何か別の地位を用立てるのか」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051160a08">
「そ、そんなことはどうでもいいじゃない。
　今そんなことまで決めなくたって、」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051170a07">
「そーだぞ獅子吼。
　あてらがいなくなった後で決めればどんな
地位でも思いのままだってーのに。邪魔して
やるんじゃねーよ」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051180a06">
「そうか。
　それは、思いもしなかった」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051190a06">
「すまんな、雷蝶」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051200a08">
「ぐぬっ……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051210a09">
「……して、雷蝶殿。
　何か腹案はおありでござるかな？」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051220a08">
「……え、ええ。
　確かに、邦氏を補佐して政務を見ることに
なるでしょうから。一応、相応の役職は得て
おいた方が良いかもしれませんわね」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051230a09">
「ご尤も。ご尤も。
　して？」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051240a08">
「……関東管領の地位を頂ければ。
　邦氏を存分に<RUBY text="たす">援</RUBY>けてやれると、思うのです
けれど」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051250a09">
「ほゥ」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051260a07">
「はーん？
　そういや、あての父親っぽい男がそんな役
やってたよねー。一時期」


{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051270a06">
「ああ。
　関西経略に失策を犯すまでは、堀越守政が
その地位にあって幕閣を主導していた……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051280a06">
「つまるところは執権だ。
　……数年来空席だったその座を、よりにも
よって貴様が襲うと？」


{	FwC("cg/fw/fw雷蝶_逆上.png");}
//嶋：修正（よってって）【090930】
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051290a08">
「よりにもよって何よ！
　麿は足利本家出身、先代大将領の実子にし
て次代大将領の叔父よ!?　麿の他に誰が関東
管領の地位に相応しいって言うの!!」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051300a06">
「誰が相応しいかは知らん。
　だが、貴様が相応しくないのは確実だ」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051310a08">
「こっ、こっ、この……！」


{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051320a09">
「ま、ま、ま。
　それがしは、雷蝶殿の関東管領就任、賛同
するに決して吝かではありませぬぞ」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051330a08">
「童心様！」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051340a06">
「喜ぶな、戯け。
　<RUBY text="・・・・">気前良く</RUBY>くれてやるとは誰も言っておらん
ぞ」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051350a07">
「言葉のマジックだね。
　さすが天下の婆娑羅公方。そこにしびれる
あこがれるー」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051360a08">
「あんたらねぇぇぇぇ!!」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051370a09">
「ふむぅ。
　獅子吼殿は反対でござるかな？　ご自身が
仰られている通り、雷蝶殿の管領就任は<RUBY text="まつりごと">政事</RUBY>
の筋道に沿うものと心得申すが……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051380a06">
「だから？
　なるほどこの天保銭は、額面だけを見れば
管領どころか大将領位を継いでもおかしくは
ない程だが」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051390a06">
「それだけの値打を認めてやっても良いと、
貴方こそ本気で思っているのか？
　童心殿」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051400a09">
「…………」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051410a08">
「ど、童心様？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051420a09">
「……して。
　茶々丸殿のご存念は如何に」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051430a07">
「条件付きなら認めてもええよー」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051440a09">
「条件、と？」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051450a07">
「関東管領だけじゃ足りない。
　雷蝶、幕府のなんばーつーになる気なら、
もっとゴージャスな役職につくのだ！」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051460a08">
「もっとゴージャス!?」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051470a06">
（……大体オチが読めたな……）


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051480a09">
（……大体オチが読めたのう……）


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051490a07">
「そうだ雷蝶。
　ただの関東管領なんかじゃ、おめーの器に
ふさわしくない。違うか？　いーや違くねぇ。
あてはおめーの力を信じてる」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051500a08">
「ちゃ、茶々丸……あんたって子は。
　そ、それで、どんな地位ならいいの？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051510a07">
「関東管領代理補佐心得でどーお？」


{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051520a08">
「格、下がってんじゃないのッッッ!!」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051530a06">
「……賛成」


{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051540a08">
「賛成すなッッ!!」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051550a09">
「うむぅ。
　その辺りが折衷案でござるかのぉ……」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051560a08">
「ど、童心様まで、そんな」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051570a09">
「いや、冗談でござるよ。雷蝶殿。
　まぁそう、お焦り召されるな」


//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051580a09">
「それがしに異論はござらぬが……どうやら
お二方は時期尚早と考えておられる様子。
　言われれば成程、それも一理。我ら関東四
公方が足並みを揃えて国難にあたる為にも、」


//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051590a09">
「如何でござるかなァ。
　今回はひとまず、見送っては……」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051600a08">
「で、でも、でもっ、童心様！
　邦氏の補佐を務めるためには、それなりの
地位もあった方が政務を円滑に進められると」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051610a06">
「要するに、だ。
　地位で下駄を履かねば後見役が務まらんの
なら、そもそも貴様はそんな役割に相応しく
ないのだ」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051620a06">
「実力が足らんという事なのだからな」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051630a07">
「ふぁいなるあんさー出ました」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051640a08">
「おーだーまーりッッ!!
　童心様っ、どうかこんな下賤上がりどもの
戯言に耳をお貸しにならず、麿を――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051650a09">
「戯言にせよ、そうでないにせよ。
　四公方の半数を占めるご両所が賛同せぬと
いう事実は、雷蝶殿……重く受け止めぬわけ
には参りますまい？」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051660a08">
「うっ……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051670a09">
「ここはどうか、お慎みあれ。
　……して獅子吼殿」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051680a06">
「何かな」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051690a09">
「雷蝶殿が城に残られるのも反対でござるか。
　しからば邦氏公を守るお役目、<RUBY text="どなた">何方</RUBY>が務め
ればよろしかろう？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051700a06">
「和尚で良かろう。
　俺はこれ以上篠川を放置しておけぬし……
茶々丸は論外だ」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051710a07">
「論外だな。アイツはいけねぇよ」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051720a06">
「消去法で、童心殿しかおらん」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051730a09">
「ふむぅ……
　茶々丸殿のご意見は如何でござろうか」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051740a07">
「いいんでねー？
　古河はそれほどガタついてないみたいだし。
もうしばらくあんたが帰らなくたって大丈夫
だろ」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051750a08">
「…………」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051760a09">
「これは……困り申したなァ。
　……雷蝶殿？」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051770a08">
「は、はい？」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051780a09">
「お二方のご推挙を受けては無碍にもできま
せぬが……これではまるでそれがしが雷蝶殿
から役目を奪ったかの如き仕儀。
　居た堪れぬ心地でござる」


//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051790a09">
「どうか雷蝶殿のご存念をお聞かせ下されい。
　ご不興とあらば――それは無論、当然の事
なれば――それがしよりご両名にお詫びして、
取り下げて頂く所存にござるが……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_不興.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051800a08">
「……い、いいえ。とんでもない。
　童心様なら安心して邦氏をお任せできます。
お父様に長く仕え、最も信任の厚かった御方
ですし……ホ、ホホホ」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051810a09">
「では、雷蝶殿もお二人に同意と？」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051820a08">
「…………ええ。
　童心様、どうぞよろしくお願いします」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051830a09">
「それでは致しかたござらん。身に余る大任
なれど、承り申した。
　この童心坊主、一命に代えても邦氏殿下を
お守り致そう」


//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051840a09">
「方々は管区に戻られ、諸事を片付けられた
のち、再びご登城下されい」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051850a06">
「承知した」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051860a07">
「へいふー」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051870a08">
「…………」


{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051880a08">
「では、評議はこれまでということで。
　宜しいでしょうか」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051890a09">
「左様でござるな。
　お疲れでござった、雷蝶殿」


{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051900a08">
「いえ……
　失礼します」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――


//◆雷蝶、去る。足音荒く
	CreateSE("SE01","se人体_足音_歩く09");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(2000);

	SetFwC("cg/fw/fw獅子吼_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051910a06">
「……ふん。
　挨拶をして出て行くだけの自制心は残って
いたか。あの男にしては、大したものだ」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051920a07">
「ひでー言い草だなァ。
　しっかしあいつも、公方なんかになんない
で、一介の侍大将やってりゃ幸福になれたの
にねー？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051930a09">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

	ClearWaitAll(1000, 1000);

//◆廊下
//◆雷蝶

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg063_普陀楽城内廊下_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	StL(1000, @30, @0,"cg/st/st雷蝶_通常_制服.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw雷蝶_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051940a08">
（何よ、もう……！
　踏んだり蹴ったりじゃない！）


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051950a08">
（邦氏が大将領になる前に、お父様の葬儀を
麿の手で執り行えば……実権を握る足掛かり
になった！
　それを……あいつらっ！）

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051960a08">
（関東管領も駄目なんて！
　血筋を鑑みれば何の不思議もないっていう
のに……！）


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051970a08">
（このままじゃ、幕府は童心様のものになる。
　そんな……）


{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051980a08">
（…………）


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051990a08">
（やっぱり……
　あの連中と手を組むしかないみたいね……）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb01_006.nss"