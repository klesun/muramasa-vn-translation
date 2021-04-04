

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_004bbb.nss_MAIN
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
	#ev139_統を殺害_b=true;
	#bg060_円応寺境内_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_005.nss";

}

scene mb04_004bbb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_004bb.nss"

//●噛み締めて
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 100, "#000000");
	CreateTextureSP("絵演背景", 3000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Delete("上背景");

	Fade("絵演背景", 1000, 0, null, true);

//あきゅん「演出：統の表情を過去編と同様に」
	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【統】
<voice name="統" class="統" src="voice/mb04/0040580b46">
『もしもおまえが死んだら、わたしはおまえ
を死なせた奴を全員殺す。
　一人も許さない。絶対に』

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【統】
<voice name="統" class="統" src="voice/mb04/0040590b46">
『…………おまえが誰かを殺したらさ。
　その人の身内が、同じように誓うかもしれ
ないんだよ』

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　養母は正しい。
　その言葉は完全な真実だ。

　養母を救うためであろうと何であろうと、俺がいま
ここでこの敵を殺せば、
　きっと何処かで誰かが俺を憎悪する。

　許せぬ悪と、俺を憎む。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040600a00">
「……ッッ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm32",2000,1000,true);
	Fade("絵演背景", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　奥歯を噛む。
　強く。強く。強く。

　いま人命を奪おうとする両腕を、決して止めずに。

　何故なら。
　――それでも戦わねばならぬ理由があるから。

　理由は、つまり、俺一人の正義。
　俺一人の正義を貫いて、敵を悪と決め付けて、殺す。

　何処かで誰かが俺を憎む。
　その誰かにとって、俺が殺した敵は正義だった――
だから俺は悪なのだ。

　正義を為して悪と成る。
　殺すものは悪であり正義であるから。

　
　　　　　　　　　　　善<k>悪<k>
　　　　　　　　　　　相<k>殺

　…………そう。
　それが、人を殺すという<RUBY text="こと">行為</RUBY>。

　その真理を心の中心へ据え置いて、
　正面から見つめて、

　俺は、一個の人間を殺す。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざしゅー。
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 100, "#000000");
	CreateTextureSP("絵演背景", 3000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Delete("上背景");

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵演背景", 150, 100, "circle_01_00_1", true);

	CreateSE("SE01b","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1500);
	SL_leftdownfade2(10);

	CreateSE("SE01c","se人体_血_血しぶき01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	SL_centerdamN(@0, @0,1000);
	SL_centerdamfadeN2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　斬った。
　殺した。

　名も知らぬ山賊の武者を――
　
　……いや。違った。

　殺してみれば、山賊ではなかった。
　武者でもなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆皇路卓
//◆ちょっと出して消し
	StL(1000, @0, @0,"cg/st/st皇路_通常_私服.png");
	FadeStL(300,true);
	WaitKey(500);
	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　……誰だったろう。
　<RUBY text="・・">ここ</RUBY>では、俺はその名を思い出せない。

　だが、思い出せずとも<RUBY text="し">識</RUBY>っている。
　彼はどういう人間であったのか。どうして俺に殺さ
れることになったのか。

　彼の側には誰がいたか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆皇路操
	StR(1000, @0, @0,"cg/st/st操_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw操_悲痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【操】
<voice name="操" class="操" src="voice/mb04/0040610b42">
「……お父さん!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　亡骸にすがって、少女が絶叫している。
　ああ――彼の娘だ。

　名はやはり、脳裏に浮かばない。
　だが知っている――彼女が父を慕っていたこと。

　泣き腫らした瞳を、少女は俺へ向けた。
　そこには新鮮な憎悪が宿っている。

　何故殺した、と少女は言った。
　俺は理由を答えた。

　だからって、と少女は叫んだ。
　そうだろう。それは俺一人しか納得させない理由。
俺だけの正義だ。

　少女は語った。
　死んだ男が、彼女にとってどういう人間であったか。
どれほど善い人間であったか。どれほど自分を愛して
くれたか。

　俺の知らなかった、男の正義を語った。
　俺が今、命もろとも叩き斬った正義を。

　それは確かに一つの正義だった。
　その正義に対して、俺こそは邪悪だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw操_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【操】
<voice name="操" class="操" src="voice/mb04/0040620b42">
「許さない！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　少女が宣告する。

　俺の邪悪を。
　俺の邪悪への不断の憎悪を。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw操_悲痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【操】
<voice name="操" class="操" src="voice/mb04/0040630b42">
「許さない、許さない、許さない――!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　少女は正しかった。
　その憎悪は全く正当だった。

　俺は許されない。
　俺は殺したのだから。

　正義のため――己の意思を貫くため。
　他人の正義を、意思を、命ごと踏み潰したのだから。

　そうだ。
　そう、なのだ。

　それは決して許されざる、悪鬼の所業なのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホワイトアウト
//◆第四話、景明ＶＳ雪車町。最後の激突
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#FFFFFF");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");


//	OnBG(100,"bg006_雄飛の部屋_01.jpg");//ダミー注意
	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	FadeBG(0,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("上背景", 1000, 0, Axl2, true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　天頂から一騎が来襲する。
　俺のことを、嫌々ながらに殺人する下らぬ男、英雄
にも悪鬼にもなれない半端者だと<RUBY text="なじ">詰</RUBY>っている。

　英雄は胸を張って殺す。
　悪鬼は笑って殺す。
　どちらもできない湊斗景明は普通の人間でいられた、
いるべきだったのだと言っている。

　――それは違う。

　喜ぼうが悲しもうが関係ない。
　己のために人を殺す者は、即ち悪鬼だ。

　いや。

　理想のためであろうと関わりはない。
　英雄と呼ばれる殺戮者もまた悪鬼だ。

　人を殺す者は皆、悪鬼だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mb04/0040640a12">
「……そうだよ。
　あの時、てめェはそう言ったんだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　病的なまでに貧相な男が、俺を嘲笑う。
　
　……そう。
　俺は確かに一度、この答えへ行き着いていたのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆激突音＆ホワイトアウト
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 5000, "#FFFFFF");
	CreateSE("SE01","se戦闘_衝撃_衝突01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　どうして――――
　それを忘れていたのか。

　殺人の意味を誤解してしまったのか。
　銀星号曰くの、正しい殺人と誤った殺人があるかの
ように考えていたのか。

　つまりは、普遍的な正義と邪悪の存在を無意識下に
信じてしまったのか。

　…………悪。
　それは、わかる。

　それが何故、俺の中へ確固と現れたのかはわかって
いる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆養母の最期
	PrintBG("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev139_統を殺害_b.jpg");
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　――――――――――――――――――。
　
　そう。これだ。

　この大罪。
　湊斗景明の、永劫の罪。

　母殺し。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆新田雄飛
//◆蝦夷姉妹
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 100, "#000000");
	FadeDelete("上背景", 1000, true);

	StL(1000, @0, @0,"cg/st/st雄飛_通常_制服.png");
	FadeStL(300,true);

	WaitKey(500);

	DeleteStL(300,true);

	WaitKey(500);

	CreateColorSP("絵暗転２", 3000, "#000000");
	StCR(1000, @-60, @0,"cg/st/stふき_通常_私服.png");
	StR(1010, @60, @0,"cg/st/stふな_通常_私服.png");
	FadeStA(0,true);
	Fade("絵暗転２", 300, 0, null, true);

	WaitKey(500);

	Fade("絵暗転２", 300, 1000, null, true);
	DeleteStA(0,true);
	Wait(10);
	Delete("絵暗転２");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　そしてその写しのような、幾度もの殺人。
　その人を善いと、正しいと思いながら、殺し続けた。

　この悪罪は明晰で、揺るがしようもない。
　
　だから――正義も、この正対として現れたのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆円往寺の一条
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg060_円応寺境内_01.jpg");
	StR(1000, @0, @0,"cg/st/st一条_通常_制服b.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0040650a02">
『湊斗景明。
　あたしはあんたを許さない』


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0040660a02">
『殺してやる』


{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0040670a02">
『殺してやるッッッ!!』

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　不動の罪に対する告発。
　そして処刑の宣告。

　無慈悲にして正当な裁判。

　あの時――――
　
　俺の中で綾弥一条は完璧な正義となったのだと、今
にしてわかる。

　何故なら弁明の余地もない。
　情状酌量を<RUBY text="こいねが">希</RUBY>う隙も皆無だ。

　判決文は一言一句の誤りもないものだった。
　正義。

　俺の悪を断罪する、完璧な正義。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　……今、思い直してみても。
　俺の抱いた認識は、そのままに残る。

　湊斗景明の養母殺しは完全に悪業だ。
　その悪業を許さぬという意思は完全に正義だ。

　だが、俺は一つ心得違いをした。
　悪も正義も<RUBY text="・・・・">それだけ</RUBY>だと思い込んだ。

　それ以外の正義と悪の可能性を失念した。
　
　例えば……罪人を告発し裁き処刑する、検事／判事
／処刑人は――

　<RUBY text="・・・・・・・">正義の執行者は</RUBY>、<RUBY text="・・・・・・・・・・">罪と悪を負わないのか</RUBY>、という事
を。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb04_005.nss"