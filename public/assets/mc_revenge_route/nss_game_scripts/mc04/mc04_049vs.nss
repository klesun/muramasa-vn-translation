//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_049vs.nss_MAIN
{

	
//コックピット用Ｓｅｔ
	//CP_AllSet("村正");

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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	CP_AllDelete();

	//◆フラグ分岐：デバッグのため選択肢にしてあります
	//◆選択ミス　"mc04_050vs.nss"
	//◆選択成功　"mc04_051vs.nss"
	//$GameName = "mc00_001.nss";

	$SelectGameName="@->"+$GameName+"_SELECT01";
	call_scene $SelectGameName;

	call_scene @->mc04_049vs_002.nss;

	$SelectGameName="@->"+$GameName+"_SELECT02";
	call_scene $SelectGameName;

	if($mc04_049vs_001 == true && $mc04_049vs_002 == true){
		$GameName = "mc04_051vs.nss";
		$mc04_049vs_001 = false;
		$mc04_049vs_002 = false;
	}else{
		$GameName = "mc04_050vs.nss";
	}


}

scene mc04_049vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	SoundPlay("@mbgm13",0,1000,true);

..//ジャンプ指定
//前ファイル　"mc04_048vs.nss"


//◆景明サイド

	CreateTextureSP("絵背景50", 100, Center, 0, "cg/bg/bg001_空a_01.jpg");
	CreateTextureSP("絵狸", 1590, center, middle, "cg/st/3d村正標準_騎航_戦闘b.png");
	Request("絵狸", Smoothing);
