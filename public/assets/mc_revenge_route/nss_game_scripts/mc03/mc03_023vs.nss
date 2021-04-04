//<continuation number="600">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mc03_023vs.nss_MAIN
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
	#ev946_村正ＶＳガッタイダー_b=true;
	#ev946_村正ＶＳガッタイダー_d=true;
	#ev922_ガッタイダーボーディホーン準備_b=true;
	#ev922_ガッタイダーボーディホーン準備_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc03_023vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_022vs.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆村正ＶＳガッタイダー
	SoundPlay("@mbgm13",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateTextureSP("絵演", 18000, Center, -90, "cg/ev/ev946_村正ＶＳガッタイダー_d.jpg");

	Delete("上背景");
	FadeDelete("絵色黒", 2000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/023vs0010a01">
《……結局は、前回の筋書きをなぞったのね》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0020a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　劒冑の呟く通り。
　急激に<RUBY text="あし">速力</RUBY>を鈍らせてゆく敵騎の様は、以前の対決
における最後のそれとまるで変わりないものだった。

　まともな戦闘機動は既に不可能だろう。
　後は墜落の運命を待つばかりだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/023vs0030a01">
《どうする？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　指示を催促する声に、しばし黙する。
　もはや、墜とすのは容易い――<RUBY text="つばさ">母衣</RUBY>に一刀、くれて
やれば片が付く。

　大鳥大尉の身を危うくしてくれた礼と思えば、そう
するに何の躊躇いを覚えるでもない。
　あの重装甲だ。多少荒っぽい降着をしても死にまで
はしないだろう。

　この先、更に三度目の襲撃を行わせぬ為にも、それ
なりの損害を与えておく事は上策と思える。
　
　だがそこまで考えても、気は乗らなかった。

　……勝負はついている。
　何もせずとも、敵騎はこの<RUBY text="そら">戦場</RUBY>から脱落するのだ。
なのに重ねて、相手を殺害してしまいかねない危険な
追撃を掛ける意味があろうか。

　再襲撃の恐れにしたところで、そう過剰に警戒する
べきとは思われない。
　敵戦力の程は把握している。既に脅威ではなかった。
奇襲にさえ注意しておけば、難なくあしらえよう。

　それに何より、今は一分一秒でも早くこの場を切り
上げたい。
　大鳥主従の安否確認こそが最優先課題なのだ。

　格別の必要もなく追い討ちを掛け、敵騎の足掻きに
付き合わされてこのうえ時間を費やすのは、いかにも
愚行と思えた。
　…………結論する。

　俺は<RUBY text="メタルエコー">装甲通信</RUBY>の波長を敵騎に合わせた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

	MyLife_Count(0,360);
	CP_IHPChange(0,5,null,false);
	CP_PowerChange(0,250,null,false);

	CP_SpeedChange(0,555,null,false);
	MyTr_Count(0,427);

	CP_HighChange(0,1250,null,false);

	$雰囲気方位計=Random(10)+40;
	CP_AziChange(0,$雰囲気方位計,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("絵演航空背景", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateTextureSP("絵演立絵合体", 1000, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘b.png");
	Move("絵演立絵合体", 0, @0, @-100, null, true);
	Zoom("絵演立絵合体", 0, 40, 40, null, true);
	Request("絵演立絵合体", Smoothing);

	MoveFRP1("@絵演航空背景",30000,30,30);
	MoveFRP2("@絵演立絵合体",28000,20,20);

	FadeDelete("絵演", 1000, true);

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0040a00">
《交戦中の敵騎に告ぐ。
　直ちに戦闘空域より離脱せよ》


//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0050a00">
《当方は貴騎の熱量状況を看破している。
　これ以上の戦闘継続は不可能と断定する》


{	FwL("cg/fw/fwガッタイダー_通常.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0060b33">
《…………》


{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0070a00">
《当方に貴騎を撃墜する意思はない。
　貴騎の所属及び目的を当方はほぼ推察して
いるが、勘案の上で早急に殲滅する必要なし
と判断した》

//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0080a00">
《貴騎が撤退するならば、追撃は一切行わず、
当方も離脱する事を誓約する》


{	FwL("cg/fw/fwガッタイダー_通常.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0090b33">
《…………》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　……返答はない。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0100a00">
《繰り返す。
　この空域より撤退せよ》

//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0110a00">
《あくまで交戦継続を望むものならば、当方
も応戦せざるを得ない。
　既に理解されているものと信じるが、貴騎
の戦力で当方を撃破する事は不可能である》


{	FwL("cg/fw/fwガッタイダー_通常.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0120b33">
《――――》


{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0130a00">
《貴騎は戦闘技術において劣弱である。
　その技量をもって怪奇な騎体を操り、ここ
まで交戦を継続した胆力は賞賛するが、引き
時を見誤っては豪胆も無駄となろう》

//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0140a00">
《当方の打倒を願うなら、まずは良き師範に
ついて武者の業を琢磨されるべし。
　その為にも、今回は撤退しておく事が最善
であると忠告する》

//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0150a00">
《決断されよ》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　返答はない。

　返答は――――

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ボーディ２】
<voice name="ボーディ２" class="その他男声" src="voice/mc03/023vs0160b08">
《ゲッ……ゲヘヘヘヘヘヘ》

//【ライター２】
<voice name="ライター２" class="その他男声" src="voice/mc03/023vs0170b10">
《ヒェフェフェフェ……》

//【レフター２】
<voice name="レフター２" class="その他男声" src="voice/mc03/023vs0180b13">
《ヒャッヒャッヒャッヒャッ――》

//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0190b33">
《アハハハ！
　フフ、ハハハハハハハハハハ！》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　……返答は、ない。
　返答と呼べるものは。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/023vs0200a01">
《御堂》


{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0210a00">
「……ッ」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　決意を促す風の小声に、口の端を噛みながら太刀の
柄を握り締める。
　対手はやはり狂しているのか。筋道立てた会話など
望むべくもなかったのか。

　しかし、どうするというのだ。
　敵騎にはもはや、着陸に必要な最低限度の熱量しか
無いというのに。

　何もできはしない筈――
　
　だが悪意だけは増している。

　黒い<RUBY text="かげろう">陽炎</RUBY>が網膜に映りそうな程。
　ここに至って、敵騎の悪意は留まるところを知らな
かった。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwガッタイダーＲ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ライター２】
<voice name="ライター２" class="その他男声" src="voice/mc03/023vs0220b10">
《知ってるって……》


{	FwL("cg/fw/fwガッタイダーＬ_通常.png");}
//【レフター２】
<voice name="レフター２" class="その他男声" src="voice/mc03/023vs0230b13">
《オレ達の目的を》


{	FwL("cg/fw/fwガッタイダーＨ_通常.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0240b33">
《でも、<RUBY text="・・・・・">殺されない</RUBY>んだ》


{	FwL("cg/fw/fwガッタイダーＢ_通常.png");}
//【ボーディ２】
<voice name="ボーディ２" class="その他男声" src="voice/mc03/023vs0250b08">
《ヒェッ、ヒヒヒヒヒ》


{	FwL("cg/fw/fwガッタイダーＬ_通常.png");}
//【レフター２】
<voice name="レフター２" class="その他男声" src="voice/mc03/023vs0260b13">
《オレ達に、逃げろとさ》


{	FwL("cg/fw/fwガッタイダーＲ_通常.png");}
//【ライター２】
<voice name="ライター２" class="その他男声" src="voice/mc03/023vs0270b10">
《出直して、修行して来いって》


{	FwL("cg/fw/fwガッタイダーＢ_通常.png");}
//【ボーディ２】
<voice name="ボーディ２" class="その他男声" src="voice/mc03/023vs0280b08">
《ギヒヒヒヒヒヒヒヒ！》


{	FwL("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0290a00">
「………………」


{	FwL("cg/fw/fwガッタイダーＲ_通常.png");}
//【ライター２】
<voice name="ライター２" class="その他男声" src="voice/mc03/023vs0300b10">
《でも、勝てない》


{	FwL("cg/fw/fwガッタイダーＨ_通常.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0310b33">
《勝てないね》


{	FwL("cg/fw/fwガッタイダーＬ_通常.png");}
//【レフター２】
<voice name="レフター２" class="その他男声" src="voice/mc03/023vs0320b13">
《勝てねぇ》


{	FwL("cg/fw/fwガッタイダーＢ_通常.png");}
//【ボーディ２】
<voice name="ボーディ２" class="その他男声" src="voice/mc03/023vs0330b08">
《クヒ……》


{	FwL("cg/fw/fwガッタイダーＲ_通常.png");}
//【ライター２】
<voice name="ライター２" class="その他男声" src="voice/mc03/023vs0340b10">
《どうしようか》


{	FwL("cg/fw/fwガッタイダーＬ_通常.png");}
//【レフター２】
<voice name="レフター２" class="その他男声" src="voice/mc03/023vs0350b13">
《どうする？》


{	FwL("cg/fw/fwガッタイダーＢ_通常.png");}
//【ボーディ２】
<voice name="ボーディ２" class="その他男声" src="voice/mc03/023vs0360b08">
《ギッ……ギッギッ》


{	FwL("cg/fw/fwガッタイダーＨ_通常.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0370b33">
《どうするって。
　決まってるよ。ねぇ？》


{	FwL("cg/fw/fwガッタイダーＲ_通常.png");}
//【ライター２】
<voice name="ライター２" class="その他男声" src="voice/mc03/023vs0380b10">
《うん》


{	FwL("cg/fw/fwガッタイダーＬ_通常.png");}
//【レフター２】
<voice name="レフター２" class="その他男声" src="voice/mc03/023vs0390b13">
《そうだな》


{	FwL("cg/fw/fwガッタイダーＢ_通常.png");}
//【ボーディ２】
<voice name="ボーディ２" class="その他男声" src="voice/mc03/023vs0400b08">
《グググギギ》


{	FwL("cg/fw/fwガッタイダーＨ_通常.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0410b33">
《勝てなくたっていい》


{	FwL("cg/fw/fwガッタイダーＬ_通常.png");}
//【レフター２】
<voice name="レフター２" class="その他男声" src="voice/mc03/023vs0420b13">
《殺せばいいんだ》


{	FwL("cg/fw/fwガッタイダーＲ_通常.png");}
//【ライター２】
<voice name="ライター２" class="その他男声" src="voice/mc03/023vs0430b10">
《殺せばいい》


{	FwL("cg/fw/fwガッタイダーＢ_通常.png");}
//【ボーディ２】
<voice name="ボーディ２" class="その他男声" src="voice/mc03/023vs0440b08">
《ギッ……グッ……》


{	FwL("cg/fw/fwガッタイダーＨ_通常.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0450b33">
《殺そう》


{	FwL("cg/fw/fwガッタイダーＲ_通常.png");}
//【ライター２】
<voice name="ライター２" class="その他男声" src="voice/mc03/023vs0460b10">
《殺そう》


{	FwL("cg/fw/fwガッタイダーＬ_通常.png");}
//【レフター２】
<voice name="レフター２" class="その他男声" src="voice/mc03/023vs0470b13">
《殺そう》


{	FwL("cg/fw/fwガッタイダーＢ_通常.png");}
//【ボーディ２】
<voice name="ボーディ２" class="その他男声" src="voice/mc03/023vs0480b08">
《ギファァァァァァァァァァァ!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ボーディホーン準備
	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);

	CreateTextureSP("絵窓/絵演", 19010, Center, 144, "cg/ev/ev922_ガッタイダーボーディホーン準備_b.jpg");
	Move("絵窓/絵演", 5000, @0, @-190, null, false);

	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	CreateTextureSP("絵演立絵合体", 1000, Center, Middle, "cg/st/3dガッタイダー_立ち_通常b.png");
	Move("絵演立絵合体", 0, @0, @-60, null, true);
	Request("絵演立絵合体", Smoothing);
	Zoom("絵演立絵合体", 0, 80, 80, null, true);

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/023vs0490a01">
《御堂、あれ！》


{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0500a00">
「無駄な真似を！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　対竜騎兵用高速徹甲弾。
　だが……あのような大砲、足腰もろくに定まらない
状態で撃ってそうそう当たるものではない。

　加えてこちらに、動かぬ的となって待っていてやる
義理はなかった。
　<RUBY text="つばさ">翼甲</RUBY>を打ち、回避機動に入る。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演立絵合体", 1000, Center, Middle, "cg/st/3dガッタイダー_立ち_通常b.png");
	Move("絵演立絵合体", 0, @0, @-100, null, true);
	Zoom("絵演立絵合体", 0, 40, 40, null, true);
	Request("絵演立絵合体", Smoothing);

	Zoom("絵窓", 300, 1000, 0, Dxl2, true);
	Delete("絵窓");

//◆回避
	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CP_SpeedChange(0,525,null,false);
	MyTr_Count(300,510);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　……もう趨勢が覆らぬ事は悟っていように。
　何故こうも、諦めを知らぬのか！

　だがそれでも、これが最後の一手だろう。
　この一弾さえ凌げば、あの怪物とて打つ手を失う筈。

　この一弾、を――

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演", 19100, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_b.jpg");
	Fade("絵演", 1000, 1000, null, true);

	SetFwL("cg/fw/fwガッタイダーＨ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0510b33">
《ぱーてぃ》

//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0520b33">
《いーず》

//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0530b33">
《おぉぉぉぉばぁぁぁぁぁぁぁぁぁぁ!!》

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 300, 0, null);

//◆ガッタイダー分離
	CreateSE("SE01","se特殊_鎧_ガッタイダー分離");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateTextureSP("絵演", 19100, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_c.jpg");
	FadeDelete("絵色白", 1000, true);

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0540a00">
「何――」


{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/023vs0550a01">
《ここで!?》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　敵騎が――――分離する！
　四騎に分かれ、<RUBY text="・・・・・・">撃ち出される</RUBY>。

　それはつまり、

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm12",0,1000,true);

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0560a00">
「特攻だと!?」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　最後の熱量を費やして！

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	Delete("絵演立絵*");

	CreateTextureSP("絵演立絵合体右", 1000, Center, Middle, "cg/st/3dガッタイダーＲ_騎航_通常.png");
	Move("絵演立絵合体右", 0, @-256, @576, null, true);
	Zoom("絵演立絵合体右", 0, 150, 150, null, true);
	Rotate("絵演立絵合体右", 0, @0, -180, @0, null,true);

	CreateTextureSP("絵演立絵合体左", 1000, Center, Middle, "cg/st/3dガッタイダーＲ_騎航_通常.png");
	Zoom("絵演立絵合体左", 0, 150, 150, null, true);
	Move("絵演立絵合体左", 0, @200, @-400, null, true);
	Rotate("絵演立絵合体左", 0, @0, -180, @0, null,true);

	Request("絵演立絵合体", Smoothing);

	CreateSE("SE00","se戦闘_動作_空上昇01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	DrawDelete("絵演", 150, 100, "zoom_01_00_0", true);

//◆ライター、レフターが順に突進
//◆がしがし。食らう。
	CreateSE("SE01a","se戦闘_動作_空突進01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("絵演立絵合体左", 400, @-800, @400, null, true);

	Wait(200);

	CreateSE("SE01b","se戦闘_動作_空突進02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Rotate("絵演立絵合体左", 0, @0, 0, 60, null,true);
	Zoom("絵演立絵合体左", 200, 3000, 3000, Dxl2, false);
	Move("絵演立絵合体左", 200, @300, @-100, null, false);

	Wait(170);

	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateColorSP("絵色白", 19900, "#FFFFFF");

	Wait(12);

	Delete("絵演立絵合体左");

	CreatePlainEX("絵板写", 1000);
	Fade("絵板写", 0, 300, null, true);
	Shake("絵板写", 700, 20, 20, 0, 0, 500, Dxl1, false);
	MyLife_Count(300,300);
	CP_IHPChange(300,4,null,false);
	CP_SpeedChange(2000,500,null,false);
	MyTr_Count(300,457);
	Shake("@CP_Frame*", 700, 30, 0, 0, 0, 1000, Dxl2, false);

	Delete("絵演立絵合体左");
	Wait(10);
	FadeDelete("絵色白", 200, true);

//あきゅん「演出：右のターン」
	CreateSE("SE01a","se戦闘_動作_空突進01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Rotate("絵演立絵合体右", 0, @0, -180, 90, null,true);
	Move("絵演立絵合体右", 400, @100, @-1000, null, true);

	Wait(200);

	Move("絵演立絵合体右", 0, @700, @0, null, true);


	CreateSE("SE01b","se戦闘_動作_空突進02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Rotate("絵演立絵合体右", 0, @0, @0, -90, null,true);
	Zoom("絵演立絵合体右", 200, 3000, 3000, Dxl2, false);
	Move("絵演立絵合体右", 200, @-400, @100, null, false);

	Wait(170);

	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateColorSP("絵色白", 19900, "#FFFFFF");

	Wait(12);

	Delete("絵演立絵合体右");

	CreatePlainEX("絵板写", 1000);
	Fade("絵板写", 0, 300, null, true);
	Shake("絵板写", 700, 20, 20, 0, 0, 500, Dxl1, false);
	MyLife_Count(300,240);
	CP_IHPChange(300,3,null,false);
	CP_SpeedChange(2000,450,null,false);
	MyTr_Count(300,366);
	Shake("@CP_Frame*", 700, 0, 30, 0, 0, 1000, Dxl2, false);

	Wait(10);
	FadeDelete("絵色白", 200, true);

	SetFwL("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0570a00">
「くっ……！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　<RUBY text="・・">両脚</RUBY>の突撃を正面から受ける。
　躱せる間合ではなかった。

　肩と胸甲に被撃。
　深刻なまでの損傷ではない――しかし刹那、動きを
止められた。

　不味い。
　これが、敵の狙い……！

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ボーディホーン
	CreateSE("SE02","se戦闘_攻撃_高速徹甲弾発射01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 19010, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_c.jpg");
	CreateTextureSP("絵演", 19000, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_c.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Cockpit_AllFade0();

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/023vs0580a01">
《避けてッ!!》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　どちらに？

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆選択：上／下／右／左

}

..//ジャンプ指定
//◆上　"mc03_023vsa.nss"
//◆下　"mc03_023vsb.nss"
//◆右　"mc03_023vsb.nss"
//◆左　"mc03_023vsb.nss"

//★選択肢シーン
scene mc03_023vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	SoundPlay("@mbgm12",0,1000,true);
	CreateTextureSP("絵演", 100, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_c.jpg");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice04("上","下","右","左");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA04();
//◆上　"mc03_023vsa.nss"
				$GameName = "mc03_023vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB04();
//◆下　"mc03_023vsb.nss"
				$GameName = "mc03_023vsb.nss";
		}
		case @選択肢３
		{
			ChoiceC04();
//◆右　"mc03_023vsb.nss"
				$GameName = "mc03_023vsb.nss";
		}
		case @選択肢４
		{
			ChoiceD04();
//◆左　"mc03_023vsb.nss"
				$GameName = "mc03_023vsb.nss";
		}
	}
}