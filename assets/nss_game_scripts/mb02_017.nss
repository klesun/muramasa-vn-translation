//<continuation number="270">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_017.nss_MAIN
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
	#bg001_空a_03=true;
	#bg067_普陀楽城内能楽堂_01a=true;
	#bg067_普陀楽城内能楽堂_01b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_018.nss";

}

scene mb02_017.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_016.nss"

//◆夕
//◆能楽堂
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg067_普陀楽城内能楽堂_01a.jpg");
	CreateSE("SEL01","se背景_ガヤ_ざわめき01_L");
	MusicStart("SEL01",3000,800,0,900,null,true);
	FadeBG(3000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　政所の公人はまとめて中正面の<RUBY text="けんしょ">見所</RUBY>へ回された。
　柱が邪魔で、能を楽しむには一番都合の悪い席だが、
身分を思えば当然だろう。

　招待客の主眼である高官達はまだ来場していない。
　しかし遊佐童心と思しき大柄な男の姿は既にあった。
地位に見合わぬ腰の軽さだが……主催者としての配慮
を示しての事か。

　それにしてもあの公方、粋な<RUBY text="ひたたれ">直垂</RUBY>はいつもの事だが、
今日はそれに加えて紺の頭巾を被っている。
　あれは何の趣向なのやら。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170010a02">
「あ……
　姫さま！」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170020a00">
「何？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170030a02">
「み……景秋さん、あれ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　一条の指差す方角を見やる。

　高官らの入場が始まっていた。
　その列中に混じり、目立たぬ身なりの若い女性――
岡部桜子がいる。

　……なんと。
　童心入道はあの姫まで招いていたのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170040a02">
「この間より、少し元気そうです」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170050a00">
「うむ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st桜子_通常_私服b.png");
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　心当たりはあったがそれは云わず、頷くのみに留め
ておく。
　俺は姫の姿に目を凝らした。

　緑なす髪に、紫の花――
　<RUBY text="アラセイトウ">紫羅欄花</RUBY>が一輪、挿されていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170060a00">
「……そうか」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170070a02">
「？　なにか？」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170080a00">
「いや」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　一通り高官やその妻子らが座に着いた後も、正面の
中央、主賓の席はまだ空いたままだった。
　誰がそこへ着くのかはわかっている。

　程なく。
　一際物々しい集団――それは集団の頭たる人物より
周りを固める女官や警護兵によるところが大きかった
――が現れて、その主賓席へ向かう。

　足利四郎邦氏である。
　やがて六衛大将領の地位を死せる祖父から受け継ぎ、
六波羅の……否、天下の棟梁となるべき少年。

　さして心楽しくもなさそうに静々と歩く彼は、ふと、
唐突に顔の向きを変えた。
　何か、種類の異なる視線を感じ取ったかのように。

　一方向を見る。
　……岡部桜子。

　少年の眼が驚きに見開かれた。
　誰もがそうであろうが、この会でその姿を見るとは
思わなかったのだろう。

　確認する風で瞼を瞬かせ、改めて見直す。
　そして、驚きの表情は抑え難い喜びに変じた。

　姫の容姿を彩る、ささやかな装飾を見て取ったのだ。
　彼が贈り届けた花――その一輪。

　少年の眼差しに、桜子姫が小さく笑みを返す。
　
　人垣を隔てて、見えざる糸が確かに繋がった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆ちょっと満足げ
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170090a00">
「…………」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170100a02">
「？？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆客席の照明が落ちる
	SetVolume("SE*", 2000, 0, null);
	OnBG(100,"bg067_普陀楽城内能楽堂_01b.jpg");
	FadeBG(2000,true);

	CreateTextureEX("絵演背景", 2100, -437, -418, "cg/bg/resize/bg067_普陀楽城内能楽堂_01bl.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　能が始まった。

　まず最初は二番目物。修羅物と呼ばれる、武人の霊
が主役を張る物語だ。
〝朝長〟や〝敦盛〟など十数種類あるが、今夕ここで
演じられるのは――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＢＧＭ
//◆能の部分だけ別窓？　横書き窓を中央に。
//◆頼政台詞にはfw童心_頼政を使用。名前欄も付ける
//◆他の登場人物台詞には名前欄のみ
	SoundPlay("@mbgm09",3000,1000,true);
	Fade("絵演背景", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
　
　……<RUBY text="やましろのくに">山城国</RUBY>は宇治の里。
　諸国遊歴の僧が訪れ、見事な景色に感嘆する。

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170110a00">
「――これは」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170120a02">
「どうしました？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　
　そこへ老人が現れ。
　僧に名所旧跡を教えた後、平等院へ連れてゆく。

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

	SetNwNoh("cg/fw/ny老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆老人
《此方へおいで候へ。
　これこそ平等院にて候へ……》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　会場全体にざわめきが広がっている。
　大声を出している者など誰もいないが、皆が小声で
囁き交し合い、<RUBY text="あたか">恰</RUBY>も波打ち際の様相だ。

　――よりにもよって。
　――なぜ。

　誰もが愕然としている。声に出していない者も表情
で疑問を呈している。
　涼しい様子で舞台を見続けているのは、主催者の座
にある男だけだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetNwNoh("cg/fw/ny僧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆僧
《げにげに面白き所にて候。
　またこれなる芝を見れば》

//◆僧
《扇の如く取り残されて候は……
　何と申したることにて候ぞ》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　呆然たる眼差しを、岡部の姫は舞台から外して客席
に<RUBY text="さまよ">彷徨</RUBY>わす。
　それを受けた二人、一方の邦氏は何も応じられず、
もう一方の遊佐童心は何も応じず。

　桜子姫は何も得ずに、再び舞台を見詰めた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetNwNoh("cg/fw/ny老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//◆老人
《昔この所に<RUBY text="みやいくさ">宮戦</RUBY>のありしに。
　<RUBY text="げんざんみよりまさ">源三位頼政</RUBY>、合戦にうち負け給ひ》

//◆老人
《この所に扇を敷き自害し果て給ひぬ》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170130a02">
「頼政……？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170140a00">
「ああ……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170150a02">
「頼政って、あれですか。
　源頼朝が挙兵する前に以仁王の令旨を受け
て平氏と戦ったけど、負けて死んだっていう」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170160a00">
「そうだ。
　源三位頼政」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170170a00">
「これは彼を主役とした能だ。
　しかし……何故……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170180a02">
「何かおかしいんですか？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170190a00">
「考えてもみろ。
　<RUBY text="・・">三位</RUBY>で、<RUBY text="・・">頼政</RUBY>だ」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170200a00">
「誰を連想する？」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170210a02">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　――岡部<RUBY text="・・">頼綱</RUBY>。
　その官職は弾正尹、位階は<RUBY text="・・・">従三位</RUBY>。
　本姓は源氏である。

　どちらも時の権力者に刃向かい、敗亡した将だ。
　境涯まで良く似ている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170220a00">
「偶然とは思えん。
　古河公方、何を考えて」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetNwNoh("cg/fw/ny老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//◆老人
《されば名将の古跡なればとて……
　扇の形に取り残して……》

//◆老人
《今に扇の芝と申し候……》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　さざめきは徐々に止んでいった。
　この六波羅普陀楽城で演ずるにはあまりに<RUBY text="ふさわ">相応</RUBY>しか
らぬ曲目とはいえ、それが宿老遊佐童心の承認の下に
行われているならば、誰も文句は差し挟めない。

　<RUBY text="じうたい">地謡</RUBY>の霊妙なる喉が、静粛さを取り戻した能楽堂を
満たす……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//◆地謡
《夢の浮世のなかやどの。
　夢の浮世のなかやどの》

//◆地謡
《宇治の橋守としを経て、
　老いの波も打ち渡す》

//◆地謡
《遠方人に物申す、
　われ頼政が幽霊と》

//◆地謡
《名乗りもあへず失せにけり……
　名乗りもあへず失せにけり……》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170230a02">
（嫌がらせなんじゃないですか？
　わざわざ姫さまを呼んで、こんなの聴かせ
るなんて）


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170240a00">
（……かもしれんが）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240a]
　嫌がらせ。仮にも幕閣筆頭のやる事にしては、どう
にも<RUBY text="・・・">せこい</RUBY>気がしてならない。
　
　……<RUBY text="なかいり">小休止</RUBY>を挟んで、舞台は続く。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240b]
　
　老人は源頼政の霊であった。
　彼が去った後、土地の者が現れて、僧に尋ねられる
まま頼政の伝説を語る。

　
　僧は頼政を哀れに思い、彼の霊を弔う。
　すると、その夜。僧の夢枕に――――

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

	SetFwNoh("cg/fw/fw童心_頼政b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//◆頼政
《血は<RUBY text="たくろく">琢鹿</RUBY>の河となって。
　紅波楯を流し、白刃骨を砕く》

//◆頼政
《世を宇治川の網代の波。
　あら<RUBY text="えんぶ">閻浮</RUBY>恋しや》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　この曲この役専用の能面、その名も頼政。
　武人の無念を刻んだそれを着け、後半の<RUBY text="シテ">主役</RUBY>が登場
した。

　<RUBY text="ワキ">脇役</RUBY>を従え、舞台を圧し、堂々たる体躯のその役者
は悠然と舞い始める。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetNwNoh("cg/fw/ny僧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//◆僧
《不思議やな……
　法体の身にて甲胃を帯し御経読めと承るは》

//◆僧
《いかさま聞きつる源三位の、
　その幽霊にて<RUBY text="ましま">坐</RUBY>すか》

{	FwNoh("cg/fw/fw童心_頼政b.png");}
//◆頼政
《げにや紅は園生に植えても隠れなし。
　名乗らぬ先に頼政と御覧ずるこそ恥しけれ》

//◆頼政
《ただただ御経読み給へ……》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170250a00">
「見事なものだ」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170260a02">
「………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　別段、能に一家言あるわけではない。
　それでも演者の卓抜した技量はわかる。

　舞の一挙一挙に風格がある。
　扇を打ち振るう仕草に<RUBY text="もののふ">武士</RUBY>の気迫が<RUBY text="みなぎ">漲</RUBY>る。

　何より素晴らしいのは喉だ。
　ただ上手い声とは明らかに一格違う。

　情感だ。
　あのシテの台詞には、芸術的なイントネーションと
共に生々しい情感がある。

　敗滅の定めを受けし武人の哀情が、世にも美しい<RUBY text="しらべ">調</RUBY>
で唄われる……。

　この稀有な両立。
　まさしく達人の技であろう。

　見たところ、金剛座系の<RUBY text="ざおう">蔵王</RUBY>流か……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//◆地謡
《関路の駒の隙もなく。
　宮は六度まで御落馬にて煩はせ給ひけり》

//◆地謡
《これは先の夜、御寝ならざる故なりとて。
　平等院にして暫く御座を構へつつ、宇治橋
の中の間、引きはなし》

//◆地謡
《下は河波、上に立つも、共に白旗を<RUBY text="なび">靡</RUBY>かし
て寄する敵を待ち居たり》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
〝頼政〟後場は、頼政の語る合戦の様相を描くことに
主眼を置く曲だ。
　悲劇を悲劇たらしめる、主人公の心理描写はあまり
多くない。

　だが、伝わってくるようだった。
　源三位頼政という男が、どうして戦わなくてはなら
なかったのか――何を思って戦ったのか。

　その苦悩。
　その悲痛。

　演者の一挙手一投足に、一個の人間の全てが宿る。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwNoh("cg/fw/fw童心_頼政b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//◆頼政
《さる程に源平の兵、
　宇治川の南北の岸に打ちのぞみ》

//◆頼政
《<RUBY text="とき">閧</RUBY>の声、<RUBY text="やたけび">矢叫</RUBY>の音……
　波に<RUBY text="たぐ">比</RUBY>へて<RUBY text="おびたた">夥</RUBY>し橋の<RUBY text="ゆきげた">行桁</RUBY>を隔てて戦う》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　……桜子姫が、片手で口元を押さえていた。
　シテの姿に、遂に父の姿を見てしまったのか。

　娘に語り聞かせるかの声で、〝頼政〟は敵の勇将の
戦ぶりを唄い出す。
　……その名は<RUBY text="たわらただつな">田原忠綱</RUBY>。足利氏の流である。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwNoh("cg/fw/fw童心_頼政b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//◆頼政
《田原の又太郎忠綱と名乗って、
　宇治川の先陣我なりと》

//◆頼政
《名乗りもあへず三百余騎……》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0341]
//◆地謡
《<RUBY text="くつばみ">轡</RUBY>を<RUBY text="そろ">揃</RUBY>へ河水に、少しも<RUBY text="ためら">躊躇</RUBY>はず。
　群れいる群鳥の羽を並ぶる羽音もかくやと》

//◆地謡
《白波に……
　ざつ、ざつ、と……》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　――<RUBY text="み">視</RUBY>える。
　劒冑という翼を持つ武者の身でありながら、敢えて
兵と共に川へ踏み込むを選び、味方を大いに鼓舞する
豪胆な男の姿が。

　能の舞台は舞台に<RUBY text="あら">非</RUBY>ず。
　一つの世界である。

　そう云う者がいる。
　能楽師の力量が充分以上であるとき、それは完全に
正しい。

　いまや舞台は別世界であった。
　七六〇年前の宇治川がそこにある。

　――あるいは、つい先月の会津猪苗代が。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwNoh("cg/fw/fw童心_頼政b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360a]
//◆頼政
《忠綱、兵を下知して曰く……》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360b]
//◆地謡
《水の逆巻く所をば、岩ありと知るべし。
　弱き馬をば下手に立てて、強きに水を防が
せよ》

//◆地謡
《流れん武者には<RUBY text="ゆはず">弓弭</RUBY>を取らせ、
　互いに力を合はすべしと》

//◆地謡
《唯一人の下知によって……
　さばかりの大河なれども一騎も流れず此方
の岸に》

　最後の盾とした要害も破られて。
　勢いづく敵軍は味方の陣に怒涛と攻め入る。

　次々と殺されてゆく同胞……
　その中には何より頼りとした肉親もいる。

　老将はもはや一人。

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

	SetFwNoh("cg/fw/fw童心_頼政b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380a]
//◆頼政
《これまでと思ひて》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380b]
//◆地謡
《これまでと思ひて》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　芝の上に、扇を敷き。
　鎧を脱ぎ捨てて座り、刀を抜く。

　そうして、歌う――
　辞世の一句を。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwNoh("cg/fw/fw童心_頼政b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//◆頼政
《<RUBY text="うもれぎ">埋木</RUBY>の花咲く事もなかりしに
　身のなる果ては哀れなりけり》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　――花が咲かぬ事はわかっていた。
　それでも立ち上がり、こうして果てるほかなかった
己を哀れむばかりだ。

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0170270b28">
「……父上っ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
〝頼政〟が去ってゆく。
　旅の僧の夢が終わる。

　あくまで静かに、舞台は幕を引く……。
　父を亡くした娘の低い嗚咽だけが、能楽堂の空気を
揺らしていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆一度フェード。間取り
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_018.nss"