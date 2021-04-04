//<continuation number="1110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_030.nss_MAIN
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
	#bg031_八幡宮境内_01=true;
	#ev216_光降臨_a=true;
	#ev216_光降臨_b=true;
	#ev216_光降臨_c=true;
	#ev216_光降臨_d=true;
	#ev216_光降臨_e=true;
	#ev932_銀星号正拳突き_a=true;
	#ev932_銀星号正拳突き_b=true;
	#ev959_髭切斬撃汎用=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_031.nss";

}

scene md01_030.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_029vs.nss"


//◆裏参道へ
	PrintBG("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	CreateTextureEXover("絵演背景上", 4100, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵演背景*", 0, 750, null, true);
	Shake("絵演背景上", 3600000, 8, 0, 0, 0, 1000, null, false);
	CreateTextureSPmul("絵背景", 4000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateColorSP("絵色赤", 1000, "#990000");
	CreateSE("SE01","se戦闘_動作_空上昇01");
	CreateSE("SEL01","se戦闘_動作_空突進05");
	Delete("上背景");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SEL01",2000,800,0,1000,null,true);
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm12",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　鬚切が裏参道へ飛び込む。
　わずか、しかし確実に遅れて、俺が続く。

　逃げ道は封じていた――最初の段階では。
　敵の曲芸戦術を封じ、追い詰めに掛かった時点でも、
唯一の出入口は俺の背後にあった筈だった。

　それが――いつ！
　
　……あの間合の取り合いの最中か!?

　いかにも最後の反撃を企てているように見せかけな
がら、その実、退路の確保に動いていたのか!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0300010a00">
（戦局……！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　その通りだった。
　戦闘に没頭し、俺はそれを失念していた。

　相手を迅速に仕留める必要があったのは俺だけ。
　敵はこの地下空間から生きて逃れさえすれば、勝利
条件を満たせるのだ！

　それを忘れるとは。

　いや……むしろ忘れなかった大将領が凄まじいのか。
　名も知れぬ者に襲われ、命を危うくしている状況で、
かくも冷静さを保つとは。

　これが青二才と古強者の差か。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆追走
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0300020a01">
《……地上に出るっ！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　歯軋りするかのような、村正の<RUBY text="こえ">金打声</RUBY>。

　間に合わない。
　足利護氏を外に出してしまう。

　地上では精鋭武者の一団が主君を出迎える。
　その守りを破って討つのは……不可能。

　そうなればどうなる。

　俺の事はいい。
　だが、親王は!?

　――<RUBY text="ちち">養父</RUBY>は!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0300030a00">
「く……おおっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆地上
	SetVolume("SEL*", 1000, 0, null);
	CreateSE("SE01","se戦闘_動作_空突進03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵色白", 5000, "#FFFFFF");
	FadeDelete("絵演背景上", 300, false);
	Fade("絵色白", 600, 1000, Dxl2, false);
	Zoom("絵背景", 600, 3000, 3000, Axl2, true);

	WaitKey(2000);

//◆八幡宮境内
//◆通常表示後にレッドマスク
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#FFFFFF");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg031_八幡宮境内_01.jpg");
	Delete("上背景");
	SetVolume("SE*", 1000, 0, null);
	FadeDelete("絵暗転", 1000, true);

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色血", 5000, "#CC0000");
	CreateTextureSPmul("絵背景", 100, Center, Middle, "cg/bg/bg031_八幡宮境内_01.jpg");
	CreateColorSP("絵色血床", 50, "#CC0000");
	FadeFR2("絵背景",0,1000,300,0,0,20,DxlAuto, false);
	FadeDelete("絵色血", 1000, true);

	SetFwC("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300040a05">
「な」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300050a05">
「何だ……これは……」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0300060a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　<RUBY text="シ">屍</RUBY>が溢れていた。

　兵士。
　武者。
　侍臣。
　神官。

　地上にいた幕府の人々。八幡宮の人々が。
　分け隔てなく、この上もなく平等に、死という同一
の運命を享受して在る。

　生命、存在せず。
　静かになだらかに、平穏な世界が現出していた。

　ここは氷原だ。
　極北の荒野だ。

　始まりと終わりが共存する。
　不動不変の<RUBY text="とじたせかい">三次元</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0300070a01">
《……御堂》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　乾き切った声で、劒冑が俺に注意を促した。

　視界のほぼ中央。
　――貴人を運ぶ<RUBY text="ぎっしゃ">牛車</RUBY>が、鎮座している。

　滑稽なほど場違いな代物。
　それを示して、村正が<RUBY text="・・・・・・">何を告げたい</RUBY>のか、既に痛い
ほど悟っていた。

　この光景を見たその刹那に、もうわかっていたのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0300080a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　<RUBY text="すだれ">簀垂</RUBY>が揺れる。

　最初に、白い指先が――
　続いて艶やかなる容姿が。
　
　その奥から現れた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300090a05">
「そなたは……長庚局」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300100a05">
「ここで何をしている。何があった。
　……そなたの主人はどうした!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：十二単？の光
//◆演出
	CreateTextureEX("絵ＥＶ上", 4020, -650, -540, "cg/ev/resize/ev216_光降臨_al.jpg");
	Move("絵ＥＶ上", 3000, -1010, -330, DxlAuto, false);
	Fade("絵ＥＶ上", 1000, 1000, null, true);

	WaitKey(1000);

	SetNwL("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/md01/0300110a14">
「若宮堂の舞の袖。
　<RUBY text="しず">静</RUBY>の<RUBY text="おだまき">苧環</RUBY>繰り返し」

//【光】
<voice name="光" class="光" src="voice/md01/0300120a14">
「返せし人を偲びつつ。
　……と」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆演出
	CreateTextureSP("絵ＥＶ覆", 4010, -480, -340, "cg/ev/resize/ev216_光降臨_al.jpg");
	Move("絵ＥＶ覆", 2000, -555, @0, DxlAuto, false);
	FadeDelete("絵ＥＶ上", 1000, true);

	WaitKey(1000);

	SetNwR("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【光】
<voice name="光" class="光" src="voice/md01/0300130a14">
「すっかり<RUBY text="まい">闘戦</RUBY>も果ててからやって来るとは、
無粋の謗りを免れまいぞ。
　こちらとしても甲斐がない」

//【光】
<voice name="光" class="光" src="voice/md01/0300140a14">
「せっかく、よき<RUBY text="もの">兵</RUBY>を相手に心楽しく舞えた
というのに。
　しかし……元より芸とは一輪の花、人目に
触れず儚く散るも定めの内というものか」

//【光】
<voice name="光" class="光" src="voice/md01/0300150a14">
「うむ。花は惜しまず、また咲かせば良い。
　今度はおまえを<RUBY text="とも">対手</RUBY>として、前にもまさる
華やかな舞を演じてくれよう」

//【光】
<voice name="光" class="光" src="voice/md01/0300160a14">
「嫌とは言うまいな……景明！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆で、ここでＥＶ全体像か。
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev216_光降臨_a.jpg");
	Move("絵ＥＶ覆", 3000, -512, -288, Dxl2, false);
	Zoom("絵ＥＶ覆", 3000, 500, 500, DxlAuto, true);
	FadeDelete("絵ＥＶ覆", 5000, false);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　大将領には目もくれず。
　その<RUBY text="かんばせ">顔貌</RUBY>は真っ直ぐ、俺に向けられた。

　光。

　……二年ぶりになる。
　生身の姿を、こんなにも近く見るのは。

　その時間、その年頃を思えば意外なほど、光の姿形
は記憶の中のそれと違いが少なかった。
　俺に一種の失調感を覚えさせるほどであった。

　何故こんなにも変わりがないのか。
　何故こんなにも昔日のままなのか。

　光の<RUBY text="ほし">運命</RUBY>は、凄烈なまでの変貌を遂げているという
のに！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0300170a00">
「ひか――」

{	FwR("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300180a05">
「応えぬかッ！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　俺の小声は、別方向の怒声にかき消された。
　ん？という顔で光がそちらへ視線を向ける。

　黙殺された格好の大将領であった。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【光】
<voice name="光" class="光" src="voice/md01/0300190a14">
「何か。
　急ぎの用件でないなら、家族の対話に割り
込まないで頂きたい」

{	FwR("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300200a05">
「……き、
　貴様はこの状況が見えておらんのか!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　俺の言葉を遮られたことが不興らしい光と、困惑を
激昂に繋げつつある六波羅元帥。
　両者の世界は悲しいほど隔絶していた。

　断崖絶壁の上と下。
　
　だが――上の光には護氏とそれを取り巻くすべてが
見えるが、下の護氏には漠たる空しか見えないのだ。

　大将領は<RUBY text="・・・・・・・">いま必要なこと</RUBY>を理解していない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300210a05">
「長庚とやら！
　この有様の中にいて、何も見ておらぬこと
はあるまい」

{	FwR("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300220a05">
「予の問いに答えよ！
　これはいかなる仕儀か!?」

{	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300230a14">
「長庚というのはな、世を忍ぶ仮の名だ。
　夕暮れの星という意味らしい。人に付けて
貰ったものだが、まぁまぁ気に入っている」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　まず俺の方を見て、光は懇切にそう解説した。
　それから大将領へ向き直る。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【光】
<voice name="光" class="光" src="voice/md01/0300240a14">
「おれがやった」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300250a05">
「何をだ!?」

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300260a14">
「むぅ。
　会話になっているようでなっていない」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　何故かわざわざこちらに向かって光は呟いた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【光】
<voice name="光" class="光" src="voice/md01/0300270a14">
「この者らを斬ったのは誰か、問うたのでは
ないのか？
　それがおれだと言っている」

{	FwR("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300280a05">
「……正気か？　貴様」

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300290a14">
「やにわにその言い草は失敬であろう」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0300300a00">
「……当然の言葉だ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　彼は知らないのだから。
　まだ気付いていないのだから。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【光】
<voice name="光" class="光" src="voice/md01/0300310a14">
「おまえに言われると傷つく……」

{	FwR("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300320a05">
「予を愚弄する気かッ！」

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300330a14">
「困った。難儀な男だ」

{	FwR("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0300340a15">
《どちらかと言うなら、向こうが正しい気も
するのだが》

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300350a14">
「なぜだ？」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300360a05">
「貴様がやった、だと……？
　夢物語も大概にしろ。貴様の何処にそんな
力があると抜かすか！」

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300370a14">
「それは無論――」

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300380a14">
「…………。
　さっきから、おれ一人だけ口が忙しいぞ」

{	FwR("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0300390a15">
《人の相手をいちいち、<RUBY text="・・">まめ</RUBY>にするからだ。
　些事は適当にいなしておけ》

{	FwR("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300400a14">
「むぅ。しかし無礼は好かん。
　するのもされるのも」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300410a05">
「貴様、長庚――」

{	FwR("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300420a14">
「……仕方もないな」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＥＶ差分：二世村正（女王蟻）出現
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateTextureEX("絵ＥＶｂ", 4100, Center, Middle, "cg/ev/ev216_光降臨_b.jpg");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵ＥＶｂ", 1000, 1000, null, true);

	SetFwR("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【光】
<voice name="光" class="光" src="voice/md01/0300430a14">
「先に<RUBY text="・・・">そっち</RUBY>から済ませることにしよう。
　六衛大将領、足利護氏卿」

{	FwR("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300440a05">
「なにィ……？」

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300450a14">
「おまえに会いに来た用向はほかでもない。
　この光が、覇を問うためだ！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分：蟻、パーツ分解。装甲アクション１
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	CreateTextureSP("絵ＥＶｃ", 4000, Center, Middle, "cg/ev/ev216_光降臨_c.jpg");
	CreateSE("SE01","se特殊_鎧_装着03");
	Delete("上背景");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　ゆるりと伸ばされる腕。
　微笑む口元。

　紡がれる誓句。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【光】
<voice name="光" class="光" src="voice/md01/0300460a14">
「鬼に逢うては鬼を斬る」

//【光】
<voice name="光" class="光" src="voice/md01/0300470a14">
「仏に逢うては仏を斬る」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分：装甲アクション２
	CreateTextureSP("絵ＥＶｃｃ", 3990, Center, Middle, "cg/ev/ev216_光降臨_d.jpg");
	FadeDelete("絵ＥＶｃ", 1000, true);

	SetFwR("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300480a05">
「……白銀の劒冑……？」

{	FwR("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300490a05">
「貴様――よもや、」

{	FwR("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300500a14">
「ツルギの理」

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300510a14">
「ここに在り!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ガキーン
//◆銀星号
	CreateSE("SE01","se特殊_鎧_装着02");
	MusicStart("SE01",0,1000,0,700,null,false);
	PrintGO("上背景", 5000);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");

	CreateTextureSP("絵ＥＶｄ", 3980, Center, Middle, "cg/ev/ev216_光降臨_e.jpg");
	FadeDelete("絵ＥＶｃ", 600, true);

	StR(1000, @0, @0,"cg/st/3d銀星号_立ち_通常b.png");
	FadeStR(0,true);
	OnBG(100,"bg031_八幡宮境内_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 600, true);
	WaitKey(2000);
	FadeDelete("絵フラ", 2000, true);

//◆ＢＧＭ：銀星号
	SoundPlay("@mbgm01",0,1000,true);

	SetFwR("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300520a05">
「――銀星号、だと!?」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300530a05">
「貴様があの殺戮魔……？
　では」

{	FwR("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300540a05">
「……では、
　貴様を擁していたのは、」

{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300550a14">
「大将領！
　そこらへんの細かいことは後に回せ！」

//【光】
<voice name="光" class="光" src="voice/md01/0300560a14">
「おまえは今、己の<RUBY text="もとい">基</RUBY>を光に問われている」

{	FwR("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300570a05">
「何……？」

{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300580a14">
「足利護氏。
　天下に武を布かんとする者。光と同じ道を
求める者」

//【光】
<voice name="光" class="光" src="voice/md01/0300590a14">
「覇道の先達に対し、おれは礼節を示そう。
　その影を拝して教えを乞おう」

//【光】
<voice name="光" class="光" src="voice/md01/0300600a14">
「覇とは如何に！」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300610a05">
「――――」

{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300620a14">
「答えられぬ道理は無かろう」

{	FwR("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300630a05">
「……はっ。
　予とあろう者が、日に二度も下民に<RUBY text="みち">大道</RUBY>を
問われるとはな！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＶｄ", 1000, true);

//◆銀星号と鬚切、対峙
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StL(1000, @-30, @0,"cg/st/3d髭切_立ち_抜刀.png");
	Move("@StL*", 300, @30, @0, null, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw護氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300640a05">
「覇を知りたいか、銀色の<RUBY text="ケモノ">化物</RUBY>！」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300650a14">
「うむ！」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300660a05">
「ならば知れ！
　……奪い取ることだ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆斬撃。なんか必殺技っぽく
//◆ずがどーん
	CreateColorSP("絵色黒", 6000, "#000000");

	CreateSE("SE010","se特殊_電撃_放電01");
	CreateTextureSPadd("絵演髭秘太刀覆", 3110, Center, InBottom, "cg/ev/ev959_髭切斬撃汎用.jpg");
	CreateTextureSP("絵演髭秘太刀", 3100, Center, InBottom, "cg/ev/ev959_髭切斬撃汎用.jpg");
	SetVertex("絵演髭秘太刀*", center, bottom);
	Zoom("絵演髭秘太刀*", 0, 2000, 3000, null, true);
	SetBlur("絵演髭秘太刀*", true, 2, 500, 60, false);

	MusicStart("SE010",0,1000,0,600,null,false);
	Zoom("絵演髭秘太刀*", 400, 1000, 1000, Dxl2, false);
	Move("絵演髭秘太刀*", 400, @0, -160, Dxl2, false);
	Fade("絵色黒", 300, 0, null, true);
	FadeDelete("絵演髭秘太刀覆", 200, true);

	CreateSE("SE01b","se戦闘_村正_重力増幅斬撃");
	CreateSE("SE01c","se戦闘_破壊_爆発08");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	MusicStart("SE01c",0,1000,0,1000,null,false);

	DeleteStA(0,true);

	CreateColorSPadd("絵色白", 4990, "#FFFFFF");
	Fade("絵色黒", 300, 0, Axl2, true);

	Delete("絵色黒");
	Delete("絵演髭*");

	CreateTextureEXsub("絵演震動", 100, Center, Middle, "cg/bg/bg031_八幡宮境内_01.jpg");
	SetVertex("絵演震動", center, bottom);
	Fade("絵演震動", 0, 700, null, true);
	Zoom("絵演震動", 0, 1000, 2000, Axl2, true);
	SetBlur("絵演震動", true, 3, 300, 100, false);

	Shake("絵演震動", 1500, 0, 10, 0, 0, 500, null, false);
	FadeDelete("絵色白", 1000, false);
	Zoom("絵演震動", 1500, 1000, 1000, Axl2, false);
	FadeDelete("絵演震動", 2000, false);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0300670a00">
「光!?」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300680a05">
「予は天下が欲しい。
　だから、奪うのよ」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300690a05">
「このようにしてな！
　貴様の首など要らぬが、予の道に立ち塞が
るのであれば刈り取るほかにあるまいて」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0300700a01">
《…………》

{	FwC("cg/fw/fw護氏_大笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300710a05">
「鬚切の秘太刀は獲物の滓も残さぬ」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300720a05">
「幽鬼よろしく闇夜に潜んで血を啜っている
分には見逃してもくれようが……
　予の前にぬけぬけと姿を見せるとは、増上
慢にも程があろうぞ！　戯けめ!!」

{	NwC("cg/fw/nw光.png");}
//◆顔グラなし
//【光】
　
<voice name="光" class="光" src="voice/md01/0300730a14">
　　　　　　「なるほど。そうか」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300740a05">
「……ッ!?」

{	NwC("cg/fw/nw光.png");}
//◆顔グラなし
//【光】
　
<voice name="光" class="光" src="voice/md01/0300750a14">
　「覇とは、即ち強奪。
　　異論の余地は欠片もない。至当である」

//◆顔グラなし
//【光】
　
<voice name="光" class="光" src="voice/md01/0300760a14">
　　　　　「この光も全く賛同する！」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300770a05">
「――――」

{	NwC("cg/fw/nw光.png");}
//◆顔グラなし
//【光】
　
<voice name="光" class="光" src="voice/md01/0300780a14">
　「おまえはひたすらに大和が欲しいのだな。
　　自分自身の存在に懸けて求めるか！」


//◆顔グラなし
//【光】
　
<voice name="光" class="光" src="voice/md01/0300790a14">
　　「そこまで、この国を欲してやまぬと」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300800a05">
「……ふん。
　別に大和でなくとも構わぬ」

{	NwC("cg/fw/nw光.png");}
//◆顔グラなし
//【光】
　
<voice name="光" class="光" src="voice/md01/0300810a14">
　　　　　　　「……？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300820a05">
「たまたま大和に生まれたから、大和に覇を
唱えるだけの話よ。
　別の国でも構いはせなんだ」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300830a05">
「予の覇業を打ち立てられる場でさえあれば
――」

{	NwC("cg/fw/nw光.png");}
//◆顔グラなし
//【光】
　
<voice name="光" class="光" src="voice/md01/0300840a14">
　　　　　　　「ちょっと待て」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300850a05">
「……何処に隠れた……？
　姿を見せよ、凶賊!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆顔グラなし
//◆大フォント
	SetNwC("cg/fw/nw光.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【光】
　
<voice name="光" class="光" src="voice/md01/0300860a14">
<FONT size="24">「それでは、愛が無いだろうがッッ!!」</FONT>

</PRE>
	SetTextEXC();
	Move("$SYSTEM_present_text", 0, 566, 134, null, true);
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――――

//◆銀星号飛来
	CreateSE("SE00","se特殊_陰義_発動01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ev/resize/ev901_銀星号天座失墜小彗星_am.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/resize/ev901_銀星号天座失墜小彗星_am.jpg");
	Rotate("絵演*", 0, @0, @180, @0, null,true);
	Request("絵演*", Smoothing);
	Zoom("絵演上", 0, 1200, 1200, null, false);

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆どがーん。爆裂
//◆なんかもーわけわかんねー感じ
	SetVolume("SE*", 300, 0, null);
	CreateSE("SE01","se戦闘_破壊_爆発09");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Delete("絵演*");

	CreatePlainEX("絵演震", 5000);
	Fade("絵演震", 0, 500, null, true);
	SetBlur("絵演震", true, 3, 500, 100, false);

	Shake("絵演震", 300, 0, 300, 0, 0, 1000, Dxl2, true);
	Zoom("絵演震", 300, 1500, 1500, Dxl2, false);
	Shake("絵演震", 300, 0, 300, 0, 0, 1000, Dxl2, true);

	CreateSE("SE01b","se戦闘_破壊_爆発07");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 300, 1000, null, false);
	Shake("絵演震", 300, 1200, 0, 0, 0, 1000, Dxl2, true);
	Delete("絵演震");

	SetFwC("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300870a05">
「おォッ!?」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0300880a00">
「なっ……くぅ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずーん。
//◆銀星号お怒り
	StR(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	FadeStR(0,true);
	Fade("絵色白", 1400, 0, null, false);
	DrawDelete("絵色白", 6000, 100, "effect_01_00_0", true);

	SetFwC("cg/fw/fw光_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【光】
<voice name="光" class="光" src="voice/md01/0300890a14">
「おのれ……がっかりさせてくれおって！
　真面目に聞いていたこっちが馬鹿を見たで
はないか！」

//【光】
<voice name="光" class="光" src="voice/md01/0300900a14">
「おまえの騙る覇は覇にあらず！」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300910a05">
「む……無傷だと!?
　馬鹿なッ！」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300920a05">
「貴様、何者――」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300930a14">
「人の話はちゃんと聞け!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どーん
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se戦闘_衝撃_衝突01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSP("絵演衝撃", 4000, Center, Middle, "cg/ef/ef044_火花c.png");
	Shake("絵演衝撃", 300, 4, 0, 0, 0, 1000, null, false);
	Rotate("絵演衝撃", 200, @0, @0, @360, null,false);
	Zoom("絵演衝撃", 300, 2000, 2000, Dxl2, true);

	CreateSE("SE02","se戦闘_動作_鉄壁吹っ飛ばす");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 300, 500, Dxl2, false);
	Zoom("絵演衝撃", 300, 2000, 4000, null, true);

	Fade("絵色白", 300, 1000, Axl2, true);
	Delete("絵演衝撃");

	StR(1000, 30, -280,"cg/st/3d銀星号_立ち_戦闘b.png");
	FadeStR(0,true);
	WaitKey(200);

	StL(1000, @0, @0,"cg/st/3d髭切_立ち_抜刀.png");
	FadeStL(0,true);
	Shake("@StL*", 600, 4, 0, 0, 0, 1000, DxlAuto, false);
	Move("@StL*", 600, @-30, @20, DxlAuto, false);

	FadeDelete("絵色白", 2000, false);

	SetFwC("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0300940a05">
「ごはァ!?」

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300950a14">
「覇とは強奪。
　そこまでは正しい」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300960a14">
「だが、奪うとは何だ？
　――欲し、求めるから奪うのであろう！」

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300970a14">
「求めるとは？
　――愛しているから求めるのだ！」

//【光】
<voice name="光" class="光" src="voice/md01/0300980a14">
「愛し、欲し、奪う！
　それが覇道!!」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0300990a14">
「足利護氏！
　おまえは最初の一歩から間違っている!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ぼーん
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中03");
	CreateSE("SE01b","se戦闘_破壊_爆発02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵演", 4100, Center, Middle, "cg/ev/ev932_銀星号正拳突き_b.jpg");
	SetBlur("絵演", true, 3, 500, 100, false);
	Shake("絵演", 600, 4, 0, 0, 0, 1000, DxlAuto, false);
	Fade("絵色白", 300, 0, null, true);

	Fade("絵色白", 300, 1000, null, false);
	Zoom("絵演", 300, 1500, 1500, null, true);

	Delete("絵演");

	StR(1000, @0, @0,"cg/st/3d銀星号_立ち_戦闘.png");
	Request("@StR*", Smoothing);
	Rotate("@StR*", 0, @0, @180, @0, null,true);
	FadeStR(0,true);
	Shake("@StL*", 600, 4, 0, 0, 0, 1000, DxlAuto, false);
	Move("@StL*", 600, @-30, @20, DxlAuto, false);

	FadeDelete("絵色白", 1000, false);

	SetFwC("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0301000a05">
「がふッ……!?」

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0301010a14">
「最初に愛が無ければ欲ではなく覇でもない！
　虚栄に過ぎん！」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0301020a14">
「おまえはッ！
　単に！『天下を取る、かっこいい俺様』に
陶酔したいだけではないかぁ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆でかいの一発
//◆吹き飛ぶ鬚切
//◆どっかに落ちた？　どーん。
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵色黒", 5000, "#000000");
	CreateTextureSP("絵演", 4000, -30, -990, "cg/ef/resize/ef042_汎用打撃tl.jpg");
	Zoom("絵演", 0, 1000, 5000, null, true);
	SetBlur("絵演", true, 3, 500, 100, false);
	Fade("絵演", 0, 1000, null, true);

	CreateTextureEX("絵演打撃当", 4010, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Fade("絵演打撃当", 0, 500, null, true);
	FadeDelete("絵演打撃当", 400, false);
	Shake("絵演打撃当", 200, 10, 40, 0, 0, 1000, Dxl3, false);
	Zoom("絵演打撃当", 200, 3000, 3000, AxlDxl, false);
	FadeFR2("絵演",0,1000,300,0,0,120,Dxl2, true);

	CreateSE("SE01b","se戦闘_攻撃_鎧_吹っ飛ぶ02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵色黒", 600, 1000, null, false);
	Move("絵演", 300, 0, 4032, AxlDxl, true);

	Wait(300);

	CreateTextureEX("絵背景", 18000, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	Fade("絵背景", 1000, 1000, null, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　鬚切は――
　大将領足利護氏は、そうして<RUBY text="・・・・・・・・・・">何処かへ飛んでいった</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg031_八幡宮境内_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);

	FadeDelete("上背景", 500, true);
	Wait(500);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0301030a00">
「………………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0301040a01">
《………………》

{	FadeStL(300,false);
	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0301050a14">
「ふんっ。
　下らぬ手間を費やした」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　不機嫌に吐き捨てる銀星号。
　両腕を組み、さも忌々しげな様子だ。

　意に染まぬ問答をした――その程度の余韻しか窺え
ない。
　<RUBY text="・・">戦い</RUBY>の名残りを示すものなど、まるで無かった。

　実力の程は先刻思い知らされている、鬚切――上代
の大名物と練達の仕手から成る強剛の武者を打倒して
おきながら。
　息一つ乱れていない。

　銀星号。

　この魔物、
　この<RUBY text="ひかる">銀星号</RUBY>を、俺は倒さねば。
　
　……凍り固まる脳漿で、最低限の状況判断をする。

　しかし、勝てるのか。
　余りにも桁が違い過ぎるこの怪物に、勝てるか。

　俺の力で――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0301060a01">
《……御堂》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0301070a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　ふと、寄り添うような温もりを肌に覚えた。
　不思議に頼もしい感触。

　俺は独りではない。
　……そうだ。そうだった。

　やれる。
　俺は――俺達は戦える！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//あきゅん「演出：ここでの村正は手前に演出するのでBu的な画像を後で準備」
	CreateSE("SE01","se人体_足音_鎧歩く03");
	StR(1000, 100, -440,"cg/st/resize/3d村正標準_立ち_通常m.png");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-60, @0, DxlAuto, false);
	FadeStR(300,false);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0301080a00">
「光！」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0301090a14">
「つまらん事で待たせてしまったな」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆銀星号と村正
	SetFwC("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【光】
<voice name="光" class="光" src="voice/md01/0301100a14">
「劒冑共々、今日は調子が良いと見える。
　何よりのことだ」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0301110a14">
「さぁ、愉しもう景明！
　奪い合い求め合い、互いを味わい尽くすと
しよう！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　先程の憂さなどはや忘れた様子で、嬉々と云う光。
　闘争を睦み合いのように語って求めるその姿は――
既に遠い。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――



}

..//ジャンプ指定
//次ファイル　"md01_031.nss"