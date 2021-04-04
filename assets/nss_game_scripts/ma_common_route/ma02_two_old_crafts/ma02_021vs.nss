//<continuation number="2210">

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

scene ma02_021vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma02_021vs.nss","AuraFlash",true);

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
	#イベントファイル名=true;
	#bg020_山脈坑道_02=true;
	#bg020_山脈_02=true;
	#bg202_旋回演出背景山_02=true;
	#bg025_坑道山脈と森a_02=true;
	#bg201_旋回演出背景市街地_02=true;
	#bg025_坑道山脈と森a_02=true;
	#bg005_山中_02=true;
	#bg003_荒れ野_02=true;
	#bg001_空a_02=true;
	#bg002_空a_02=true;
	#bg022_山林a_02=true;
	#bg025_坑道山脈と森b_02=true;


	#ev112_一条をお姫様だっこする村正=true;
	#ev111_弥源太を抱える一条_a=true;
	#ev111_弥源太を抱える一条_b=true;
	#ev111_弥源太を抱える一条_c=true;
	#ev111_弥源太を抱える一条_d=true;
	#ev111_弥源太を抱える一条_e=true;
	#ev925_野太刀断片_b=true;
	#ev925_野太刀断片_c=true;

	#ev905_村正電磁撃刀_a=true;
	#ev905_村正電磁撃刀_b=true;
	#ev905_村正電磁撃刀_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_羽黒山=true;
	#av_湯殿山=true;

	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "ma02_022.nss";

}

scene ma02_021vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"ma02_020vs.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}


//◆空
//◆フライトモニター
//あきゅん「演出：仮入れ、超適当」
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景100", 100, Center, -400, "cg/bg/resize/bg002_空a_02.jpg");

//おがみ：サーフェース作成
	CreateSurfaceEX("絵Suf",1000,2000,"絵背景100");
	Fade("絵Suf", 500, 1000, null, false);

	CreateColorEXadd("絵色100", 17500, "White");

//おがみ：コックピット動作定義========================
	MyLife_Count(1,680);
	MyTr_Count(500,300);
	CP_HighChange(500,712,null,false);
	CP_SpeedChange(500,315,null,false);
	Cockpit_AllFade2();

	CP_AltChangeA();
	CP_RollBarMoveA();
	BGMoveAuto("@絵背景100",1);

//おがみ：コックピット動作定義ここまで========================


	CreateSE("SE10","se戦闘_動作_空走行02_L");
	CreateSE("SE11","se戦闘_破壊_鎧04");
	CreateSE("SE12","se戦闘_破壊_鎧03");
	CreateSE("SE13","se戦闘_動作_空突進02");
	MusicStart("SE10",1000,1000,0,1000,null,true);

	SetFrequency("SE10", 2000, 1300, null);

//◆飛行
	OnSE("se戦闘_動作_空突進01",1000);
	CP_HighChange(500,800,AxlDxl,false);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_AziChange(1100,-50,AxlDxl,false);
	Zoom("絵背景100", 3000, 1100, 1100, AxlDxl, false);
	CP_RollBarMove("@絵背景100", 1000, @50, Axl3, false);
	Move("絵背景100", 1200, @-100, @0, Axl2, false);

	FadeDelete("上背景", 1000, true);
	SoundPlay("@mbgm13",0,1000,true);

