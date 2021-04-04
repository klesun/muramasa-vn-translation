//<continuation number="280">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_020vs.nss_MAIN
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
	#bg002_空a_02=true;
	#bg001_空a_02=true;
	#bg002_空a_01=true;
	#bg001_空a_01=true;
	#bg047_景明故郷町a_01=true;
	#ev226_景明ＶＳ黒瀬_b=true;
	#bg053_堀越御所の庭_01=true;
	#ev249_村正VS銀星号２_a=true;
	#ev249_村正VS銀星号２_b=true;
	#ev249_村正VS銀星号２_b2=true;
	#ev249_村正VS銀星号２_c=true;
	#ev249_村正VS銀星号２_d=true;
	#ev249_村正VS銀星号２_e=true;
	#ev128_病床の光_a03=true;
	#ev249_村正VS銀星号２_f=true;
	#ev249_村正VS銀星号２_g=true;
	#ev250_銀星号リバースエノシマインパクト=true;
	#bg202_旋回演出背景山a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_021.nss";

}

scene md05_020vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_019vs.nss"

//◆決戦・第一局
//◆暁空（夕空）
	PrintBG("上背景", 30000);
	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg002_空a_02.jpg");
	SoundPlay("@mbgm11",0,1000,true);
	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……勝負は一撃。
　
　そう、見て取る。

　言わずもがな、銀星号は<RUBY text="おれ">村正</RUBY>を一打で撃破可能だ。
　そして逆も然り。銀星号は既に大巨躯の〝神〟では
なく、剣の一薙で裁断される<RUBY text="サイズ">規模</RUBY>に過ぎない。

　一撃、当てた方が勝つ。

　戦闘状況は、地上戦ではないが、地上戦に近い。
　互いに重力制御で浮遊したこの格好、肉声の対話が
できるこの間合を、始点としたためだ。

　今から騎航に移るのは、敵前で背を見せて逃げるも
同然。
　致命的な隙となる。

　動いてはならない。
　動く時は、攻める時。

