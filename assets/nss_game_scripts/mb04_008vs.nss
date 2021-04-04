//<continuation number="230">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_008vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb04_008vs.nss","TurboBlur",true);
	

//コックピット用Ｓｅｔ
	CP_AllSet("村正");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg001_空a_02=true;
	#bg202_旋回演出背景山_02=true;
	#ev107_双輪懸図解_d=true;
	#ev153_村正ＶＳ銀星号_a=true;
	#ev153_村正ＶＳ銀星号_b=true;
	#ev153_村正ＶＳ銀星号_c=true;
	#ev901_銀星号天座失墜小彗星_c=true;
	#ev155_村正ＶＳ銀星号３_a=true;
	#ev155_村正ＶＳ銀星号３_b=true;
	#ev155_村正ＶＳ銀星号３_c=true;
	#ev901_銀星号天座失墜小彗星_a=true;
	#bg002_空a_02=true;
	#bg052_湊斗家道場_01=true;
	#ev128_病床の光_a=true;
	#ev901_銀星号天座失墜小彗星_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mb04_009.nss";

}

scene mb04_008vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_007.nss"

//◆村正ＶＳ銀星号
//◆上昇中
	PrintBG("上背景", 30000);
	OnBG(100,"bg001_空a_02.jpg");
	FadeBG(0,true);



	CreateColorSP("黒幕１", 20000, "BLACK");
	Delete("上背景");