//◆攻撃被弾。ずがーん。衝撃

	MusicStart("SE11",0,1000,0,1000,null,false);
	SetFrequency("SE10", 1000, 1000, null);
	Fade("絵色100", 50, 1000, null, true);


	Fade("絵色100", 500, 0, null, false);

	CP_HighChange(500,775,AxlDxl,false);
	MyLife_Count(300,620);
	CP_SpeedChange(800,380,AxlDxl,false);
	Shake("絵背景100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
	Zoom("絵背景100", 500, 1100, 1100, AxlDxl, false);
	CP_RollBarMove("@絵背景100", 600, @-30, Dxl2, false);
	Move("絵背景100", 1000, @-200, @-100, Dxl2, false);

	Wait(600);

	SetFrequency("SE10", 1200, 1200, null);

//◆飛行、旋回
	MusicStart("SE13",0,1000,0,1000,null,false);
	CP_HighChange(500,800,AxlDxl,false);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_AziChange(1000,20,AxlDxl,false);
	Zoom("絵背景100", 3000, 1150, 1150, AxlDxl, false);
	CP_RollBarMove("@絵背景100", 800, @-50, Axl2, false);
	Move("絵背景100", 900, @300, @0, Axl2, false);

	Wait(800);
//◆ロール（回避）
//◆攻撃被弾。ずがーん。衝撃

	Fade("絵色100", 50, 1000, null, true);
	CP_HighChange(500,767,AxlDxl,false);
	SetFrequency("SE10", 1000, 900, null);

	MusicStart("SE12",0,1000,0,1000,null,false);
	MyLife_Count(500,570);


	Fade("絵色100", 500, 0, null, false);

	CP_SpeedChange(500,380,AxlDxl,false);
	Shake("絵背景100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
	Zoom("絵背景100", 3000, 1100, 1100, AxlDxl, false);
	CP_RollBarMove("@絵背景100", 300, @-10, AxlDxl, false);
	Move("絵背景100", 1000, @100, @-100, AxlDxl, false);

	Wait(300);
	CP_RollBarMove("@絵背景100", 1000, @20, AxlDxl, false);

	Wait(500);

	SetVolume("SE10", 2000, 500, null);


	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);


	CreateTextureSP("絵背景200", 16200, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	CreateColorEX("絵色100", 16200, "BLACK");
	Fade("絵色100", 0, 500, null, true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");

	CreateWindow("絵演窓上", 16200, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateTextureEX("絵演窓上/絵演背景", 16200, 0, -144, "cg/bg/resize/bg001_空a_02.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16300, -35, -770, "cg/st/3d月山_騎航_戦闘a.png");
	Move("絵演窓上", 0, @0, @-288, null, true);

	FrameShake();


	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("黒幕１");

	Move("絵演窓上", 500, @0, @432, Dxl2, false);
	Fade("絵演窓上/絵演背景", 300, 1000, null, true);

	OnSE("se戦闘_動作_空突進01",1000);
	Move("絵演窓上/絵立絵", 300, @0, @355, Dxl2, false);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);

	Delete("絵Suf");

	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0010b35">
《ほぉっほっほっ！
　これこれどうした村正よ……めった打ちの
やられ放しではないか！》

//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0020b35">
《それでも天下の妖甲か！
　草葉の陰で先祖の霊が泣いておろうぞ！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	FrameShake();
	CP_RollBarMove("@絵背景100", 0, 0, null, true);

	OnSE("se戦闘_攻撃_鎧_剣戟02",1000);
	Fade("絵演窓上/絵立絵", 300, 0, null, true);

	Wait(300);
	FadeDelete("絵色100", 300, false);
	FadeDelete("絵演窓上*", 300, true);
	FadeDelete("絵背景200", 300, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0030a01">
《くっ……！》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0040b35">
《少しは打ち返してくれねばこちらも気分が
悪い。剣を打ち交わすからこそ<RUBY text="タチウチ">太刀打</RUBY>と申す。
こう一方的ではのう、立木打ちではないか！
　いや、困ったのう！　困ったのう！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　嘲笑が夕空を席巻する。
　こちらにはそれを押し留める手段がない。

　<RUBY text="エンゲージ">遭遇</RUBY>するや否や、敵騎はまたしても消失。
　以降、前回と同様、一方的に攻め立てられるばかり
の状況が続いている。

　手の出しようがない。
　<RUBY text="め">視覚</RUBY>も、<RUBY text="みみ">探査機能</RUBY>も役に立たないのでは、全く。
　どうにもこうにも、どう仕様もない。

　相州乱破が操る<RUBY text="キリガクレ">霧隠</RUBY>の術――
　これを打ち破る<RUBY text="すべ">術</RUBY>がなければ、どうにも！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0050a01">
《一体、どういうことなの……！
　姿を消し、探査を撹乱する陰義、そこまで
は百歩譲って認めてもいい。けれどそれを、
こんなにも長時間維持し続けるなんて！》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0060a01">
《その熱量はどこから調達してるの！
　食事しながら戦ってるとでもいうわけ!?》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0070a00">
「それは無いと思うが。
　……消化に悪そうだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　空を駆け回りながらでは。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0080a01">
《ええ、そうね！
　じゃあきっと、心臓が二つあるんでしょう
よ！》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0090a00">
「落ち着け、村正」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　苛立ちを隠さない劔冑に声をかける。
　この状況下では気休めにもなりそうになかったが。

　村正は単に武器として造られた通常の劔冑と違い、
明確な目的を与えられている――<RUBY text="・・・・・">先代を討つ</RUBY>、という。
　その為か、一般に劒冑の思念は極端に受動的である
のに対し、時として積極的また感情的にもなった。

　もっとも劔冑はあくまで劔冑。
　口ほどに村正が動揺しているとは俺も思っていない。
騎体管制は一度も怠っていなかった。この点で懸念を
抱く必要はないだろう。

　懸念すべきは――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	BGMoveDelete();
	CreateColorEXadd("絵色100", 17500, "WHITE");

	SetFrequency("SE10", 2000, 1300, null);
	SetVolume("SE10", 1000, 1000, null);
//◆攻撃。ずがーん。
	OnSE("se戦闘_破壊_鎧03",1000);
	CP_IHPChange(500,9,null,false);
	MyLife_Count(500,490);


	Fade("絵色100", 0, 1000, null, true);



	CP_SpeedChange(800,280,AxlDxl,false);
	CP_HighChange(500,727,AxlDxl,false);
	CP_AziChange(1000,-10,AxlDxl,false);
	Shake("絵背景100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
	Zoom("絵背景100", 500, 1100, 1100, AxlDxl, false);
	CP_RollBarMove("@絵背景100", 150, @10, AxlDxl, true);


	Fade("絵色100", 1000, 0, null, false);
	Move("絵背景100", 1000, @-200, @-100, Dxl2, false);
	CP_RollBarMove("@絵背景100", 300, @-20, AxlDxl, true);

	SetVolume("SE10", 3000, 500, null);
	SetFrequency("SE10", 1000, 1000, null);
	CP_RollBarMove("@絵背景100", 1000, 0, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0069]
　……あくまで、この絶対的劣勢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFrequency("SE10", 3000, 1000, null);

	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0100b35">
《ほぉっほ！　そんなものか！
　そんなものかいのう、村正よ！》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0110a01">
《背面甲鉄に損傷！
　くっ、この……どうしろってのよ！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0120a00">
「落ち着け」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　必要もない声をかける。
　……自分自身に言い聞かせるために。

　現況が不条理なものであるのなら、必ずどこかに、
打破の糸口がある筈。
　不条理を成立させるのは何らかの<RUBY text="イカサマ">如何様</RUBY>だ。それを
見極め、探し出す。探し出して打ち破り、術を解く。

　さもなくば――
　この空が俺と村正の墓場になる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

//◆坑道前
	CreateColorEX("絵暗転", 19000, "#000000");
	Fade("絵暗転", 1000, 1000, null, true);
	PrintGO("上背景", 20000);

	FrameShakeDelete();

	Cockpit_AllFade0();

	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,true);


	WaitPlay("@mbgm*", null);
	Wait(2000);

	CreateSE("SE01L","se自然_風_野原01_L");
	MusicStart("SE01L",2000,1000,0,1000,null,true);

	FadeDelete("上背景", 2000, true);
	SoundPlay("@mbgm09",0,1000,true);


//	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
　竜騎兵は右上段、武者正調の構。
　対して老人は小太刀を中段にとり、剛剣を迎える形。

　小太刀は受けから入って攻めるを基軸とする。
　それは間合で劣るがゆえの必然的戦術。

　だが老人は敢えてその法を犯している。
　小太刀の剣先はやや低く、重心は前方へ傾き過ぎて
いた。受けを狙うならばいかにも不都合。

　老人の企図は明然、受けにあらず、攻めにあった。

　間合で凌駕する敵の太刀に対し、その試みは断じて
無謀、狂気の沙汰とさえ言い得る。
　小太刀の達人は太刀の間合を盗んで制しもしようが、
それも駆け引きあってこそ。露骨な攻など論外である。

　老人は如何なる腹案を隠して、かかる暴挙に臨むか。
　
　――何もない。

　無の境地……否。
　愚の境地であった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 10000);
	StR(1000, @0, @0,"cg/st/3d八八式指揮官_立ち_戦闘.png");
	OnBG(100,"bg020_山脈_02.jpg");
	FadeBG(0,false);
	FadeStR(0,true);
	FadeDelete("絵板写", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
　敵なる竜騎兵はただ一心、愚かしい妄念だけを胸に、
立ちはだかる者を砕かんと欲している。
　されば。それに対して受けてどうの、捌いてどうの
と、小細工を用いて抗し得ようか。

　否である。
　老人の前に隆立す、愚かなる武者の一念は、かよう
に賢しげな術策など容易く粉砕してのけよう。

　愚に対して賢は優れど、ただ小賢しい小智は及ばぬ。

　であれば、方途はひとつきり。
　己もまた愚となって、相対するほかになし。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 10000);
	StL(1000, @0, @0,"cg/st/st弥源太_戦闘_私服.png");
	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,false);
	DeleteStR(0,false);
	FadeStL(0,true);
	FadeDelete("絵板写", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
　老人にも愚想はあった。
　この男は己が止めねばなるまいという妄念。

　逃げても良いのだ。
　誰かに任せても良いのだ。
　誰も老人にその責を問わない。

　だが老人は望んで負った。
　捨てても良い責務を背負った。

　その所以は些細なこだわり。
　遠い日の<RUBY text="まぼろし">幻影</RUBY>、あの世界には己と男、そして一人の
女しかいなかった。

　女はもういない。
　ならば男の始末は己がつけねば。
　あの世界には三人、<RUBY text="ただ">唯</RUBY>三人しかいなかったのだから。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0086]
　愚想。
　愚想である。

　愚想を抱いて、老人は<RUBY text="ゆ">征</RUBY>く。
　愚想を抱いて、竜騎兵は征く。

　愚かな、下らぬ、取るに足らぬ、
　而して命一つと同じ重さの一念を。

　互いに剣先へ乗せて。
　この刹那。

　今この刹那。
　二人の老兵が、征く。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――



//◆激突
//◆ホワイトアウト。ずがーん。

	OnSE("se人体_動作_跳躍03",1000);

	Wait(600);

	CreateWindow("絵ＷＲ", 1000, 312, Middle, 400, 576, true);
	SetAlias("絵ＷＲ","絵ＷＲ");
	CreateTextureSP("絵ＷＲ/絵ＥＦ100", 100, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	Move("絵ＷＲ/絵ＥＦ100", 0, @0, @-576, Dxl2, false);
	Zoom("絵ＷＲ/絵ＥＦ100", 0, 2000, 2000, null, true);

	Move("絵ＷＲ", 0, @262, @0, Dxl2, true);
	Move("絵ＷＲ/絵ＥＦ100", 150, @0, @576, Dxl2, false);

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

	CreateSE("SE01a","se戦闘_攻撃_刀振る02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	DrawTransition("絵ＷＲ", 150, 0, 1000, 30, Dxl2, "cg/data/slide_06_00_0.png", false);


	CreateWindow("絵ＷＬ", 1000, 312, Middle, 400, 576, true);
	SetAlias("絵ＷＬ","絵ＷＬ");
	CreateTextureSP("絵ＷＬ/絵ＥＦ110", 110, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	Move("絵ＷＬ/絵ＥＦ110", 0, @562, @0, Dxl2, true);
	Zoom("絵ＷＬ/絵ＥＦ110", 0, 2000, 2000, null, true);

	Move("絵ＷＬ", 0, @-262, @0, Dxl2, true);
	Move("絵ＷＬ/絵ＥＦ110", 150, @-562, @0, Dxl2, false);

	DrawTransition("絵ＷＬ", 150, 0, 1000, 30, Dxl2, "cg/data/slide_06_00_0.png", false);

	CreateSE("SE01b","se戦闘_攻撃_刀振る01");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	Wait(100);

	CreateTextureEX("絵剣", 18000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	CreateTextureEXadd("絵剣2", 18000, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	Zoom("絵剣", 0, 2500, 2500, null, true);
	Zoom("絵剣2", 0, 2500, 2500, null, true);
	Rotate("絵剣", 0, @0, @0, @10, null,true);
	Rotate("絵剣2", 0, @0, @0, @-110, null,true);

//	OnSE("se戦闘_攻撃_鎧_剣戟04",1000);
	OnSE("se戦闘_攻撃_刀衝突01",1000);

	FadeDelete("絵ＷＬ", 100, false);
	FadeDelete("絵ＷＲ", 100, false);

	EffectZoomDXadd(18100, 500, 100, "#FFFFFF", "cg/ef/ef040_汎用衝突.jpg", false);

	Fade("絵剣", 0, 1000, null, true);
	Fade("絵剣2", 0, 1000, null, true);
	Zoom("絵剣", 500, 2200, 2200, Dxl2, false);
	Zoom("絵剣2", 500, 2100, 2100, Dxl2, false);

	Wait(300);
	FadeDelete("絵剣*", 200, false);


	CreateColorEXadd("絵フラ", 1500, "#FFFFFF");
	Fade("絵フラ", 150, 1000, null, true);

	Wait(1500);
	WaitPlay("OnSE*", null);


//◆右京と弥源太
	PrintGO("上背景", 15000);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	CreateColorSP("絵黒地", 10, "#000000");

	FadeDelete("上背景", 0, true);


	CreateWindow("絵ＷＬ", 150, Center, -288, 1024, 288, true);
	SetAlias("絵ＷＬ","絵ＷＬ");
	CreateTextureSP("絵ＷＬ/絵背景Ｌ100", 100, Center, InBottom, "cg/bg/resize/bg020_山脈坑道_02_l.jpg");
	CreateTextureSP("絵ＷＬ/絵ＳＴＬ", 500, Center, InBottom, "cg/st/st弥源太_戦闘_私服.png");
	Move("絵ＷＬ/絵背景Ｌ100", 0, @182, @344, null, true);
//	Zoom("絵ＷＬ/絵背景Ｌ100", 0, 2000, 2000, null, true);
	Move("絵ＷＬ/絵ＳＴＬ", 0, @-120, @230, null, true);
	Move("絵ＷＬ", 0, @0, @288, null, true);

	CreateWindow("絵ＷＲ", 150, Center, 576, 1024, 288, true);
	SetAlias("絵ＷＲ","絵ＷＲ");
	CreateTextureSP("絵ＷＲ/絵背景Ｒ100", 100, Center, InBottom, "cg/bg/resize/bg020_山脈坑道_02_l.jpg");
	CreateTextureSP("絵ＷＲ/絵ＳＴＲ", 500, Center, InBottom, "cg/st/3d八八式指揮官_立ち_抜刀.png");
	Move("絵ＷＲ/絵背景Ｒ100", 0, @-12, @444, null, true);
//	Zoom("絵ＷＲ/絵背景Ｒ100", 0, 2000, 2000, null, true);
	Move("絵ＷＲ/絵ＳＴＲ", 0, @120, @230, null, true);
	Move("絵ＷＲ", 0, @0, @-288, null, true);

	Rotate("絵ＷＲ/絵背景Ｒ100", 0, @0, @-180, @0, null,true);

	FadeDelete("絵フラ", 2000, false);

	Move("絵ＷＬ/絵背景Ｌ100", 4000, @-380, @0, Dxl1, false);
	Move("絵ＷＲ/絵背景Ｒ100", 4050, @380, @0, Dxl1, false);
	Move("絵ＷＬ/絵ＳＴＬ", 4050, @-190, @0, Dxl2, false);
	Move("絵ＷＲ/絵ＳＴＲ", 4100, @190, @0, Dxl2, true);


	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0130b45">
「…………」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0140b55">
「…………」


{	FwC("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0150b45">
「……この、老いぼれめ」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0160b55">
「……この、馬鹿たれめ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ちょっと間
	Wait(2000);

	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0170b45">
「……ぐふっ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばたっ。右京倒れる

	CreateSE("SE01","se戦闘_衝撃_鎧転倒01");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("絵ＷＲ/絵ＳＴＲ", 600, @10, @60, Axl1, false);
	FadeDelete("絵ＷＲ/絵ＳＴＲ", 500, true);

	Wait(200);

	SetFwC("cg/fw/fw弥源太_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0180b55">
「……くっ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆よろめく弥源太
	CreateSE("SE01b","se人体_動作_後ずさり01");//ダミー注意
	MusicStart("SE01b",0,1000,0,1000,null,false);

	Move("絵ＷＬ/絵ＳＴＬ", 600, @-10, @30, Dxl2, false);

	SetFwC("cg/fw/fw弥源太_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0190b55">
「ふ……ッ」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0200b55">
「…………」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);

	OnBG(100,"bg020_山脈_02.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm33",0,1000,true);


	FadeDelete("上背景", 1000, true);

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0210b55">
「右京……
　生きておるか」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0220b45">
「……ッ。
　なめるな……この程度で……」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0230b45">
「この俺が……
　かはッ！」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0240b55">
「……呆れたしぶとさよ。
　腹を抜かれてその元気か」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0250b55">
「…………楽にしてくれよう」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0260b45">
「いらぬ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆立つ右京
//◆甲鉄が銀色に瞬く。卵の力

	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,600,null,false);

	CreateMask("絵Ｍ", 200, Center,  InBottom, "cg/data/circle_02_00_1.png", true);
	SetAlias("絵Ｍ","絵Ｍ");

	StC(1000, @0,@100,"cg/st/3d八八式指揮官_立ち_通常.png");

	Move("@StC*", 1000, @0, @-100, AxlDxl, false);
	FadeStC(500,true);

	WaitKey(1000);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetVolume("SE*", 100, 0, null);

	//CreateColorEXadd("絵Ｍ/絵オーラ", 2000, "#FFFFFF");
	//SetAlias("絵Ｍ/絵オーラ","美輪");

	CreateStencil("絵演型",2000,center,InBottom,128,"cg/st/3d八八式指揮官_立ち_通常.png",false);
	SetAlias("絵演型","絵演型");
	CreateColorEXadd("絵演型/色", 2010, "#FFFFFF");
	SetVertex("絵演型/色", center, bottom);
	Zoom("絵演型", 0, 1020, 1020, null, true);

	CreateTextureEX("絵背景ぼかし", 100, Center, Middle, "cg/bg/bg020_山脈_02.jpg");
	SetShade("絵背景ぼかし", HEAVY);




	SetAlias("絵演型/色","美輪");

	CreateSE("SEL01","se特殊_陰義_発動04");
	MusicStart("SEL01",1000,700,0,940,null,true);

	$残時間元=RemainTime("SEL01");
	$残時間組込値=$残時間元-200;

//プロセスの定義
	CreateProcess("プロセスオーラ", 10000, 0, 0, "AuraFlash");
	SetAlias("プロセスオーラ","プロセスオーラ");

//プロセススタート
	Request("プロセスオーラ", Start);
	Fade("絵背景ぼかし", 500, 1000, null, true);

	Fade("絵背景ぼかし", 1000, 0, null, true);
	Delete("絵背景ぼかし");
//	Wait(1000);

	SetFwR("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0270b55">
「右京……」


{	FwR("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0280b45">
「負けぬ……負けぬぞ。
　俺は……負けぬ」


</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_刀構え01",1000);

	CreatePlainSP("絵板写", 10000);
	StC(1000, @0,@0,"cg/st/3d八八式指揮官_立ち_戦闘.png");
	FadeStC(0,true);

	CreateStencil("絵演型",2000,center,InBottom,128,"cg/st/3d八八式指揮官_立ち_戦闘.png",false);
	CreateColorEXadd("絵演型/色", 2010, "#FFFFFF");
	SetVertex("絵演型/色", center, bottom);
	Zoom("絵演型", 0, 1020, 1020, null, true);

	SetAlias("絵演型/色","美輪");
	FadeDelete("絵板写", 300, true);

	SetFwR("cg/fw/fw長坂_妄執.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0290b45">
「山を掘るのだ……
　神などいないと……ただの安っぽい石ころ
に過ぎぬと、一媛に教えてやるのだ」

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0300b45">
「そうして、手に入れる……
　あいつを……一媛を！　手に入れるのだ！」


{	FwR("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0310b55">
「……」


</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	SetVolume("SEL*", 600, 300, null);

	CreateColorSP("暗転", 15000, "#000000");
	DrawTransition("暗転", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	DeleteStA(0,true);
	Delete("プロセスオーラ");
	Delete("絵*");

	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,true);

	DrawDelete("暗転", 200, 100, "slide_01_03_1", true);

	OnSE("se人体_動作_後ずさり01",1000);
	StL(1000, @0, @0,"cg/st/st弥源太_戦闘_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw弥源太_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0134]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0320b55">
「うてが送ってやろうぞ……右京。
　なれを……一媛のもとに」


{	FwC("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0330b45">
「弥源太……」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0340b55">
「……さらば。
　<RUBY text="バラガキ">茨垣</RUBY>の右京」


{	FwC("cg/fw/fw長坂_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0350b45">
「弥源太ァァァァァァァァ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆動く弥源太
//◆がさっ。

	SetVolume("@mbgm*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	SetVolume("SE*", 100, 0, null);

	CreateColorEX("絵色100", 18000, "BLACK");


	OnSE("se人体_動作_跳躍01",1000);

	Fade("絵色100", 200, 1000, null, false);
	Move("@StL*", 150, @30, @0, Axl1, false);
	DeleteStA(150,true);


	Wait(600);
	OnSE("se自然_草木_探る01",1000);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0360a02">
「……あ？」


{	FwC("cg/fw/fw弥源太_驚き.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0370b55">
「――!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条
	FadeDelete("絵色100", 400, true);

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw一条_驚くb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0380a02">
「弥源太爺さん……？
　あれ？　ここ、どこだ」


{	FwC("cg/fw/fw弥源太_驚き.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0390b55">
「な……一条のお嬢……
　どうしてここに！」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0400a02">
「いや……帰る前にあんたに挨拶しとこうと
思って。和尚に山に住んでるって聞いて来た
んだけど……」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0410a02">
「どこをどう間違ったんだか、気がついたら
林の中に入っちまってて。
　朝から今までずっと、ぐるぐると」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0420a02">
「あ、いや、別に方向音痴じゃないからな!?
　ただちょっと、森の散策も風流かなーとか
思って適当に歩いてたからこうなっただけで
――」

{	FwC("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0430b45">
「……一媛」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0440a02">
「あん？
　って、昨日の山犬野郎。てめぇもいたの、
か…………あ？」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0450a02">
「……」

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0460a02">
「……劔冑？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 10000);
	StC(1000, @0,@0,"cg/st/3d八八式指揮官_立ち_戦闘.png");
	OnBG(100,"bg020_山脈_02.jpg");
	FadeBG(0,false);
	DeleteStL(0,false);
	FadeStC(0,true);
	FadeDelete("絵板写", 300, true);

	Wait(200);

	SoundPlay("@mbgm28",2000,1000,true);

	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0153]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0470b45">
「……一媛……！」


{	FwR("cg/fw/fw弥源太_叫ぶ.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0480b55">
「いかん！
　嬢、逃げよ!!」


{	FwR("cg/fw/fw一条_驚くb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0490a02">
「え……」


{	FwR("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0500b45">
「お前を――
　俺の――
　この、手に――」

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0510b45">
「俺の……一媛……
　俺の、ものに……ッ！」


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0520a02">
「……」


{	FwR("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs0530a02">
「嫌だ、っつってんだろーが。阿呆」


{	FwR("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0540b45">
「――――ッ」


{	FwR("cg/fw/fw長坂_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs0550b45">
「ああああアアアアアアアッッッ!!」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg020_山脈_02.jpg");
	Request("絵背景100", Smoothing);
	Request("@StC*", Smoothing);
	SetBlur("絵背景100", true, 1, 300, 100, false);
	SetBlur("@StC*", true, 1, 300, 100, false);

	Move("@StC*", 300, @0, @150, Dxl3, false);
	Zoom("@StC*", 300, 1500, 1500, Dxl3, false);
	Zoom("絵背景100", 300, 1500, 1500, Dxl3, true);

	SetFwL("cg/fw/fw弥源太_叫ぶ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs0560b55">
「右京ォォォッ!!」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(0,0);//――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//◆剣撃一閃

	PrintGO("上背景", 15000);
	CreateColorSP("絵黒地", 10, "#000000");
	Delete("上背景");



	CreateColorEX("絵暗転", 5000, "#FFFFFF");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/anime/slash03a_01.png");
	Wait(60);


	Fade("絵暗転", 15, 1000, null, true);
	Fade("絵暗転", 15, 0, null, true);

	OnSE("se戦闘_攻撃_鎧_剣戟01",1000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/anime/slash03a_02.png");

	Wait(60);
	Fade("絵暗転", 15, 1000, null, true);
	Fade("絵暗転", 15, 0, null, true);

	OnSE("se戦闘_攻撃_鎧_剣戟01",800);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/anime/slash03a_03.png");

	Wait(60);
	Fade("絵暗転", 15, 1000, null, true);
	Fade("絵暗転", 15, 0, null, true);

	OnSE("se戦闘_攻撃_鎧_剣戟01",600);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/anime/slash03a_04.png");

	Wait(60);
	Fade("絵暗転", 15, 1000, null, true);
	Fade("絵暗転", 15, 0, null, true);

	OnSE("se戦闘_攻撃_鎧_剣戟01",400);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/anime/slash03a_05.png");

	Wait(60);
	Fade("絵暗転", 15, 1000, null, true);
	Fade("絵暗転", 15, 0, null, true);

	OnSE("se戦闘_攻撃_鎧_剣戟01",300);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/anime/slash03a_06.png");

	Wait(60);
	Fade("絵暗転", 15, 1000, null, true);
	Fade("絵暗転", 15, 0, null, true);

	OnSE("se戦闘_攻撃_鎧_剣戟01",200);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/anime/slash03a_07.png");

	Wait(60);
	Fade("絵暗転", 15, 1000, null, true);
	Fade("絵暗転", 15, 0, null, true);

	OnSE("se戦闘_攻撃_鎧_剣戟01",100);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/anime/slash03a_08.png");

	Wait(60);
	Fade("絵暗転", 15, 1000, null, true);

	Delete("絵背景100");

	Wait(1000);

	FadeDelete("絵暗転", 1000, true);

	Wait(500);


//◆斬。血飛沫

	OnSE("se人体_血_血しぶき01",1000);
	SL_leftdam(@0, @0,1000);
	SL_leftdamfade2(10);

	ClearWaitAll(0, 2000);



//◆空
//◆フライトモニター
	PrintGO("上背景", 20000);
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	Request("絵背景100", Smoothing);
	Move("絵背景50", 0, @-100, @0, null, true);
	Zoom("絵背景50", 0, 1200, 1200, null, true);

	Cockpit_AllFade2();

//おがみ：コックピット動作定義========================
	MyLife_Count(1,510);
	MyTr_Count(500,300);
	CP_HighChange(0,1012,null,false);
	CP_SpeedChange(0,315,null,false);
	Cockpit_AllFade2();
	MyLife_Count(0,430);

	CP_AltChangeA();
	CP_RollBarMoveA();
	BGMoveAuto("@絵背景50",1);

//おがみ：コックピット動作定義ここまで========================

	CreateSE("SE10","se戦闘_動作_空走行02_L");
	MusicStart("SE10",1000,500,0,1000,null,true);

	SetFrequency("SE10", 4000, 1300, null);


	FrameShake();

	Zoom("絵背景50", 500, 1000, 1000, Dxl2, false);
	DrawDelete("上背景", 300, 100, "circle_01_00_1", true);


//◆ずがーん。右京ＶＳ弥源太の激突音

	CreateSE("SE01","se戦闘_破壊_爆発01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1000);
	SoundPlay("@mbgm36",3000,1000,true);


	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0570a00">
「……!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　――轟音。
　また攻撃を受けたのかと一瞬、誤解する。

　だが違う。音のみで、衝撃がない。
　これは何処か、全く別の所で発した音響。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0580a00">
「村正。今のは何だ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0590a01">
《山の方角よ！
　爆発じゃない。何か激しいぶつかり合いが
――武者の太刀打のような何かが》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0600a00">
「……代官と弥源太老か！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆旋回
	BGMoveDelete();
	Fade("絵背景100", 0, 1000, null, true);
	CreateSurfaceEX("絵Suf",1000,2000,"@絵背景100");
	OnSE("se戦闘_動作_空突進02",1000);

	CP_SpeedChange(1000,513,AxlDxl,false);
	Fade("絵Suf", 300, 1000, null, false);
	Zoom("絵背景100", 3000, 1200, 1200, AxlDxl, false);
//	CP_RollBarMove("@絵背景100", 1000, @40, AxlDxl, false);
//	Rotate("絵Suf", 1000, @0, @0, 40, AxlDxl,false);
//	CP_RollBarMove2(1000,40,AxlDxl,false);
	CP_RollBarMove("@絵Suf", 1000, @40, AxlDxl, false);
	Move("絵背景100", 3000, @500, @200, AxlDxl, false);
	CP_AziChange(3000,75,AxlDxl,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0183]
　山の方へ首を巡らす。
　……ここからでは何もわからない。

　代官はともかく、弥源太老人は生身だ。どのような
術策があったにしろ、長期戦にはなりようがない。
　おそらく、今の一撃で決着はついた筈。

　老人が勝っていれば良い。
　だがそうでないなら……一刻も早く山に向かわねば
ならない。さりとて、この現状――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0610a01">
《御堂！　<RUBY text="かのとからいぬのかみ">二九〇度上方</RUBY>！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0620a00">
「!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆旋回
	CreateColorEX("黒幕１", 16000, "BLACK");

	OnSE("se戦闘_動作_空突進01",1000);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_HighChange(1500,612,AxlDxl,false);

	Move("絵背景100", 500, @50, @20, AxlDxl, true);
	Move("絵背景100", 1500, @-600, @-100, Axl2, false);
	Zoom("絵背景100", 1500, 2000, 2000, AxlDxl, false);
	CP_RollBarMove("@絵背景100", 1500, @-150, AxlDxl, false);
	CP_AziChange(1500,-100,null,false);


	Wait(1000);

	Fade("黒幕１", 0, 1000, null, true);
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵Suf");
//◆月山ロックオン
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateSurfaceEX("絵Suf",100,2000,"@絵背景100");
	Fade("絵Suf", 0, 1000, null, true);

	Request("絵背景100", Smoothing);
	CreateTextureEX("絵月山", 100, Center, middle, "cg/st/3d月山_騎突_戦闘.png");
	SetBlur("絵月山", true, 3, 300, 100, false);
	Request("絵月山", Smoothing);
	Zoom("絵月山", 0, 200, 200, null, true);

	CP_AziChange(0,-112,null,true);
	CP_RollBarMove("@絵背景100", 0, 0, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵月山",0,@0,@-200,null,true);


	CP_AltChange(2000,10,Dxl2,false);
	CP_HighChange(2300,950,Dxl2,false);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", false);
	Move("絵背景100", 2000, @0, -200, Dxl2, true);

	Move("絵背景100", 1000, @0, -250, AxlDxl, false);
	OnSE("se特殊_コックピット_起動音02",1000);
	CP_LockOnMove("@絵月山",800,@0,@100,Dxl2,false);

	Fade("絵月山", 500, 1000, null, true);
	CP_LockOnFade(100,"off",false);
	CP_EnemyFade(300,10,420,300);

	Wait(200);

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0630a00">
「……月山!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　紛れもなく月山従三位。
　それが姿を現し、村正の<RUBY text="レティクル">照準</RUBY>に捉えられている。

　何故、唐突に……？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0640b35">
《ほっほっほ。
　つまらぬ、つまらぬなぁ！　こんなことを
していても気が腐るばかりよ。仕様がない、
そろそろその首、頂くとしようかの！》

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0650a00">
《……如何にしてだ》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　姿を見せたのは、新たな術のため……？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0660b35">
《ほっほ！　この期に及んで強がりよる！
　それとも何かな。この月山に一刀打ち込む
方策、<RUBY text="ようよ">漸</RUBY>う見つけ出したとでも言うのかの？》

{	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("@SE10", 1000, 1, null);
	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0670a00">
《…………。
　<RUBY text="・・・・・・">見えているぞ</RUBY>。風魔小太郎》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0680b35">
《…………なッ!?》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　初めて聞く、老練なる乱破武者の動揺の声。
　そこに演技の、策略の、臭気は感じられない。

　……どういう事だ。
　この敵、<RUBY text="・・・・・・・・・・・・・・・・・・・">自分の術が解けていることに気付いていな</RUBY>
<RUBY text="・・・">かった</RUBY>？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0690b35">
《慙愧・懺悔・六根清浄！
　慙愧・懺悔・六根清浄！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CP_LockOnFadeT(300,false);
	FadeDelete("絵月山", 1000,true);
	CP_LockOnDelete();

	Wait(300);

//◆じわっと消える月山。ロックオン解除


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0261]
　……消えた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//	SoundPlay("@mbgm05",0,1000,true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0700a01">
《御堂！　回避ッ！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@SE10", 2000, 500, null);

//◆ロール
//◆ずがーん。
//◆ちょっと飛行
	CreateColorEXadd("絵色100", 1500, "WHITE");
	OnSE("se戦闘_動作_空突進01",1000);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_HighChange(500,902,AxlDxl,false);
//	CP_AziChange(1000,-52,null,false);
	CP_RollBarMove("@絵Suf", 1000, 60, AxlDxl, false);

	Move("絵背景100", 1000, @0, -300, AxlDxl, false);

	FadeDelete("上背景", 1000, true);
	SoundPlay("@mbgm13",0,1000,true);

//◆攻撃被弾。ずがーん。衝撃

	SetFrequency("SE10", 1000, 1000, null);
	Fade("絵色100", 0, 1000, null, true);

//おがみ：ダメージ
	OnSE("se戦闘_破壊_鎧04",1000);
	MyLife_Count(300,380);

	Fade("絵色100", 500, 0, null, false);

	CP_HighChange(500,810,AxlDxl,false);
	CP_SpeedChange(800,380,AxlDxl,false);
	Shake("絵背景100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
	CP_RollBarMove("@絵Suf", 150, 10, AxlDxl, true);
	CP_RollBarMove("@絵Suf", 300, -10, AxlDxl, false);
	Move("絵背景100", 1000, @0, -400, AxlDxl, false);

	Wait(300);
	CP_RollBarMove("@絵背景100", 300, 0, AxlDxl, true);

	SetFrequency("SE10", 1200, 1200, null);


	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0710a01">
《――また来るッ！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ロール回避
//◆ずごーん。

//◆飛行、旋回
	OnSE("se戦闘_動作_空突進02",1000);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_RollBarMove("@絵Suf", 800, @30, AxlDxl, false);
//	CP_AziChange(800,-20,null,false);
	CP_HighChange(500,851,AxlDxl,false);
	Move("絵背景100", 900, @0, -100, AxlDxl, false);

	Wait(800);
//◆ロール（回避）
//◆攻撃被弾。ずがーん。衝撃
	SetFrequency("SE10", 1000, 900, null);

	Fade("絵色100", 0, 1000, null, true);

	OnSE("se戦闘_破壊_鎧03",1000);
//おがみ：ダメージ
	MyLife_Count(500,350);


	Fade("絵色100", 500, 0, null, false);

	CP_HighChange(500,756,AxlDxl,false);
	CP_SpeedChange(500,380,AxlDxl,false);
	CP_RollBarMove("@絵Suf", 300, -10, AxlDxl, false);
	Shake("絵背景100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
	Move("絵背景100", 1500, @0, -500, AxlDxl, false);
	CP_RollBarMove("@絵Suf", 100, -10, AxlDxl, true);
	CP_RollBarMove("@絵Suf", 150, 10, AxlDxl, true);

	Wait(300);

	CP_RollBarMove("@絵Suf", 500, -5, AxlDxl, true);
	CP_RollBarMove("@絵Suf", 1000, 0, AxlDxl, false);
	Delete("絵色100");
	SetFwR("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0720a00">
「……ッ。
　村正、損害は！」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0730a01">
《軽微！
　でも楽観しないで！　急に攻撃から遊びが
なくなった！》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　立て続けの猛撃。
　風魔者が初めて見せる必死の攻勢。

　そう、この敵はもう遊んでいない。
　いや――<RUBY text="・・・・・">焦っている</RUBY>。

　しかし、何故。
　何故、急に。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0740a00">
「何故、急に……？
　決まっている」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0750a01">
《御堂……》

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0760a00">
「今のが致命的な失敗だったからだ。
　つまりはそういう事！」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0770a01">
《ええ――！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆ロール回避
//◆どごーん

	CreateColorEXadd("絵色100", 1500, "WHITE");


	OnSE("se戦闘_動作_空突進01",1000);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_汎用移動.jpg", false);


	CP_HighChange(1000,823,AxlDxl,false);
	CP_SpeedChange(1000,513,AxlDxl,false);
//	CP_AziChange(1000,12,null,false);
	CP_RollBarMove("@絵Suf", 1000, 50, AxlDxl, false);
	Move("絵背景100", 1000, @0, -100, AxlDxl, true);

	SetFrequency("SE10", 1000, 1000, null);
	Fade("絵色100", 0, 1000, null, true);

//おがみ：ダメージ
	OnSE("se戦闘_破壊_鎧04",1000);
	MyLife_Count(500,275);
	CP_HighChange(500,805,AxlDxl,false);

	Fade("絵色100", 500, 0, null, false);

	CP_SpeedChange(800,380,AxlDxl,false);
	Shake("絵背景100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
//	Zoom("絵背景100", 500, 1500, 1500, AxlDxl, false);
//	CP_RollBarMove("@絵背景100", 150, 10, AxlDxl, true);
//	CP_RollBarMove("@絵背景100", 300, -10, AxlDxl, false);
	CP_RollBarMove("@絵Suf", 150, 10, AxlDxl, true);
	CP_RollBarMove("@絵Suf", 300, -10, AxlDxl, false);
//	Move("絵背景100", 1000, @-200, @0, Dxl2, false);
	Move("絵背景100", 1000, @0, -400, Dxl2, false);

	Wait(300);
//	CP_RollBarMove("@絵背景100", 300, 0, AxlDxl, true);
	CP_RollBarMove("@絵Suf", 300, 0, AxlDxl, true);

	SetFrequency("SE10", 1200, 1200, null);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0314]
　……状況を整理しろ。
　まず最初は山から響いた轟音。

　激しい音ではあったが、それはただ、それだけだ。
　地上は大きく鳴動したかもしれないが、空にあって
は耳孔の鼓膜を震わせたに過ぎない。

　その直後、月山が姿を現した。
　しかも当人は、そのことにすぐには気付かなかった。

　……おかしい。
　轟音に驚いて術を解いてしまったというのなら――
風魔の頭領が音如きで？――自分で気付かぬ筈がない。
　驚いていなかったなら、術の解ける理由がない。

　理屈が合わぬ、この矛盾。
　ここだ。
　この裏に真相がある。

　だがそれは何だ!?
　あと、何か一つ――発想の取っ掛かりがあれば――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ロール回避
//◆ずぎょー
	OnSE("se戦闘_動作_空突進02",1000);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_AziChange(1500,-220,AxlDxl,false);
	CP_HighChange(1500,572,AxlDxl,false);

	SetFrequency("SE10", 1000, 900, null);
	CP_RollBarMove("@絵Suf", 1500, -180, AxlDxl, false);
	Move("絵背景100", 2000, 0, -5200, AxlDxl, false);

	Wait(1500);
	CP_HighChange(500,720,AxlDxl,false);
	CP_RollBarMove2(0,0,null,true);
	Wait(500);
	Fade("絵色100", 0, 1000, null, true);
	OnSE("se戦闘_破壊_鎧03",1000);

//おがみ：ダメージ
	MyLife_Count(500,73);

	Fade("絵色100", 500, 0, null, false);

	CP_SpeedChange(500,380,AxlDxl,false);
	CP_HighChange(500,679,AxlDxl,false);

	Shake("絵背景100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
	Move("絵背景100", 6000, @0, -4800, Dxl2, false);
	CP_RollBarMove("@絵Suf", 200, @-20, AxlDxl, true);
	CP_RollBarMove("@絵Suf", 1000, @25, AxlDxl, false);

	Wait(500);

	Delete("絵色100");



	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0780a01">
《……背面甲鉄に損傷！
　いけない、これ以上は持たない……！》

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0790a00">
「く……！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒幕１", 16200, "BLACK");
	CreateTextureEX("絵銀星号", 16300, 150, -350, "cg/st/resize/3d銀星号_立ち_通常s.png");

	Fade("黒幕１", 500, 1000, null, true);

	Move("絵銀星号", 15000, @0, 100, null, false);
	Fade("絵銀星号", 2000, 400, null, false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　届かないのか。
　足りないのか。

　俺はここで墜ちるのか。

　敗死は武人の宿命の内。
　しかし――まだ早い――！

　まだ――
　俺にそんな逃避は許されない!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	BGMoveAuto("@絵背景100",1);

	FadeDelete("絵銀星号", 500, false);
	FadeDelete("絵背景200", 500, false);
	FadeDelete("黒幕１", 500, false);
	Wait(200);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0800a01">
《御堂――》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0810a00">
「お前は熱源探査に専念しておけ。
　余計な思慮は無用！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0820a01">
《……。
　御堂。月山とは、出羽にある霊山のこと》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0830a00">
「知っている……
　誰もそんなことを尋ねてはいない」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0840a01">
《月山は、<RUBY text="・・・・・・・">出羽三山の主峰</RUBY>なの》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0850a00">
「それがどう…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　――――<RUBY text="・・">三山</RUBY>？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景300", 6200, Center, Middle, "cg/bg/bg025_坑道山脈と森a_02.jpg");
	Fade("絵背景300", 5000, 500, null, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0860a01">
《月山信仰は月山だけで完結しない。
　<RUBY text="はぐろさん">羽黒山</RUBY>、<RUBY text="ゆどのさん">湯殿山</RUBY>と併せて一つの信仰になる》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　……一つで完結しない。
　三つ、併せて…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0870a00">
「――つまり」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0880a01">
《ええ。
　けれど、<RUBY text="・・">それ</RUBY>が何処かとなると……》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0890a00">
「<RUBY text="・・・・・・・・・">見晴らしの良い場所</RUBY>だ、村正。そうでなけ
れば術を施せない。
　そして、妖術の解ける切っ掛けになったと
思しき先の轟音。あれはどこで発した？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0900a01">
《!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景300", 500, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　一つで完結しない月山。
　山の異変を契機に解けた術。
　術が解けたことに気付かない武者。
　術が要する筈の法外な熱量。

　――――結論は、其処。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景300", 16200, Center, Middle, "cg/bg/bg025_坑道山脈と森a_02.jpg");
	SetBlur("絵背景300", true, 1, 500, 50, false);
	Request("絵背景300", Smoothing);

	Zoom("絵背景300", 300, 1200, 1200, Dxl2, false);
	Fade("絵背景300", 200, 1000, null, true);

	BGMoveDelete();

	Wait(200);

/*
//◆声用一時退避
//◆同時発声
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0910a00">
《見えた!!》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0920a01">
《見えた!!》
*/


	CreateVOICE("景明","ma02/021vs0910a00");
	CreateVOICE("村正さん","ma02/021vs0920a01");

	SetBacklog("《見えた!!》", "voice/ma02/021vs0910a00", 景明);
	SetBacklog("《見えた!!》", "voice/ma02/021vs0920a01", 村正);

	MusicStart("景明",0,1000,0,1000,null,false);
	MusicStart("村正さん",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　
　　《《見えた!!》》

</PRE>
	SetTextEXC();
	Request("@text0400", NoLog);
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

	SetVolume("景明", 0, 0, null);
	SetVolume("村正さん", 0, 0, null);

	OnSE("se戦闘_動作_空突進01",1000);
	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	FadeDelete("絵背景300", 0, true);

	CreateTextureSP("絵背景100", 100, Center, -150, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
//	SetBlur("絵背景100", true, 3, 500, 50, false);
	Request("絵背景100", Smoothing);
	Move("絵背景100", 1000, @0, @-600, Dxl2, false);

	FrameShake();
	CP_RollBarMove("@絵背景100", 0, 0, null, true);

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("黒幕１");




//◆旋回
//◆山頂へ
	SoundPlay("@mbgm08",0,1000,true);

	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0930b35">
《村正ァッ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進03",1000);
	CP_AziChange(0,-270,null,true);
	CP_HighChange(1000,423,AxlDxl,false);
	Move("絵背景100", 1000, @-800, @200, Dxl2, false);
	Zoom("絵背景100", 1000, 1800, 1800, Dxl2, false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　何処からとも知れぬ金打声が耳朶を打つ。
　だが、構わない。<RUBY text="・・">あれ</RUBY>に構う必要はない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進01",1000);
	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg025_坑道山脈と森a_02.jpg");
	SetBlur("絵背景100", true, 1, 500, 50, false);
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 2000, 2000, 2000, Dxl2, false);

	CP_HighChange(2000,352,AxlDxl,false);
	EffectZoomadd(10000, 2000, 100, "cg/ef/ef003_汎用移動.jpg", false);
	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("黒幕１");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0421]
　兜角を下げ、降下降下降下。
　重力を味方として加速する。速力で村正に優る月山
といえど、そう容易くは追いつかせない。

　――それでも迫っているに違いない。
　足裏に刺さる針のような殺気。

　来る――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0940a01">
《御堂！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ロール回避

	CreateColorEXadd("絵色100", 16500, "WHITE");

	OnSE("se戦闘_動作_空突進02",1000);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_RollBarMove("@絵背景100", 800, -360, AxlDxl, false);
	CP_AziChange(800,-20,null,false);

	Zoom("絵背景100", 3000, 2100, 2100, AxlDxl, false);
	Move("絵背景100", 900, 0, 0, AxlDxl, false);

	Wait(800);

	SetFrequency("SE10", 1000, 900, null);

	Fade("絵色100", 0, 1000, null, true);

	OnSE("se戦闘_攻撃_剣戟弾く02",1000);


	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0950b35">
「何ィ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 1000, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　必殺の一撃だったに違いない。
　<RUBY text="・・・・・">掠め過ぎた</RUBY>太刀風の凄まじさが、肝を氷結させる。

　今の一瞬、村正の敵襲探知は声より先に皮膚の接触
によって俺の意識へ伝達。
　即座の回避機動が有り得ぬ成功をもたらした。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進01",1000);
	CP_HighChange(5000,273,AxlDxl,false);
	EffectZoomadd(10000, 2000, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("絵背景100", 5000, 2500, 2500, Dxl2, false);

//◆旋回
//◆山へ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0452]
　もはや邪魔はない。
　そこへ向かう――月山を支える<RUBY text="・・">二山</RUBY>の在り処へ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs0960a00">
「村正、山頂周辺に熱源探知！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0970a01">
《諒解！{WaitKey(2500);}<BR>　――社の裏手よ！　そこに二騎！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CP_HighChange(500,120,AxlDxl,false);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("絵背景200", 16200, Center, Middle, "cg/bg/bg005_山中_02.jpg");
	SetBlur("絵背景200", true, 1, 300, 20, false);
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 500, 1500, 1500, Dxl2, false);

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("黒幕１");
	EffectZoomadd(10000, 2000, 100, "cg/ef/ef003_汎用移動.jpg", false);
//◆そっち向かう
//◆二騎ロックオン
	#av_羽黒山=true;
	#av_湯殿山=true;

	OnSE("se特殊_コックピット_起動音02",1000);
	Wait(300);
	OnSE("se特殊_コックピット_起動音02",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0462]
　……捉えた！
　古びた社のそばに、二騎の武者――<RUBY text="・・・・・・・">羽黒山と湯殿山</RUBY>！

　この二者が妖術・霧隠の正体。
　地上に姿を隠し、<RUBY text="・・・・・・・・・・・">月山に陰義を掛けていた</RUBY>術師！

　全ての謎はここに氷解する。
　常識外れの術は、二騎の武者の合力があればこそ。
おそらく一方が光学操作、もう一方が信号操作。
　月山の怪詠唱は陰義の<RUBY text="コマンド">呪句</RUBY>に非ず、二人への合図！

　二騎が陰義の行使に専念し、月山が戦闘のみを担当
していたのであれば、術の異様な長時間維持とて何の
不思議もない。

　彼らは三騎で一騎の無敵者を成していたのだ。
　あたかも、出羽三山が一つの信仰を成すように！

　代官と弥源太老の激突によるものだろう衝撃が術者
の集中を乱し、霧隠の術を解かせるという偶然の配剤
がもしも、なかったなら――
　おそらくこの三位一体を破るには至らなかったろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆着地
//◆迫る
//あきゅん「演出：仮入れ、超適当」

	FadeDelete("絵背景200", 300, true);

	Wait(200);

	OnSE("se戦闘_動作_空突進01",1000);
	OnSE("se戦闘_動作_鎧_着地01",1000);

	Move("@絵背景100", 200, @0, @-300, Axl2, false);

	SetVolume("SE10", 1000, 0, null);

	CreateColorSP("絵黒幕１", 18500, "BLACK");
	DrawTransition("絵黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	PrintGO("上背景", 19000);
	FrameShakeDelete();

	CreateColorSP("絵暗転", 18600, "#000000");

	Delete("上背景");

	OnBG(100,"bg003_荒れ野_02.jpg");
	FadeBG(0,true);

	CreateTextureSP("絵背景200", 1500, Center, Middle, "cg/bg/bg003_荒れ野_02.jpg");
	Shake("絵背景200", 500, 0, 10, 0, 0, 1000, null, false);


//	DrawDelete("上背景", 250, 100, "slide_02_01_0", true);


	CP_HighChange(300,0,AxlDxl,false);
	OnSE("se特殊_鎧_装着01",1000);
	DrawDelete("絵暗転", 250, 100, "slide_02_01_0", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0467a]
　山頂の二騎は動揺して為すところを知らなかった。
事がこう運ぶとは考えていなかったに違いない。
　踵を返し、逃げ去ろうとする――だが遅し！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆剣撃×２
	CreateColorSP("絵フラ", 1500, "#FFFFFF");

	CreateSE("SE01a","se戦闘_攻撃_刀振る02");
	CreateSE("SE01b","se戦闘_攻撃_刀振る02");

	MusicStart("SE01a",0,1000,0,1250,null,false);
	Wait(20);
	EffectZoomadd(10000, 200, 100, "cg/ef/ef010_汎用斜め軌道.jpg", false);
	Fade("絵フラ", 100, 0, null, true);

	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);

	Wait(100);

	Fade("絵フラ", 0, 1000, null, true);

	MusicStart("SE01b",0,1000,0,750,null,false);
	Wait(20);
	EffectZoomadd(10000, 200, 100, "cg/ef/ef011_汎用斜め軌道.jpg", false);
	FadeDelete("絵フラ", 300, true);

	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);
	OnSE("se戦闘_衝撃_鎧転倒02",1000);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0467b]
　一閃――二閃。
　村正の太刀が両者の背を打ち据え、弾き飛ばす。

　狭い山頂、斜面の際のこと。
　ひと溜りとてなく、二騎ははるか<RUBY text="ふもと">麓</RUBY>へと転げ落ちて
いった。

　あの程度で武者たる者が死ぬ筈もない。
　だが――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs0980b35">
「己ェェェェェェッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆上空
//◆月山ロックオン
//あきゅん「演出：仮入れ、超適当」

	CP_HighChange(300,300,AxlDxl,false);

	PrintGO("上背景", 18500);
	CreateColorSP("絵暗転", 18000, "#000000");

	OnBG(100,"bg001_空a_02.jpg");
	FadeBG(0,true);


//◆月山ロックオン
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	Request("絵背景100", Smoothing);
	CreateTextureEX("絵月山", 100, Center, middle, "cg/st/3d月山_騎突_戦闘.png");
	Request("絵月山", Smoothing);
	Zoom("絵月山", 0, 100, 100, null, true);

	CP_AziChange(0,-200,null,true);
	CP_RollBarMove("@絵背景100", 0, 0, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵月山",0,@0,@-200,null,true);


	Move("絵背景100", 2000, @0, @100, Dxl2, false);
	CP_AltChange(2000,10,Dxl2,false);
	CP_HighChange(2000,700,Dxl2,false);

	FrameShake();
	OnSE("se戦闘_動作_空突進01",1000);
	DrawDelete("上背景", 250, 100, "slide_02_01_1", true);
	DrawDelete("絵暗転", 250, 100, "slide_02_01_1", true);


	OnSE("se特殊_コックピット_起動音02",1000);
	CP_LockOnMove("@絵月山",800,@0,@100,Dxl2,false);

	Fade("絵月山", 500, 1000, null, true);
	CP_LockOnFade(100,"off",false);
	CP_EnemyFade(300,10,420,300);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0471]
　上空から襲来する最後の武者。
　その姿は既に露わ。霧の幻惑は失われている。

　二騎の支援が無くば<RUBY text="いにしえ">古</RUBY>の名物月山も只の武者。
　恐れるべき理由はもはや無い！

　合当理全開。
　騎翔。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆上昇

	OnSE("se戦闘_動作_空突進01",1000);

	CreateColorEXadd("絵フラ", 25000, "#FFFFFF");
	Fade("絵フラ", 200, 1000, null, true);

	PrintGO("上背景", 25000);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	CP_AllDelete();

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	FrameShakeDelete();
	Cockpit_AllFade0();
	CP_LockOnDelete();


	Delete("上背景");







//◆ＣＩ：村正騎航上段
//◆ＣＩ：月山騎航上段
	CreateWindow("絵ＷＬ", 150, Center, -288, 1024, 288, true);
	SetAlias("絵ＷＬ","絵ＷＬ");
	CreateTextureSP("絵ＷＬ/絵背景Ｌ100", 100, Center, InBottom, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureSP("絵ＷＬ/絵ＳＴＬ", 500, Center, -600, "cg/st/3d月山_騎突_戦闘.png");
	Move("絵ＷＬ/絵背景Ｌ100", 0, @212, @144, null, true);
	Zoom("絵ＷＬ/絵背景Ｌ100", 0, 2000, 2000, null, true);
	Move("絵ＷＬ/絵ＳＴＬ", 0, @-120, @230, null, true);
	Move("絵ＷＬ", 0, @0, @288, null, true);

	CreateWindow("絵ＷＲ", 150, Center, 576, 1024, 288, true);
	SetAlias("絵ＷＲ","絵ＷＲ");
	CreateTextureSP("絵ＷＲ/絵背景Ｒ100", 100, Center, InBottom, "cg/bg/bg002_空a_02.jpg");
	CreateTextureSP("絵ＷＲ/絵ＳＴＲ", 500, Center, -600, "cg/st/3d村正標準_騎突_戦闘.png");
	Move("絵ＷＲ/絵背景Ｒ100", 0, @-212, @144, null, true);
	Zoom("絵ＷＲ/絵背景Ｒ100", 0, 2000, 2000, null, true);
	Move("絵ＷＲ/絵ＳＴＲ", 0, @120, @230, null, true);
	Move("絵ＷＲ", 0, @0, @-288, null, true);
	SetBlur("絵ＷＬ/絵ＳＴＬ", true, 1, 300, 100, false);
	SetBlur("絵ＷＲ/絵ＳＴＲ", true, 1, 300, 100, false);


	Rotate("絵ＷＲ/絵背景Ｒ100", 0, @0, @-180, @0, null,true);

	FadeDelete("絵フラ", 2000, false);

	Move("絵ＷＬ/絵背景Ｌ100", 1000, @-380, @0, Dxl1, false);
	Move("絵ＷＲ/絵背景Ｒ100", 1000, @380, @0, Dxl1, false);
	Move("絵ＷＬ/絵ＳＴＬ", 1000, @-190, @0, Dxl2, false);
	Move("絵ＷＲ/絵ＳＴＲ", 1000, @190, @0, Dxl2, false);


	FadeDelete("絵フラ", 600, false);
	DrawDelete("絵フラ", 600, 1000, "circle_01_00_0", true);

	Wait(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs0990a01">
《――村正はその程度か。
　そう問うたわね？　月山の仕手》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs1000b35">
《……ッッ！》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1010a01">
《<RUBY text="・・・・">この程度</RUBY>よ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("@SE*", 1000, 0, null);


	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟04");

//◆剣撃交差
//◆ずぎょがーん。
	CreateTextureEX("絵背景200", 4500, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	CreateColorEXadd("絵色100", 15000, "WHITE");

	OnSE("se戦闘_動作_空突進08",1000);
	Zoom("絵ＷＬ/絵ＳＴＬ", 500, 2000, 2000, Axl2, false);
	Move("絵ＷＬ/絵ＳＴＬ", 500, @600, @0, Axl2, false);
	Zoom("絵ＷＲ/絵ＳＴＲ", 500, 2000, 2000, Axl2, false);
	Move("絵ＷＲ/絵ＳＴＲ", 500, @-600, @0, Axl2, false);

	Wait(300);

	Fade("絵背景200", 200, 1000, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 2000, 1000, "cg/ef/ef040_汎用衝突.jpg", true);

	Fade("絵色100", 100, 1000, null, true);

	Delete("絵Ｗ*");
	Delete("絵背景200");



	CreateTextureSP("絵背景100", 100, Center, 0, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Move("絵背景100", 0, @0, -200, null, true);
	CreateTextureEX("絵月山", 110, 10, -385, "cg/st/3d月山_騎航_戦闘d.png");
	CreateTextureEXadd("絵月山滅", 110, 0, -400, "cg/st/3d月山_騎航_戦闘d.png");
	Request("絵月山", Smoothing);
	Zoom("絵月山*", 0, 300, 300, null, true);
	Rotate("絵月山*", 0, @0, @0, 45, null,true);
	SetBlur("絵月山", true, 1, 300, 300, false);
//	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	CreateTextureEX("絵村正", 6110, -500, -300, "cg/st/3d村正標準_騎突_戦闘.png");
	CreateTextureEXmul("絵村正影", 6210, -500, -300, "cg/st/3d村正標準_騎突_戦闘_影.png");
//	CreateStencil("絵村正影",6210,-500,-300,128,"cg/st/3d村正標準_騎突_戦闘.png",false);
//	CreateColorEX("絵村正影/色", 6210, "BLACK");
	Request("絵村正", Smoothing);
	Zoom("絵村正*", 0, 1000, 1000, null, true);
	Rotate("絵村正*", 0, @0, @0, 45, null,true);
//	SetBlur("絵村正", true, 1, 300, 300, false);

	FadeDelete("絵色100", 2000, false);

	Move("絵背景100", 20000, @0, -500, null, false);
	Zoom("絵月山*", 20000, 220, 220, null, false);
	Move("絵月山*", 20000, @50, @100, null, false);
	Zoom("絵村正*", 20000, 1200, 1200, null, false);
	Move("絵村正*", 20000, @-50, @-100, null, false);
	Fade("絵月山", 1000, 1000, null, false);
	Fade("絵村正", 1000, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/021vs1020b35">
《無念……かな……。
　我が風魔……天運、尽きておった、か！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆散華。ぼーん。

	CreateSE("SE01","se戦闘_破壊_大爆発01");
	CreateColorEXadd("絵月山滅爆破", 4500, "WHITE");
	DrawTransition("絵月山滅爆破", 0, 300, 300, 300, null, "cg/data/circle_14_00_0.png", true);

	CreateTextureEX("絵背景200", 4500, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Zoom("絵背景200", 0, 1400, 1400, null, true);
	Move("絵背景200", 0, 120, -50, null, true);
	CreateColorEXadd("絵色100", 20000, "WHITE");

	OnSE("se戦闘_攻撃_剣戟弾く03",1000);
	Fade("絵月山滅", 1000, 1000, null, false);
	Fade("絵月山滅爆破", 1000, 600, null, false);
	Wait(1000);

	SetBlur("絵村正", true, 1, 50, 50, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵村正影", 200, 700, null, false);
	Shake("絵村正*", 6000, 0, 10, 10, 0, 1000, null, false);
	EffectZoomadd(5000, 2000, 100, "cg/ef/ef034_精神汚染.jpg", false);
	Fade("絵背景200", 50, 1000, null, false);
	Zoom("絵背景200", 3000, 2000, 2000, Dxl2, false);

	Wait(2500);
	Rotate("絵村正*", 300, @0, @0, @-45, Axl3,false);
	Zoom("絵村正*", 300, 5000, 5000, Axl3, false);
	Move("絵村正*", 300, @-1500, @-1500, Axl3, false);
	Fade("絵色100", 300, 1000, null, true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Delete("絵月山*");
	Delete("絵村正*");

	Rotate("絵背景200", 2500, @0, @0, 3600, Dxl3,false);
	Zoom("絵背景200", 2500, 20000, 20000, Axl3, false);
	FadeDelete("絵色100", 4000, false);
	FadeDelete("絵背景200", 2500, true);

	Wait(2000);
	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1030a00">
「…………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1040a01">
《鍔よ。御堂》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev925_野太刀断片_b.jpg");
	Fade("絵ＥＶ100", 1000, 1000, null, true);
	SoundPlay("@mbgm26",0,1000,true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　<RUBY text="・・・・・">野太刀の鍔</RUBY>。
　月山が散華すると共に、それは還ってきた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0525]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1050a01">
《これで二つ》

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1060a00">
「ああ。
　……村正」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＶ100", 1000, true);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1070a01">
《なに？　御堂》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1080a00">
「今回は助けられた」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1090a01">
《…………》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1100a00">
「俺の非才をお前が補った。
　お前の助言が無ければ勝てなかったろう」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1110a00">
「だが。
　今後は無用だ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1120a01">
《…………。
　いいえ》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1130a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1140a01">
《無用なんかじゃない。
　御堂――》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1150a01">
《貴方こそ、何も考えなければいい》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1160a00">
「…………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1170a01">
《…………》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1180a00">
「……まだ片付いてはいない。
　坑道へ急ぐ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs1190a01">
《……ええ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1000);


//◆坑道前
//あきゅん「演出：仮入れ、超適当」
	PrintGO("上背景", 15000);

	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1200a02">
「――――」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1210a02">
「じ……
　爺さんッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条を庇って斬られた弥源太
	CreateTextureEX("絵ＥＶ100", 5000, Center, Middle, "cg/ev/ev111_弥源太を抱える一条_a.jpg");
	Fade("絵ＥＶ100", 1000, 1000, null, true);

	SoundPlay("@mbgm32",0,1000,true);

	SetFwR("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1220a02">
「な、な、何やってんだよあんたッ！
　刀の前に立ったりしたら死ぬに決まってん
だろーがっ！」


{	FwR("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1230b55">
「……ふっ、ふふ。
　おお、そいつは知らなんだ……これはうて
としたことが。
　とんだ間抜けであったわい……」


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1240a02">
「しゃ、喋るな。
　いま手当てする……こんなもん、出血さえ
止めればどうってこと……！」


{	FwR("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1250b55">
「いや……嬢。
　うてからも一つ教えようか。これは多分な
……致命傷というやつではないかなァ」


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1260a02">
「んなわけねぇだろ！
　あんた死んだことあんのか!?　無いだろう
が！　死んだこともないくせに自分が死ぬか
どうかなんてわかるわけねぇだろ!?」


{	FwR("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1270b55">
「おぅ……なるほど、なるほど。
　そりゃ、嬢の言う通りよ……言う通り。嬢
は正しいことしか言わぬなぁ。一媛を、思い
出すわ……ふ、ふ、ふ」


{	FwR("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1280b55">
「けほっ……！」


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1290a02">
「爺さん！」


{	FwR("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1300b55">
「嬢……逃げなされ。
　うてには構わず……」


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1310a02">
「馬鹿言うなっ！」


{	FwR("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1320b55">
「いやいや……嬢の言う通り、うては死なぬ
でな……
　大丈夫……案ずるには及ばぬよ」


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1330a02">
「人の揚げ足取ってんなよそんなザマで！
　ああくそ、爺婆ってのはこんなんばっかり
か……！」


{	FwR("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1340b55">
「ふふ……そりゃあ、そうよ。
　若い者をからかうのだけが、老人の楽しみ
というもの……ふ、ふ……」


{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1350a02">
「だから口きくなっての！
　いま担ぐから、ちょっと立って……って、
無理か。くそ、なんか人を運べるもの！」


{	FwR("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1360b55">
「嬢よ……
　こいつをやろう……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分
	CreateTextureEX("絵ＥＶ110", 5000, Center, Middle, "cg/ev/ev111_弥源太を抱える一条_b.jpg");
	Fade("絵ＥＶ110", 1000, 1000, null, true);
	Delete("絵ＥＶ100");

	SetFwR("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1370a02">
「……あ？
　何だよこの棒切れ？」


{	FwR("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1380b55">
「なに……お守りのようなものよ。
　それを持って……さ。ゆかれい」


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1390a02">
「ゆかれいって、行けるか！
　爺さん置いて！」


{	FwR("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1400b55">
「いや、いや……無用、よ。
　どうやら、残念だが……今回は、うての方
が正しかったらしいわ……嬢」


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1410a02">
「……な、
　何言ってんだよ、爺さん！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵EV100", 5100, 0, Middle, "cg/ev/resize/ev111_弥源太を抱える一条_bl.jpg");
	CreateTextureEX("絵EV200", 5000, 0, Middle, "cg/ev/resize/ev111_弥源太を抱える一条_cl.jpg");

	SetVertex("絵EV200", 0, middle);
	Zoom("絵EV200", 0, 750, 750, null, true);
	Request("絵EV200", Smoothing);

	SetVertex("絵EV100", 0, middle);
	Zoom("絵EV100", 0, 750, 750, null, true);
	Request("絵EV100", Smoothing);
	Move("絵EV100", 0, @-200, @0, null, true);

	Move("絵EV100", 4000, @+200, @0, Dxl1, false);
	Fade("絵EV100", 1000, 1000, null, true);
	Delete("絵ＥＶ110");

	SetFwC("cg/fw/fw弥源太_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0551]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1420b55">
「色々あった……
　この五十年、色々あったが……」

{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1430b55">
「最期が……一媛の形見に看取られて、とは。
　望外の<RUBY text="さち">幸</RUBY>……うては果報者であった」

{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1440b55">
「……果報者で……あったよ……
　ありがとうな……嬢…………」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1450a02">
「じ……爺さんッ！」

{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/021vs1460b55">
「いま、ゆく……一媛…………
　右京……なれも、さっさと……参れ………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵EV200", 0, 1000, null, true);
	Fade("絵EV100", 1000, 0, null, true);
	Delete("絵EV100");

	Wait(1000);

//◆弥源太、瞑目
	CreateTextureEX("絵ＥＶ120", 5000, Center, Middle, "cg/ev/ev111_弥源太を抱える一条_c.jpg");
	Fade("絵ＥＶ120", 1000, 1000, null, true);
	Delete("絵EV200");

	SetFwR("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1470a02">
「爺さん……？」


//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1480a02">
「爺さんっ！」


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1490a02">
「お、おい……
　さんざ勝手なことだけ言って……」


//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1500a02">
「勝手に死ぬなんてありかっ！
　おい！　目ぇ開けろよ！」


{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1510a02">
「おい……」


{	FwR("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1520a02">
「…………」


{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1530a02">
「……………………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆ざっ。右京が近付いた
	CreateSE("SE01","se人体_足音_鎧歩く02_L");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("絵ＥＶ120", 500, 0, null, true);
	Delete("絵ＥＶ120");

	SetVolume("SE*", 100, 0, null);

	StC(1000, @0,@0,"cg/st/3d八八式指揮官_立ち_抜刀.png");
	FadeStC(500,true);

	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs1540b45">
「……一媛」


{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1550a02">
「…………六波羅！」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs1560b45">
「お前を……貰う。
　今こそ……」


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1570a02">
「ざけんな、この――」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――


//◆剣閃
//◆ずがーん。地響き。
	CreateTextureEX("絵ＥＶ130", 5000, Center, Middle, "cg/ev/ev111_弥源太を抱える一条_d.jpg");

	CreateSE("SE01","se戦闘_攻撃_刀振る01");
	MusicStart("SE01",0,1000,0,500,null,false);

	CreateColorSP("絵フラ", 6500, "#FFFFFF");
	Wait(100);


	CreateSE("SE01b","se戦闘_衝撃_衝突01");
	MusicStart("SE01b",0,1000,0,1500,null,false);


	Fade("絵ＥＶ130", 0, 1000, null, true);
	FadeDelete("絵フラ", 100, true);
	CreatePlainEX("絵地震用", 6000);
	FadeFR2("絵地震用",0,1000,300,@0,@0,20,AxlDxl, true);
	Delete("絵地震用");
	DeleteStA(0,true);

	SetFwR("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1580a02">
「――ッ!?」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs1590b45">
「お前が欲しかった。
　どうしても欲しかったのだ」

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs1600b45">
「どうしても……
　どうあっても！」

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs1610b45">
「かつては迷った。
　だが、今は迷わぬ」

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs1620b45">
「一媛……
　この手で、その命を貰い受ける！」


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1630a02">
「……く……っ！」

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1640a02">
（……死ぬのか）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1650a02">
（死ぬのかよ、あたしは）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1660a02">
（ここで……こんな野郎に）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1670a02">
（婆さんの友達を殺した野郎に。
　あたしの目の前で殺した野郎に）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1680a02">
（あたしも殺されるっていうのか）


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs1690b45">
「お前は俺のものだ。
　殺してしまえばもう誰も、お前に触れられ
ない。お前は俺のものだ！」


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1700a02">
（……なんでだよ）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1710a02">
（なんでこの爺さんが死ななきゃならない。
　なんでこの野郎は勝手絶頂にしてられる）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1720a02">
（なんであたしは爺さんを守れない。
　なんであたしはこの野郎を倒せない）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1730a02">
（あたしは一条……
　真っ直ぐに、一条の正道を生きるように。
　そう願いを込めて、婆さんと父様がつけて
くれた名前）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1740a02">
（あたしは一条。綾弥の一条。
　なのに……あたしのゆくべき正道が、この
世にはないのか？）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1750a02">
（<RUBY text="・・・・・・・・・・・">この世に正義は無いのか</RUBY>!?）

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//一度テキストボックス消して

	CreateColorEX("絵色100", 16500, "BLACK");
	Fade("絵色100", 100, 1000, null, true);

	WaitKey(500);

	SetBacklog("　　　　　　　　《…………》", "voice/ma01/0210580b57", その他男性);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0589]
　
　　　　　　　　《…………》

</PRE>
	SetTextEXC();
	Request("@text0589", NoLog);
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条の手の中で棒（正宗）が朧に光る
	CreateTextureEX("絵ＥＶ140", 5000, Center, Middle, "cg/ev/ev111_弥源太を抱える一条_e.jpg");

	FadeDelete("絵色100", 1000, true);

//	Fade("絵ＥＶ140", 300, 1000, null, true);
//	Fade("絵ＥＶ140", 200, 100, null, true);
	Fade("絵ＥＶ140", 1000, 1000, null, true);
	Delete("絵ＥＶ130");

	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs1760b45">
「死ねい……一媛!!」


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1770a02">
「畜生――――ッッ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆一閃
//◆ブラックアウト
//あきゅん「演出：仮入れ、超適当」

	ClearFadeAll(0, true);
	SetVolume("@mbgm*", 10, 0, null);

	CreateColorSP("絵黒地", 100, "#000000");

	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	CreateSE("SE02","se戦闘_動作_空突進03");
	MusicStart("SE01",0,1000,0,1500,null,false);

	SL_down(@0, @0,3000);
	SL_downfade2(10);

	CreateColorSP("絵フラ", 500, "#FFFFFF");
	Wait(100);

	PrintGO("上背景", 15000);

	CreateColorSP("絵暗転", 5000, "#000000");

	FadeDelete("上背景", 300, true);

	MusicStart("SE02",0,1000,0,1500,null,false);

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1780a02">
「…………」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1790a02">
「……え？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ＥＶ：一条を抱えて飛ぶ村正
//◆ここでＢＧＭ変えるか。

//あきゅん「演出：仮入れ、超適当」
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev112_一条をお姫様だっこする村正.jpg");
	CreateTextureSP("絵背景200", 100, Center, Middle, "cg/ev/ev112_一条をお姫様だっこする村正.jpg");
	SetShade("絵背景200", HEAVY);
	Zoom("絵背景200", 0, 1500, 1500, null, true);
	Zoom("絵背景200", 1000, 1000, 1000, Dxl2, false);
	FadeDelete("絵暗転", 1000, true);

	Fade("絵背景200", 1000, 800, null, true);

	Fade("絵背景200", 500, 1000, null, true);

	FadeDelete("絵背景200", 1000, true);

	SoundPlay("@mbgm18",0,1000,true);

	Wait(1000);

	SetFwL("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1800a02">
「…………」


{	FwL("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1810a02">
「……だ……誰？」


{	FwL("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1820a00">
「……」


{	FwL("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1830a02">
（赤い……鎧。
　深い、深い赤……）

//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1840a02">
（飛んでる……よな。あたし。
　じゃあ、これ、劔冑……か……）

{	FwL("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1850a02">
（……六波羅？
　それがなんで、あたしを……）

{	FwL("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1860a00">
「降ります」


{	FwL("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1870a02">
「え？」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆降下っぽく動く
	CreatePlainEX("絵地震用", 500);

	OnSE("se戦闘_動作_空突進02",1000);

	FadeFR2("絵地震用",0,1000,300,@0,@0,20,AxlDxl, true);
	Delete("絵地震用");

	SetFwL("cg/fw/fw一条_驚く.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1880a02">
「きゃあっ！」


{	FwL("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1890a00">
「どうか暴れずに。
　この高さでも落下すると危険です」


{	FwL("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1900a02">
「は、はい……」


{	FwL("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1910a02">
「……」


{	FwL("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1920a02">
「……え？　ち、ちょっと待った！
　その声……！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆降下。着地
//◆山間
	OnSE("se戦闘_動作_鎧_踏み込み01",1000);

//あきゅん「演出：仮入れ、超適当」
	PrintGO("上背景", 15000);

	OnBG(100,"bg022_山林a_02.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);


	Wait(1000);

	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1930a02">
「な、なあ。
　あんた、まさか、あの警官――」


{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1940a00">
「この道を麓まで駆け下りてください」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1950a02">
「え？」


{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1960a00">
「お急ぎを。
　これより六波羅代官長坂右京の討伐を行い
ます。この付近におられては危険です」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1970a02">
「と、討伐って……」


{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs1980a00">
「行って下さい。綾弥一条さん。
　その御名のように、真っ直ぐ」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs1990a02">
「！」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/021vs2000a02">
「わ、わかった。
　行くよ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条、走る
	CreateSE("SE01","se人体_足音_走る01_L");
	MusicStart("SE01",0,1000,0,1200,null,true);

	DeleteStA(300,true);

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);



//◆坑道前
//◆長坂右京

//あきゅん「演出：仮入れ、超適当」

	PrintGO("上背景", 15000);
	CreateColorSP("絵暗転", 5000, "#000000");

	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	WaitPlay("SE*", null);
	Wait(1000);

	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	StC(1000, @0, @0,"cg/st/3d八八式指揮官_立ち_抜刀.png");
	FadeStC(300,true);


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs2010b45">
「貴様……若造ォォォ！
　どこまでも俺の邪魔をするか！」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2020a00">
「一身上の都合により」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　周囲を見渡す。
　傷ついた劔冑に身を包む、長坂右京――そしてその
後方に、横たわる小さな姿。

　弥源太老人。
　彼が沈む血溜まりの広さは明らかに、一個の生命が
喪失したことを物語っていた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2030a00">
「……だが。
　今の己は、ただの怒りに任せて刃を振るい
たき衝動に駆られている」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs2040b45">
「貴様が……貴様などに……
　切望せしこの瞬間を、奪わせるかぁッ！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



	PrintGO("上背景", 5000);
	CreateColorSP("絵黒地", 10, "#000000");
	Delete("上背景");

	SetVolume("@mbgm*", 100, 0, null);

//◆剣撃交差。がきんがきーん。
//◆互いに離れ

	CreateSE("SE01","se戦闘_攻撃_刀振る01");
	MusicStart("SE01",0,1000,0,750,null,false);

	Wait(200);

	CreateSE("SE02","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE02",0,1000,0,1250,null,false);

	CreateTextureSP("絵Ｒ斬", 100, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	DrawTransition("絵Ｒ斬", 200, 0, 1000, 100, null, "cg/data/slide_01_00_1.png", false);

	CreateTextureSPadd("絵Ｌ斬", 100, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	DrawTransition("絵Ｌ斬", 200, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", false);

	Wait(150);

	SetVolume("SE*", 300, 0, null);

	OnSE("se戦闘_攻撃_刀衝突01",1000);

	PrintGO("上背景", 5000);
	CreateColorSP("絵フラ", 5000, "#FFFFFF");

	OnBG(100,"bg020_山脈坑道_02.jpg");
	FadeBG(0,true);

	Delete("上背景");

	FadeDelete("絵フラ", 1000, true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs2050a01">
《御堂！　急いで！
　あの劔冑、<RUBY text="・・・・・">孵化が近い</RUBY>！》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2060a00">
「何ッ――!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm12",0,1000,true);

//◆剣撃交差。がきんがきーん。
//◆互いに離れ

	CreateSE("SE10","se特殊_鎧_装着01");
	CreateSE("SE10b","se戦闘_攻撃_鎧_剣戟03");

	MusicStart("SE10",0,1000,0,750,null,false);
	MusicStart("SE10b",0,1000,0,750,null,false);

	StC(1000, @0, @0,"cg/st/3d八八式指揮官_立ち_抜刀.png");
	Move("@StC*", 300, @60, @0, Dxl2, false);
	FadeStC(300,true);

	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs2070b45">
「……ちィッ！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE11","se人体_足音_鎧歩く03");
	MusicStart("SE11",0,1000,0,1000,null,false);

//◆右京消し
	Move("@StC*", 300, @-60, @0, Axl2, true);

	SetVolume("SE1*", 100, 0, null);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("絵ガッタリ", 5000, "#FFFFFF");
	Wait(100);

	DeleteStA(0,true);

	Fade("絵ガッタリ", 600, 0, null, false);
	DrawDelete("絵ガッタリ", 400, 100, "slide_05_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0681]
　代官が飛び退る。
　そのまま背を向け――坑道の中へ！

　広い場所では不利と踏んだのか。
　だがその企図、付き合っている暇はない！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2080a00">
「村正！　<RUBY text="・・・・・">山ごと潰す</RUBY>！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs2090a01">
《――諒解！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2100a00">
《<RUBY text="エンチャント・エンディング">磁装・蒐窮</RUBY>》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆必殺技演出。アニメ？
//◆村正の装甲と太刀が紫電を帯びる
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev905_村正電磁撃刀_a.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetBlur("絵背景100", true, 3, 300, 70, false);
	CreateSE("SE01","se特殊_電撃_帯電01");

	RailgunFlash();

	MusicStart("SE01",300,500,0,1000,null,true);
	Zoom("絵背景100", 1500, 1000, 1000, Dxl3, false);
	Fade("絵背景100", 500, 1000, null, true);

	Wait(1000);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2110a00">
《吉野御流合戦礼法、〝<RUBY text="ナダレ">雪颪</RUBY>〟が崩し……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆太刀を背につくまで振りかぶる村正
//◆放電が激しく
	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/ev/ev905_村正電磁撃刀_b.jpg");
	CreateSE("SE05","se戦闘_攻撃_鎧_剣戟05_L");
	MusicStart("SE05",300,500,0,1000,null,true);

	EffectZoomadd(10000, 1000, 100, "cg/ev/ev905_村正電磁撃刀_b.jpg", false);
	Fade("絵背景200", 500, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2120a00">
《<RUBY text="レールガン">電磁撃刀</RUBY>――――〝<RUBY text="オドシ">威</RUBY>〟》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆打ち下ろす
//◆ズンガラドカーン。まあ派手に。
	CreateColorEX("絵色フラッシュ", 18500, "WHITE");

	Delete("絵色100");

//	CreateTextureSP("絵EV100", 1999, Center, Middle, "cg/ev/ev905_村正電磁撃刀_c.jpg");
	CreateTextureEXadd("絵EV200", 2000, Center, Middle, "cg/ev/ev905_村正電磁撃刀_c.jpg");
	CreateTextureEX("絵背景300", 100, Center, Middle, "cg/ev/ev905_村正電磁撃刀_c.jpg");
	CreateColorEXadd("絵色100", 16000, "WHITE");

	EffectZoomDXadd(10000, 1000, 1000, "#FFFFFF", "cg/ev/ev905_村正電磁撃刀_c.jpg", false);
	Fade("絵背景300", 0, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景200");

	Shake_Loop("@絵EV200","shake01");

	CreateSE("SE02","se特殊_電撃_放電02");
	CreateSE("SE03","se戦闘_破壊_鎧01");
//	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);



	MusicStart("SE02",0,1000,0,1000,null,false);
	Wait(1000);

	SetVolume("*", 3000, 0, null);

//	CreateMovie("ムービー", 16000, 0, 0, false, false, "dx/mv威.ngs");
//	CreateSound("ムービー音", SE, "sound/se/se特殊_陰義_レールガン威");
//	SetAlias("ムービー音","ムービー音");


	RailgunFlash();
	FadeF4("絵EV200", 1000, 1000, 3000, 0, 0, Axl3, false);
	Wait(2500);

	Zoom("絵背景300", 200, 2000, 2000, null, false);
	Fade("絵色フラッシュ", 200, 1000, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色フラッシュ", 100, 0, null, false);
	MovieSESet(16000,"mv威","se特殊_陰義_レールガン威");
	MovieSEStart2(300,1000);

	RG_FlashDelete();
	Delete("絵背景300");
	Delete("絵EV100");
	Delete("絵EV200");

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	SetVertex("絵背景100", 512, 576);

	Zoom("絵背景100", 0, 3000, 1000, null, true);
	Request("絵背景100", Smoothing);
	SetBlur("絵背景100", true, 2, 300, 100, false);
	Fade("絵背景100", 0, 1000, null, true);

//	Wait(1000);

	MusicStart("SE03",0,1000,0,1000,null,false);
	Shake("絵背景100", 3000, 10, 0, 10, 0, 1000, null, false);
	Zoom("絵背景100", 2000, 1000, 15000, Dxl3, false);
	Move("絵背景100", 2000, @0, @7500, Axl2, false);
	FadeDelete("絵色100", 300, true);

	Wait(800);
	Fade("絵色フラッシュ", 500, 1000, null, true);

	Delete("絵背景100");
	Wait(500);

	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/021vs2130b45">
「お……おおおおおおおおおおおッッ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドゴーン。
//◆山遠景。山肌が崩れて、形がちょっと変わる
//◆……あんま派手に崩れるとまずいよな。色々。

//あきゅん「演出：仮入れ、超適当」

	PrintGO("上背景", 19000);

	SetVolume("@mbgm*", 1000, 0, null);

	CreateSE("SE爆発","se戦闘_破壊_鎧02");
	MusicStart("SE爆発",0,1000,0,1000,null,false);

	Wait(3500);

	CreateTextureSP("絵背景100", 200, -100, -150, "cg/bg/resize/bg025_坑道山脈と森b_02_l.jpg");
	Request("絵背景100", Smoothing);

	OnBG(100,"bg025_坑道山脈と森b_02.jpg");
	FadeBG(0,true);

	Move("絵背景100", 18000, -512, -288, null, false);
	Zoom("絵背景100", 18000, 500, 500, null, false);

	FadeDelete("上背景", 3000, true);

	Wait(2000);

	FadeDelete("絵背景100", 2000, true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2140a00">
「敵騎――殲滅」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs2150a01">
《来た――》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュ

	CreateSE("SE01","se戦闘_攻撃_剣戟弾く02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵フラ", 5000, "#FFFFFF");

	CreateTextureEX("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev925_野太刀断片_c.jpg");
	Fade("絵ＥＶ100", 0, 1000, null, true);

	Delete("絵背景100");

	FadeDelete("絵フラ", 1000, true);

	Wait(500);

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2160a00">
「……刀身か。
　だが、全部ではないな」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs2170a01">
《ええ。
　三分の一くらいね》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2180a00">
「……この村で討つべき敵は全て討った。
　戦闘を……終了する」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs2190a01">
《諒解。
　じゃあ……次よ》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/021vs2200a00">
「…………」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/021vs2210a01">
《戦闘の次――
　殺戮を始めましょう。御堂》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆黒
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma02_022.nss"


.//プロセス用=========================================================

..//白銀の光
function AuraFlash()
{
	begin:
	while(1)
	{
	Fade("@美輪", 200, 200, null, false);
	DrawTransition("@美輪", 200, 0, 999, 100, Dxl2, "cg/data/circle_02_00_0.png", true);

	Fade("@美輪", $残時間組込値, 0, null, true);
	}

}