//	Rotate("絵狸", 0, @0, @0, @-50, null,true);
	Zoom("絵狸", 0, 1000, 1000, null, true);
	Move("絵狸", 0, @0, @-1300, null, true);
	SetBlur("絵狸", true, 1, 200, 100, false);

	CreateEffect("絵効果雨", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 200, 144, null, true);
	Zoom("絵効果雨", 0, 5000, 5000, null, true);
	Rotate("絵効果雨", 0, @0, @0, @90, null,true);
	Fade("絵効果雨", 0, 300, null, true);


	Shake_Loop("@絵狸","shake02");

	CreateSE("SE01","se戦闘_動作_鎧_速度失速01");
	CreateSE("SE10","se戦闘_動作_空突進05");

	FadeDelete("上背景", 1000, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
//	Move("絵背景50", 30000, @0, @-1500, Dxl2, false);
	Move("絵狸", 2000, @0, @1300, Dxl2, true);
	FadeF4("絵狸", 0, 1000, 60000, 0, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　一度は回復しかけた敵騎の<RUBY text="ネイリング">騎航</RUBY>が、また失われ。
　その様子を確認し――俺は戦慄した。

　狙っている。

　合当理の出力すら切って熱量をかき集め。
　<RUBY text="・・・・・・">墜落しながら</RUBY>、あの恐怖の一射を再び放とうとして
いる。

　まさに狂気の沙汰。
　しかし、何を驚くべきであろう。

　この凶敵にして、当然の仕儀！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_a.jpg");

	OnSE("se戦闘_動作_空突進01",1000);

	Move("絵狸", 300, @-1500, @0, Dxl2, true);

	Fade("絵背景100", 300, 1000, null, true);
	Delete("絵狸");
	Delete("絵効果雨");

//◆村正パワー充填
	SetFwC("cg/fw/fw景明_戦闘.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/049vs0010a00">
「<RUBY text="リニア・アクセル">磁気加速</RUBY>――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆磁気加速
	OnSE("se特殊_陰義_磁力加速01",1000);
	EffectZoomadd(18500, 300, 100, "cg/ev/ev904_村正マグネットコーティング_a.jpg", true);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/049vs0020a00">
「<RUBY text="グラビティ・アクセル">辰気加速</RUBY>！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆重力加速
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_b.jpg");
	Shake_Loop("@絵背景200","shake01");

	OnSE("se特殊_陰義_磁力加速02",1000);

	Fade("絵背景200", 300, 1000, null, false);
	EffectZoomadd(18500, 500, 300, "cg/ev/ev904_村正マグネットコーティング_b.jpg", true);

	Delete("絵背景100");


	CreateTextureEXadd("絵背景効果線", 10500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");

	CloudZoomSet(10000);
	CloudZoomStart(1000,800,800,1000,1000);

	Request("プロセス１", Start);

//◆ダッシュ。
	CreateTextureSP("絵背景50", 100, Center, 0, "cg/bg/bg002_空a_01.jpg");
	Shake_Loop("@絵背景50","shake01");
	Fade("絵背景200", 500, 0, null, false);
	Zoom("絵背景200", 500, 2000, 2000, Axl2, true);
	Delete("絵背景200");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　即断して、こちらも陰義を<RUBY text="く">繰</RUBY>る。
　操るは磁力と重力。

　武者の常識を超えた高々速度に到達する。
　最高級の<RUBY text="レーサークルス">競技用劒冑</RUBY>にさえ後塵を拝せしめる速さ。

　この世の何者も追い付くことはできないだろう。
　
　
　しかし。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆凶眼
	OnSE("se戦闘_バロウズ_ボーガン構え01",1000);

	CreateTextureSP("絵背景300", 18000, Center, Middle, "cg/ev/ev004_香奈枝の凶眼_b.jpg");
	EffectZoomadd(18500, 500, 300, "cg/ev/ev004_香奈枝の凶眼_b.jpg", true);

	Wait(300);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/049vs0030a00">
（振り切れて――いない！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　敵騎の眼はこの世ならぬものなのか。
　わかる。感じる……<RUBY text="ロック">捕捉</RUBY>されていると皮膚が叫ぶ。

　もし俺が後方に逃れようとしていたなら、為す<RUBY text="すべ">術</RUBY>も
なく背を打ち抜かれていたに違いない。
　しかし、敵に向かっていたからとて術はあろうか。

　捕捉されている以上、先制されるのも確実なのだ。
　そして敵のあの射法は標的を<RUBY text="・・・">絶対に</RUBY>外さない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：パラドックス射撃
	EfRecoIn1(18500,100);

	CreateTextureSP("絵回想", 18000, @0, @0, "cg/ef/ef025_パラドックスシューティングa.jpg");

	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　あれは、錯覚ではなかった――決して。
　射手の元から飛び立った矢が、途中で針路を変じて、
俺を貫いたのだ。

　<RUBY text="ホーミング">自動追尾</RUBY>なのか、<RUBY text="リモートコントロール">遠隔制御</RUBY>なのかは定かでない。
　俺の勘は後者だと告げているが、根拠は無かった。

　確かな事実は、回避の方法が<RUBY text="・・">無い</RUBY>という事。

　術式がどちらであれ高速騎航によって相手側の捕捉
限界を超える方法で破れる筈だ、が……
　陰義を重ね掛けし、最高速度にまで達してなお振り
切れないのでは、諦めるしかない。

　その他の回避手段を模索しようにも、如何せん情報
が足りなかった。
　敵手の術技を一度見たのみで完全に見切るような才
は生憎、俺と無縁である。

　従って――――

　敵騎は必ず先制射撃する。
　その射撃は必ず命中する。
　
　……以上二項を前提として対処せねばならない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(100);

	Delete("絵回想*");
	Delete("絵背景300");
//おがみ：▼コックピット動作一式================
	CreateTextureSP("絵背景50", 100, Center, -400, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Request("絵背景50", Smoothing);
	CreateSE("SE10","se戦闘_動作_空突進05");


	FrameShake();

	CP_EnemyFade(0,3,200,250);

	CP_AltChangeA();
	CP_HighChange(0,453,null,false);
	CP_SpeedChange(0,440,null,false);
	CP_AziChange(0,-189,nul,false);

	MyLife_Count(0,189);
	MyTr_Count(0,160);
	CP_PowerChange(0,52,null,false);
	CP_IHPChange(0,3,null,false);

	Cockpit_AllFade2();


	MusicStart("SE10",2000,300,0,1000,null,true);
	BGMoveAuto("@絵背景50",1);
//おがみ：▲コックピット動作一式================

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　矢が撃ち放たれるまで、おそらくあと一呼吸有るか
無きか。
　その極少時間で無理難題に挑む。

　思い浮かぶ手立ては一つきりだった。
　
　――矢払いの術。

　飛来する矢を、一剣にて切り落とす。
　入神、極頂の業である。……生身の者にとっては。

　腕に覚えある武者ならば、弓矢はおろか銃弾ですら
太刀一閃にて打ち払うをさしたる難事とはすまい。

　だが武者であっても、同じ武者の弓から放たれる矢
は大いなる脅威と<RUBY text="みな">看做</RUBY>さねばならなかった。
　弾速において<RUBY text="ライフル">長銃</RUBY>を凌ぐ武者弓箭の前では、劒冑で
強化された反射神経さえ無意味と<RUBY text="だ">堕</RUBY>すのだ。

　切り払うのは至難の上の最難事。
　
　
　……その最難事を俺は成し遂げねばならない。

　それを成さねばこの太刀が敵騎に届かない。
　あの敵を殺せない。

　<RUBY text="ボルト">回転矢</RUBY>がもう一度、この身体に食い込んだなら、俺
は失墜するだろう。
　先刻の一弾で既に肉体は限界への<RUBY text="カウントダウン">秒読み</RUBY>を開始して
いるのだ。

　矢を払えなければそこで敗北は決する。
　
　如何にして、成すか？

　動体視力と反応速度そして運動能力の卓抜をもって、
できる業でないことは明白だ。
　三種のどれ一つとして常人の枠を出ない湊斗景明に
は到底、不可能だ。

　技術をもって挑むのが唯一の可能性だろう。
　しかし俺の学んだ吉野御流は、現況において有効と
なる矢払いの術を伝えていなかった。

　だから――<k>
　唯今、即座に、<RUBY text="・・・・・・・・・">ここで業を工夫する</RUBY>。

　無謀の一択。

　法外の企図だ。
　成功率はごく僅かであろう。

　その蜘蛛の糸のような可能性を掴み取らねば、あの
<RUBY text="サジタリウス">弓騎士</RUBY>の殺害は許されない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 3000, 0, null);


//◆バロウズ射撃体勢
	CreateTextureEX("kana", 18100, 0, Middle, "cg/ev/resize/ev205_矢を撃ち放つバロウズ_al.jpg");
	SetBlur("kana", true, 1, 300, 100, false);
	Move("kana", 0, @-200, @-200, null, true);
	CreateTextureEX("絵EV100", 18000, 0, Middle, "cg/ev/ev205_矢を撃ち放つバロウズ_a.jpg");
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	SetBlur("絵EV100", true, 1, 300, 100, false);

	Move("kana", 0, @-200, @+100, null, true);



	Fade("kana", 300, 1000, null, false);
	Fade("絵EV100", 300, 1000, null, false);
	Move("kana", 300, @-300, @250, Dxl2, true);


	Move("絵EV100", 0, -390, 140, null, true);

	EffectZoomDXadd(18500, 1000, 100, "#FFFFFF", "cg/ev/resize/ev205_矢を撃ち放つバロウズ_al.jpg", false);
	OnSE("se特殊_鎧_装着06",1000);
	FadeDelete("kana", 250, false);
	Move("絵EV100", 500, 0, 0, Axl3, false);
	Zoom("絵EV100", 500, 1000, 1000, Axl3, true);

	Wait(500);



	CreateSE("SEボウガン","se特殊_バロウズ_パワー充電_L");
	MusicStart("SEボウガン",1000,1000,0,1000,null,true);
	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　――――来る。
　
　俺の肌の粟立ちが、敵の殺意の肉迫が、残り時間を
あと一秒弱と告げている。

　多角的視点から方法を検討しているゆとりはない。
〝選択〟が必要だ。

　<RUBY text="・・・・・">どの方向で</RUBY>考えるか。
　それを選ぼう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/049vs0040a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 18000, "BLACK");

	SetVolume("SE*", 3000, 0, null);
	Fade("絵色100", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　選ぶのだ。考えるのは方向を選んだ後だ。
　正しい方向を知るために考えてはならない。それは
今、時間の浪費しか意味しない。敗北以外の結末を呼
ばない。

〝選択〟をせよ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//おがみ：フラッシュバック演出入れるか？悩みどころ

	CreateColorEXadd("絵色フラッシュバック", 18500, "WHITE");

	Fade("絵色フラッシュバック", 100, 1000, null, true);
	CreateTextureSP("絵回想", 18000, @0, @0, "cg/ev/ev942_村正ＶＳ真改.jpg");
	Fade("絵色フラッシュバック", 200, 200, null, true);

	Wait(500);

	Fade("絵色フラッシュバック", 100, 1000, null, true);
	CreateTextureSP("絵回想", 18000, @0, @0, "cg/ev/ev958_長坂馬乗り.jpg");
	Fade("絵色フラッシュバック", 200, 200, null, true);

	Wait(500);

	Fade("絵色フラッシュバック", 100, 1000, null, true);
	CreateTextureSP("絵回想", 18000, @0, @0, "cg/ev/ev943_村正ＶＳ月山.jpg");
	Fade("絵色フラッシュバック", 200, 200, null, true);

	Wait(500);

	Fade("絵色フラッシュバック", 100, 1000, null, true);
	CreateTextureSP("絵回想", 18000, @0, @0, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");
	Fade("絵色フラッシュバック", 200, 200, null, true);

	Wait(500);

	Fade("絵色フラッシュバック", 100, 1000, null, true);
	CreateTextureSP("絵回想", 18000, @0, @0, "cg/ev/ev180_落ちてゆくガッタイダー・ヘッド_c.jpg");
	Fade("絵色フラッシュバック", 200, 200, null, true);

	Wait(500);

	Fade("絵色フラッシュバック", 100, 1000, null, true);
	CreateTextureSP("絵回想", 18000, @0, @0, "cg/ev/ev187_銘伏の妖剣_a.jpg");
	Fade("絵色フラッシュバック", 200, 200, null, true);

	Wait(500);

	Fade("絵色フラッシュバック", 100, 1000, null, true);

	Delete("絵回想");
	FadeDelete("絵色フラッシュバック", 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
　湊斗景明には膨大な戦闘経験の蓄積がある。
　その中におそらく一つは、正答への手掛かりとなる
ものが含まれている筈だ。

　それを選べ。

　そしてもう一つ。
　現状況下における要点が何であるか、それも選択に
よって決定せよ。

　選んだ要点に基いて戦闘記録を参照、検討し、敵の
射法に対抗し得る<RUBY text="アート">戦技</RUBY>を完成させることになる。

　では選ぼう。
　俺の過去から一つを選んで引き出そう。

　それは――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆選択：鈴川令法との戦闘／長坂右京との戦闘／風魔小太郎との戦闘／雪車町一蔵との戦闘／来栖野小夏との戦闘／大鳥獅子吼との戦闘


}


scene mc04_049vs_002.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateColorSP("絵色100", 18000, "BLACK");


	Delete("上背景");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　そして要点は、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆選択：自分の負傷状況／村正の損傷状況／敵騎の損傷状況／敵騎の視力／敵騎の目的／天候の悪化
//◆正解は「大鳥獅子吼」「敵騎の視力」


//◆ここの選択肢ではフラグのみ回収

}

..//ジャンプ指定
//◆選択ミス　"mc04_050vs.nss"
//◆選択成功　"mc04_051vs.nss"

//★選択肢シーン
scene mc04_049vs.nss_SELECT01
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	CP_AllDelete();

	SoundPlay("@mbgm13",0,1000,true);
	CreateColorSP("絵色100", 18000, "BLACK");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice06("鈴川令法との戦闘","長坂右京との戦闘","風魔小太郎との戦闘","雪車町一蔵との戦闘","来栖野小夏との戦闘","大鳥獅子吼との戦闘");
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
			ChoiceA06();
//鈴川令法との戦闘
		}
		case @選択肢２
		{
			ChoiceB06();
//長坂右京との戦闘
		}
		case @選択肢３
		{
			ChoiceC06();
//風魔小太郎との戦闘
		}
		case @選択肢４
		{
			ChoiceD06();
//雪車町一蔵との戦闘
		}
		case @選択肢５
		{
			ChoiceE06();
//来栖野小夏との戦闘
		}
		case @選択肢６
		{
			ChoiceF06();
			$mc04_049vs_001 = true;
//大鳥獅子吼との戦闘
		}
	}
}

scene mc04_049vs.nss_SELECT02
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	SoundPlay("@mbgm13",0,1000,true);
	CreateColorSP("絵色100", 18000, "BLACK");
	CP_AllDelete();

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice06("自分の負傷状況","村正の損傷状況","敵騎の損傷状況","敵騎の視力","敵騎の目的","天候の悪化");
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
			ChoiceA06();
//自分の負傷状況
		}
		case @選択肢２
		{
			ChoiceB06();
//村正の損傷状況
		}
		case @選択肢３
		{
			ChoiceC06();
//敵騎の損傷状況
		}
		case @選択肢４
		{
			ChoiceD06();
//敵騎の視力
			$mc04_049vs_002 = true;
		}
		case @選択肢５
		{
			ChoiceE06();
//敵騎の目的
		}
		case @選択肢６
		{
			ChoiceF06();
//天候の悪化"
		}
	}
}