　必倒の一打を対敵に放つ時。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号・構
	PrintGO("背景０", 30000);
	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg001_空a_02.jpg");
	StL(1000, @0, @0,"cg/st/3d銀星号_立ち_戦闘.png");
	FadeStL(0,true);
	FadeDelete("背景０", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　銀星号は左手を前に送り、右手を引いて構えている。
　
　吉野御流合戦礼法、無手構の一つ――<RUBY text="えんじゅ">槐</RUBY>。
　やや我流の崩れ有り。

　左手で防御又は<RUBY text="フェイント">仕掛け</RUBY>を行い、敵の攻め手を無効化
して、右手にて打ち勝つ。それが槐の構の本意である。
　しかし、この使い手はそこに囚われまい。

　おそらく……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想・八幡宮での銀星号戦
//◆一瞬で消えてぞがーん。吹っ飛ぶ村正
//◆戻り
	CreateColorEX("色１", 9000, "#FFFFFF");

	CreatePlainSP("背景０", 10001);
	Wait(1);
	CreateTextureSP("背景２", 100, 0, 0, "cg/bg/bg002_空a_01.jpg");
	CreateEffect("エフェクト１", 10000, 0, 0, 1024, 576, "Sepia");
	SetAlias("エフェクト１", "エフェクト１");
	Fade("背景０", 1000, 0, null, false);

	Wait(2000);

	SetBlur("@StL*", true, 3, 500, 200, false);
	Move("@StL*", 100, @100, @0, Axl1, false);
	DeleteStA(100,true);

	Fade("色１", 0, 1000, null, true);
	CreateTextureSP("背景２", 100, 0, 0, "cg/bg/bg001_空a_01.jpg");
	CreateTextureSP("自機１", 100, 0, -300, "cg/st/3d村正標準_騎航_通常.png");
	CreateTextureSP("自機２", 100, -20, -300, "cg/st/3d村正標準_騎航_通常.png");
	Rotate("自機１", 0, @0, @0, @180, null, true);
	Rotate("自機２", 0, @0, @0, @180, null, true);
	Fade("自機２", 0, 500, null, true);

	Move("自機*", 500, @50, @0, Dxl1, false);
	Fade("色１", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　八幡宮上空で戦った時と同じように。
　小細工は弄さず、ただ速度のみを恃みに襲う。

　本来、戦術とも呼べない猪突猛進。
　だが<RUBY text="・・・・・">認識不可能</RUBY>という域まで達するあの<RUBY text="ファイティングスピード">戦闘速度</RUBY>が
あれば――如何なる巧緻の戦術よりもなお恐ろしい。

　そうして、拳――それとも蹴りか。
　どちらでも良いのだろう。あの力と技量にいま怒り
と殺意が加わるなら、どちらであろうが確実に、俺を
甲鉄ごと四散させられる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("背景０", 30000);
	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg001_空a_02.jpg");
	StL(1000, @0, @0,"cg/st/3d銀星号_立ち_戦闘.png");
	FadeStL(0,true);
	FadeDelete("背景０", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
　……光は、ともすれば風に溶けゆくかとさえ思える
自然の<RUBY text="タイ">態</RUBY>で居た。
　その中にあって唯一、双眸だけが紅蓮に尖り、進撃
の機を窺っている……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正・構
	PrintBG("背景０", 30000);
	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg001_空a_02.jpg");
	StR(1000, @0, @0,"cg/st/3d村正最終_立ち_戦闘a.png");
	FadeStR(0,true);
	FadeDelete("背景０", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　対して。
　俺は、野太刀を右肩上に構える。

　武者正調、上段の太刀取り。
　単純と見えて千変万化の幅を持つが、その帰結する
ところはやはり単一である――間合に入った敵を斬る。

　それだけだ。

　細工を仕込むのも可能だが、相手を思えば、やらぬ
方がましなくらいであろう。
　無駄、で済むならむしろ僥倖。千金より貴重な時間
を食い潰し、敗北を決定付ける要因となり得る。

　やがて訪れる交錯の間、<RUBY text="・・・・">ただ斬る</RUBY>以上の何かをする
余裕など無いと見るべきだ。

　銀星号が間合に踏み込む瞬間を捉えて斬る。
　
　……俺が行使する術技は、これのみとするが正しい。

　<RUBY text="こちら">此方</RUBY>には間合の利がある。
　無手の敵に対し、野太刀を扱う俺は攻撃範囲の点で
大きく優っている。

　敵が動くのを待った上で先制する事ができるのだ。

　――但し。
　
　間合に入る瞬間を、<RUBY text="しか">確</RUBY>と掴めるのならばである。
　銀星号の速度に振り切られてしまうことなく。

　ここが勝敗を分ける最重要点。
　俺はその機を<RUBY text="・・">もの</RUBY>にできるか？　嘗て一度たりとも
成功していない大難業を、今こそ果たせるのか……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆対峙。ev249
	PrintBG("背景０", 30000);
	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg001_空a_02.jpg");
	StL(1000, @0, @0,"cg/st/3d銀星号_立ち_戦闘.png");
	FadeStL(0,true);
	FadeDelete("背景０", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　銀星号の呼吸は何処までも鎮静である。

　<RUBY text="あたか">恰</RUBY>も眠れる者の如し――
　否、眠れる者そのもの。

　あれは夢である。

　夢なれば、心気の静謐なるは神仙の域に届く。
　
　――正真の夢想剣。

　この機先を、如何にして掴み制するか。

　成功と勝利の条件は三つだ。

　一つ。
　敵は<RUBY text="・・・">銀星号</RUBY>である事を忘れない。

　一つ。
　敵は<RUBY text="・・・">湊斗光</RUBY>である事を忘れる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想フラッシュ・過去の光
	CreateColorEXadd("色１", 19999, "#FFFFFF");
	CreateTextureEX("背景２", 2100, 0, 0, "cg/bg/bg047_景明故郷町a_01.jpg");
	StR(3000, @0, @0,"cg/st/st光三年前_通常_制服.png");
	SetTone("背景２", Sepia);
	SetTone("@StR*", Sepia);

	Fade("色１", 0, 1000, null, true);
	FadeStR(0,true);
	Fade("背景２", 0, 1000, null, true);
	Fade("色１", 300, 0, null, true);
	Wait(500);
	Fade("色１", 100, 1000, null, true);
	DeleteStR(0,true);
	Delete("背景２");
	Fade("色１", 500, 0, null, true);

	SetFwC("cg/fw/fw村正武者_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0010a00">
（――――）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　一つ。
　心境は無我に置く。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想・建朝寺前の戦闘
//	CreateColorEXadd("色１", 19999, "#FFFFFF");
	CreateTextureEX("背景２", 2100, 0, 0, "cg/ev/ev226_景明ＶＳ黒瀬_b.jpg");
	SetTone("背景２", Sepia);

//	Fade("色１", 0, 1000, null, true);
	Fade("背景２", 500, 1000, null, true);
//	Fade("色１", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　精神汚染されていたあの時……
　俺は普段なら決して成し得ぬ剣を<RUBY text="ふる">揮</RUBY>った。

　劒冑の力に依らず、甲鉄を断ち割る暴挙を果たした。

　あの剣は心の在様に由来するものだった。
　精神汚染に強いられた一徹の心。無我ではなくその
対極であったが、雑念をすべて排除した点においては
無我にも等しい心境――

　そこから生まれ出でた一剣。
　
　……そう。あれよりも前、ずっと昔に――<RUBY text="・・・">同じ剣</RUBY>を
使った時も、やはりそうした心境にあった。

　無我ないし近似の心位へ至れば、俺はあそこまでの
技を使える。
　銀星号を斃す事も、できる。

　あの心境へ至れば……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	DeleteStA(0,true);

	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg001_空a_02.jpg");
	StR(1000, @0, @0,"cg/st/3d村正最終_立ち_戦闘a.png");

//	Fade("色１", 100, 1000, null, true);
//	Delete("背景２");
	FadeStR(0,true);
//	Fade("色１", 300, 0, null, true);
	FadeDelete("背景２", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　あの心境へ。

　思い出せ。
　あの狭く小さく固く病んだ心理。

　思い出せ。
　無我の理。

　我を、殺す。

　あらゆる雑念を、殺す。

　……無我。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想・堀越の童心坊
//	CreateColorEXadd("色１", 19999, "#FFFFFF");
	CreatePlainSP("背景０", 19999);
	Wait(1);

	CreateTextureSP("背景２", 2100, 0, 0, "cg/bg/bg053_堀越御所の庭_01.jpg");
	SetTone("背景２", Sepia);


	Fade("背景０", 500, 0, null, true);

	SetFwC("cg/fw/fw童心変装_通常a.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【童心】
<voice name="童心" class="童心" src="voice/md05/020vs0020a09">
「さよう。
　無想が外の<RUBY text="せかい">宇宙</RUBY>を無とする理念であれば、
無我は内の<RUBY text="おのれ">宇宙</RUBY>を無とする理念」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md05/020vs0030a09">
「これもまた、<RUBY text="ゼン">全</RUBY>に通ずる法であろう」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md05/020vs0040a09">
「無我に至らば、私事も私欲も既に無い」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md05/020vs0050a09">
「有るのは世の大義のみ。
　その敵を討てと欲する、世の意志のみ」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md05/020vs0060a09">
「おぬしの意思が消え去ろうとも……
　世の意志がおぬしを衝き動かし、敵を討つ
であろう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("色１", 1000, 1000, Axl2, true);
	DeleteStA(0,true);
	Delete("背景*");
	Wait(1000);

	StL(1000, @0, @0,"cg/st/st光_装甲_私服a.png");
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服a1.png");
	FadeStL(0,false);
	FadeStR(0,false);

	Fade("色１", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　無我。

　我を、殺す。

　あらゆる雑念を、
　湊斗光の兄としての思いを、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
　殺す。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @-100, @0,"cg/st/3d銀星号_立ち_戦闘.png");
	StR(1000, @150, @0,"cg/st/3d村正最終_立ち_戦闘a.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw村正武者_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0070a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　殺す。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
//◆キュピーン。世界が変わる感じ
	SetVolume("@mbgm*", 4000, 0, NULL);
	Wait(4000);

	PrintBG("背景０", 30000);
	OnSE("se特殊_雰囲気_発光03",1000);
	CreateTextureSP("イベント１", 100, 0, 0, "cg/ev/ev249_村正VS銀星号２_a.jpg");
	FadeDelete("背景０", 2000, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　敵が攻め来る時、
　その機を捉えて、斬る。

　……初太刀は、躱される可能性もある。

　その時は、
　その機をも捉える。

　敵が躱した刹那を見切り、
　敵が躱した方向を見切り、

　返しの一撃を送って、斬る。

　――<RUBY text="ツバメガエシ">燕返し</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	Wait(3000);


	SetFwC("cg/fw/fw光_通常a.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【光】
<voice name="光" class="光" src="voice/md05/020vs0080a14">
「景明よ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0090a00">
「……」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md05/020vs0100a14">
「一つ、問わせろ」

//【光】
<voice name="光" class="光" src="voice/md05/020vs0110a14">
「死せる者の魂は、何処へゆくか……？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0120a00">
「…………」

//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0130a00">
「死んだ者に行先などない」

//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0140a00">
「……だが……
　もし、あるとすれば」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md05/020vs0150a14">
「あるとせば？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0160a00">
「地の底へ落ちて、眠るのだろう」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md05/020vs0170a14">
「そうか」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/020vs0180a14">
「おれは、天へ昇って輝くと思う」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
//◆ノーワイプでev249a
//◆時間停止
//◆※ここの演出コンセプトは「緩・急・止」
//◆ウェイトが緩、突進と迎撃が急、そして寸止め

	Wait(5000);
	CreateTextureSP("イベント２", 100, 0, 0, "cg/ev/ev249_村正VS銀星号２_b.jpg");

	SoundPlay("@mbgm09",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　見切った――――

　白銀の軌跡、
　神速の突進を遂に捉えた。

　感覚ならぬ観格を以て、遂に悟った。

　斬る、
　などと、思う間も置かず、

　俺の肉体は応じている。

　野太刀を打ち下ろし、
　敵騎を両断、灼熱の地へ落とさんと。

　斬って……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号翔躍
//◆斬り下ろし、空振り
//◆停止

	CreateTextureEX("イベント１", 100, 0, 0, "cg/ev/ev249_村正VS銀星号２_b2.jpg");
	Fade("イベント１", 300, 1000, null, true);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　空を裂く。

　最善を成し遂げた我が一剣が、
　<RUBY text="ちしお">血汐</RUBY>を得ず。

　何となれば――

　白銀、畏るべし。
　最善を極めてなお届かず。

　必殺の筈の一剣を、<k>
　
　
　　　　　　　　　――――躱してのけた！

　だが。

　俺は、知っている。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆襲い来る銀星号
	CreateTextureEX("イベント２", 100, 0, 0, "cg/ev/ev249_村正VS銀星号２_c.jpg");
	Fade("イベント２", 300, 1000, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　敵が躱した事、
　<RUBY text="・・">上へ</RUBY>逃れた事を、知っている。

　敵の攻撃がまだ届かぬ今この間に、悟っている。

　つまり。

　俺は、逃していない。

　<RUBY text="・・・・・">捉えている</RUBY>。

　白銀、我が<RUBY text="カン">観</RUBY>の内にあり。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("イベント１", 100, 0, 0, "cg/ev/ev249_村正VS銀星号２_d.jpg");
	Fade("イベント１", 300, 1000, null, true);
	Wait(1000);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
　剣は返る。

　軌道を反転し、上方へ。

　そこにある影を、

　斬る、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆野太刀。さあ斬るぞって出端に
//◆銀星号、目前へ
	CreateTextureEX("イベント２", 100, 0, 0, "cg/ev/ev249_村正VS銀星号２_e.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　その機先を、<k>{Wait(1000);Fade("イベント２", 300, 1000, null, true);}制された。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【光】
<voice name="光" class="光" src="voice/md05/020vs0190a14">
「――」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0200a00">
「――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　接吻を交わす程の間で、見合う。

　薄紙一枚を針で貫く――それだけの時刻。
　視線と視線を交わす。

　勝負は決した。

　戦機を極めに極め。
　最速の剣、最短の剣を為し。

　遂に及ばぬ。

　この速度。
　遂に超えられぬ。

　あと一瞬の千分の一、時間があれば良かった。
　それだけあれば、敵が襲う前に斬れた。

　だがその寸暇を、この白銀は与えなかった。

　間合は既に懐。

　長尺の野太刀では斬りとうても斬れぬ距離。

　敵の拳打は決して外さぬ必殺の距離。

　かくなれば趨勢、もはや覆らぬ。

　勝敗は決した。

　――決したのだ。

　ならば、<k>
　<RUBY text="・・">俺は</RUBY>、<RUBY text="・・・・・・・・">何をしているのか</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正右手周辺アップ
	CreateTextureEX("イベント１", 100, -628, -183, "cg/ev/ev249_村正VS銀星号２_e.jpg");
	Request("イベント１", Smoothing);
	Zoom("イベント１", 0, 3000, 3000, Dxl2, true);

	Move("イベント１", 3000, @-100, @0, Dxl1, false);
	Fade("イベント１", 3000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　右手が、動いている。

　おかしい。
　この手は、野太刀の柄にあった筈。

　何故、離れているのだ。

　何をしようというのだ。

　右手は、我が腰へ向かう。

　そこにある何かを、掴み取ろうとする。

　そこにある、<k>
　脇差を。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0210a00">
（そう、か）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　これは。

　俺が鍛錬し、肉体に染み込ませた術技の一つ。

　吉野御流合戦礼法、
　
　――――<RUBY text="ヒヨク">比翼</RUBY>。

　太刀を斬り下ろしたその刹那、
　右手を太刀より離し、脇差を抜き斬り上げる。

　太刀を見切って懐へ飛び入った敵に報いる術法。

　俺は、それを使っているのだ。
　意図せずに。

　何故？

　何故、こんな事ができている？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0220a00">
（勝利の条件）

//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0230a00">
（<RUBY text="・・・・・・・・・・・・・・">敵が銀星号である事を忘れない</RUBY>）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　そう。
　俺は覚えていた。

　敵は銀星号なのだと。

　勝算に勝算を積み重ねて、それでも裏切られる相手
なのだと。

　何よりも、体が記憶していた。
　幾度となく煮え湯を飲まされたこの肉が、骨が。

　だから。
　今度こそは、と。

　最悪の最悪の最悪を予測して、それに応じるための
<RUBY text="わざ">動作</RUBY>を用意した。

　吉野御流、比翼。

　……俺は、

　銀星号よりも、

　――――――――――――<RUBY text="はや">迅</RUBY>く、

　脇差を抜いて……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆脇差抜刀。ちゃきん。
	OnSE("se戦闘_動作_刀構え01",1000);
	Wait(200);
	Fade("イベント*", 0, 0, null, true);
	Delete("イベント*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　斬った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一瞬、ノイズのようにＣＧ。過去の光
//◆斬。しゅぱーん。斬り上げアニメ
//◆ウェイト

	SL_leftup2(10001,@0,@0,1000);
	CreateColorSP("色２", 10000, "#000000");
	Fade("色２", 0, 700, null, true);

	CreateTextureSP("イベント１", 100, 0, 0, "cg/ev/ev128_病床の光_a03.jpg");
	CreateTextureSPsub("エフェクト１", 2000, 0, 0, "cg/data/noize_01_00_0.png");
	CreateTextureSPsub("エフェクト２", 2000, 0, 0, "cg/data/noize_01_00_0.png");
	Rotate("エフェクト２", 0, @180, @180, @0, null, true);

	$SYSTEM_effect_lens_curvature = 1000;
	$SYSTEM_effect_lens_distance = 10;
	CreateEffect("レンズ１", 1000, -100, -300, 1200, 1200, "Lens");
	SetAlias("レンズ１", "レンズ１");
	Fade("レンズ１", 0, 500, null, true);

	CreateAFA1("@エフェクト１","@エフェクト２",0,1000,50,2);
	MoveSSP1("@イベント１",100000,0,3,0,3,1000,null);
	MoveFFP1("@イベント１",5000);

	Zoom("イベント１", 0, 1000, 1000, null, true);
	Wait(80);
	Zoom("イベント１", 0, 2000, 2000, null, true);
	Wait(160);
	Zoom("イベント１", 0, 1500, 1000, null, true);
	Wait(320);
	Zoom("イベント１", 0, 1000, 1500, null, true);
	Wait(160);
	Zoom("イベント１", 0, 1000, 1000, null, true);

	Wait(500);

	Fade("色２", 0, 1000, null, true);
	MoveSSP1stop();
	MoveFFP1stop();
	AFA1stop();
	Delete("@イベント*");
	Delete("@レンズ*");
	Delete("@エフェクト*");

	OnSE("se戦闘_攻撃_刀振る02",1000);
	SetVolume("@mbgm*", 1000, 0, NULL);
	SL_leftupfade2(1);

	Wait(4000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　理解に努める。

　――この瞬刹――

　我が肉体は必勝の術を成し、
　敵の打撃に先んじて、
　斬った。

　そして、<k>
　この、<k>何も響かぬ右腕。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ev249e
	CreateTextureSP("イベント１", 100, 0, 0, "cg/ev/ev249_村正VS銀星号２_f.jpg");
	Fade("色２", 1000, 0, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　虚空を斬っている。

　虚空、だけを。

　理解に努める。

　……何が、起きた？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/020vs0240a01">
《――――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　村正が叫ぶ。

　脳へ送られる信号。
　言語のように迂遠ではない情報伝達。

　それは云っていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm12",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　
　　　　　　　　　　　　空間
　　　　　　　　　　　　歪曲

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0250a00">
（――――）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　空間歪曲。

　そう。
　あの〝神〟が使って見せた能力。

　重力により空間を屈折せしむ。

　銀星号の技能に〝神〟の力を合わせて成された芸。

　それを、〝神〟の力を引き継いだ銀星号に成し得ぬ
道理はない……。

　故に使った。

　極小規模の歪曲を、
　極小時間で生じさせ、

　不可避であった刃を、退けた。

　そして。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆小ウェイト
	Wait(1000);

	SetFwC("cg/fw/fw光_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【光】
<voice name="光" class="光" src="voice/md05/020vs0260a14">
「天へ」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/020vs0270a14">
「昇れ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆蹴り体勢。ev249f
		CreateTextureEX("イベント２", 100, 0, 0, "cg/ev/ev249_村正VS銀星号２_g.jpg");
		CreateTextureEX("イベント３", 100, 0, -390, "cg/ev/ev250_銀星号リバースエノシマインパクト.jpg");
		CreateColorEXadd("色１", 10000, "#FFFFFF");
	
		CreateTextureEX("イベント４", 100, -512, -288, "cg/ev/ev250_銀星号リバースエノシマインパクト.jpg");
		Zoom("イベント４", 0, 2000, 2000, Dxl2, true);
	
		CreateTextureEXadd("エフェクト１", 100, 0, 0, "cg/ef/ef042_汎用打撃.jpg");
		Zoom("エフェクト１", 0, 1300, 1300, Dxl2, true);
	
		CreateTextureEX("背景１", 100, Center, -5536, "cg/bg/bg202_旋回演出背景山a_02.jpg");
		CreateTextureEXadd("エフェクト２", 100, 0, 0, "cg/ef/ef036_無我の境地.jpg");
		Zoom("エフェクト２", 0, 500, 500, Dxl2, true);

	Fade("イベント１", 0, 0, null, true);
	Fade("イベント２", 300, 1000, null, true);
	Wait(700);
	Fade("色１", 0, 1000, null, true);

	OnSE("se戦闘_動作_鎧_踏み込み02",1000);
	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);

	Fade("イベント３", 0, 1000, null, true);
	Fade("色１", 500, 0, null, false);
	Shake("イベント３", 500, 0, 50, 0, 0, 1000, Dxl1, false);

	SetFwR("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【光】
<voice name="光" class="光" src="voice/md05/020vs0280a14">
「<RUBY text="リバース・エノシマインパクト">逆転・江ノ島大蹴撃</RUBY>!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	Move("イベント３", 600, @0, 0, Axl1, false);
	Wait(200);
	Fade("イベント４", 300, 1000, null, false);
	Move("イベント４", 400, @0, @576, Axl1, false);
	Fade("色１", 400, 1000, null, true);

	OnSE("se戦闘_攻撃_鎧_打撃02",1000);
	OnSE("se戦闘_攻撃_鎧攻撃命中03",1000);
	OnSE("se戦闘_動作_空突進08",1000);

	Fade("色１", 0, 0, null, true);
	Fade("エフェクト１", 0, 1000, null, true);
	Shake("エフェクト１", 300, 0, 50, 0, 0, 1000, null, false);
	Fade("色１", 300, 1000, null, true);

	SetVolume("@mbgm*", 3000, 0, NULL);
	OnSE("se戦闘_動作_空突進01",1000);
	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se戦闘_動作_空突進07",1000);

	Fade("背景１", 0, 1000, null, true);
	Fade("色１", 1000, 0, null, false);
	Move("背景１", 2000, @0, @500, Dxl2, true);

	Fade("エフェクト２", 300, 1000, null, true);
	Fade("エフェクト２", 300, 0, null, true);
	Wait(1000);

	ClearFadeAll(3000, true);


//◆逆式・江ノ島キック
//◆板垣の描く後ろ回し蹴りみたいな感じか？
//◆とんでもねー勢いで吹っ飛ぶ村正。空の彼方へ。

}

..//ジャンプ指定
//次ファイル　"md05_021.nss"