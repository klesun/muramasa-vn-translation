//<continuation number="180">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_030.nss_MAIN
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
	#bg092_森の道a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_031.nss";

}

scene mc04_030.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_029.nss"

//◆森
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg092_森の道a_01.jpg");
	CreateSE("SEL01","se人体_足音_歩く01_L");
	MusicStart("SEL01",0,1000,0,700,null,true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm32",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　冬の森は独特の景観を持つ。

　夏のように激しくも涼やかではない。
　春のように清々しく伸びやかではない。
　秋のように静閑でいながら暖かではない。

　ならそれに代わる美質が冬の森にあるかと言えば、
なかなかに難しい話となるだろう。
　冬季の森林の独自性は特徴の存在よりもむしろその
欠落によって成立する。

　色彩が無い。
　温度が無い。
　生気が無い。
　発展が無い。

　冬の森とは欠けたるもの、不具の姿であり、これを
賛美する者は古来けして多くはなかった。
　
　だが、皆無でもなかった。

　冬の森は<RUBY text="かたわ">片端</RUBY>に非ず、裸像――
　実相、真相であると。

　虚飾を剥いだ後に残りし真性の美観、
　これこそは完全であると。

　要はこの欠落、この虚無にこそ美しさを見出すべき
なのだと。
　
　そう云う人々もいた。

　今、この森を歩く俺も心情をそちらへ寄せている。
　湊斗景明の死地としては、出来過ぎと思えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　そんな心情のせいだろうか。
　胸中はあたかも森と同化したかのように、不思議と
波立つところがなかった。

　死に対する恐怖は、無論の事ある。
　大鳥香奈枝の殺意の指先が遂にこの喉へ掛かる――
そう知っていて、恐ろしからぬ筈がない。

　死を達観する境地など、信仰を極めた聖人でもなく
武道を極めた達人でもない俺には縁遠いものだ。
　恐怖心は胸に満ち満ちている。

　しかしその恐怖は<RUBY text="こご">凝</RUBY>り、心臓の外へ滲み出してくる
事がない。
　だから手足は震えず、脳もまた錯乱しなかった。

　……俺は分不相応に静かな心地で、告死者の来訪を
待っている……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0300020a01">
《――――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　姿は見せず。
　けれども無言の気配はずっと、俺の傍についていた。

　無言だが……
　きっと、何かを言いたいのだろう。

　俺に向かって投げる言葉を抱えつつ、しかし本当に
投げたものなのか、逡巡に踏ん切りをつけられないの
だろう。
　そうして黙り続けている……。

　響かぬ金打声の中に心裡を読んで、俺は申し訳なさ
と感謝の念とを共に覚えた。
　……村正に対してこんな心情を抱いたのは、初めて
の事であったかもしれない。

　劒冑の無言は有難かったが、俺の方には伝えるべき
事があった。
　姿を消していても所在は知れる。その方角へ正面を
向けて、云う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 300, 0, null);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300030a00">
「村正」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0300040a01">
《……なに？》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300050a00">
「世話になった」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0300060a01">
《…………》