//	Cockpit_AllFade0();
	Fade("絵村正", 0, 0, null, true);

	CreateTextureSP("絵背景100", 18000, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	CreateTextureSP("絵EF100", 18500, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	Rotate("絵EF100", 0, @180, @0, @0, null,true);
	Zoom("絵EF100", 0, 1200, 1200, null, true);


	CreateTextureSP("絵St100", 19000, 200, -542, "cg/st/resize/3d村正標準_騎航_戦闘bm.png");
	SetBlur("絵St100", true, 3, 500, 50, false);

	Shake("絵EF100", 30000, 5, 5, 0, 0, 500, null, false);
	Shake("絵St100", 30000, 1, 0, 0, 0, 500, null, false);
	Fade("絵EF100", 0, 500, null, true);

	OnSE("se人体_動作_跳躍03",1000);

	Move("絵St100", 400, @-300, @0, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	Wait(1000);

	OnSE("se戦闘_動作_空突進02",1000);
	Move("絵St100", 400, @-2000, @0, Dxl1, false);
	Wait(300);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景100");
	Delete("絵St100");
	Delete("絵EF100");

//	Cockpit_AllFade2();
	Fade("絵村正", 0, 1000, null, true);

//	CP_HighChangeA();
//	CP_AltChangeA();
//	FrameShake();


	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


	SoundPlay("@mbgm08",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　銀星号という武者を考察する。

　その一個人を大災害たらしめるのは精神汚染能力で
ある。……これは、今は関わりない。
　その一個人を最強者たらしめるのは重力騎航能力が
まず第一である。……こちらが重要だ。

　通常、武者は<RUBY text="がったり">合当理</RUBY>（<RUBY text="バレル">翼筒</RUBY>）によって推力を、<RUBY text="ほろ">母衣</RUBY>
（<RUBY text="ウイング">翼甲</RUBY>）によって揚力を獲得することで、翔飛―――
即ち<RUBY text="ネイル">騎航</RUBY>を実現する。
　その速度は人類が有する移動手段の中で最高を極む。

　どの車輌どの艦艇どの飛行艦をも圧倒する速度の主
たる武者はつまり絶対的な交戦選択権の保持者であり、
また肉弾攻撃を主体とするため高速を破壊力に転化し
あらゆる兵器に致命的損壊を及ぼすことが可能である。

　故もって武者は他の全兵科に優越し、戦場の王たる。
　銀星号が武者の中の王者たるのも、同質の理由から
だ。

　合当理と母衣を使い<RUBY text="かぜ">空気</RUBY>を操って飛ぶ通常の武者と
違い、銀星号は空気に対してあくまで補助的な役割を
しか要求しない。
　例え空気が無くとも、銀星号は<RUBY text="と">翔</RUBY>べる。

　銀星号がその薄く輝く儚げな翼に託すものは、空気
に非ず、<RUBY text="しんき">辰気</RUBY>――重力、万有引力である。
　自然界における最も根本的な<RUBY text="エネルギー">力</RUBY>の一つ。

　銀星号。二世右衛門尉村正はこの力を認識し、把握
し、操作する。周囲の物体や自己の騎体から発生する
それを、仕手の<RUBY text="パワー">熱量出力</RUBY>が許す範囲において増幅し、
減殺し、あるいは力の働く方向を変えるのだ。

　この原理によって為される重力騎航は通常の騎航と
全く異なる次元へ達する。
　例えば――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE10","se戦闘_動作_空突進05");
	MusicStart("SE10",2000,1000,0,1000,null,true);

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景50", 100, Center, -300, "cg/bg/bg202_旋回演出背景山_02.jpg");
	Request("絵背景50", Smoothing);

//おがみ：コックピット===============
	Cockpit_AllFade2();

	CP_HighChange(0,1312,null,false);
	CP_SpeedChange(0,315,null,false);
	MyLife_Count(1,720);
	MyTr_Count(0,300);

	CP_AziChange(0,-171,AxlDxl,false);
	CP_HighChangeA();
	CP_AltChangeA();
	CP_AltChange(0,88,null,false);
	FrameShake();
	BGMoveAuto("@絵背景50",1);

//おがみ：コックピット===============

	CloudZoomSet(5000);
	CloudZoomStart(400,800,800,300,400);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 2000, 900, null);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0010a01">
《高度一三〇〇。
　……<RUBY text="あし">速力</RUBY>を切り崩す覚悟ならもう<RUBY text="ひととび">一飛躍</RUBY>も
できるけど》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0020a00">
「啖呵を切って挑戦した挙句に失速して墜死
では、冗談として出来過ぎだな。
　ここで無理は要らん」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0030a00">
「敵騎の到達高度は？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0040a01">
《推定、約――{WaitKey(3000);}一二〇〇〇》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0050a00">
「……？
　誤差はどの程度だ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0060a01">
《加減一五〇〇くらいよ。おそらく》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0070a00">
「やけに低い」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0080a01">
《……小弓で会った時からだけれど……
　<RUBY text="かかさま">銀星号</RUBY>の翅に、欠けがある》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0090a00">
「欠け？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0100a01">
《ほんのわずか。何処かの戦いで手負ったの
かもしれない。
　それが、<RUBY text="かかさま">銀星号</RUBY>の<RUBY text="のうりょく">引辰制御</RUBY>を弱めていると
したら――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　今の銀星号は完全な騎航能力を有していないという
事か。
　そう考えれば、納得ができる。

　高度一二〇〇〇。所要時間は一分未満。
　こちらの約十倍の上昇力。<RUBY text="・・・・・・・・・">銀星号にしては鈍い</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0110a00">
「しかしそんな小さな傷なら、すぐに修復が
できそうなものだが……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0120a01">
《精巧な器官だから難しいのかも。
　それに、どんな劒冑にだって得手不得手が
ある》

//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0130a01">
《<RUBY text="かかさま">二世</RUBY>は機動力にしても攻撃力にしても無敵
に近いけれど、甲鉄強度と再生能力はその分
犠牲にされている……決して高くない。
　完璧ではないのよ、御堂》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0140a00">
「……ああ。
　そうか。そうだな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　それが九回裏十点差を追うチームに送られる声援と
同程度の意味しか持たないのは承知の上で、頷く。
　だから無意味だと、どうして言えよう。諦めという
自滅を誘う猛毒に抗うには、そんなものでも有用だ。

　十倍の高度差。
　武者と武者の一騎打において、その事実がもたらす
ものは何か――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆解説ＣＧ。第一編で使ったやつ
	CreateTextureEX("絵演18", 18000, Center, Middle, "cg/ev/ev107_双輪懸図解_d.jpg");
	Fade("絵演18", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　高度の優越者は地球上の重力作用を味方として勢力
の強い突撃を行う。劣後者はその逆、重力を敵に回し
勢力を削がれながら迎撃する。
　勢力の強弱の程度は角度による。

　高度優位者の降下角と劣位者の上昇角は概算におい
て正比例の関係にあると考えられるから、この角度が
九〇度から離れるほど勢力強弱の格差は微小になり、
近付くほど勢力格差は相乗的に開いてゆくことになる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	FadeDelete("絵演18", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　そして現在、その角度は<RUBY text="・・・・・">ほぼ九〇度</RUBY>。
　八九度ほどであろうか。水平距離と高度差によって
導かれる結果がこれ、だ。

　悪くない。
　銀星号が完調ならきっと八九・九度だったろう。
　
　焼け石に水、という言葉は忘却する。

　……いずれにしろほぼ九〇度。
　敵騎はほぼ垂直に駆け下り、自騎はほぼ垂直を駆け
上がる、この形勢は現時点で確定した。

　銀星号は重力の支援を最大限度享受し、しかもこれ
を固有能力によって拡大しつつ、成層圏から来襲する。
　運動量＝質量×速度。それはどれ程の値となるか。

　……その計算を途中で放棄したのは、最低でも村正
を二〇騎まとめて<RUBY text="・・・">瓦割り</RUBY>にできるエネルギーは有ると
判明した時点で嫌気が差したから――ではない。
　解を求める意味がそも無いからだった。

　エネルギーは、敵騎の甲鉄を打ち割れるだけあれば
良く、それ以上は無駄と言い切っても差し支えない。
　原形を留めぬまで騎体を粉砕するのも、首筋を数寸
裂いて頚動脈を破綻させるのも、価値は同等なのだ。

　その点において、重力に逆行するこちらは、必要な
エネルギーを独力では獲得し難い。
　が、衝突の威力は当然ながら<RUBY text="・・・">相対的</RUBY>に決する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆図解
	CreateTextureEX("絵ＥＶ18", 18000, Center, Middle, "cg/ev/ev153_村正ＶＳ銀星号_a.jpg");
	Fade("絵ＥＶ18", 500, 1000, null, true);

	WaitKey(1500);

//あきゅん「演出：ＥＶの差込場所はかなり適当、要調整必須」
	CreateTextureSP("絵ＥＶ17", 17990, Center, Middle, "cg/ev/ev153_村正ＶＳ銀星号_b.jpg");
	FadeDelete("絵ＥＶ18", 500, true);

	WaitKey(1500);

//あきゅん「演出：ＥＶの差込場所はかなり適当、要調整必須」
	CreateTextureSP("絵ＥＶ16", 17980, Center, Middle, "cg/ev/ev153_村正ＶＳ銀星号_c.jpg");
	FadeDelete("絵ＥＶ17", 500, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　銀星号の急降下攻撃に必要充分な衝突力が宿るなら、
こちらの<RUBY text="カウンター">逆撃</RUBY>も同等の衝突力を得られる理屈だ。
　敵がこちらを撃破できるように、こちらも敵を撃破
し得る。

　……だからといって対等ということにはならないが。
　高度差によって有利不利が分かれるのは武者戦闘の
常識であり、常識であるからには疑う余地もなかった。

　単に鉄の塊がぶつかり合うだけならばどちらが上で
あろうと同じ事だったろう。
　だが実際には、武者は手足を使い、武器を繰り出し
て、攻撃を行う。

　重力の加勢あるいは負荷は、その動作の全てに影響
する。必然的に、高度優位者の攻撃は鋭敏に、劣位者
の攻撃は鈍重になる。
　攻撃の精度において大きな差が顕れるのだ。

　高度優位者の攻撃は敵を捕捉し易く、充分な威力の
発揮もし易い。つまりは、攻撃を<RUBY text="・・・・・・・">しくじりにくい</RUBY>。
　劣位者はその逆である。

　動体視力と反応速度の限界を試すような空の戦いに
おいてこれが極めて重要な意味を持つことは、改めて
論ずるまでもないだろう。
　<RUBY text="・・・">衝突力</RUBY>は対等でも、<RUBY text="・・・">攻撃力</RUBY>の差がこうして生ずる。

　どちらの側も相手を破壊し得るという意味では同等、
しかしその成功率については差が出る。<RUBY text="エネルギー">相対的運動力</RUBY>
の攻撃への有効利用率が違うのだと言ってもいい。
　一口にまとめればそう云う事。

　また、互いの攻撃が真っ向からぶつかり合う事態と
もなれば、話はより単純かつ明快になる。
　運動力量に優る側が劣る側を吹き飛ばし、一方的な
結果を現出させずにはおかない。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＶ*", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0086]
　それら優劣の格差が最大まで開く形勢に、今、この
現況は在る。
　自騎上昇角九〇度。敵騎降下角九〇度。

　<RUBY text="ヘッド・オン">正面相撃</RUBY>して近接、互いに攻撃を繰り出す瞬間――
　俺は重力に阻害され動作が鈍くなる分、早い段階で
<RUBY text="・・・">見切り</RUBY>をつけて攻撃せねばならない。

　そしてその分、銀星号は余裕をもって攻撃を行える。
　より精確に。より強力に。

　……俺と銀星号の勝負は、相互の術技を比較し合う
以前の段階で既にそれだけのペナルティが約束されて
いる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピッチアップして降下へ
	BGMoveDelete();

	SetVolume("SE10", 1000, 1000, null);
	SetFrequency("SE10", 1000, 800, null);

	OnSE("se戦闘_動作_空突進04",1000);

	Move("@絵背景50", 1000, @0, @50, Dxl2, true);

	SetFrequency("SE10", 10000, 1200, null);

	CP_AltChange(2500,-88,AxlDxl,false);
	CP_HighChange(2500,812,AxlDxl,false);
	CP_SpeedChange(2500,525,AxlDxl,false);
	CloudZoomVertex(2500,@0,@300,AxlDxl,false);
	Shake("@絵背景50", 1000000, 1, 1, 0, 0, 1000, null, false);
	Move("@絵背景50", 2500, @0, @-1350, AxlDxl, true);
	CloudZoomVertex(500,@0,@-300,AxlDxl,false);

	SetVolume("SE10", 2000, 300, null);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　<RUBY text="わざ">術技</RUBY>――――

　この状形、銀星号が用いてくるそれは知れている。
　自らの通称にあやかってだろう、小彗星と名付けた
あの術技に間違いない。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆回想・フォーリンダウンレイディバグ
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_c.jpg");
	Rotate("絵回想", 0, @0, @180, @0, null,true);
	Zoom("絵回想", 0, @1, @1, null, true);
	Request("絵回想", Smoothing);
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　吉野御流合戦礼法〝<RUBY text="つきかけ">月片</RUBY>〟、その<RUBY text="アレンジ">崩し</RUBY>。
　過去数度に渡る<RUBY text="たちあい">立合</RUBY>の全てにおいて銀星号はこれを
用い、文字通り俺を一蹴している。

〝月片〟は敵に対して高位を奪った形勢から相撃する
に際し、直前で前転の動作を加える事で、打ち下ろし
の太刀に威力を乗せると共に相手を幻惑する技である。
　銀星号はこれに劒冑の特性を加味し――

　超高空から<RUBY text="ダイブ">降下突撃</RUBY>、重力制御で加速しエネルギー
を高めつつ接敵、その刹那に半前転して、最大限度の
威力が乗った<RUBY text="ヒールキック">踵落とし</RUBY>を対手に叩き込む術技とした。
　銀星号以外の何者にも為し得ぬ<RUBY text="パーソナルアート">我流魔剣</RUBY>。

　太刀は用いないが、その威力たるや<RUBY text="・・・">壊滅的</RUBY>である。
　身に染みて知っている事だ。

　ただ、それほどの勢力を掛ければ、銀星号の脚とて
無事には済まぬ筈なのだが――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0150a01">
《常理に沿えばその通りね。
　おそらく<RUBY text="かかさま">銀星号</RUBY>は、甲鉄を一時的に右脚へ
集積させているんだと思う》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0160a00">
「…………。
　そんな真似が可能なのか？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0170a01">
《引辰制御の応用で――多分》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　……通常なら、物体の変形に従って質量バランスが
変移する。その逆に、<RUBY text="・・・・・・">質量を動かす</RUBY>ことで甲鉄を変形
させているとでもいうのだろうか。
　正直な所、理解を超えている。

　だが俺の理解が及ぼうと及ぶまいと事実は事実。
　銀星号が一撃必墜の武技を苦なく扱いこなすという
事実は動かしようもない。

　村正の甲鉄をして用を為させぬ恐るべき魔芸。
　そこに隙は、<k>
　
　――考え得る限り無数にあると云えよう。

　諸流諸技に例外なく言える事だが、<RUBY text="わざ">術技</RUBY>というもの
の<RUBY text="・・・">必殺性</RUBY>はまず対手にとって未知である事に立脚する。
　どれほど高度な術であろうと、その内情を把握して
いれば対処法を講じられるからだ。

　例えば〝月片〟は<RUBY text="フェイント">幻惑</RUBY>と<RUBY text="インクリース">打撃強化</RUBY>を共に叶える吉野
御流の精髄とも称すべき技法だが、これを全て<RUBY text="わきま">弁</RUBY>えて
いる者に繰り出したところで只の<RUBY text="サーカス">曲芸</RUBY>である。
　目前でのどかに前転を始める敵を見過ごす法はない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆図解
	CreateTextureEX("絵ＥＶ18", 18000, Center, Middle, "cg/ev/ev155_村正ＶＳ銀星号３_a.jpg");
	Fade("絵ＥＶ18", 500, 1000, null, true);

	WaitKey(1500);

	CreateTextureSP("絵ＥＶ17", 17990, Center, Middle, "cg/ev/ev155_村正ＶＳ銀星号３_b.jpg");
	FadeDelete("絵ＥＶ18", 500, true);

	WaitKey(1500);

	CreateTextureSP("絵ＥＶ16", 17980, Center, Middle, "cg/ev/ev155_村正ＶＳ銀星号３_c.jpg");
	FadeDelete("絵ＥＶ17", 500, true);

	WaitKey(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　基礎理念を同じくする銀星号の技とてもそう。
　回っている間に動きを見切り、<RUBY text="・">下</RUBY>へ抜け、抜けざま
に斬り捨ててしまえば良い。

　確実に勝てる策だ。
　そして手の内を<RUBY text="さら">曝</RUBY>け出している銀星号が、この策を
裏切ることは無い。

　大きな<RUBY text="リード">有利</RUBY>。
　術技比較の面においては、銀星号の<RUBY text="カード">手札</RUBY>が最初から
露出しているという一点によって、俺の完璧な優勢が
確定している。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＶ*", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132b]
　…………<RUBY text="しか">然</RUBY>して。
　
　過去の対戦は俺の全敗。

　その理由は実に簡明な事だった。

　<RUBY text="・・・・・・・・・・・・・">絵に描いた餅で腹は満たない</RUBY>。
　必勝を約する策も実行不可能なのではまるで意味が
無い。それだけの話だ。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆回想・小彗星
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　――――速過ぎる。
　
　一万を超える高度からの垂直降下を重力制御で更に
加速しつつ行う時、その終端速度は理外の法外。

　一度目の勝負は、何もできずに撃ち墜とされた。

　二度目の勝負では、攻撃の一瞬を見切ってくれよう
と眼を凝らした。
　そうして、何もできずに撃ち墜とされた。

　三度目の勝負では、視界内に現れた瞬間に動こうと
眼を凝らした。
　そうしてやはり、何もできずに撃ち墜とされた。

　<RUBY text="・・・・・・・・・・・・">気付けば叩き落されている</RUBY>。
　それが銀星号の<RUBY text="ファイティングスピード">戦闘速度</RUBY>。

　底の割れた相手の技の裏をかき、勝利する――
　そんな<RUBY text="シンプル">単純</RUBY>な勝利方程式が成立しない。敵の技法が
見え透いていても、それがいつ実行されるか全くわか
らないのでは対処の仕様も無い。

　戦理において、勝利は俺のものであるべきだろう。
　しかし銀星号は身も蓋もない暴力によって戦理ごと
俺を粉砕できるのだ。

　それは、術技の限界と云うべきか。
　技とはとどのつまり、人間を相手にするもの。

　天災を想定するものではない。
　<RUBY text="・・">隕石</RUBY>に対抗する役には立たない。

　一剣の対応限界を超えたところに敵騎は存在する。
　
　それでも尚、術技をもって破らんと志すならば――

　<RUBY text="おのれ">自騎</RUBY>も限界を超えるに如かず。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆速度回復、再上昇

	SetFrequency("SE10", 5000, 1000, null);

	OnSE("se戦闘_動作_空突進03",800);

	CP_AltChange(2500,88,AxlDxl,false);
	CP_HighChange(2500,1252,AxlDxl,false);
	CP_SpeedChange(5000,325,AxlDxl,false);
	CloudZoomVertex(2500,@0,@-300,AxlDxl,false);
	Move("@絵背景50", 2500, @0, @1350, AxlDxl, true);
	CloudZoomVertex(1000,@0,@300,AxlDxl,false);

	SetVolume("SE10", 2000, 300, null);
	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0180a00">
「村正……
　敵騎が降下を開始したら即座に知らせろ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0190a01">
《――諒解》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　劒冑の<RUBY text="レーダー">信号探査</RUBY>は最も正確で最も迅速な探知手段だ。
　村正はごくごく微小なタイムラグ――発信した信号
が戻ってくるまでに必要な――しか要さず、銀星号の
攻撃開始を察知するだろう。

　過去の対戦では<RUBY text="め">視覚</RUBY>を<RUBY text="たの">恃</RUBY>んで敗れた。
　<RUBY text="みみ">信号探査</RUBY>は有効範囲の広さという点で確実に優れる。
確実に視覚より早く情報を掴むだろう。

　……だが、それでも間に合わないと悟っている。
　おそらくは村正も。

　ほんの僅かな、砂粒のようなタイムラグ、それだけ
の遅れさえも致命的なのだとわかっている。
　勝つには――もっと早く知らねばならない。

　銀星号が、攻撃を始めるその瞬間に……
　
　否。違う。<RUBY text="・・・・">それでも</RUBY>間に合わない。

　攻撃を始める<RUBY text="・・・・・">よりも前に</RUBY>。
　攻撃が実現するより先に、その開始の機を知らねば
ならない。そうして初めて対応が可能になる。

　<RUBY text="ヴェロシティ・オブ・ライト">物理限界速度</RUBY>にも迫る突撃を破るのなら。
　<RUBY text="とき">時間</RUBY>を越えるのが唯一の方途だ。

　<RUBY text="セン">先</RUBY>の機、と云う。
　吉野御流においては無明の理と称する。

　これは<RUBY text="いわゆる">所謂</RUBY>超能力に類する何かを要求するものでは
決してない。
　求められるのは小石を積んで巨塔を築くかのような
精細かつ入念な観察である。

　攻撃の動作を<RUBY text="・・">見る</RUBY>のではなく。
　攻撃の兆候を<RUBY text="・・">読む</RUBY>のだ。

　微妙な視線の移動。あるいは筋肉の緊張。
　そういった情報から、敵の攻撃動作が実際に始まる
よりも<RUBY text="・・">先に</RUBY>それを悟る。

　その機に押して攻め、敵の出端を打ち伏せるのが先
の機を取るという事であり吉野御流は無明の理である
が、銀星号に対してそれは成し得ない。
　あの攻撃を発動前に制するのは物理的に不可能だ。

　が――発動後の対応はできる。できる筈だ。
　先の機を突いて<RUBY text="ゴノセン">後の先</RUBY>を取る格好になろうか。降下
突撃の到来を<RUBY text="ナノ・セカンド">十億分の一秒</RUBY>でも先に知ることがもしも
できたなら、迎撃の剣を<RUBY text="・・・・・・">合わせられる</RUBY>。

　あるいは相討。
　しかし、斃せる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 3000, 0, null);
	SetVolume("@mbgm08", 3000, 500, null);

	CreateTextureEX("絵背景100", 17000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Fade("絵背景100", 300, 1000, null, true);

	CloudZoomDelete(0,true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0200a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　敵騎は上空<RUBY text="はる">遙</RUBY>か彼方。
　武者の視覚を研ぎ澄まそうが、芥子粒ほどにもその
姿を見ては取れない。

　目配りなどわからない。筋肉の動きも。
　だが、情報はそれだけではない筈だった。

　肌の熱。肉の匂い。心臓の鼓動。
　そんな些少な情報が何処かに、必ず有る。

　あるいはもっと微細な。
　視覚でも聴覚でも嗅覚でも触覚でも掴めず、さりな
がらその全てに訴えかける、何かが――

　<RUBY text="・・・・・・・・・・・・・・・">そこに生命が存在するという波長</RUBY>、そんなものが。
　
　
　有る。

　俗に気配と呼ぶのだろうそれは、今、確かに感じら
れる。
　この空の果てに。

　それは俺の感覚の鋭敏なるがゆえではない。
　逆だった。その気配の、大なるがゆえだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵銀星号", 17100, 150, -350, "cg/st/resize/3d銀星号_立ち_通常s.png");


	Move("絵銀星号", 20000, @0, 50, null, false);
	Fade("絵銀星号", 2000, 400, null, false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
　余りにも強大な存在の波動。
　世界を破壊しつつある魔王がそこに在るという主張。

　台風が近付けば風が吹き、噴火が近付けば地鳴りが
聴こえるように、その気配は明然。
　一個の生命とは桁が違う。一つの天象が備える<RUBY text="けはい">波長</RUBY>
は、誰にも看過を許さない。

　余りにも巨大過ぎて、その細かな動きや変化などは
まるで読み取れなかった。
　ただ、そこに在る、という一事実しかわからない。

　だがしかし、それは足掛かりになる。
　気配という波を<RUBY text="はしご">梯子</RUBY>に使い、本来届かぬ感覚の先端
を伸ばしてゆく。

　視覚――――
　聴覚――――
　嗅覚――――

　俺の形無き三本の指は、何も掴めず虚空で足掻いた。
　見えない。聴こえない。匂わない。

　駄目だ。
　この感覚では駄目だ。

　別の。
　別の――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);


//◆回想・統
	EfRecoIn1(18000,600);

	Delete("絵背景100");
	Delete("絵銀星号");
	CreateTextureSP("絵回想立絵", 17200, Center, InBottom, "cg/st/st統_通常_私服.png");
	CreateTextureSP("絵回想背景", 17150, Center, Middle, "cg/bg/bg052_湊斗家道場_01.jpg");
	Move("絵回想立絵", 0, @-256, @0, null, true);
	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　敵を知るには呼吸を<RUBY text="み">観</RUBY>る。

　音を聴くんじゃない。
　動きを見るんじゃない。

　それでわかるのは口先の呼吸だけ。
　そんなの、その気になれば誰でも誤魔化せるだろ？

　だから、<RUBY text="・・・・">肌の呼吸</RUBY>を読むんだ。

　それだけは絶対に騙せない。
　皮膚で嘘をつける奴はいないよ。

　自分の肌で、感じ取るんだ。
　相手と自分の肌は<RUBY text="かぜ">空気</RUBY>で繋がっている。

　肌の呼吸は肌に伝わる。
　それを読み取れ。

　呼吸は必ず教えてくれる。
　攻めるつもりか守るつもりか。攻めて来るならいつ
来るのか。

　<RUBY text="・・・・・・・">意は呼吸に有り</RUBY>。

　……まぁ、こいつがそうかな。
　わたしなりの極意ってやつ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り。天頂方向へ上昇
	WaitKey(500);

	EfRecoOut1(300);
	Delete("絵回想*");
	CreateTextureSP("絵背景50", 17000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	CreateColorSP("絵色100", 17010, "BLACK");

	EfRecoOut2(600,true);

	OnSE("se人体_体_心臓の音02",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　…………呼吸。

　その極意を、嘗て実践できたためしはない。
　だが、今。この対手ならば。

　<RUBY text="ひかる">銀星号</RUBY>ならば。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	OnSE("se人体_体_心臓の音02",1000);
	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　――――呼吸――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト。前より長く。


	OnSE("se人体_体_心臓の音02",1000);
	WaitKey(2500);
	DrawDelete("絵色100", 300, 500, "slide_05_00_0", true);
	CreateTextureEX("絵背景150", 17600, Center, Middle, "cg/st/3d銀星号_騎突_通常.png");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 20, 20, null, true);
	Move("絵背景150", 0, @0, @-100, null, true);
	SetBlur("絵背景150", true, 3, 200, 70, false);

	Fade("絵背景150", 300, 500, null, true);
	Fade("絵背景150", 1000, 0, null, true);


//◆空の向こうに、朧に銀星号のシルエットが浮かぶ
//◆消える

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　み、

　え、

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景空上", 17500, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");

	CloudZoomSet(18000);
	CloudZoomStart(1000,800,800,1000,1000);

//◆シルエット
	OnSE("se戦闘_攻撃_鎧_剣戟01",1000);


	Zoom("絵背景150", 1100, 100, 100, Axl3, false);
	Zoom("絵背景50", 1100, 60000, 60000, Axl3, false);
	Wait(300);
//	TurboBlur("絵背景効果線");
	Request("プロセス１", Start);
	Wait(600);
//	WaitKey();
	Fade("絵背景150", 200, 1000, Axl3, false);
	Zoom("絵背景150", 200, 50, 50, Axl3, false);
	Request("プロセス１", Stop);
	CloudZoomDelete(200,false);
	Fade("絵背景効果線", 200, 0, null, false);
	Fade("絵背景空上", 200, 1000, null, true);

	Delete("絵背景効果線");
	Delete("プロセス１");

//	EffectZoomadd(17600, 300, 200, "cg/ef/ef003_汎用移動.jpg", false);
	Wait(200);

	SoundPlay("@mbgm12",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　た！

　そこにいる。
　静かな――眠るような落ち着いた呼吸。

　今はまだ、力を溜めているという事。
　まだ、襲来の時ではないという事。

　わかる。
　皮膚感覚で、確かにわかる。

　永い距離を越え、俺と銀星号を繋いでいる一筋の糸
を確かに掴んだ。
　これが知るべき全てを教えてくれる。

　これが銀星号の呼吸。
　これが銀星号の意。

　間違いない。
　
　俺がこれを、取り違える筈はない。

　把握できて当然だ。
　
　何故なら以前、俺は何よりも<RUBY text="・・">これ</RUBY>を気に掛け、

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//―――――――――――――――――――――――――――――

//◆回想・病床の光
	EfRecoIn1(19000,600);
	Delete("絵背景150");
	Delete("絵背景50");
	CreateTextureSP("絵回想", 18000, Center, Middle, "cg/ev/ev128_病床の光_a01.jpg");
	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　毎日、
　見守って――――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆戻る
	EfRecoOut1(300);
	Delete("絵回想*");
	Delete("絵背景空上");

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureSP("絵背景150", 100, Center, Middle, "cg/st/3d銀星号_騎突_通常.png");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 5, 5, null, true);
	Move("絵背景150", 0, @0, @-100, null, true);

	EfRecoOut2(600,true);

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/008vs0210a00">
「――っ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　芽生えかけた想念を払う。
　……惑いは、いらない。

　決意を今更、揺るがせてはならない。
　あれは敵。敵。倒すべき敵。

　敵の呼吸、そこにある意を掌握する。
　打ち勝つ為。

　この感覚に――集中する。
　この波長の変化を、待ち受ける。

　この波が、<RUBY text="・・・">揺れた</RUBY>瞬間、
　即して応ずれば勝つ。

　まだだ。
　まだ来ない。

　待つ。
　必ずある筈の、感覚の揺れを待つ。

　来ない。

　まだ、変化はない。

　まだ、静かだ。

　まだ。
　
　だが、そろそろ時は訪れるだろう……。

　その一刹那を決して逃すまい。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

//◆テキスト表示中に
//◆モニター正面中央から超々高速で何かがすっ飛んで
//◆きてガボーン。画面ブラックアウト。
//◆↑は一案。ここの演出は一考。
//◆表現意図は「余裕こいてたらなんか一瞬でやられた」


//◆攻撃直後の銀星号。蹴り姿勢。
//◆上の演出とこちらの演出とは緩急をつける。こちら
//◆は緩。



	CreateSE("SE01","se戦闘_攻撃_鎧_吹っ飛ぶ02");

	Wait(300);

	EffectZoomadd(16000, 300, 200, "cg/ef/ef039_時間移動.jpg", false);
	Move("絵背景150", 150, @0, @100, Axl3, false);
	Zoom("絵背景150", 150, 2500, 2500, Axl3, false);

	Wait(140);
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetVolume("@mbgm*", 0, 0, null);
	CreateColorSP("絵色黒", 16999, "#000000");
	Delete("絵背景150");
	Wait(2000);

	SetVolume("SE*", 2000, 0, null);

	Wait(1000);


	CreateSE("SE01","se戦闘_動作_空突進01");
	CreateTextureEX("絵演17", 17000, InLeft, -400, "cg/ev/resize/ev901_銀星号天座失墜小彗星_al.jpg");
	Rotate("絵演17", 0, @0, @180, @0, null,true);
	Zoom("絵演17", 0, @1, @1, null, true);
	Request("絵演17", Smoothing);
	SetBlur("絵演17", true, 1, 250, 100, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵演17", 600, 1000, null, false);
	Move("絵演17", 3000, @-512, @0, AxlDxl, false);

	WaitKey(1000);

	CreateSE("SE01a","se戦闘_動作_空突進02");
	CreateTextureEX("絵演18", 17010, -512, InBottom, "cg/ev/resize/ev901_銀星号天座失墜小彗星_bl.jpg");
	Rotate("絵演18", 0, @0, @180, @0, null,true);
	Zoom("絵演18", 0, @1, @1, null, true);
	Request("絵演18", Smoothing);
	SetBlur("絵演18", true, 1, 250, 100, false);
	MusicStart("SE01a",0,1000,0,1200,null,false);
	Fade("絵演18", 600, 1000, null, false);
	Move("絵演18", 1000, @180, @570, AxlDxl, true);
	Delete("絵色黒");

	SetFwL("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【光】
<voice name="光" class="光" src="voice/mb04/008vs0220a14">
「……<RUBY text="フォーリンダウン・レイディバグ">天座失墜・小彗星</RUBY>……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ウェイト置いて
	WaitKey(1000);

	SoundPlay("@mbgm37",0,1000,true);


	CreateTextureEX("絵演20", 17020, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_c.jpg");
	Zoom("絵演20", 0, @1, @1, null, true);
	Rotate("絵演20", 0, @0, @180, @0, null,true);
	Request("絵演20", Smoothing);
	Fade("絵演20", 1000, 1000, null, true);
	Delete("絵演1*");

	WaitKey(1000);

	CreateTextureSP("絵演19", 17000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_d.jpg");
	Zoom("絵演19", 0, @1, @1, null, true);
	Rotate("絵演19", 0, @0, @180, @0, null,true);
	Request("絵演19", Smoothing);
	FadeDelete("絵演20", 1000, true);

	WaitKey(500);

//◆横書きボックス
//あきゅん「演出：ボックスを中央に置いた方がいいかもな」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　
　　　　　　俺は幸福だったのだと思う。
　“Tell me the tales that to me were so dear”

　
　　　　　　　　　遠い遠い昔。
　　　　<PRE>“Long long ago, long long ago”</PRE>

　
　　　　　必要なすべてを手に入れていた。
　　“Sing me the songs I delighted to hear”

　
　　　　　　　　　遠い遠い昔。
　　　　　<PRE>“Long long ago, long ago”</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 200, 0, null);

	CreateColorEXadd("絵色300", 18100, "WHITE");
	Fade("絵色300", 1000, 1000, null, true);

	Delete("絵演*");
	CreateColorEXmul("絵色100", 18000, "RED");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");

	CreateSE("SE01","se戦闘_破壊_爆発07");
	CreateSE("SE05","se戦闘_攻撃_鎧_剣戟01");
	CreateSE("SE08","se特殊_コックピット_アラーム");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE05",2000,1000,0,1000,null,false);

	Zoom("@絵背景50", 0, 3000, 3000, null, true);


	FadeF4("絵背景50", 0, 1000, 10000, 0, 0, Dxl3, false);
	Fade("絵色100", 0, 1000, null, true);


	CP_HighChange(16000,352,AxlDxl,false);
	CP_SpeedChange(16000,225,AxlDxl,false);

	Shake("@CP_Frame", 1000, 15, 20, 0, 0, 800, null, false);
	CP_RollBarMove("@絵背景50", 150, @10, AxlDxl, false);


	OnSE("se戦闘_破壊_鎧03",1000);


	MusicStart("SE08",2000,1000,0,1000,null,true);
	Shake("@絵背景50", 1000, 2, 1, 0, 0, 1000, Dxl1, false);
	Move("@絵背景50", 2000, @-200, @-150, Dxl1, false);
	Zoom("@絵背景50", 16000, 1000, 1000, Dxl2, false);
	CP_RollBarMove("@絵背景50", 300, @-10, Dxl2, false);

	FadeDelete("絵色300", 1000, false);

	Wait(500);

	Fade("絵色100", 300, 0, null, true);
	CP_RollBarMove("@絵背景50", 1000, 0, AxlDxl, false);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, true);
	Fade("絵色100", 200, 1000, null, true);

	FrameShake();
//◆村正
//◆大ダメージ食らってます。モニター赤。
	Wait(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//◆ボイスは録らず。ノイズで。
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/008vs0230a01">
《―――――――――――――――――!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　……………………俺は。
　
　倒された、のか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);
	CP_AllDelete();

	Wait(1000);

}

..//ジャンプ指定
//次ファイル　"mb04_009.nss"

function TurboBlur()
{

	while(1){
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 100, 2000, 2000, Axl2, false);
	Fade("$効果ナット名", 20, 1000, null, true);
	Fade("$効果ナット名", 80, 0, null, true);
	}

}
