//<continuation number="1080">

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

scene ma02_002vs.nss_MAIN
{

	$TITLE_NOW=" ――――　第二編 双老騎　―――― ";

//嶋：コックピット用Ｓｅｔ
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
	#bg010_拘置所外観_01=true;
	#bg004_鄙びた村a_01=true;
	#bg020_山脈坑道_01=true;
	#bg005_山中_01=true;
	#bg002_空a_01=true;
	#bg202_旋回演出背景山_01=true;

	#ev504_村正突進=true;
	#ev958_長坂馬乗り=true;
	#ev903_村正磁気バリアー展開=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_003.nss";

	CP_AllDelete();

}

scene ma02_002vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"ma02_001.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆第二編「双老騎」

	PrintBG("上背景", 30000);
	CreateColorSP("絵黒幕１", 1500, "Black");
	Delete("上背景");

	CreateTextureEX("絵テロ100", 2000, Center, Middle, "cg/sys/Telop/lg_第二編.png");
	Fade("絵テロ100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("絵テロ100", 2000, true);

	WaitKey(2000);

	PrintGO("上背景", 25000);

	OnBG(10,"bg010_拘置所外観_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm16",0,1000,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　事態の推移はいささかならず急激だった。
　最初からそうではなかったにしても。

　拘置所に現れた村正から銀星号の<RUBY text="けはい">香気</RUBY>をつかんだ旨
報告を受け、鎌倉警察署長に連絡し、出所の手続きを
してもらい囚人湊斗景明から警察属員湊斗景明になり
おおせて獄室を出る。

　そして村正の先導の下、鎌倉近郊の寒村へ。
　ここまでは既に慣れた手順、特記すべき変事も無し。

　しかし村に到着してから三〇分間の展開は、過去に
経てきた事件であれば数日分にも匹敵した。
　この村の時計は他所のそれよりも針が高速回転する
仕様になっているに違いない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村
	OnBG(10,"bg004_鄙びた村a_01.jpg");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　鄙びた小村なりにざわめいている様子が気に掛かり、
村人を捕まえてＧＨＱ将校の巡察という話を聞き。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆坑道前
	OnBG(10,"bg020_山脈坑道_01.jpg");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　将校の後を追う格好で村外れの開発中の鉱山へ足を
運んでみれば、丁度六波羅の兵士が鉱夫を酷使の挙句
に力尽きて倒れた者へ非情の刃を振り下ろさんとする
場面に遭遇。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	OnSE("se戦闘_攻撃_ライフル撃つ01",1000);
	Fade("フラッシュ白",100,1000,null,true);

//◆香奈枝発砲
	StR(1000, @0, @0,"cg/st/st香奈枝_射撃_制服.png");
	FadeStR(0,true);

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　止める暇もあればこそ、人騒を圧して鳴り響く銃声、
兵士は己の血沼に沈み、進駐軍の軍服を纏った大和人
の女性が硝煙を払う。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝と長坂
	CreatePlainSP("絵板写", 5000);
	StL(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_制服a2.png");
	FadeStA(0,true);
	FadeDelete("絵板写", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　六波羅側の首領格と思しき軍官は女性と激しいやり
取りのすえ逆上、劔冑を装甲して刀牙を剥き出し。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//◆竜騎兵・長坂
	StL(1000, @0, @0,"cg/st/3d八八式指揮官_立ち_抜刀.png");
	FadeStL(300,true);

	SetVolume("@mbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　刹那、村正の<RUBY text="きんちょうじょう">金打声</RUBY>が耳孔を刺して脳を揺さぶる。
　――《御堂、銀星号の気配！　あれは〝卵〟を植え
られた寄生体よ！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正
	PrintGO("上背景", 15000);
//	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg001_空a_01.jpg");

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg005_山中_01.jpg");

	OnSE("se特殊_鎧_装着01",1000);
	CreateTextureSP("絵ＳＴＣ100", 1000, Center, InBottom, "cg/st/3d村正標準_立ち_通常.png");
	CreatePlainSP("絵板写", 10000);
	Delete("絵ＳＴＣ100");
	CreateTextureSP("絵ＳＴＣ200", 1200, Center, InBottom, "cg/st/3d村正標準_立ち_抜刀.png");

	CreateTextureEX("絵村正１", 2000, 0, -188, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureEX("絵村正２", 2100, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	CreateTextureEX("絵村正３", 2000, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	SetBlur("絵村正１", true, 3, 500, 50, false);

..//嶋：BGM
//あきゅん「演出：開始位置調整」
	//SoundPlay("@mbgm11",0,1000,true);
	FadeDelete("上背景", 300, true);

	OnSE("se戦闘_動作_刀構え02",1000);
	FadeDelete("絵板写", 300, true);

	Wait(300);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("絵村正１", 400, 1000, null, false);

	Move("絵村正１", 500, @-1024, @0, Axl1, false);
	Wait(350);
	Shake("絵村正２", 100000, 0, 1, 0, 0, 500, null, false);
	Fade("絵村正３", 500, 1000, null, false);
	Fade("絵村正２", 500, 1000, null, true);

	SoundPlay("@mbgm08",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　かくして。
　俺は状況をろくにつかめないまま、村正を装甲して
駆け出さざるを得なかった。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵背景", 20000, "Black");
	DrawTransition("絵背景", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	PrintGO("上背景", 20000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");

	OnSE("se戦闘_動作_刀構え01",1000);
	CreateTextureSP("立ち絵", 500, Center, InBottom, "cg/st/3d八八式指揮官_立ち_戦闘.png");


	DrawDelete("上背景", 500, 1000, "slide_01_02_1", true);

	Wait(500);

//◆フライトモニター展開
//◆ＣＩ剣撃
	CreateTextureEX("絵ef100", 1000, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");

	Request("絵ef100", Smoothing);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	OnSE("se戦闘_攻撃_野太刀振る01",1000);
	Fade("フラッシュ白",100,1000,null,true);

	Fade("絵ef100", 200, 1000, null, true);

	Fade("フラッシュ白",300,0,null,true);

	Delete("フラッシュ白");

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　風を巻いて馳せる迅雷の太刀筋――
　長髪なびく軍装の麗人が切先に掛かり、傍らの老女
と共々大胆な外科手術の被験体となるまで余す時間は
あと一秒の半の半々、有るか無きかというところ。

　つまりは充分。
　鋭利な錐が薄紙一枚貫く時を費やして、両者の間隙
に押し入り殺意の閃光を打ち弾く。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＣＩ剣撃。ガシーン。

	Zoom("絵ef100", 500, 3000, 3000, Dxl1, false);

	Wait(250);

	OnSE("se戦闘_攻撃_刀振る02",1000);
	CreateMovie("ムービー１", 1200, Center, Middle, false, false, "dx/mv剣戟_下から上.ngs");

	WaitAction("ムービー１", null);

	CreateColorEXadd("フラッシュ白", 20000, "WHITE");

	OnSE("se戦闘_攻撃_刀衝突01",1000);
	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵ef100");
	Delete("ムービー１");

//嶋：村正ステータス装甲720
	MyLife_Count(0,720);
	CP_IHPChange(0,10,null,false);
	CP_PowerChange(0,400,null,false);

	CP_SpeedChange2(0,0,null,false);
	MyTr_Count(0,254);

	CP_HighChange2(0,3,null,false);
	CP_AziChange(0,112,null,false);
	CP_AltChange(0,0,null,false);

	CP_RollBarMove2(0,0,null,true);

	Cockpit_AllFade2();

	Request("絵背景100", Smoothing);
	Request("立ち絵", Smoothing);
	SetBlur("絵背景100", true, 3, 500, 50, false);
	SetBlur("立ち絵", true, 3, 500, 50, false);

	Shake_Delete(200,300,false,"cg/bg/bg020_山脈坑道_01.jpg");
	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　……驚愕の声はない。

　死骸になり損ねた二者の生身の感覚は武者の挙動を
捉えまいし――刃先を逸らされ存分に土を裂いている
竜騎兵はいま報復を成就した夢想の只中であろう。
　現実との齟齬に気付くのは近未来。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_足音_鎧歩く04",1000);
	Move("絵背景100", 300, @0, @+50, null, false);
	Move("立ち絵", 300, @0, @+100, null, false);
	Zoom("絵背景100", 300, 1300, 1300, null, false);
	Zoom("立ち絵", 300, 1500, 1500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
　その時間をも貪欲に奪うと決断し、左足を踏み込む。
　膨大な重量が一点に集約され、足の裏で山腹の固い
地面が沈んだ。

　鉄杭の如く足場を食い締める下肢、これを軸にして
旋回、六波羅武者の胸甲を右肘で突く。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_跳躍02",1000);
	Zoom("絵背景100", 300, 2500, 2500, null, false);
	Zoom("立ち絵", 300, 2500, 2500, null, false);

	WaitKey(200);


//◆バーン。
	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);
	CreateColorSPadd("絵フラ白", 10000, "#FFFFFF");

	Delete("立ち絵");

	Zoom("絵背景100", 0, 2500, 2500, null, true);
	Move("絵背景100", 0, @0, @-50, null, false);

	WaitKey(50);


	Shake_Delete(1000,1000,false,"cg/bg/bg020_山脈坑道_01.jpg");

	Zoom("絵背景100", 500, 1000, 1000, null, false);
	FadeDelete("絵フラ白", 600, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　進駆の勢威を乗せた打撃、それがもたらす荷重は男
一人と劔冑一領をまとめて五間ほども転がすに足りた。
　水切りの石のように跳ねて飛び、落ち、そうして遂
に異変を察知したのか。竜騎兵の眼窩がこちらを向く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0010b45">
「なに……!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StC(1000, @0,@+50,"cg/st/3d八八式指揮官_立ち_抜刀.png");

	OnSE("se人体_動作_跳躍01",1000);
	Move("@StC*", 300, @0, @-50, Dxl1, false);
	FadeStC(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　打突の衝撃は脳にまでは及んでいなかったらしい。
　幕吏の男は即座に立ち上がった。よろめきもせず、
流麗に。そうして立てば、膝が震えることもない。

　元より肘打一つが武者の致命傷になるはずもないが、
それにしてもこの迅速な回復ぶりは刮目に値した。
　よほどに己を鍛え込んでいるものと窺える。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0020b45">
「武者だと!?
　何処の部隊の者だ！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　こちらの首元から肩へ――視線が動いたのは、階級
章を探したのだろう。
　正規の幕府兵であれば当然、着けているべきものだ。

　そして当然、俺が持つわけはないものだ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0030b45">
「……？
　とにかく、<RUBY text="ど">退</RUBY>け！　この村は俺の管轄だ。
何処の武者であれ邪魔立てされる謂れはない」

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0040b45">
「文句があれば古河中将閣下に申し立てろ！」

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0050a00">
「断る。
　今ここで、その首を貰う」

{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0060b45">
「反逆か……！」

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0070a00">
「<RUBY text="いや">否</RUBY>。軍法上の反逆行為には該当しない。
　六波羅の指揮系統と自分は無関係だ」

{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0080b45">
「……何？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　数瞬の沈黙。
　六波羅に属さない武者という事実を、咀嚼するため
要した時間か。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0090b45">
「では貴様は何処の所属だ。
　進駐軍か。あの女と同様、売国の輩という
わけか？」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0100a00">
「一切の所属は持たない」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　嘘を言ったつもりはなかった。
　建前の上でも警察属員という身分は公に認められる
ものではなく、本質的には尚の事、俺が警察を名乗る
に値する筈もない。

　むしろその対極の側だ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0110a00">
「単なる殺し屋とでも思って貰えれば結構」

{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0120b45">
「殺し屋……？　ふん」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　武者は鼻を鳴らした。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0130b45">
「誰ぞに頼まれて俺を殺しに来たというのか。
　それは誰だ？　そいつは俺の首に幾らの値
をつけた」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0140a00">
「いや」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　誤解を招いたようだ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0150a00">
「依頼人はいないし、報酬もない」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0160b45">
「……殺し屋ではないのか？」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0170a00">
「非営利方針を掲げている。
　主な活動理由は一身上の都合」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0180b45">
「それは……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　厚い面頬の上からでも、額の血管の膨れ上がる様子
が見えるようだった。
　怒気を漲らせて、竜騎兵が一歩進む。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	StC(1000, @0,@0,"cg/st/3d八八式指揮官_立ち_戦闘.png");
	Request("@StC*", Smoothing);

	OnSE("se戦闘_動作_鎧_踏み込み01",1000);
	FadeStC(300,false);
	Move("@StC*", 200, @0, @100, Dxl2, false);
	Zoom("@StC*", 200, 1200, 1200, Dxl2, true);

	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0190b45">
「ただの通り魔というのだ、戯け！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	DeleteStC(0,true);

	Cockpit_AllFade0();

	WindowXSet(1000, 100);
	WindowXSetBG(1000, @+0, @+0,"cg/bg/bg020_山脈_01.jpg");
	WindowXSetSt(1000, @-150, @+100,"cg/st/3d八八式指揮官_立ち_戦闘.png");
	WindowFadeBG(0,0,1000,null,"slide_01_01_0",false);

	Window_StMove(0, @-100, @0, null, true);

//嶋：ＳＥ一歩踏み出す
	OnSE("se人体_足音_鎧歩く04",1000);
	Window_StMove(500, @+100, @0, null, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_0", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　次の一歩は、攻撃の踏み込みだった。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_跳躍02",1000);
	Window_StZoom(250, 2000, Dxl1,false);
	Window_StMove(300, @+500, @-100, Dxl1, false);
	Wait(200);

	CreateColorEX("フラッシュ白", 15000, "WHITE");

	OnSE("se戦闘_攻撃_刀振る02",1000);

	Fade("フラッシュ白",100,1000,null,true);

	Window_Delete(0, true);

//◆剣撃
	CreateTextureEX("絵ef100", 3000, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	Fade("絵ef100", 100, 1000, null, true);

	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　上段から降りかかる軍刀の斬撃。
　あたかも綱を切られたギロチンの落下。

　油断していたつもりは全くなかったが、重さと速さ
を兼ね備えたその一剣を避けるために与えられた余裕
はごく少なかった。
　右足を蹴り、体勢を半身にしつつ退避。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateColorEX("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	Delete("絵ef100");

	Zoom("絵背景100", 0, 1500, 1500, null, true);
	Move("絵背景100", 0, @-100, @0, null, true);

	Cockpit_AllFade2();

	OnSE("se人体_動作_跳躍01",1000);
	Move("絵背景100", 300, @+100, @0, Dxl2, false);
	Zoom("絵背景100", 300, 1000, 1000, Dxl2, false);

	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0200a00">
（なるほど）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　刃風に体毛を撫でられながら、心中で頷く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0210a00">
（次からはそう名乗ろう）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();

	CreateTextureSP("絵背景100", 500, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");
	SetVertex("背景100", 0, 288);
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	SetBlur("絵背景100", true, 3, 500, 100, false);
	Request("絵背景100", Smoothing);

	CreateTextureEX("絵村正", 1000, Center, InBottom, "cg/st/3d村正標準_立ち_抜刀.png");
	Move("絵村正", 0, @-100, @+50, null, true);
	Zoom("絵村正", 0, 1200, 1200, null, true);
	Fade("絵村正", 0, 1000, Dxl1, false);

	Move("絵背景100", 400, @-50, @0, null, false);
	Move("絵村正", 600, @+300, @-50, Dxl3, false);
	Zoom("絵村正", 600, 1000, 1000, Dxl3, false);
	OnSE("se戦闘_攻撃_鎧_剣戟02",1000);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　数歩の距離を滑って止まり、向き直る。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade2();

	Delete("絵村正");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");
	StC(1000, @+100,@+50,"cg/st/3d八八式指揮官_立ち_戦闘.png");
	FadeStC(0,true);

	OnSE("se戦闘_動作_鎧_踏み込み01",1000);
	OnSE("se戦闘_動作_刀構え02",1000);
	Move("@StC*", 500, @-100, @-50, Dxl2, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0311]
　六波羅の士は姿勢を崩してなどいなかった。空振り
した剣を素早く取り直し、再度の突進を期している。
　それでも悔しさは滲ませて、その口が毒づいた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0220b45">
「近頃の若い奴らは人を愚弄する手口ばかり
が達者か。情けない話よ。
　俺どもの若い頃は今少し、骨があったよう
に思うがな！」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0230a00">
「面目ない」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　愚弄したつもりはなかったが。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0240a00">
（年長者の若者に対する批判は人類史上普遍
だと云う。甘んじておこう）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0250a01">
《そうなの？》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0260a00">
（四千年前のエジプトの壁画にも、『最近の
若い者は』と書かれていたとか）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0270a01">
《ふぅん》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　相対距離はおおよそ<RUBY text="５、６ｍ">三間</RUBY>。
　このような間合で武者と対峙を続けるのには、どう
にも違和感を拭えない。

　武者の戦舞台は本来、空にある。
　蒼天を駆け巡る<RUBY text="ふたわがかり">双輪懸</RUBY>において、こんな至近距離で
向き合うことなどごく稀だ。

　それは相手にしても同様だろう。
　相対す武者の姿を改めて識別する。八八式竜騎兵甲。
七・七<RUBY text="ミリ">粍</RUBY>機銃を除装しているのは、高級将校の慣例に
倣ったものか。大和海軍の制式劔冑だった。

　この仁が海兵隊の出身であるなら、陸軍の武者以上
に、地へ足をつけた戦闘の経験は少ない筈だった。
　ゆるく体を揺らすその挙措、呼吸を測るだけでなく
戸惑いのためでもあるのかもしれない。

　と、なれば――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0280a01">
《御堂、先手を。
　騎航して上座を取りましょう》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0290a00">
「……否」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　その進言と時を並べて胸に浮かんだ同じ思い付きは、
だが軽く頭を振って却下する。
　敵騎よりも速く<RUBY text="とび">騎航し</RUBY>、高度優勢を奪う――それは
言わずもがな、武者戦の鉄則ではあったが。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0300a00">
「相手が飛ぶのを待つ」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0310a01">
《なぜ？》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0320a00">
「俺が先に飛んだ時、後に残すのはこの敵騎
だけではない」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0330a01">
《――――》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　それで通じたようだった。
　村正が沈黙する。

　騎航に移れば飛躍的な速度向上を成し得るし、武者
として性能を十全に発揮することが能う。
　が、その一方、地上に二本の足で立っていた時ほど
行動の小回りは利かない。

　騎航したこちらを敵騎がすぐに追ってきてくれれば
良いが。
　無視して地表に留まり、最初の標的に注意を戻すと
いうことも有り得た。

　そうなった時、もう一度うまく阻止できるか。
　……おそらく分の悪い勝負となろう。

　先手は敵に譲るほかない。
　そう状況を見定めて、待つ。

　待つ。
　だが。

　――――飛ばぬ。

　前方の竜騎兵は地から離れず、合当理は冷えたまま
炎を噴かない。足捌きは危険臭を漂わせつつ踏み込み
の機を窺っているが、それは空への飛翔を期した動き
ではなく、あくまでも土を噛んでいた。

　こちらが飛ばない事を深読みし、罠の存在を疑って
いるのか……？
　
　そうも思ったが、あるいは、

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0340a00">
（先の先まで読んでのことか）

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -144, "cg/bg/resize/bg003_荒れ野_01.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16200, -455, -500, "cg/st/resize/3d八八式指揮官_立ち_戦闘_l.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	Move("絵演窓上/絵演背景", 60000, @-100, @0, null, false);
	Move("絵演窓上/絵立絵", 60000, @-200, @0, null, false);
//	BGMoveAuto("@絵演窓上/絵立絵",1);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 300, 1000, null, false);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　八八式は<RUBY text="パワー">出力</RUBY>と<RUBY text="アーマー">防甲</RUBY>に重きを置く泥臭い設計であり、
足回りの性能に特筆すべき点はない。空での機動戦と
なれば、初手で優位を取れていたとしても、いつまで
それを維持できるものかは怪しいところだった。

　無論、対戦相手の性能にもよるが。
　事実として八八式は既に旧型と看做され、海軍では
より機動性を高めた九四式への移行が進んでいる。

　目先の利を追って飛べば敗北は必定。
　それよりは地上に踏み止まって活路を開くべし――
そう判断を下したか？

　だとすれば侮り難い沈着さ、老獪さだった。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0350a00">
（時を与えるべからず）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　戦闘において、時間は常に経験に優る者を、手札の
多い者を利するのだから。
　時を切り詰め、策を弄する余裕を奪わねばならない。

　旨とすべきは短兵急。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();

	Delete("絵演窓上*");
	DeleteStC(0,true);
	Delete("絵色100");

	CreateTextureEX("絵村正", 1000, Center, InBottom, "cg/st/3d村正標準_立ち_戦闘.png");
	Move("絵村正", 0, @250, @140, null, true);

	Fade("絵村正", 0, 1000, null, true);

	OnSE("se戦闘_動作_刀構え02",1000);
	Move("絵村正", 300, 100, @0, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0360a00">
「一手馳走」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_刀構え02",1000);
	WindowYSet(1200, 0,512);
	WindowYSetBG(1200, @+0, @+0,"cg/bg/bg003_荒れ野_01.jpg");
	WindowYSetSt(1200, @-250, @+80,"cg/st/3d八八式指揮官_立ち_戦闘.png");
	WindowY_BGMove(500, @-75, @0, null, false);
	WindowYFadeBG(2,300,300,null,"slide_01_01_1",true);

	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0441]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0370b45">
「参れ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//嶋：駆けるEV
	OnSE("se人体_動作_跳躍01",1000);
	WindowY_WipeDelete(300, "slide_01_01_0", true);

	Wait(200);

	OnSE("se人体_動作_跳躍02",1000);
	Move("絵村正", 300, -1000, 50, Axl3, false);

	CreateTextureEX("絵ef100", 2000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureEX("絵ef200", 2000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	SetBlur("絵ef200", true, 3, 500, 100, false);

	Wait(200);

	Fade("絵ef100", 100, 1000, null, false);
	Fade("絵ef200", 0, 1000, null, false);
	Zoom("絵ef200", 500, 2000, 2000, Dxl1, false);
	Fade("絵ef200", 500, 0, Dxl1, true);
	Delete("絵ef200");
	Delete("絵村正");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　身を沈めて駆ける。
　右足を蹴って首を落とし、左足を踏んで背を屈む。
地を這う長虫のように、砂を舐める心地で。我が頭を
敵手の足元へ投げ入れる。

　太陽と己を敵影が遮る。影の中で体躯を跳ね起こし、
太刀を送り。
　切り上げ――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵ef100");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);

	StC(1000, @-50,@+330,"cg/st/3d八八式指揮官_立ち_戦闘.png");
	Request("@StC*", Smoothing);
	Zoom("@StC*", 0, 2000, 2000, null, true);
	FadeStC(0,true);

	Move("@StC*", 300, @50, @-30, Dxl1, false);
	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460a]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0380b45">
「フッ！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆縦割り剣閃

	CreateColorEX("絵色100", 15000, "Black");

	Fade("絵色100", 100, 1000, null, true);
	Delete("絵背景100");
	DeleteStC(0,true);

	SL_down2(16000,@0, @0,1000);
	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_downfade2(10);


	CreateColorEXadd("フラッシュ白", 16000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	Delete("絵色100");

	CreateTextureSP("絵背景100", 5000, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");

	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460b]
　その先を制して。
　待ち構えていた、正中を抜ける一閃。

　六波羅の武人が振るう軍刀は正確に我が兜の頂上を
狙撃した。
　
　――予測通り。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆撃剣。がーん。
	CreateColorEX("絵色100", 15000, "Black");

	Fade("絵色100", 100, 1000, null, true);
	Delete("絵背景100");
	DeleteStC(0,true);

	SL_up2(16000,@0, @0,1000);
	OnSE("se戦闘_攻撃_刀振る02",1000);
	SL_upfade2(5);

	CreateTextureEX("絵ef100", 16000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	CreateTextureEX("絵ef200", 16000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	SetBlur("絵ef200", true, 3, 500, 50, false);

	OnSE("se戦闘_攻撃_刀衝突01",1000);
	Fade("絵ef100", 100, 1000, null, false);
	Fade("絵ef200", 0, 1000, null, true);

	Zoom("絵ef200", 500, 3000, 3000, Dxl1, false);
	Fade("絵ef200", 500, 0, Dxl1, true);

	CreateColorEX("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵ef100");
	Delete("絵ef200");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");

	CreateTextureSP("絵St100", 1000, -500, -500, "cg/st/resize/3d八八式指揮官_立ち_戦闘_l.png");
	Zoom("絵St100", 0, 750, 750, null, true);
	Request("絵St100", Smoothing);
	SetBlur("絵St100", true, 2, 300, 100, false);

	Cockpit_AllFade2();

	Delete("絵色100");

	MyLife_Count(200,712);
	CP_PowerChange(5000,320,null,false);

	MyTr_Count(500,425);

	Move("絵St100", 500, @0, -580, Dxl2, false);
	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　切り上げと見せた剣を手元に引き込み、かち上げる。
軍刀の打ち下ろしとそれは激突し、反発し、最終的に
受け流した。
　方向を反らされた刃が流れ、肩甲を掠めて行き過ぐ。

　<RUBY text="しこう">而</RUBY>して我が眼前には。
　敵武者の脇腹が、無防備に晒されて在り。

　――吉野御流合戦礼法、<RUBY text="タガイ">違</RUBY>の形。
　
　我が頭頂に敵の剣撃を誘い、受けて流してその隙を
打つ――

　手首を返しての一斬。
　据え物も同然の隙所を、狙い澄ました太刀にて割り
切る。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆一閃
//◆ガキーン
	CreateColorEX("絵色100", 16000, "Black");
	Fade("絵色100", 100, 1000, null, true);

	SL_left2(20000, @0, @0, 1500);
	SL_leftfade2(10);

	CreateColorEXadd("フラッシュ白", 21000, "WHITE");

	CreateSE("SE01a","se戦闘_攻撃_鎧攻撃命中03");
	OnSE("se戦闘_攻撃_刀衝突01",1000);
	MusicStart("SE01a",0,800,0,700,null,false);

	Fade("フラッシュ白",0,1000,null,true);

	FrameShake_Ran();
//	RFlash();

	Delete("絵色100");

//嶋：ＳＥ鍔ぜり
	CreateSE("SE01","se戦闘_攻撃_刀衝突02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSP("絵St100", 1000, -535, -120, "cg/st/resize/3d八八式指揮官_立ち_戦闘_l.png");
	Zoom("絵St100", 0, 1750, 1750, null, true);
	Request("絵St100", Smoothing);

	SetShade("絵背景100", MEDIUM);
	Shake_Loop("@絵St100","shake01");

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0390a00">
「――ッ」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0400b45">
「まずまずの点前。
　だが……足りんわ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　存分に胴を薙ぐ筈の刃先は、
　翻った敵刃に受け止められていた。

　――早過ぎる。
　渾身の剣を受け切られた直後にしてこの仕様、反応
にせよ運剣にせよ常軌を逸している。

　武者としてさえ、あまりに不条理。
　
　……つまりは。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0410a01">
《読み合いで上を行かれた……？》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0420a00">
（そのようだな）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　今の一合を反芻する。
　……こちらの頭頂を襲った敵騎の一刀、あれを受け
流した折の手応えは、奇妙なほど軽かった。鋭くこそ
あったものの。

　俺の誘いの意図を察知して、腕の力を抜き、太刀筋
の変転に備えていたということか……？
　であればこの仕儀も頷ける。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0430b45">
「貴様、従軍経験はあるか？」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0440a00">
「先の大戦にて二年程、フィリピンの密林で
村田銃を抱えて過ごした」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0450b45">
「俺が最前線にいた時間はその六倍だ。
　若造、二等兵、貴様が洟垂れの頃から大陸
を転戦して磨いた我が剣、見縊って欲しくは
ないな！」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0460a00">
「承知。以後は心する」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//嶋：Ｓｔズーム、なおかつツルギの鍔ぜりあい。
//	CreatePlainSP("絵板写", 10000);
	Request("絵St100", Smoothing);
	SetBlur("絵St100", true, 3, 500, 60, false);

	CreateSE("SE01","se戦闘_攻撃_剣戟弾く03");
	MusicStart("SE01",0,1000,0,1200,null,false);
	Shake("絵St100", 700, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵St100", 200, 1800, 1800, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　至近距離の不敵な笑みに、視線で首肯を返す。
　噛み合った刃と刃がぢゃりぢゃりと、酷劣な音響を
立てていた。並みの力では傷もつかぬ鋼同士が互いを
削り、白い金屑を散らす。

　太刀を支える両腕には恐ろしいまでの重圧。
　甲鉄と皮と肉の下で骨が軋みを上げていた。八八式
の性能だけでは説明がつかぬこの強剛、おそらく中の
仕手の尋常ならざる膂力が働いているのだろう。

　……いや。
　それでもまだ不足、か？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0470a00">
「一つ尋ねる」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0480b45">
「何だ」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0490a00">
「銀星号を知っているか」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　表情を窺う。
　顔は隠されていても、気配ならば読める。この近間
なら不自由はない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0500b45">
「……銀星号？
　最近とみに噂の殺戮魔とやらか？　どうせ
風評が一人歩きした類であろうが……」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0510b45">
「あれがどうしたと云う」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0520a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　無用の質問だったと知れた。
　男の声には淀みもない。

　何も知らないのだ。〝卵〟を与えられていながら。
　しかし、前例のない事ではなかった。この男と対面
する必要を、<RUBY text="・・">彼女</RUBY>は認めなかったのだろう。

　であれば、これは今は雑念でしかない。
　忘れ去り、目前の状勢の打開に専心する――しかし
それが、思うままにはならない。

　こちらとても力勝負はまさに本分、今は失っている
とはいえ大長刀を苦なく扱える、盛風力には事欠かぬ
身だが。それで尚、この敵は容易に圧倒しかねた。
　一瞬ごとに僅差の優劣を覆しつつ、競り合う。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0530a00">
（埒が明かん。……明けられん）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0540a01">
《けれど御堂、退いては駄目》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0550a00">
（わかっている）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　退けば死ぬ。
　敵の剣を引き外して飛び下がりつつ斬撃――などと
小賢しい事を夢想している間に突き倒され、押し切ら
れるだろう。

　裏を返せば、それは対手の立場でもある。
　――今この陣は互いに背水。

　然らば前へ進む以外に道はなし。
　両足を踏み締め、力の限り押し込む。

　同様の力が木霊のように返され、拮抗――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	FrameShakeDelete();

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0560a00">
「……っ？」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//嶋：リサイズ画像をさらにズーム
	CreateSE("SE01","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE01",0,1000,0,1200,null,false);
	Shake("絵St100", 700, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵St100", 200, 1900, 1900, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　しない？

　押し込んだ刀は抵抗無く、
　そのまま敵へ、

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0570a00">
（退いた？　押し切れる？）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　虫の良い事態に対する、一瞬の躊躇。
　
　……それで充分だったのだろう。

{	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　両腕の間へ滑り込むなにか。
　蛇。

　――柄。

　軍刀の柄が、俺の腕と腕の間に、するりと、
　差し込まれている。

　いつの間にか剣から離れていた敵の左手……
　それが再び柄を握った。

　鉤のように絡み合う、腕と腕、剣と剣。
　
　この意味は何か？
　この形は何か？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0580b45">
「……些細な手妻だが。
　こんなものが役立つこともある」

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0590a00">
「!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//	Zoom("絵板写", 200, 1200, 1200, Dxl2, true);
	OnSE("se戦闘_動作_刀構え01",1000);
	Move("絵St100", 200, @0, @150, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　竜騎兵が軍刀を回転させた。
　その柄は俺の両腕に引っ掛かり――捻り上げる。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0600a01">
《腕絡み!?》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　<RUBY text="アームロック・バイ・ソード">剣による関節技</RUBY>！

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

	Shake("@CP_Frame", 500, 5, 3, 0, 0, 500, null, false);

	OnSE("se戦闘_攻撃_鎧_絞める01",1000);
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 2000, 700, Dxl3);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",50,1000,null,true);
	Fade("フラッシュ白",200,0,null,true);
	Fade("フラッシュ白",50,1000,null,true);
	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

	MyLife_Count(200,661);
	CP_PowerChange(5000,411,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0671]
　肘と手首が悲鳴を上げた。
　脳髄に激痛が刺さる。

　甲鉄は、ほぼ無意味。
　斬撃でも打撃でもないこの攻撃を鋼の壁は防げない。

　肉が<RUBY text="よじ">捩</RUBY>れ、骨が<RUBY text="しな">撓</RUBY>った。
　このままでは折られる。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0610a00">
「ち――」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_刀構え01",1000);

	Zoom("絵St100", 200, 1800, 1800, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　選択の余地はなかった。
　太刀を手放し、後方へ飛び離れる。

　そうした結果がどうなるか、わかってはいたが。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0620b45">
「退いたな、孺子！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　この機を逃す筈もない。
　六波羅武者は俺が退いた分だけ即座に踏み込んだ。
肩口へ刃を押し付けながら。

　辛うじて、その両腕をつかみ止める。
　足元が安定を失った。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆倒れる
//◆ＳＥと竜騎兵アップで誤魔化せるか。

	Zoom("絵St100", 300, 3000, 3000, Axl2, false);
	Rotate("絵St100", 300, @0, @0, @90, Axl2,false);

	OnSE("se戦闘_衝撃_鎧転倒01",1000);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	DeleteStC(0,true);
	Delete("絵背景100");
	Delete("絵St100");
	Delete("絵St100");

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	SetShade("絵背景50", HEAVY);

//嶋：リサイズ希望
//	CreateTextureSP("絵St50", 1000, Center, Middle, "cg/st/3d八八式指揮官_騎航_戦闘.png");
	CreateTextureSP("絵St50", 1000, Center, Middle, "cg/ev/resize/ev958_長坂馬乗り_l.png");
//	Zoom("絵St50", 0, 3000, 3000, null, true);
	SetBlur("絵St50", true, 2, 300, 100, false);
	Zoom("絵St50", 0, 1000, 1000, null, true);
	Request("絵St50",Smoothing);
//	Rotate("絵St50", 0, @0, @0, @30, null,true);
//	Move("絵St50", 0, @+100, @+400, null, true);
//	BGMoveAuto("@絵背景50",3);
//	BGMoveAuto("@絵St50",5);
	Shake_Loop("@絵St50","shake01");
//	FrameShake();
	FrameShake_Ran();

	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ01",1000);

	Zoom("絵St50", 500, 550, 550, Dxl3, false);
//	Move("絵St50", 300, @0, @+100, null, false);
	DrawDelete("黒幕１", 300, 100, "slide_02_01_0", true);



	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0630b45">
「は――」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0640a00">
「ッ……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　愉悦の眼が見下ろしてくる。
　奥歯を噛んで見上げ返す。

　今や敵手は馬乗りになり、全体重を乗せた剣を押し
付けてきていた。
　首の根元――甲鉄の隙間を狙っている……。

　腕をつかんで抗うも、優劣は明らか。
　先程までとは体勢が違う。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0650b45">
「さて……」

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0660a00">
「……」

{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0670b45">
「生意気な若造も、こうなれば少しは素直に
なれよう。
　もう一度問うぞ。貴様は何者だ？」

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0680a00">
「既に言った通り。
　その命を貰い受けに参った者」

{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0690b45">
「理由は」

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0700a00">
「一身上の都合」

{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0710b45">
「そうか」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se特殊_鎧_ひび割れ02",1000);
	Zoom("絵St50", 400, 600, 600, AxlDxl, false);
	Move("絵St50", 400, @0, @30, AxlDxl, true);

	CreateColorEXmul("フラッシュ", 20000, "RED");
	Fade("フラッシュ",100,800,null,true);
	DrawDelete("フラッシュ", 300, 1000, "slide_05_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　冷たい感触。
　首筋の肉に刃が潜った。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0720b45">
「筋金入りの莫迦者には、もう少し荒療治が
要るということらしいな！
　貴様の意地が切れるのが先か、それとも首
が切れるのが先か。試してくれるぞ！」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0730a00">
「……ッ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_攻撃_鎧かする01",1000);
	Zoom("絵St50", 300, 680, 680, AxlDxl, false);
	Move("絵St50", 300, @0, @20, AxlDxl, true);

	CreateEffect("エフェクト１", 18000, 0, 0, 1024, 576, "NegaPosi");
	Fade("エフェクト１", 0, 0, null, true);


	OnSE("se人体_体_心臓の音02",1000);
	Fade("エフェクト１", 300, 700, Dxl1, true);
	Fade("エフェクト１", 500, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
　冷気が体内を侵蝕する。
　実際に侵入しているのはまだほんの数ミリであろう
が。そこから生じる悪寒は全身に行き渡りつつあった。
深さが一センチにも達すれば完全に凍えそうだ。

　その時にはむしろ何も感じないのかもしれないが。
　喉笛を一センチ抉られて生存するのは難しかろう。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0740a00">
（この尋問法には問題がある）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0750a01">
《……どんな？》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0760a00">
（口が利けないではないか）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0770a01">
《そうね。貴方が死ぬ前に向こうが気付いて
くれるといいのだけれど。
　どうするの？　人間の叡智に期待をかけて、
このまま俎板の鯉の真似事を続けてみる？》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0780a00">
（他人を愚かと思い込む者は低能だが、他人
の賢さを信じ込む者は無能だと云う。
　やめておこう）

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0790a00">
（<RUBY text="コイル">導源</RUBY>を回せ。<RUBY text="シノギ">陰義</RUBY>で抜ける）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0800a01">
《……この状況よ？　正気？》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0810a00">
（一応そのつもりだ。
　従え、村正。議論の暇はない）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0820a01">
《――諒解》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 1000, 0, null);
	SoundPlay("@mbgm13",1000,1000,true);





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
　細く長く息を吐く。
　余りにも近過ぎる敵刃が否応なく気を焦らせるが、
敢えて静める。激しく喘げばそれだけで命取りになり
かねない、既に生死の間合はその距離にある。

　最後の吐気と共に、両腕の緊張を解く。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_足音_鎧歩く03",1000);
	Zoom("絵St50", 200, 690, 690, AxlDxl, false);
	Move("絵St50", 200, @0, @10, AxlDxl, true);

//	Shake("絵St50", 500, 0, 10, 0, 0, 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0791]
　敵の刀を押さえ留めている腕力は、言うまでもなく
生命線。崩れかかる要塞に残された一門だけの砲。
　それを、放棄する。ためらいなく一瞬に。

　――生死の境界、一本の線上を片足で踊る。
　甘美な誘惑とどす黒い恐怖で脳漿が煮えた。

　村正ならずとも正気を疑う挙であるかもしれない。
　今や脆弱な首は完全な無防備、子供でも容易く命を
斬れる状態にある。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_足音_鎧歩く04",1000);
	Zoom("絵St50", 200, 650, 650, AxlDxl, false);
	Move("絵St50", 200, @0, @-60, AxlDxl, true);

	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0830b45">
「――!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
　だが、武者は刹那、躊躇した。
　場数を重ねた<RUBY text="ふるつわもの">古兵</RUBY>であればこそだろう。目前へ突如
投げ出された美味な餌に、喜んで飛びつくには<RUBY text="いくさ">戦</RUBY>なる
ものを知り過ぎている。

　未熟者であれば思慮もなく押し切ったに違いない。
そうして勝利を手にしただろう。
　そうする代わり、この古兵は腕と剣を止めた。

　ごくわずかな、間隙の時が生ずる。
　
　そこに機を得られないのならば、俺はこの場で死す
べきであった。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 20000, "Black");

	Fade("絵色100", 200, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0811]
　短く鋭く息を吸う。
　ほんの拳一つ分の空気、それだけで事は足りる。

　吸った空気を胎臓へ落とし、流し、渦を巻かせる。
　自由に、奔放に、広がろうとする波のうねり。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnSE("se特殊_陰義_発動04",1000);
//	CreateTextureEXsub("絵ef100", 18000, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
//	CreateTextureEXsub("絵ef200", 18000, Center, Middle, "cg/ef/ef021_汎用陰義発動a.jpg");
	CreateTextureEXadd("絵ef100", 18000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateTextureEXadd("絵ef200", 18000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateTextureEXadd("絵ef300", 18000, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
	CreateTextureEXadd("絵ef400", 18000, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
//	Zoom("絵ef*", 0, 3000, 3000, null, true);
	Rotate("絵ef200", 0, @0, @0, @180, null,true);
	Rotate("絵ef400", 0, @0, @0, @180, null,true);
//	SetShade("絵ef200", HEAVY);
	SetBlur("絵ef*", true, 2, 300, 50, false);

	Fade("絵ef100", 0, 1000, null, true);
	Fade("絵ef200", 0, 1000, null, true);
	FadeDelete("絵色100", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0812]
　それを抑制する。締め上げて、引き絞る。
　のたうち回る小さな力、あくまでも解放せず、暴れ
させながら留め続ける。

　渦は悶え、より大きな力を求めて周囲を巻き込む。
　膨張。肥大。抑制。暴走。

　波は波濤に。波濤は怒涛に。
　猛り狂うねじれた瀑布、拘束の鎖を今にも引き千切
らんとする、今や絶望的な暴力と化したそれへ最後の
制御。

　拘束から漏れ出た一端を腕へ流す。
　腕から――握り締めている敵の腕へ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0840a01">
《陰》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0850a00">
（陽）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　拘束を引き剥がす。
　暴力に自由を。

　喜悦に震え、衝動のまま、全身を駆け巡り、満たし、
溢れ出す<RUBY text="パワー">暴威</RUBY>。
　放散する。抑圧の時代は終わり。今この時は解放。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0860a00">
「<RUBY text="エンチャント・マイナス">磁装・負極</RUBY>――」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0870a01">
《〝ながれ・かえる〟》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	MyTr_Count(500,580);

	OnSE("se戦闘_陰義_磁力展開",1000);
	Fade("絵ef300", 200, 1000, null, false);
	Fade("絵ef400", 200, 1000, null, false);
	Zoom("絵ef*", 1000, 1100, 1100, Dxl3, false);
	Fade("絵ef100", 500, 0, null, false);
	Fade("絵ef200", 500, 0, null, true);

	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0841]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0880b45">
「な――げはッ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Wait(500);

	OnSE("se戦闘_陰義_磁力弾く",1000);
	CreateColorEX("フラッシュ白", 21000, "WHITE");

	Zoom("絵St50", 100, 1000, 1000, Dxl3, false);
	Move("絵St50", 100, 0, 0, Dxl3, false);

	Fade("フラッシュ白",100,1000,null,true);

	Cockpit_AllFade0();

	Delete("絵ef*");
	Delete("エフェクト１");
	Delete("絵St50");
	Delete("絵背景50");

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");

	Shake_Delete(1500,500,false,"cg/bg/bg020_山脈坑道_01.jpg");

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
　六波羅の武者は吹き飛んだ。

　吹き飛んだ――俺の上から。
　一瞬にして――遥かな距離を。
　
　組み伏せられた村正の、右足の一蹴りで。

　少なくとも傍目にはそう見えた筈だった。
　戯けた有様、としか言いようもなかったろう。武者
の重量、馬乗りの図式、如何に乱雑な計算をしても、
そこからこのような結果は導き出せまい。

　敵の騎体に磁力を帯びさせ、それと同極つまり反発
する磁力を持たせての蹴り。
　村正の陰義による、その仕込みがあったればこその
諧謔事。

　蹴られた六波羅は果たして、事実を理解し得たか。
　問うだけの余裕はない。

　今の一打が敵にさしたる損傷を及ぼしていないのは
わかっている。勝ちを決めるにはこの隙を生かしきら
ねばならなかった。
　駆ける。

　村正の磁装は長くは保たない。
　瞬発的な術であり、一秒以上も保持しようとすれば
莫大な熱量を消費する……といって打ち切れば、再度
磁装するには呼吸の調整から始めなくてはならない。

　勝負を仕切り直しても不利は覆らない。
　首筋の傷は浅くはなかった。時と共に血を流し、熱
を失っていくだろう。勝機は今、この刹那だけ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景1000", 1500, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");
	SetShade("絵背景1000", HEAVY);

	Zoom("絵背景1000", 0, 2000, 2000, null, true);
	Move("絵背景1000", 0, 512, 0, null, true);

	CreateTextureEX("絵村正", 2000, Center, Middle, "cg/st/resize/3d村正標準_騎航_陰義.png");
	Request("絵村正", Smoothing);
	SetBlur("絵村正", true, 3, 500, 100, false);
	Fade("絵村正", 0, 1000, null, true);
	Move("絵村正", 0, @+1024, @100, null, true);

//嶋：使用できるか不明のため退避
//	CreateEffect("エフェクト１", 1900, 0, 0, 288, 512, "Rain");
//	Zoom("エフェクト１", 0, 2500, 2500, null, true);
//	Rotate("エフェクト１", 0, @45, @0, @-90, null,true);
//	Request("エフェクト１", Smoothing);
//	Move("エフェクト１", 0, @+600, @+20, null, true);
//	Fade("エフェクト１", 0, 450, null, true);

	OnSE("se戦闘_動作_空突進02",1000);
	Move("絵村正", 300, -200, @0, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1.png", true);

	WaitAction("絵村正", null);
	SetBlur("絵村正", false, 3, 500, 50, false);
	Shake_Loop("@絵背景1000","shake01");
	BGMoveAuto("@絵村正",1);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0851]
　駆ける。

　竜騎兵は早、立ち上がろうとしていた。
　やはりダメージはない。派手に転がしはしたがそれ
だけだ。<k>その目前、間合へと踏み込む。

　太刀を拾っている暇など無かった。
　体躯そのものを武器として、ぶち当てる。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	BGMoveDelete();

	OnSE("se戦闘_動作_空突進01",1000);
	Move("絵村正", 300, @-3000, @0, Dxl1, false);
//嶋：素材に合わせてズーム変更
	Zoom("絵村正", 300, 3000, 3000, null, false);

	Wait(200);

	CreateTextureEX("絵ef100", 10000, Center, Middle, "cg/ev/resize/ev903_村正磁気バリアー展開_al.jpg");
	CreateTextureEX("絵ef200", 10000, Center, Middle, "cg/ev/resize/ev903_村正磁気バリアー展開_al.jpg");
//	Zoom("絵ef100", 0, 750, 750, Dxl1, false);
//	Zoom("絵ef200", 0, 750, 750, Dxl1, false);
	SetBlur("絵ef200", true, 3, 500, 100, false);
	Move("絵ef100", 0, @-200, @+250, null, true);
	Zoom("絵ef200", 200, 1200, 1200, Dxl1, false);
	Fade("絵ef200", 0, 500, null, false);
	Fade("絵ef100", 0, 1000, null, true);

	Wait(300);

	OnSE("se戦闘_陰義_磁力弾く",1000);
	CreateColorEXadd("フラッシュ白", 16000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	Delete("絵ef100");
	Delete("絵ef200");
	Shake_LoopDelete();

	Delete("絵村正");
	Delete("絵背景1000");

	Shake_Delete(1500,1000,false,"cg/bg/bg020_山脈坑道_01.jpg");
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0890b45">
「ぐっ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Delete("絵背景100");
	CreateTextureSP("絵背景50", 100, 0, 0, "cg/bg/resize/bg002_空a_01.jpg");
//嶋：画像によってはなし
	CreateTextureSP("絵st100", 500, Center, Middle, "cg/st/3d八八式指揮官_騎航_通常.png");
	Rotate("絵st100", 0, @0, @0, @-120, null,true);
	Move("絵st100", 0, @1024, @576, null, true);

	OnSE("se戦闘_動作_空突進07",1000);
	Move("絵背景50", 1000, @-1000, @-500, Dxl1, false);
	Move("絵st100", 700, @-2048, @-1152, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_03_01_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
　再び吹き飛ぶ八八式竜騎兵。
　自動車に激突した子犬のように、高く舞う。

　しかしそうしていながら、敵騎は軍刀を手放しても
いない。
　衝突の瞬間に体勢を備え、肚をも据えていたに違い
なかった。

　何の損害も与えていない――
　一方、こちらは磁装が解ける。熱量の限度だった。

　これ以上維持を試みるなら、<RUBY text="フリーズ">熱量欠乏</RUBY>を覚悟せねば
ならない。
　全身が冷え込んでいる。指先にはかすかに痺れ。

　逆転の策は終わった。
　敵兵は無傷、当方は戦闘不能一歩手前。
　
　あとは決着を待つだけだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//嶋：シナリオ退避
//　あとは決着が待つだけだ。

	Delete("絵St100");

	WindowXSet(2000, 100);
	WindowXSetBG(2000, @+0, @+0,"cg/bg/bg020_山脈坑道_01.jpg");
	WindowXSetSt(2000, @100, @700,"cg/st/resize/3d村正標準_立ち_抜刀.png");

	WindowFadeBG(1,300,300,null,"slide_05_00_1",true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0900a01">
《御堂！》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0910a00">
「応」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Window_Delete(0,true)

	MyLife_Count(500,720);
	MyTr_Count(500,574);
	CP_HighChange2(0,0,null,false);
	CP_SpeedChange2(0,0,null,false);
	Cockpit_AllFade2();
	CP_PowerChange(300,100,null,false);

	CP_SpeedChange2(1000,270,null,false);
	CP_HighChange2(500,300,null,false);

	FrameShake();

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/st/3d八八式指揮官_騎突_通常.png");
	Move("絵背景100", 0, @0, @-200, null, true);
	Rotate("絵背景100", 0, @0, @0, @-150, null,true);
	Zoom("絵背景100", 0, 10, 10, null, true);
	SetBlur("絵背景100", true, 3, 300, 100, false);

	CreateTextureSP("絵背景50", 50, -100, -700, "cg/bg/bg202_旋回演出背景山_01.jpg");
	SetBlur("絵背景50", true, 3, 200, 100, false);

	CockPit_LockSet(@0,@0);


	OnSE("se戦闘_動作_空上昇01",1000);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_汎用移動.jpg", false);


	Move("絵背景50", 1000, @0, @200, Dxl2, false);
	Move("絵背景100", 1000, @0, @50, Dxl2, false);

	DrawDelete("黒幕１", 300, 100, "slide_03_01_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
　力を絞り、地を蹴り、空へ躍る。
　決着をつけるために。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0920b45">
「若造がああああああああ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
　六波羅武者の咆哮が空を割る。
　怒りの、屈辱の、失望の。

　逆転は成った。勝負は決した。
　その事実を、敵も理解していた――山腹から虚空へ
放り出され、合当理を噴いて騎航に移りながら。

　空で戦えばこちらが勝つ。故に敵は飛ばぬ。<k>
　……ならば、無理矢理にでも飛ばせてしまえば良い！

　足元に大地が無ければ飛ぶ以外にないのだ。
　是非もなく、戦場はただ一つになる。

　残り少ない熱量を背の飛行器に回し、
　浮上――
　飛行――
　上昇――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_動作_空突進03",1000);


	CP_SpeedChange(2000,352,AxlDxl,false);
	CP_HighChange(2000,864,AxlDxl,false);
	CP_AltChange(2000,45,AxlDxl,false);
	Move("絵背景50", 2000, @0, @500, AxlDxl, false);
	Move("絵背景100", 2000, @0, @1000, AxlDxl, true);

	CP_AltChange(1000,0,AxlDxl,false);
	Move("絵背景50", 1000, @0, @-1050, AxlDxl, false);
	Move("絵背景100", 1000, @0, @-900, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0915]
　同じプロセスを、確実にこちらよりも遅れて辿って
いる敵騎に対し、高度優勢を確保する。
　
　反転。下降。

　八八式竜騎兵は実質、まだ上昇機動を始めてさえも
いなかった。
　アクシデントからの騎航だったせいか、<RUBY text="バランス">姿勢の安定</RUBY>
を取るのに四苦八苦している。

　まさしく鴨。
　一方的に強襲する。

　太刀は無い。拳だけが武装だった。
　これで破壊し得る致命箇所となれば、それは唯一つ。

　敵兵の背側から近接。
　腰を狙い、殴る。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ばきゃーん
	CreateColorEX("フラッシュ白", 15000, "WHITE");

	CreateSE("SE01","se戦闘_破壊_鎧01");

	OnSE("se戦闘_動作_空突進01",1000);

	CP_SpeedChange2(1000,270,null,false);
	CP_HighChange2(500,421,null,false);
	CP_PowerChange(300,50,null,false);
	Zoom("絵背景50", 400, 1200, 1200, Axl3, false);
	Move("絵背景100", 400, @0, @-50, Axl3, false);
	Zoom("絵背景100", 400, 1800, 1800, Axl3, false);
	Rotate("絵背景100", 400, @0, @0, @-50, AxlDxl,false);
	Wait(350);
	Fade("フラッシュ白",0,1000,null,true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(250);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 500, null, false);

	Delete("絵背景100");

	Zoom("絵背景50", 1500, 1000, 1000, Dxl2, false);
	BGMoveAuto("@絵背景50",1);


	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");


	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0930b45">
「がふ……っ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
　武者が大きく姿勢を崩す。
　そして――その崩れは回復しない。

　腰回りに広がる装甲、母衣は、騎航するに不可欠な
羽翼。これなくば、いくら合当理を噴かしたところで
騒音公害にしかならない。
　竜騎兵はその翼の半分以上を失っていた。

　だが、残った母衣がそれでも役目を果たそうとした
のか。
　武者は落ちながらも半ば滑空し、墜落と着陸の中間
のような格好で地上の樹海へと向かってゆく。

　……あれではおそらく死ぬまい。
　追撃の必要があった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0940a00">
「村正、敵騎を捕捉しろ。
　追尾する」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0950a01">
《無理よ！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0960a00">
「何？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0970a01">
《熱量が限界に達している。
　これ以上の騎航は危険。戦闘は論外！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0980a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
　言われて自身を振り返れば確かに、戦える状態では
なかった。
　手指の痺れは既に麻痺というべき状態に近く、全身
の寒気もそれに準じている。

　一秒毎に状況は悪化し、装甲騎航を続ける限り回復
はない。
　
　潮時であった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0990a00">
「仕留め損ねたか……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs1000a01">
《今回は仕方ないでしょう。
　何分にも急なことだったし》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs1010a00">
「その急に対応し切れていれば最小限の時間
で事態の解決が果たされていた。
　いつもの事だが、我が無能が悔やまれる」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs1020a01">
《……》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs1030a00">
「戻ろう、村正。
　体調を回復させ、然るのち樹海を探索する」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs1040a01">
《……諒解》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

//◆地上
	CreateColorEX("絵暗転", 20000, "#000000");
	CreateSE("SE01","se戦闘_動作_空突進06");

	MusicStart("SE01",0,1000,0,1000,null,false);

	BGMoveDelete();
	Move("絵背景50", 2000, @0, @-500, Axl2, false);
	Fade("絵暗転", 2000, 1000, null, true);

	CP_AllDelete();

	SetVolume("SE*", 1000, 0, null);
	Wait(1000);

	PrintGO("上背景", 30010);

	OnBG(100,"bg020_山脈坑道_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st香奈枝_通常_制服a.png");
	StR(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStA(0,true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	FadeDelete("上背景", 2000, true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/002vs1050a03">
「…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/002vs1060a04">
「お嬢さま……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/002vs1070a03">
「赤い、武者……。
　赤い…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/002vs1080a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);



}

..//ジャンプ指定
//次ファイル　"ma02_003.nss"