{	DeleteStR(150, false);}
</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト。森の音とか。
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	Fade("絵背景100", 2000, 1000, null, false);

	Wait(1000);
	OnSE("se人体_足音_歩く04_L", 1000);
	Wait(2000);


	SetVolume("@OnSE*", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　森を歩く。

　そろそろ、小一時間ほどにもなろう。
　太陽の高さを見るに、早朝という刻限は終わろうと
している。

　時間の約束はしていなかった。
　
　……だが、もう程なくではないか。

　そんな気がした。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景100", 1000, true);

	Wait(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0300070a01">
《御堂……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300080a00">
「陽が翳ってきたな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　快晴で明けた空は今、足早く広がる雲に蝕まれつつ
ある。
　山の天気はまさしく変わりやすかった。

　どうやら、一雨来るようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 500, 0, null);
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0300090a01">
《御堂！》


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300100a00">
「ッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm08",0,1000,true);
	CreateSE("ちかづいてくる","se戦闘_動作_空突進05");
	MusicStart("ちかづいてくる",1000,200,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　二度目の呼び掛けを受けて、ようやく――
　
　俺は村正の声が埒もない雑談のためではなく、注意
を促すためのものだと気付いた。

　それも、<RUBY text="・・・・・">特定の危険</RUBY>に対する。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetVolume("ちかづいてくる", 1000, 400, null);
	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300110a00">
「――<RUBY text="ボギー">敵性未確認騎</RUBY>か!?」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0300120a01">
《方角、<RUBY text="みずのとのかみ">一五度上方</RUBY>！
　距離九五〇、速度五七〇単位――》


{	SetVolume("ちかづいてくる", 500, 600, null);}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0300130a01">
《この反応は……南蛮物？》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300140a00">
「……進駐軍だと!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("ちかづいてくる", 1000, 800, null);
	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	DeleteStR(0, true);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	DrawDelete("黒幕１", 300, 1000, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　一つの情報が一つの理解を生み、理解は次の理解を
産み落とす。
　今ここに進駐軍の武者が現れるというなら、それは。

　<RUBY text="・・・・">裏切り者</RUBY>を討つために――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ズキューン。推参。
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",1000,1000,Axl1,false);

	SetVolume("ちかづいてくる", 1000, 1000, null);

	CreateSE("とつ","se戦闘_動作_空上昇01");
	MusicStart("とつ",0,1000,0,1000,null,false);
	SetVolume("ちかづいてくる", 0, 0, null);
	Wait(250);

	StL(300,@-100,@400,"cg/st/3dバロウズ_騎航_戦闘a.png");
	Zoom("@StL*", 0, 500, 500, null, true);
	Move("@StL*", 200,@1150,@0, null, false);
	FadeStL(200,true);
	DeleteStA(300, false);
	Wait(500);

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg022_山林a_01.jpg");
	Fade("フラッシュ白",1000,0,Axl3,true);



	OnSE("se戦闘_動作_空突進04",1000);

	WaitKey(500);

	OnSE("se戦闘_動作_鎧_着地01",1000);

	WaitKey(1150);

	CreateColorEX("黒幕１", 4500, "BLACK");
	Fade("黒幕１", 500, 1000, null, true);


	StC(300,@0,@0,"cg/st/3dバロウズ_立ち_通常.png");
	FadeStC(0,true);

	WaitKey(200);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0300150a01">
《……あの騎体》


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300160a00">
「……あれは」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆回想：署長を殺すバロウズ。部分カット
//◆現れたバロウズ。部分カット
//inc久保田　他CGで演出確認。　要調整。

//署長を殺すバロウズ。
	EfRecoIn1(18000,300);
	CreateTextureEX("絵回想01", 5000, @200, @100, "cg/ev/ev170_バロウズ署長を射殺_a.jpg");
	Request("絵回想01", Smoothing);
	Zoom("絵回想01", 0, 1500, 1500, null, true);
	Fade("絵回想01",0,1000,null,true);
	EfRecoIn2(300);

	Move("絵回想01", 1500,@-400,@-200, Axl3, true);
	WaitKey(500);


//バロウズ。部分カット


	EfRecoOut1(300);
	Delete("絵回想*");
	CreateColorSPadd("フラッシュ白", 15000, "WHITE");
	EfRecoOut2(600,true);


	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/bg/resize/bg022_山林a_01.jpg");
	SetVertex("絵背景100", 0, middle);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", HEAVY);

	CreateTextureSP("絵ウルティマ1", 11000, Center, Middle, "cg/st/resize/3dバロウズ_立ち_通常l.png");
	Move("絵ウルティマ*", 0, @0, @-200, null, true);

	Request("絵ウルティマ1", Smoothing);
	Request("絵背景100", Smoothing);


	Move("絵背景100", 10000, @0, @+100, null, false);
	Move("絵ウルティマ*", 10000, @0, @+200, null, false);

	Fade("フラッシュ白",500,0,null,true);

	Wait(1000);

	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300170a00">
「貴様は」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆回想：署長を殺すバロウズ
//◆現れたバロウズ

	EfRecoIn1(18000,600);
	CreateTextureEX("絵回想01", 5000, Center, Middle, "cg/ev/ev170_バロウズ署長を射殺_b.jpg");
	Request("絵回想01", Smoothing);
	Delete("絵背景100");
	Zoom("絵回想01", 0, 1500, 1500, null, true);
	Move("絵回想01", 0,@-200,@0, null, false);
	Fade("絵回想01",0,1000,null,true);
	Delete("絵ウルティマ1");

	EfRecoIn2(300);

	WaitKey(1500);

//バロウズ。部分カット
	EfRecoOut1(300);

	Delete("絵回想*");

	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/bg/bg022_山林a_01.jpg");
	SetVertex("絵背景100", 0, middle);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", HEAVY);

	CreateTextureSP("絵ウルティマ1", 11000, 0, Middle, "cg/st/resize/3dバロウズ_立ち_通常l.png");
	CreateTextureEXadd("絵ウルティマ2", 11100, 0, Middle, "cg/st/resize/3dバロウズ_立ち_通常l.png");

	Move("絵ウルティマ*", 0, @-500, @0, null, true);

	Move("絵背景100", 5000, @-212, @0, null, false);
	Move("絵ウルティマ*", 7000, @-1000, @0, null, false);

	EfRecoOut2(600,true);

	Fade("絵ウルティマ2", 0, 700, null, false);
	DrawTransition("絵ウルティマ2", 1500, 0, 1000, 100, Dxl1, "cg/data/beam_01_00_0.png", true);

	Fade("絵ウルティマ2", 1000, 0, null, false);
	DrawTransition("絵ウルティマ2", 1000, 1000, 0, 100, Axl1, "cg/data/beam_01_00_1.png", true);

	Fade("フラッシュ白",500,1000,null,true);

	Delete("絵ウルティマ*");
	Delete("絵背景100");

	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/bg/bg022_山林a_01.jpg");
	SetVertex("絵背景100", 0, middle);
	Zoom("絵背景100", 0, 2500, 2500, null, true);
	SetShade("絵背景100", HEAVY);

	CreateTextureSP("絵ウルティマ1", 11000, Center, Middle, "cg/st/resize/3dバロウズ_立ち_通常l.png");
	Move("絵ウルティマ1", 0, -819, -871, null, true);
	Zoom("絵ウルティマ1", 0, 1500, 1500, null, true);

	Move("絵背景100", 0, @0, @-100, null, false);
	Move("絵ウルティマ*", 0, @0, @-200, null, true);

	Move("絵背景100", 500, @, @100, Dxl2, false);
	Move("絵ウルティマ*", 500, @0, @200, Dxl2, false);

	Zoom("絵背景100", 500, 2000, 2000, Dxl2, false);
	Zoom("絵ウルティマ*", 500, 1000, 1000, Dxl2, false);
	OnSE("se戦闘_バロウズ_ボーガン構え01",1000);


	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");

	Wait(1000);

	SetFwR("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300180a00">
「貴様は――あの時のッッ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆過去
//◆鎌倉全景か何かにモノクロマスク？
//inc久保田　ブラックアウトのいい機会なので素材をきれいに。


	SetVolume("@mbgm*", 3000, 0, null);
	CreateColorEX("絵暗転", 15000, "#000000");
	Fade("絵暗転",3000,1000,null,true);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg013_鎌倉俯瞰a_01.jpg");
	FadeBG(0,true);
	CreateEffect("Memory_cover", 2400, 0, 0, 1024, 576, "Sepia");
	FadeDelete("上背景", 0, true);
	WaitKey(1500);
	SoundPlay("@mbgm35",0,1000,true);
	FadeDelete("絵暗転", 2000, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　
　　　　　　　　　　『王杉事件』

　興隆二四年九月、<RUBY text="おうすぎさかえ">王杉栄</RUBY>とその家族が陸軍将兵の手
で拉致・殺害された事件を云う。
　極右勢力の台頭から六波羅政権へ至る、興隆二十〜
三十年代の潮流を象徴する一事例とみられている。

　王杉栄は軍人の家庭に生まれ、初めは自身もその道
を志して陸軍幼年学校に入学するが、複数件の問題を
起こし放校。以後はそれまでの生育環境を完全に否定
するような人生を歩んでゆく。

　彼は江戸で多くの思想家達と出会い、反帝国主義と
非戦論に共鳴する。それは軍隊という世界から拒絶さ
れた事への反動であったと云えばそうであろう。
　が、彼は反動からの惰性的行動者には留まらない。

　文壇で、あるいは路上で、王杉栄は新たな価値観に
基づいて精力的に活動し、多くの人々に影響を与えた。
　正の意味においても負の意味においても、である。

　文才ある彼の論説は人の心を揺り動かす力に溢れ、
また彼の奔放な人格と生活は人の目を惹きつけてやま
なかった。ダーウィンの名著を『種の起源』と題して
翻訳出版する傍ら、愛人に刺されるのが王杉であった。

　彼は権威否定のすえ<RUBY text="アナキズム">無政府主義</RUBY>へ行き着き、これに
傾倒する。
　そうして王杉派とでも呼ぶべき思想勢力を生み出し
たが、一方では極右派の激しい憎悪を買ってもいた。

　帝国主義を信奉する人々にとっては単なる非戦論や
自由主義すら充分に目障りなのである。
　無政府主義に至っては完全な敵であり、障害であり、
排除する以外の対処など考えられなかった。

　興隆二四年九月一日。
　関東大震災が発生する。

　相模湾北西沖を震源として起きた地震と続く火災は
関東南部を壊滅せしめ、死者だけでも一〇万を数える
甚大な被害を生じさせた。
　まさしく未曾有の大災害であった。

　混乱の中、この機に乗じて当時大和に多数いた大陸
からの出稼ぎ労働者や反体制主義者らが暴動を起こす
という噂が人々の間に流布した。
　これは無論、埒もない風説に過ぎなかった。

　が、不幸にして、パニック状態の人々は虚偽を識別
する能力を欠いていた。
　噂は信じられ、ヒステリックなリンチ事件が多発し、
多くの犠牲者が出た。

　その中で、一部軍人らの行動は幾らか冷静であった。
　彼らは「やられる前にやる」軍事原則に則る積極的
意思で（あるいは更に積極的に、<RUBY text="・・・・・・・・・">噂の真偽はともかく</RUBY>
この機会に始末してしまえと）敵を見定めて決起した。

　震災から数日後、江戸<RUBY text="かつしか">葛飾</RUBY>にて一〇名前後の活動家
が捕えられ、虐殺される。亀戸事件の名で今に伝わる
惨劇である。
　そして九月一六日。

　王杉栄、その妻、七歳の長男、六歳の次男の四名が、
被災した王杉の妹を見舞った帰路、行方不明となる。
　一家は横浜の妹宅は出たが、江戸の自宅には戻らな
かったのである。

　一週間後、発表された事実は以下の通りであった。
　
　<RUBY text="かね">予</RUBY>て王杉の存在を疎ましく思っていた某陸軍大尉と
その同志が一家の身柄を拉致――

　四名を殺害。
　直後、大尉以下の将兵は自決した。
　
　　　　　　　　　　　　　　　　　　　　　　以上。

　……現在、大多数の人々は、政府機関発行の公文書
が記載する『王杉事件』の概要に疑念を抱いていない。
　一部の限られた範囲の人間だけが、公記録は虚偽を
含んでいる事、真実がやや欠けている事を知っていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);
}

..//ジャンプ指定
//次ファイル　"mc04_031.nss"