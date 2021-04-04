//<continuation number="220">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_020.nss_MAIN
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
	#bg061_普陀楽城大手門a_02=true;
	#bg105_城門付近内側_02=true;
	#bg062_普陀楽城大手道_02=true;
	#bg072_火災で倒壊した和風建築_02=true;
	#ev001_銀星号事件イメージ１=true;
	#ev003_銀星号事件イメージ３=true;
	#ev002_銀星号事件イメージ２=true;
	#ev152_見下ろす銀星号_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_021.nss";

}

scene mb03_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_019.nss"

//◆小弓御所（一部）
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵演背景", 500, Center, Middle, "cg/bg/bg061_普陀楽城大手門a_02.jpg");
	Zoom("絵演背景", 0, @1, @1, null, true);
	Rotate("絵演背景", 0, @0, @180, @0, null,true);

	CreateTextureSP("絵演背景２", 200, Center, Middle, "cg/bg/resize/bg103_普陀楽城外郭藤沢方面_02l.jpg");
	Rotate("絵演背景２", 0, @0, @180, @0, null,true);
	Zoom("絵演背景２", 0, @1, @1, null, true);
	Move("絵演背景２", 0, -500, 0, null, true);

	OnBG(100,"bg105_城門付近内側_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　小弓御所の前にいる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0200010a00">
「…………」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200020a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　前に――いるのだった。
　東から回り込み、警戒線の間隙を縫って接近、折を
見て装甲騎航。低高度を保ちつつ公方府を目指した末、

　とうとう何の迎撃も受けることなく。
　
　……出来過ぎであった。

　いかに防備の薄い箇所を狙おうが、数十メートルの
低空を飛ぶ騎影は必ず目視確認される。されない筈が
ない。されれば<RUBY text="ヘッドクォーターズ">公方府</RUBY>へ連絡が行こうし、行けば防空
隊にも指令が下り、その一部は俺達を捕捉するだろう。

　そう考えていた。その程度なら短時間の強行突破も
不可能ではなかろうと。
　それはむしろ、甘い目測であったのかもしれない。

　しかし現実は輪を掛けて甘く、砂糖菓子同然だった。

　装甲姿がいっそ滑稽なほどの無傷ぶりで、俺と一条
は目指した場所へ立っている。
　苛酷を窮めると思われた潜入行がここまでたやすく
成ってしまった理由はわからない。

　……否。わからな<RUBY text="・・・">かった</RUBY>。
　
　あまりに容易な進攻の果て、今川雷蝶の居館へ遂に
到り、その有様を視野に収めるまでは。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆小弓御所全景。落城済み。一部燃えてたり。


	CreateSE("SEL01","se背景_ガヤ_建物炎上_L");
	MusicStart("SEL01",2000,500,0,700,null,true);

	Move("絵演背景２", 70000, -1000, 0, null, false);
	FadeDelete("絵演背景", 2000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　小弓御所は、<RUBY text="お">陥</RUBY>ちていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200030a02">
「……どうして？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0200040a00">
「……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200050a02">
「まさか、姫さまたちが……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　岡部残党を中核とする反幕軍に襲われた――
　
　まず、有り得ない話である。一条自身が自分の言葉
を全く信じていない風だった。

　一に、定めた戦略と異なる。二に、黒瀬童子が集め
ると云った千ばかりの兵で公方府を落とせる筈がない。
三に、余りにも行動が早過ぎる。
　四に――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆中へ
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateMovie("煙動画", 300, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 6000, null, true);
	Request("煙動画", SubRender);
	Move("煙動画", 0, @0, @-400, null, true);


	CreateTextureSP("絵演背景２", 200, Center, Middle, "cg/bg/bg105_城門付近内側_02.jpg");
	Zoom("絵演背景２", 0, @1, @1, null, true);
	Rotate("絵演背景２", 0, @0, @180, @0, null,true);

	OnBG(100,"bg062_普陀楽城大手道_02.jpg");//ダミー注意
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　俺は<RUBY text="えんじん">煙塵</RUBY>漂う凄惨な館内へ踏み込んだ。
　一条も背後に続いてくる。

　中は、滅茶苦茶であった。
　大軍に奇襲を受け、忽ち奥まで入り込まれたのだと
しても――ここまでの醜態には果たしてなろうか。

　盲滅法に機関銃を撃ち放ったとしか思えぬ破砕痕。
　倒壊した壁と、その手前で砲身を歪めつつ横転して
いる迫撃砲――これは何だ。まさか館内でこんなもの
を使って砲撃したとでもいうのか。

　そして死体。
　一面の死と死と死と死。

　その全てが六波羅の軍装を纏っている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200060a02">
「……変です。
　こいつら、誰にやられたんでしょう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　…………。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200070a02">
「<RUBY text="・">敵</RUBY>の死体が全然ない……。
　どういうことですか？　六波羅が六波羅を
攻めた？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　…………。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200080a02">
「でも、どいつもこいつも死んでるってのは
……生きてる奴らはどこへ……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0200090a00">
「いない」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200100a02">
「え？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0200110a00">
「生存者はいない。
　誰も彼もが死んでしまった」


//【景明】
<voice name="景明" class="景明" src="voice/mb03/0200120a00">
「ここに残っているのは死骸と、
　……死神だけだ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆駆け出す
	CreateSE("SE01","se人体_動作_跳躍01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("煙動画");
	Delete("絵演背景*");

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateSE("SEL01","se人体_足音_走る01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);

	DrawDelete("黒幕１", 150, 100, "circle_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　奥を目指して走る。
　死骸の上を飛んで。血の飛沫を散らし。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb03/0200130a01">
《――――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　村正の精神は真冬の鉄板のように固く冷たい。
　そのくせ溶鉱炉から溶け出したばかりの<RUBY text="ノロ">鋼滓</RUBY>のよう
にどろどろと熱くもある。

　村正を装う俺の精神も相似であろう。
　酷冷と灼熱の同居に意識は何処かの<RUBY text="はて">涯</RUBY>へ飛びそうに
なっている。

　ともすれば現実に先行するその意識を追う心地で、
俺は駆けた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆走って
//◆奥の間へ。屋根も吹っ飛んでる
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	WaitKey(200);
	OnBG(100,"bg072_火災で倒壊した和風建築_02.jpg");
	FadeBG(0,true);
	SetVolume("SE*", 500, 0, null);
	DrawDelete("黒幕１", 150, 100, "circle_01_00_1", true);

	CreateSE("SEL01","se背景_ガヤ_建物炎上_L");
	MusicStart("SEL01",2000,500,0,700,null,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　そこは、この城館の主が住まう間であったのだろう。
　絢爛なばかりの装飾で満たされていたようだ。
　
　嘗ては。

　今は既に、見る影も無い。
　砕け、裂かれ、全ては崩壊し去っている。

　主人も含めて。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200140a02">
「……こいつ……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0200150a00">
「ああ。
　大和ＧＰで見掛けたな……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　俺の背後から覗いて絶句する一条に、頷きを返す。
　部屋の中央寄りに転がる、人間――の残滓。断片。

　余程の激闘の末にかく果てたのであろうか。
　豪奢な劒冑で身を<RUBY text="よろ">鎧</RUBY>った小弓公方今川雷蝶は、彼の
居館が受けた災禍を象徴するように、凄まじき形相を
浮かべて<RUBY text="・・・・・・・">砕け散っていた</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200160a02">
「……どういうことなんですか……」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0200170a00">
「どうも、こうも無い」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　歯を<RUBY text="こす">擦</RUBY>って言葉を<RUBY text="しぼ">搾</RUBY>る。
　状況は不分明か。否。その正逆。

　状況は明々白々。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0200180a00">
「お前も見た筈だぞ一条。
　この光景を、一度は目にしている筈だ」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0200190a02">
「――あ――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　今川雷蝶は死んだ。
　小弓公方府は壊滅した。

　しかし、俺達は何もしていない。
　彼らの敵であった我々は一切、何も。

　だから彼らは敵に滅ぼされたのではない。
　戦争は彼らを殺していない。

　彼らを殺し滅ぼしたものは何か。
　戦争とは全く別の、人の群れを滅ぼし去るものとは
何か。

　天災だ。
　雷雨の渦巻く大嵐。風に乗って広がる大火。沿岸を
呑み尽くす大海嘯。山の怒りが周辺全てを地獄に変え
る大噴火。

　それらと同等。
　同じように突然で、同じように抗えず、同じように
無慈悲。人を殺す。人の営みを滅ぼす。ただそれだけ
の現象。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	SetVolume("SE*", 500, 0, null);

	CreateTextureEX("絵演", 4000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	Zoom("絵演", 0, 1250, 1250, null, true);
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,500,0,1000,null,false);
	FadeFR2("絵演",0,750,200,0,0,30,AxlDxl, true);
	Delete("絵演");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0225a]
　人は呼んだ。
　殺戮の天象と。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

	CreateTextureEX("絵演", 4000, Center, Middle, "cg/ev/ev003_銀星号事件イメージ３.jpg");
	Zoom("絵演", 0, 1250, 1250, null, true);
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,750,0,1000,null,false);
	FadeFR2("絵演",0,750,200,0,0,30,AxlDxl, true);
	Delete("絵演");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0225b]
　人は呼んだ。
　死の雨と。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

	CreateTextureEX("絵演", 4000, Center, Middle, "cg/ev/ev002_銀星号事件イメージ２.jpg");
	Zoom("絵演", 0, 1250, 1250, null, true);
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeFR2("絵演",0,750,200,0,0,30,AxlDxl, true);
	Delete("絵演");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0225c]
　人は呼んだ。
　魔王と。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0225d]
　そして、人は呼んだ。
　
　<RUBY text="ぎん">白銀</RUBY>の星と。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆瓦礫背景にレイヤー重ねで銀星号？
//◆演出利かせて。
//あきゅん「演出：ここでのＥＶはきっと本来での使用方法とは違う雰囲気重視で仮入れ」
	CreateTextureSP("絵ＥＶ", 2000, -324, -576, "cg/ev/resize/ev152_見下ろす銀星号_aｌ.jpg");

	CreateMovie("煙動画", 2001, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 6000, null, true);
	Request("煙動画", AddRender);
	Move("煙動画", 0, @0, @-400, null, true);
	Rotate("煙動画", 0, @0, @180, @0, null,true);


	FadeDelete("絵色黒", 3000, false);
	Move("絵ＥＶ", 30000, 0, @0, null, false);
	SoundPlay("@mbgm37",0,1000,true);

	Wait(4000);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【光】
<voice name="光" class="光" src="voice/mb03/0200200a14">
「いい<RUBY text="ゆうやけ">夕焼</RUBY>だな、景明。
　まるで<RUBY text="ほおずき">鬼灯</RUBY>の野のようだ……」


//【光】
<voice name="光" class="光" src="voice/mb03/0200210a14">
「そうは思わないか？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0200220a00">
「――<RUBY text="ひかる">銀星号</RUBY>!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一度シーン切って
//◆銀星号
	CreateTextureSP("絵ＥＶ２", 1990, Center, Middle, "cg/ev/ev152_見下ろす銀星号_a.jpg");
	SetBlur("絵ＥＶ２", true, 3, 300, 70, false);
	Zoom("絵ＥＶ２", 0, 2000, 2000, null, true);

	CreateSE("SE01","se特殊_雰囲気_鎧登場演02");

	CreateMovie("煙動画", 1999, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 4000, null, true);
	Request("煙動画", AddRender);
	Move("煙動画", 0, @0, @-100, null, true);
	Rotate("煙動画", 0, @0, @180, @0, null,true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵ＥＶ２", 500, 1000, 1000, Dxl2, false);
	FadeDelete("絵ＥＶ", 500, true);
	Wait(2000);


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_021.nss"


