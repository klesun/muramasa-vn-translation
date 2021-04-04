//<continuation number="820">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_014.nss_MAIN
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
	#bg041_片瀬海岸_02=true;
	#bg051_湊斗家居間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_015vs.nss";

}

scene mb04_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_013.nss"

//◆沿岸。正宗
//あきゅん「演出：背景あってるのか？」
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg041_片瀬海岸_02.jpg");
	StL(1000, @0, @0,"cg/st/3d正宗_立ち_通常.png");
	FadeStL(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140010a02">
「なんですか……それ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　振り返っても一条の姿は濃藍の甲鉄に覆われ、その
表情は窺いようとてない。だが察するのは容易かった。
　内面の波立ちを映して<RUBY text="わなな">戦慄</RUBY>く声音を聴けば充分だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140020a02">
「わかんないですよ……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140030a00">
「……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140040a02">
「どういうつもりなんですか……？
　銀星号を……なんで……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140050a00">
「俺が倒さねばならなかった」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　断定する。
　迷いは、無い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140060a00">
「他の誰でもなく俺が。
　銀星号をただの怪物……ただの悪魔として
しか知らない者が倒せば、その戦いは正義と
なる。正義が邪悪を討った事になる」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140070a00">
「戦いの正義が信じられる。
　戦いの真実が忘れられる」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　真実。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140080a00">
「……だから、真実を知る者。
　あの銀星号も人間だったことを、」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。光、湊斗一家
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想背景", 6000, Center, Middle, "cg/bg/bg051_湊斗家居間_01.jpg");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	StL(7000, @0, @0,"cg/st/st光三年前_通常_制服.png");
	StR(7000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStA(0,true);
	Fade("絵回想幕", 0, 400, null, true);
	Fade("絵白転", 300, 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　――誰かに愛されていたのだという事を。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("絵白転", 400, 1000, null, true);
	StL(1000, @0, @0,"cg/st/3d正宗_立ち_通常.png");
	FadeStA(0,true);
	WaitKey(200);
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140090a00">
「知る者こそが、倒さねばならなかった。
　その行為が負う罪悪の量を見誤らない為に」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140100a00">
「俺にしかできない事だったのだ」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140110a02">
「わからないですよ！
　何を言ってるのか……全然……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　一条は声を荒らげた。
　その勢いに自分自身が煽られたのか、たたらを踏む。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140120a02">
「なんで……どうして！
　湊斗さんが……村正が、敵を殺せば、」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140130a00">
「味方をも殺す。
　正しいと思う者を殺す」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140140a02">
「それがわかってて……！」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140150a00">
「常にそうだ。
　戦いの結果は」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140160a02">
「……え？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140170a00">
「戦いはいつも正義と正義の殴り合いだ。
　せいぜいが、社会通念上の正当性に近いか
遠いかくらいの違いしかない」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140180a00">
「戦う者はみな自分の正義を信じ、敵の悪を
信じる。
　そうしなくては殺し合えないから」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆銀星号
	CreateTextureEX("絵演", 4000, -850, -100, "cg/ev/resize/ev101_プロローグ_a.jpg");
	Fade("絵演", 300, 800, null, false);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140190a00">
「……例外は、戦いそのものを指向する人間
くらいだろう」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆戻り
	FadeDelete("絵演", 1000, false);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140200a02">
「…………」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140210a00">
「ならば戦いの結果はいつも同じだ。
　敗者の正義と勝者の悪が、一つずつ滅ぶ」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140220a00">
「善悪相殺。
　村正の呪いそのものだ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　そう。
　だから。

{	CreateSE("SE01","se擬音_雰囲気_抜刀01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　俺は太刀を抜き、切先で一条を指した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140230a02">
「――――」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140240a00">
「誰かと戦い、殺そうとする者は、その意味
を正しく知るべきだ。
　敵は悪でありながら善でもあり、己はそれ
を諸共に滅ぼすのだと」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140250a00">
「即ち己の味方、己の正義をも滅ぼす覚悟の
無い者が、敵を殺してはならないのだ。
　もしも覚悟無くそうするなら、それは度し
難い卑怯なのだ」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140260a00">
「況んや……
　<RUBY text="・・・・・・・・・・・・・・・・・">正義を潰しておきながら正義を称する</RUBY>など、
論外の極みだ」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140270a02">
「……湊斗さん……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140280a00">
「……俺はそう承知した上で……
　銀星号を斃した」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　何を言いたいのかは、伝わった筈だった。

　一条は何も応えてこない。
　氷のよう<RUBY text="・・・・">ではない</RUBY>沈黙の中に沈んでいる。

　その劒冑の方が、先に応じた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0140290b40">
《御堂……
　わかっていような》


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140300a02">
「……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0140310b40">
《つまり、奴は御身を裏切ったのだ。
　そして吾らの正義を貶めている》


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140320a02">
「ぐ……ッ！」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0140330b40">
《言うた通りの仕儀となったな。
　所詮、悪鬼は悪鬼よ！》


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140340a02">
「うッ……あぁぁぁっ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆突進。斬り
//◆がきーん。
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSP("絵演", 5000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	DrawTransition("絵演", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	CreateColorSP("絵色黒", 5100, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateSE("SE01b","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_rightdown2(6000,@0, @0,1500);
	SL_rightdownfade2(10);

	CreateSE("SE01c","se戦闘_攻撃_刀衝突01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 6100, "#FFFFFF");
	StL(1000, @0, @0,"cg/st/3d正宗_立ち_戦闘a.png");
	FadeStL(0,true);
	CreateEffect("絵演震", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵演震","絵演震");
	Request("絵演震",Passive);
	Wait(30);
	Delete("絵演");
	Delete("絵背景");
	Delete("絵色黒");
	Fade("絵演震", 0, 500, null, true);
	Shake("絵演震", 1000, 0, 6, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵フラッシュ白", 1000, true);
	Delete("絵演震");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　乱雑な突進からの鈍い一撃は、村正の甲鉄に容易く
弾かれた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140350a00">
「……刃筋を立てて<RUBY text="しか">確</RUBY>と狙え」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140360a02">
「湊斗っ……！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140370a00">
「お前が俺を斬るなら、それでもいい」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140380a00">
「お前の正義に、俺の答えを返す事が、俺に
残された最後の役割だ。
　それさえ果たせればいい」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140390a02">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140400a00">
「俺はお前の正義を認めている。
　その俺を斬れ」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140410a00">
「俺をお前の正義だと思って斬れ。
　戦いの矛盾と醜さを知れ」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140420a02">
「あなたは……っ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140430a00">
「俺の云う事は酷か。
　おそらくそうだろう」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140440a00">
「だがお前は既に手を血で汚している。
　闘争の真実を知る義務からは逃れ得ない！」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140450a02">
「違う！
　あなたは間違ってるっ！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140460a00">
「…………」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140470a02">
「あなたの言う通りなら……
　この世に正義なんて無いことになる！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140480a00">
「……突き詰めればそうだ。
　正義というものが唯一絶対の価値観を意味
するなら、そんなものは無い」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140490a02">
「有る！
　父様が教えてくれた……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140500a02">
「人を騙してはならない、人から奪ってはな
らない、人を虐げてはならない！
　悪を拒んで正しく生きることが、人として
の正義だっ！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140510a00">
「倫理か。社会正義か。
　それは要するに、<RUBY text="・・・・・・">多数決の結果</RUBY>だ」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140520a00">
「軽んずるつもりはない。
　だが、絶対的な真理などではない」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140530a02">
「違う！
　ちがう……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140540a00">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140550a00">
「お前が正義を信じる事を、俺は止めない。
　その想いは尊いと思う」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140560a00">
「正義を信じて、悪と戦う事もだ。
　その勇気も尊いと思う」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140570a02">
「…………」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140580a00">
「だがその戦いに正義を名乗るな」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140590a00">
「お前が正義の二字を奉じて戦い、勝利すれ
ば……人々も正義を信じる。悪なる敵と戦い
勝利することは正義なのだと信じる。
　<RUBY text="おまえたち">正宗</RUBY>にはそうさせるだけの力がある」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140600a00">
「皆が戦いを賛美し、戦いに身を投じる。
　戦いの渦が拡大する」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140610a00">
「殺し合いに過ぎないその本質が忘れられ！
　正義の名の下に戦いが連鎖する！」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140620a00">
「わかるか？
　お前は混沌たる争乱をもたらす者に――」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140630a00">
「<RUBY text="・・・・・・">銀星号の後釜</RUBY>になる!!」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140640a02">
「――――」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140650a00">
「だから……
　約束しろ」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140660a00">
「正義は胸に秘め、二度と口にしないと約束
してくれ。
　お前がそれを誓うなら、俺は斬られる」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140670a00">
「一条――」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140680a02">
「いやだ……っ」


</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140690a00">
「……」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140700a02">
「あたしは……
　あたしは」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140710a02">
「悪を滅ぼして、正義を貫徹する！
　隠したりなんかしない！　それじゃあこの
世を正しくできない！」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140720a02">
「父様の願いが果たせない！
　あたしは――あたしは」


{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140730a02">
「綾弥一条だ！
　それ以外の誰にもならない!!」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140740a00">
「………………」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140750a02">
「………………」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140760a00">
「そうか。
　なら」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140770a00">
「俺も、村正で在り続ける。
　戦いの醜悪さを暴き立てる者であることを
通す」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140780a00">
「正しいと、尊いと思うお前を、
　斬る」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140790a02">
「――――ッッ」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140800a02">
「……裏切った……
　あなたは、今度こそ本当に」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0140810a02">
「あたしを裏切ったんだ！」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0140820a00">
「……行くぞ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 3000, 0, null);


}

..//ジャンプ指定
//次ファイル　"mb04_015vs.nss"