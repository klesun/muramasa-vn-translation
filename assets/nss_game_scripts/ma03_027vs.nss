//<continuation number="820">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_027vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma03_027vs.nss","ma03_027vs_runs",true);
	Conquest("nss/ma03_027vs.nss","ma03_027vs_runsProcess",true);
	Conquest("nss/ma03_027vs.nss","ma03_027vs_runsDelete",true);
	Conquest("nss/ma03_027vs.nss","ma03_SB2",true);
	Conquest("nss/ma03_027vs.nss","ma03_SB",true);
	Conquest("nss/ma03_027vs.nss","ma_03_SBProcess",true);
	Conquest("nss/ma03_027vs.nss","ma_03_SBProcess2",true);
	Conquest("nss/ma03_027vs.nss","ma_03_SBDelete",true);
	Conquest("nss/ma03_027vs.nss","fakeCP",true);

	CP_AllSet("アベンジ");
//	CP_AllSet("村正");

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
	#bg038_サーキット直線b_01 = true;

	#ev504_村正突進=true;
	#ev904_村正マグネットコーティング_a=true;
	#ev904_村正マグネットコーティング_b=true;

	#ev908_村正電磁擲刀_a=true;
	#ev908_村正電磁擲刀_b=true;
	#ev908_村正電磁擲刀_c=true;

	#ev902_村正電磁抜刀レールガン_d=true;

	#ev118_サーキットを見下ろす光と二世村正=true;

	#ev925_野太刀断片_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "ma03_028.nss";

}

scene ma03_027vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_026.nss"

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg001_空a_03.jpg");

	Delete("上背景");


	SoundPlay("@mbgm25",0,1000,true);


//◆村正サイド
//◆モニター展開。前方のアベンジをロックオン
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0010a01">
《敵騎捕捉！》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0020a00">
「……サーキットに向かっているのか？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジ、サーキット突入
//◆ホームストレートへ
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/7.png", true);

	Delete("絵背景100");

	CreateTextureSP("絵背景100", 100, 0, Middle, "cg/bg/resize/bg001_空a_03.jpg");
	CreateTextureSP("絵st100", 100, -1024, Middle, "cg/st/3dアベンジ_騎航_通常.png");
	Rotate("絵st100", 0, @0, @180, @0, null,true);

	Move("絵背景100", 1000, @-1024, @0, null, false);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_0", true);

	OnSE("se戦闘_動作_空突進08",1000);

	Move("絵st100", 500, @+2548, @0, Dxl1, true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景100");
	Delete("絵st100");

	Cockpit_AllFade2();

//嶋：後で差分に変更
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
//	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
//	Zoom("絵背景100", 0, 2000, 2000, Dxl1, true);
//	SetBlur("絵背景100", true, 3, 500, 50, true);

//	Shake("絵背景100", 5000, 1, 10, 0, 0, 500, null, false);
//	Zoom("絵背景100", 300, 1000, 1000, Dxl1, false);
..//速度：167、出力：275
	CP_SpeedChange(0,167,null,false);
	CP_HighChange(0,10,null,false);
	MyLife_Count(0,150);
	MyTr_Count(0,275);


	ma03_027vs_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_03a.jpg");

	$ma03_027vs_runs01 = 175;
	$ma03_027vs_runs02 = 350;

	FrameShake();

	CreateSE("SE01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",500,1000,0,1000,null,true);


	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　皇路操と皇路卓は実の親子ではない。
　歳の離れた兄妹だった。

　卓の父が老境に差し掛かってから後添えを迎え、操
を産ませたからだ。
　そして産ませるや、死んだ。なんとも無責任極まる
ことに。

　夫に先立たれた若い妻も無責任さではひけを取らな
かった。さっさと姓を復し、新たな男のもとへ嫁いで
いったのだ。子供は連れずに。
　似合いの夫婦だったというべきだろう。

　残されたのは卓と操。
　その頃、卓にとってはもう一つ大きな事件があった。

　大戦の幕開け――
　閉ざされた未来。

　家族の崩壊と、騎手としての死……
　兄の絶望の渦中で、操は誕生したのだ。

　だから操は兄の栄光を知らない。
　操にとっての兄は転落から始まっている。

　――兄の失意。
　皇路操の原点。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ストレートを駆け抜ける

	OnSE("se戦闘_動作_空突進02",800);

	SetFrequency("SE01", 500, 1500, Axl1);

..//速度：276、出力：321
	CP_SpeedChange(1500,276,AxlAuto,false);
	MyTr_Count(1500,321);

	$ma03_027vs_runs01 = 125;
	$ma03_027vs_runs02 = 250;

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	SetVertex("絵背景50", 515, 390);
	SetBlur("絵背景50", true, 3, 500, 50, false);
	Zoom("絵背景50", 1000, 4000, 4000, Dxl1, false);

	Wait(1500);

	SetVolume("SE01", 1000, 0, null);

	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);
	ma03_027vs_runsDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆横書きボックス
　
　　　　　　　　　００：００：００

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0,0);//―――――――――――――――――――――――――――――

	Cockpit_AllFade0();
	Delete("絵背景*");

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	CreateTextureSP("絵背景200", 1000, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	SetBlur("絵背景200", true, 3, 500, 100, false);

	Zoom("絵背景100", 0, 3000, 3000, Dxl1, true);

	Shake("絵背景200", 1000, 0, 1, 0, 0, 500, null, false);
	Move("絵背景200", 500, @+1500, @0, Dxl1, false);
	Zoom("絵背景200", 500, 3000, 3000, Dxl1, false);
	OnSE("se戦闘_動作_空突進01",1000);
	Zoom("絵背景100", 200, 1000, 1000, Dxl1, false);

	CreateSE("SE01","se戦闘_動作_空走行01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);
	Shake("絵背景100", 100000, 1, 2, 0, 0, 1000, null, false);
	FadeDelete("絵背景200", 500, false);

	FadeDelete("黒", 300, true);

//◆村正モニター

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　ホームストレートに入った青色の騎体が、スタート
ラインを越える。
　
　速い。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0030a01">
《引き離される……！》

{	FwR("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0040a00">
「磁装を行う！
　<RUBY text="コイル">導源</RUBY>を走らせろ、村正！」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0050a01">
《諒解！
{	OnSE("se特殊_陰義_発動04",1000);}
　――<RUBY text="ながれ・まわる">磁装・正極</RUBY>……》

{	FwR("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0060a00">
《<RUBY text="リニア・アクセル">磁気加速</RUBY>！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆加速
	OnSE("se特殊_陰義_磁力加速01",1000);

//◆アベンジ
//◆コーナー回る

	SetVolume("SE01", 500, 0, null);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Delete("@絵背景*");
//	ma03_027vs_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");

//	FrameShake();
//	Cockpit_AllFade2();

	ma03_SB2(2000,2,700,-400);
	ma03_SB(2001,200);

	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",500,1000,0,1000,null,true);

	CreateTextureSP("絵st100", 2200, 1024, Middle, "cg/st/3dアベンジ_騎航_通常.png");

	Move("絵st100", 300, @-1324, @0, Dxl1, false);
	BGMoveAuto("@絵st100",3);

	DrawDelete("黒幕１", 300, 100, "slide_03_01_1", true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　卓は操の父になることを決意し、そう呼ばせた。
　その時点で、彼の不器用さを推察し得る者もいるに
違いない。そして実際、彼はサーキット場以外のあら
ゆる場所で不器用だったのだ。

　彼の育てぶりは、本人の責任によらず突如扶養家族
を背負わされたという点を差し引いても、決して褒め
られたものではなかったろう。
　天才騎手は子育ての才能を全く持たなかった。

　幼少期、操は色々な不自由をした。
　同世代の子供達に比べて、より多くの我慢をした。
　そうさせたのは彼女の兄だと言って良い。

　けれどそこには愛情があった。
　兄の養育が操に良い何かをもたらす時も、悪い何か
をもたらす時も、根本の起点は常に愛情だった。

　だから、充分だった。
　皇路操は人生の全てを幸福の中で過ごした。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	BGMoveDelete();

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);

	SetBlur("絵st100", true, 3, 400, 50, false);
	BezierMove("@絵st100", 800, (@0,@0){@+500,@+100}{@+500,@+100}(@+500,@+150){@-1000,@-100}{@-1000,@-100}(@-3000,@-300), Axl2, true);

	SetVolume("SE01", 300, 0, null);


	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);
	ma03_027vs_runsDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆横書きボックス
　
　　　　　　　　　００：１４：５５

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――

	Cockpit_AllFade0();

	Delete("絵背景*");
	Delete("絵st100");

	CreateTextureSP("絵st100", 2200, 1024, Middle, "cg/st/3d村正標準_騎航_陰義.png");

	OnSE("se戦闘_動作_空突進08",1000);
	Move("絵st100", 300, @-1324, @0, Dxl1, false);
	BGMoveAuto("@絵st100",4);
	FadeDelete("黒", 10, true);


//◆村正モニタ
	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0070a00">
「もう一段！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0080a01">
《いいのね!?》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0090a00">
「今は一瞬でも刹那でも早く追いつくことが
必要とされている！
　他は全て些事！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0100a01">
《諒解！
　辰気、招き集わせ<RUBY text="たぐ">手繰</RUBY>る》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0110a01">
《<RUBY text="ゆうへい">誘聘</RUBY>――》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0120a00">
《<RUBY text="グラビティ・アクセル">辰気加速</RUBY>！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆重力加速

	OnSE("se特殊_陰義_磁力加速01",1000);

	BGMoveDelete();
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureSPsub("絵st200", 2200, -300, Middle, "cg/st/3d村正標準_騎航_陰義.png");

	SetBlur("絵st200", true, 4, 500, 50, false);
	Move("絵st200", 600, @-1500, @0, Dxl1, false);
	Move("@絵st100", 500, @-1500, @0, Dxl1, false);

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	ma_03_SBDelete();
	Delete("絵st100");
	Delete("絵st200");
	Delete("@絵背景*");

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	ma03_027vs_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_03a.jpg");

	FrameShake();
	Cockpit_AllFade2();

..//速度：276、出力：321
	CP_SpeedChange(0,276,null,false);
	CP_HighChange(0,10,null,false);
	MyTr_Count(0,321);

	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",500,1000,0,1000,null,true);

	DrawDelete("黒幕１", 300, 100, "slide_01_02_1", true);

//◆アベンジ
//◆Ｓ字？

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　<RUBY text="アーマーレーサー">装甲騎手</RUBY>になってからも。
　多くの苦痛を味わうようになってからも。

　操の兄はサーキットにおける闘い方のほかに知る事
がなかった。
　それしか教えられる事がなかった。だから教えた。

　しかし操の中に才能を見出して以降は、そこに明確
な意欲が加わった。
　卓は操が、己の代わりに闘えると知ったのだ。

　彼は操に全てを教えると告げ、事実そうした。

　訓練は辛かった。
　専門の勉強も苛酷だった。
　
　何より、資金を集めるための労働には心を削られた。

　それでも操は不幸ではなかった。
　兄の愛は変わらずそこにあったから。

　兄は操を求めていた。
　絶対的に必要としていた。
　悲願を叶えるために。

　……それは。
　あるいは最早、愛ではなかったのかもしれない。

　だが、求められていたのなら、
　何物にも代え難く、必要とされていたのなら、

　それは愛に近しいものだ。
　――例え、そうではなかったとしても、

　皇路操という少女には充分だった。
　幸福に生きるためにはそれで充分だった。

　兄の求めに応えることが喜びだった。
　彼女は知っていた。

　自分はそのために生まれたのだと。
　<RUBY text="きめ">知っ</RUBY>ていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 500, 0, null);


	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	ma03_027vs_runsDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//◆横書きボックス
　
　　　　　　　　　００：３６：４３

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――


	Cockpit_AllFade0();

	Delete("絵背景*");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_a.jpg");

	CreateTextureSPmul("絵背景200", 200, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_a.jpg");
	Fade("絵背景200", 0, 700, null, true);

	CreateTextureSPadd("絵背景300", 150, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_a.jpg");
	Fade("絵背景300", 0, 700, null, true);

	CreateSE("SE01","se特殊_陰義_磁力加速03_L");
	MusicStart("SE01",300,1000,0,1000,null,true);

	Shake("絵背景200", 500000, 1, 1, 0, 0, 1000, null, false);
	SetBlur("絵背景200", true, 3, 500, 100, false);
	Fade("絵背景300", 1000, 0, Dxl1, false);
	Fade("絵背景200", 1000, 0, Dxl1, false);
	Zoom("絵背景200", 1000, 1200, 1200, Dxl1, false);

	FadeDelete("黒", 300, true);

//◆村正
//◆アベンジに迫る。ロックオン
	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0130a00">
「――良し」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0140a01">
《届く――》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	SetVolume("SE01", 500, 0, null);

//◆アベンジ
//◆バックストレート
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("@絵背景*");

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");

	ma03_027vs_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_03a.jpg");

	FrameShake();
	Cockpit_AllFade2();

..//速度：276、出力：321
	CP_SpeedChange(0,276,null,false);
	CP_HighChange(0,10,null,false);
	MyTr_Count(0,321);

	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",500,1000,0,1000,null,true);

	DrawDelete("黒幕１", 300, 100, "slide_01_02_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　皇路操の腕は兄の腕。
　皇路操の足は兄の足。
　兄が創り、育てた、兄のための身体。

　この命は、唯、
　兄の願いを叶えるためにある。

　兄の願い――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆アベンジ・ダッシュ。爆走

	CreateColorEXadd("絵色100", 10000, "BLUE");
	CreateColorEXadd("絵色200", 10000, "White");
	OnSE("se特殊_鎧_アベンジ加速01",1000);

..//速度：381、出力：392
	CP_SpeedChange(1000,381,null,false);
	MyTr_Count(1000,392);

	Fade("絵色100", 100, 800, null, true);

	Fade("絵色100", 100, 800, null, true);
	Fade("絵色100", 100, 0, null, true);
	Fade("絵色100", 100, 800, null, true);
	Fade("絵色100", 100, 0, null, true);
	Fade("絵色100", 100, 800, null, true);
	Fade("絵色100", 300, 0, null, true);
	Fade("絵色200", 200, 500, null, false);
	Fade("絵色100", 500, 800, null, true);
	$ma03_027vs_runs01 = 100;
	$ma03_027vs_runs02 = 200;

	Fade("絵色200", 1000, 0, null, false);
	Fade("絵色100", 500, 0, null, true);

	SetVolume("SE01", 500, 0, null);

	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	ma03_027vs_runsDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//◆横書きボックス
　
　　　　　　　　　００：４９：６４

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――


	Cockpit_AllFade0();

	Delete("絵背景*");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_a.jpg");

	FadeDelete("黒", 10, true);
//◆村正
//◆距離が縮まらなくなる
	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0150a00">
「……なっ……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0160a01">
《そんな――》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆再び引き離される
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0170a01">
《辰気まで使っている、私よりも……
　更に速い!?》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0180a00">
「……ッッ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒", 25000, "Black");
	OnSE("se擬音_回想_フラッシュバック01",1000);
	Fade("黒",10,1000,null,true);

	Cockpit_AllFade0();

	SetVolume("@mbgm25", 2000, 0, null);

	OnBG(100,"bg037_競技場ガレージb_01.jpg");
	FadeBG(0,true);

	CreateColor("絵回想", 1000, 0, 0, 1024, 576, #847000);
	SetAlias("絵回想","絵回想");
	CreateColor("絵回想2", 1000, 0, 0, 1024, 576, "White");
	SetAlias("絵回想2","絵回想2");
	Fade("絵回想", 0, 400, null, true);
	Fade("絵回想2", 0, 200, null, true);
	Request("絵回想", MulRender);
	Request("絵回想2", AddRender);


	Fade("黒",500,0,null,true);

//◆アベンジ
//◆ヘアピン？
	SetFwC("cg/fw/fw皇路_通常b.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/027vs0190b24">
「一分二五秒一三。
　――知っているな？　操」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/027vs0200b24">
「僕はあの領域に挑む。
　世界の<RUBY text="いただき">頂上</RUBY>を望んで果たせなかった過去に
逆襲する」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/027vs0210b24">
「だから……
　越えてみせてくれ」

{	FwC("cg/fw/fw皇路_通常a.png","Sepia");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/027vs0220b24">
「世界の極限を。
　僕の<RUBY text="アベンジ">逆襲</RUBY>を果たしてくれ。操」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("黒",500,1000,null,true);

	Delete("絵回想");
	Delete("絵回想2");
	Delete("OnBG*");
	Delete("絵色*");
	Delete("絵背景*");



	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	ma03_027vs_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_03a.jpg");

	Cockpit_AllFade2();

..//速度：381、出力：392
	MyTr_Count(0,392);
	CP_SpeedChange(0,381,null,false);
	CP_HighChange(0,10,null,false);

	FrameShake();

	CreateSE("SE01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",500,1000,0,1000,null,true);

	FadeDelete("黒",100,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　――一分二五秒一三。
　その超越が、兄の願い。

　一分二五秒一三！
　皇路操の、打倒すべき敵――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	ma03_027vs_runsDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//◆横書きボックス
　
　　　　　　　　　０１：００：３８

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――

	Cockpit_AllFade0();
	Delete("絵背景*");

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/ev/ev504_村正突進.jpg");

	FadeDelete("黒", 10, true);

	SoundPlay("@mbgm25",0,1000,true);

//◆村正
	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0230a00">
「村正ッ！
　ここから――仕留める!!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0240a01">
《どうやって――》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0250a00">
「<RUBY text="・">裏</RUBY>だ！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0260a01">
《……諒解！》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0270a00">
《<RUBY text="エンチャント">磁気鍍装</RUBY>――<RUBY text="エンディング">蒐窮</RUBY>!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景10", 1000, Center, Middle, "cg/ev/ev908_村正電磁擲刀_a.jpg");
	CreateTextureEX("絵背景100", 1200, Center, Middle, "cg/ev/ev908_村正電磁擲刀_a.jpg");
	CreateTextureEX("絵背景120", 2000, Center, Middle, "cg/ev/ev908_村正電磁擲刀_a.jpg");
	SetBlur("絵背景120", true, 3, 500, 100, false);

	SetVolume("@mbgm*", 1000, 0, null);
	CreateSE("SE02","se戦闘_動作_刀構え02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Fade("絵背景100", 300, 1000, null, false);
	Zoom("絵背景120", 300, 2000, 2000, null, false);
	Fade("絵背景120", 300, 500, null, true);
	FadeDelete("絵背景120", 300, true);

	Wait(1000);


	CreateColorEX("黒", 20000, "Black");
	Fade("黒",500,1000,null,true);

	Delete("OnBG*");
	Delete("絵色*");
	Delete("絵背景*");

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	ma03_027vs_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_03a.jpg");

	Cockpit_AllFade2();

	MyTr_Count(0,513);
	CP_SpeedChange(0,463,null,false);
	CP_HighChange(0,10,null,false);

	FrameShake();

	CreateSE("SE01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",500,500,0,1000,null,true);

	SoundPlay("@mbgm11",0,1000,true);
	FadeDelete("黒",300,true);


//◆アベンジ
	SetFwC("cg/fw/fw操_真面目.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【操】
<voice name="操" class="操" src="voice/ma03/027vs0280b42">
「翼をください。
　空をひた駆けるために」

//【操】
<voice name="操" class="操" src="voice/ma03/027vs0290b42">
「翼をください。
　<RUBY text="ちち">私</RUBY>の願いを叶えるために」

//【操】
<voice name="操" class="操" src="voice/ma03/027vs0300b42">
「翼をください。
　願いに打ち克つための翼を！」

//【操】
<voice name="操" class="操" src="voice/ma03/027vs0310b42">
「<RUBY text="アベンジ・ザ・ブルー">〝逆襲騎〟</RUBY>!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色100", 10000, "BLUE");
	CreateColorEXadd("絵色200", 10000, "White");
	OnSE("se特殊_鎧_アベンジ加速01",1000);


	MyTr_Count(1300,540);
	CP_SpeedChange(1300,586,Axl1,false);
	Fade("絵色100", 100, 1000, null, true);

	Fade("絵色100", 100, 1000, null, true);
	Fade("絵色100", 100, 0, null, true);
	Fade("絵色100", 100, 1000, null, true);
	Fade("絵色100", 100, 0, null, true);
	Fade("絵色100", 100, 1000, null, true);
	Fade("絵色100", 300, 0, null, true);
	Fade("絵色200", 200, 500, null, false);
	Fade("絵色100", 500, 1000, null, true);
	$ma03_027vs_runs01 = 75;
	$ma03_027vs_runs02 = 150;
	Fade("絵色200", 1000, 0, null, false);
	Fade("絵色100", 500, 0, null, true);

	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	ma03_027vs_runsDelete();

	Cockpit_AllFade0();
	Delete("絵背景*");
	Delete("絵色*");

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/ev/ev908_村正電磁擲刀_a.jpg");

	FadeDelete("黒", 10, true);

	CreateTextureEX("絵背景200", 1000, -722, -13, "cg/ev/resize/ev908_村正電磁擲刀_al.jpg");
	CreateTextureEX("絵背景300", 1500, -722, -13, "cg/ev/resize/ev908_村正電磁擲刀_bl.jpg");

	Move("絵背景200", 0, @+300, @0, null, true);
	Move("絵背景200", 300, @-300, @0, Dxl1, false);
	Fade("絵背景200", 200, 1000, null, true);

	Wait(500);

	CreateSE("SE03","se特殊_鎧_装着05");
	MusicStart("SE03",0,1000,0,1000,null,false);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,500,null,true);
	Fade("絵背景300", 200, 1000, null, true);
	Fade("絵背景200", 0, 0, null, false);
	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

	CreateTextureSP("絵背景200", 1100, Center, Middle, "cg/ev/ev908_村正電磁擲刀_b.jpg");
	FadeDelete("絵背景300", 300, true);

	CreateTextureEX("絵背景500", 1200, Center, Middle, "cg/ev/ev908_村正電磁擲刀_c.jpg");
	CreateTextureEX("絵背景400", 1200, Center, Middle, "cg/ev/ev908_村正電磁擲刀_c.jpg");
	CreateTextureEX("絵背景600", 1200, Center, Middle, "cg/ev/ev908_村正電磁擲刀_c.jpg");
	SetBlur("絵背景600", true, 3, 500, 100, false);
	SetVertex("絵背景600", 680, 130);

	CreateSE("SE02","se特殊_電撃_帯電01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵背景500", 300, 1000, null, false);
	Shake("絵背景400", 100000, 1, 1, 0, 0, 1000, null, false);
	Zoom("絵背景600", 300, 1200, 1200, Dxl1, false);
	Fade("絵背景600", 300, 500, null, false);
	Fade("絵背景400", 500, 1000, null, true);
	Fade("絵背景600", 300, 0, null, true);

//◆村正
//◆脇差が紫電を帯びる

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　――吉野御流合戦礼法。
〝<RUBY text="ヒコウ">飛蝗</RUBY>〟が崩し。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0320a00">
《<RUBY text="レールガン">電磁擲刀</RUBY>――――〝<RUBY text="カシリ">呪</RUBY>〟》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE02", 500, 0, null);
	OnSE("se特殊_陰義_レールガン呪",1000);

	CreateTextureEX("絵ef100", 3000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	SetBlur("絵ef100", true, 3, 500, 200, false);
	Zoom("絵ef100", 0, 2000, 2000, null, true);
	Zoom("絵ef100", 300, 2000, 1000, Dxl1, false);
	Fade("絵ef100", 300, 1000, null, true);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵背景*");
	Delete("絵ef100");

	ma03_SB2(2000,2,700,-400);
	ma03_SB(2001,200);

	CreateTextureSP("絵st100", 2200, 1024, Middle, "cg/st/3dアベンジ_騎航_通常_b.png");
	Request("絵st100", Smoothing);

	CreateTextureEX("絵st500", 3000, -300, Middle, "cg/st/3dアベンジ_騎航_通常.png");
	SetBlur("絵st500", true, 3, 300, 50, false);
	SetBlur("絵st100", true, 3, 300, 50, false);

	Move("絵st100", 200, @-1324, @0, Dxl1, false);

	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",500,1000,0,1000,null,true);


	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	CreateColorEXadd("絵色100", 15000, #FFFFFF);

	SetBlur("絵st100", true, 3, 300, 50, false);

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);
	Fade("絵st500", 100, 1000, Dxl1, false);
	Fade("絵st100", 100, 0, Axl2, false);
	BezierMove("@絵st500", 800, (@0,@0){@0,@-100}{@0,@-100}(@0,@-150){@0,@0}{@0,@0}(@0,@+50), Dxl1, false);
	BezierMove("@絵st100", 800, (@0,@0){@0,@-100}{@0,@-100}(@0,@-150){@0,@0}{@0,@0}(@0,@+50), Dxl1, false);
	Zoom("絵st100", 300, 500, 500, Dxl1, false);
	Zoom("絵st500", 300, 500, 500, Dxl1, false);
	Fade("絵色100", 0, 1000, null, false);
	OnSE("se特殊_陰義_重力波01",1000);
	DrawTransition("絵色100", 200, 0, 400, 50, Dxl1, "cg/data/slide_05_00_1.png", true);
	DrawTransition("絵色100", 300, 400, 0, 50, Axl2, "cg/data/slide_05_00_1.png", false);
	Fade("絵st100", 100, 1000, Dxl1, false);
	Fade("絵st500", 100, 0, Axl2, false);

	Wait(300);

	OnSE("se特殊_鎧_レース_加速02",1000);
	Zoom("絵st500", 300, 1000, 1000, Dxl1, false);
	Fade("絵st500", 10, 1000, Dxl1, false);
	Fade("絵st100", 10, 0, Axl2, false);
	BezierMove("@絵st500", 800, (@0,@0){@+500,@+100}{@+500,@+100}(@+500,@+150){@-1000,@-100}{@-1000,@-100}(@-3000,@-300), Axl2, true);

	Wait(100);

	SetVolume("SE*", 500, 0, null);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵色100");
	Delete("絵st*");
	ma_03_SBDelete();

	CreateTextureSP("絵背景50", 100, 0, 0, "cg/ev/resize/ev908_村正電磁擲刀_bl.jpg");

	Move("絵背景50", 300, @-512, @0, Dxl1, false);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);


//◆脇差を抜き放ち投げ放つ。
//◆レーザービームっぽく。
//◆アベンジに向かってばびゅーん。光速。
//◆が、避けるアベンジ。超機動。
	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0330a00">
「……避けた!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0340a01">
《――嘘っ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　光の一閃にも等しい電磁抜刀の投射を……

　避けた、
　――――だとッ!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジ
//◆１３０Ｒ？

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("絵st100");
	Delete("@絵背景*");

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");

	ma03_027vs_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_03a.jpg");

	FrameShake();
	Cockpit_AllFade2();

	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",500,1000,0,1000,null,true);

	DrawDelete("黒幕１", 300, 100, "slide_01_02_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　世界の先端に独りで立てと、兄は言った。
　独りで――兄であり己である、この皇路操だけで。

　何もかも振り切って。
　追いすがる全てを振り捨てて。

　孤独へ。
　たった一人分の、その<RUBY text="スペース">場所</RUBY>へ――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	ma03_027vs_runsDelete();
	Cockpit_AllFade0();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//◆横書きボックス
　
　　　　　　　　　０１：０７：４４

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――


	ma03_SB2(2000,2,700,-400);
	ma03_SB(2001,200);
	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",500,700,0,1000,null,true);

	CreateTextureSP("絵st100", 2200, 1024, Middle, "cg/st/3d村正標準_騎航_陰義.png");

	Move("絵st100", 300, @-1324, @0, Dxl1, false);
	BGMoveAuto("@絵st100",2);

	FadeDelete("黒", 10, true);

//◆村正
//◆遠くなるアベンジ
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0350a01">
《……駄目……！
　追えない！　追いつけない！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　それは初めて聞くかもしれない、
　村正の挫折。

　彼女にそれを強いたものは銀星号ではなかった。
　真打武者ですらなかった。

　武者とも呼べない、玩具の使い手。
　現代の、神秘の技法からは遥か遠い、浅薄な技術で
造られた<RUBY text="レーサークルス">競技用劔冑</RUBY>が――入神とさえ謳われる劔冑に
絶望を強いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0360a00">
「……っ。
　やむ無し」

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0370a00">
「村正！
　敵騎の進路と速度を計算、合流可能地点で
待ち構える！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0380a01">
《……御堂。
　でも、それじゃ……孵化に間に合うか》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0390a00">
「わからぬ。
　だが他の<RUBY text="みち">途</RUBY>は潰えた」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0400a01">
《……諒解！
　じゃあ、目標地点は》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0410a00">
「――ホームストレートほぼ中央。
　コントロールライン。<RUBY text="・・・・・・">ゴールライン</RUBY>だ」

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0420a00">
「そこへ直進で向かう」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0430a01">
《……駄目よ。
　それではこちらが先に着く！　待たされる
ことになる》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0440a01">
《時間の無駄は可能な限り減らさなくては。
　あの直線の入口のあたりで待つべきよ》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0450a00">
「――否。
　それでは俺達はアベンジの背を拝むことに
なる。そして二度と、追いつけない」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0460a01">
《そんな、はずは――》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0470a00">
「敵騎の<RUBY text="あし">速力</RUBY>は<RUBY text="・・・・・">更に伸びる</RUBY>！
　村正、俺の判断に従え！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0480a01">
《――――諒解！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetBlur("絵st100", true, 3, 400, 50, false);

	BGMoveDelete();

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);

	BezierMove("@絵st100", 1000, (@0,@0){@+500,@+100}{@+500,@+100}(@+500,@+150){@-1000,@-500}{@-1000,@-500}(@-3000,@-1000), Axl2, true);

//◆アベンジ
//◆最終コーナー


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Delete("@絵背景*");
	Delete("@絵st*");
	BGMoveDelete();
	ma_03_SBDelete();

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");

	ma03_027vs_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_03a.jpg");

	FrameShake();
	Cockpit_AllFade2();

	CreateSE("SE01","se特殊_鎧_アベンジ_爆走02_L");
	MusicStart("SE01",500,1000,0,1000,null,true);

	DrawDelete("黒幕１", 300, 100, "slide_03_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　<RUBY text="かけ">騎航す</RUBY>る。
　<RUBY text="かけ">疾駆す</RUBY>る。
　<RUBY text="かけ">飛翔す</RUBY>る。

　皇路操はここにいる。
　皇路卓はここにいる。
　<RUBY text="アベンジ">青洸騎</RUBY>はここにいる。

　世界の先端は、
　そこにある。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 500, 0, null);

	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	ma03_027vs_runsDelete();
	Cockpit_AllFade0();

	Delete("絵背景*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//◆横書きボックス
　
　　　　　　　　　０１：２０：０４

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――

	ma03_SB2(2000,4,600,-1524);
	ma03_SB(2001,200,4);

	CreateTextureSP("絵st100", 2500, -1524, Middle, "cg/st/3d村正標準_騎航_陰義.png");
	Rotate("絵st100", 0, @0, @180, @0, null,true);
	SetBlur("絵st100", true, 3, 500, 70, false);

	CreateColorEXadd("絵色100", 2600, #330033);

	Move("絵st100", 500, @+1424, @0, Dxl2, false);

	OnSE("se特殊_鎧_レース_加速02",500);


	Fade("絵色100", 0, 1000, null, false);

	DrawTransition("絵色100", 700, 0, 1000, 100, Dxl1, "cg/data/slide_01_02_0.png", false);
	FadeDelete("黒", 10, true);

	BGMoveAuto("@絵st100", 3);

	Wait(500);
	Fade("絵色100", 700, 0, null, false);



//◆村正
//◆ホームストレートが正面に
//◆そこへ突入してくる敵影。ロックオン
	SetFwR("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0490a00">
「……村正!!」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0500a01">
《――――――ッッッ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆村正、最終加速。限界越え気味な感じで
	OnSE("se特殊_陰義_グラビティアクセル加速",1000);

	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_b.jpg");
	CreateTextureEXadd("絵背景200", 3100, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_b.jpg");

	Fade("絵背景100", 300, 1000, null, false);

	Fade("絵背景200", 300, 1000, null, false);
	Zoom("絵背景200", 300, 2000, 2000, Dxl1, false);
	Move("絵背景200", 300, @+256, @0, Dxl1, false);

	Wait(200);

	FadeDelete("絵背景200", 300, true);



	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	ma_03_SBDelete();
	BGMoveDelete();

//◆アベンジ
//◆疾走

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//◆横書きボックス
　
　　　　　　　　　０１：２４：５７

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――


//◆アベンジ疾走
	Delete("絵背景*");

	ma03_SB2(2000,4,700,-2000);
	ma03_SB(2001,200,4);

	CreateTextureSP("絵st100", 2500, -1024, Middle, "cg/st/3dアベンジ_騎航_通常_b2.png");
	SetBlur("絵st100", true, 3, 500, 50, false);

	CreateColorEXadd("絵色100", 2200, #1d7fee);

	Move("絵st100", 1000, @+3500, @0, Dxl2, false);

	OnSE("se特殊_鎧_レース_加速02",500);


	FadeDelete("黒", 10, true);
	Wait(100);

	Fade("絵色100", 500, 600, null, false);
	DrawTransition("絵色100", 200, 0, 500, 50, Dxl1, "cg/data/slide_05_00_1.png", true);
	DrawTransition("絵色100", 800, 500, 700, 50, Dxl1, "cg/data/slide_05_00_1.png", false);
	Fade("絵色100", 300, 0, null, true);

	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	Delete("絵st*");

	ma_03_SBDelete();
	BGMoveDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　
　　　　　　　　　０１：２４：８９

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――


//◆アベンジ疾走
	ma03_SB2(2000,4,500,-1600);
	ma03_SB(2001,200,4);

	CreateTextureSP("絵st100", 2500, -1024, Middle, "cg/st/resize/3dアベンジ_騎航_通常_b2m.png");
	SetBlur("絵st100", true, 3, 500, 50, false);

	CreateColorEXadd("絵色100", 2200, #1d7fee);

	Move("絵st100", 500, @+512, @0, Dxl2, false);
	BGMoveAuto("@絵st100",2);

	OnSE("se特殊_鎧_レース_加速01",800);
	FadeDelete("黒", 10, true);
	Wait(100);

	Fade("絵色100", 500, 600, null, false);
	DrawTransition("絵色100", 200, 0, 500, 50, Dxl1, "cg/data/slide_05_00_1.png", true);
	DrawTransition("絵色100", 800, 500, 700, 50, Dxl1, "cg/data/slide_05_00_1.png", false);
	Fade("絵色100", 300, 0, null, true);


	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	Delete("絵st*");

	ma_03_SBDelete();
	BGMoveDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　
　　　　　　　　　０１：２５：０２

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――

	Delete("黒", 10, true);

//◆アベンジ疾走
	ma03_SB2(2000,4,300,-1600);
	ma03_SB(2001,100,4);

	CreateTextureSP("絵st100", 2500, -2024, Middle, "cg/st/resize/3dアベンジ_騎航_通常_b2l.png");
	SetBlur("絵st100", true, 3, 500, 50, false);

	CreateColorEXadd("絵色100", 2200, #1d7fee);

	Move("絵st100", 300, @+1100, @0, Dxl2, false);

	Wait(100);
	OnSE("se特殊_鎧_アベンジ_爆走01",1000);
	FadeDelete("黒", 10, true);

	Shake("絵st100", 100000, 10, 0, 0, 0, 1000, null, false);


	Fade("絵色100", 500, 600, null, false);
	DrawTransition("絵色100", 200, 0, 500, 50, Dxl1, "cg/data/slide_05_00_1.png", true);
	DrawTransition("絵色100", 800, 500, 700, 50, Dxl1, "cg/data/slide_05_00_1.png", false);
	Fade("絵色100", 300, 0, null, true);

	WaitKey(1000);

	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	Delete("絵st*");

	ma_03_SBDelete();
	BGMoveDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　
　　　　　　　　　０１：２５：０７

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 1000, 0, null);

//◆黒画面
	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【操】
<voice name="操" class="操" src="voice/ma03/027vs0510b42">
「……お父さん……
　わたし……届くかな」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/027vs0520b42">
「……届いた……かな……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆疾走ＳＥ
	CreateSE("SE01","se特殊_鎧_アベンジ_爆走01");
	MusicStart("SE01",200,1000,0,1000,null,false);


	$あべんじだっしゅ = RemainTime("SE01");


	WaitKey($あべんじだっしゅ);
	SetVolume("SE01", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//◆横書きボックス
//◆一文字ずつ表示で
　
　　　　　　　　　０<?>
{WaitKey(300);}
１<?>
{WaitKey(300);}
：<?>
{WaitKey(300);}
２<?>
{WaitKey(300);}
５<?>
{WaitKey(300);}
：<?>
{WaitKey(500);}
１<?>
{WaitKey(500);}
０

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg038_サーキット直線_03.jpg");

	DrawTransition("黒", 300, 1000, 0, 100, Dxl1, "cg/data/slide_03_01_1.png", true);
	Delete("黒");

//◆村正
//◆迫るアベンジをロックオン

	CreateSE("SE01","se特殊_電撃_帯電01");
	MusicStart("SE01",0,700,0,1000,null,true);


	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0530a00">
《吉野御流合戦礼法〝迅雷〟が崩し……》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0540a00">
《<RUBY text="レールガン">電磁抜刀</RUBY>――――〝<RUBY text="マガツ">禍</RUBY>〟》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆電磁抜刀・禍

	CreateTextureEX("絵ev100", 1200, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_d.jpg");
	CreateTextureEX("絵ef100", 1200, Center, Middle, "cg/ef/ef030_汎用電磁抜刀a.jpg");
	SetBlur("絵ev100", true, 3, 500, 100, false);
	SetBlur("絵ef100", true, 3, 500, 100, false);
//	Zoom("絵ef100", 0, 2000, 2000, Dxl1, false);

	SetVolume("SE01", 200, 1000, null);
	Zoom("絵ev100", 300, 1500, 1500, Dxl1, false);
	Fade("絵ev100", 300, 1000, null, true);

	SetVolume("SE01", 500, 0, null);
	CreateSE("SE02","se特殊_電撃_放電01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Zoom("絵ef100", 300, 2000, 2000, Dxl1, false);
	Fade("絵ef100", 300, 1000, null, true);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵ev100");
	Delete("絵ef100");
	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg038_サーキット直線_03.jpg");
	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　……村正、至極の一刀は。
　青い稲妻の<RUBY text="つばさ">尻尾</RUBY>だけをわずかに捉え、切り裂いた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆クラッシュ。ずがーん。

	CreateTextureEXadd("絵背景200", 2000, Center, Middle, "cg/ef/ef045_スパーク.jpg");
	SetBlur("絵背景200", true, 3, 500, 100, false);
	CreateTextureEX("絵背景300", 3100, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureEXadd("絵背景400", 3200, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetBlur("絵背景400", true, 3, 500, 100, false);
	CreateTextureEXadd("絵背景500", 3200, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetBlur("絵背景500", true, 3, 500, 100, false);

	CreateSE("SE01","se特殊_鎧_アベンジ_ひび割れ");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵背景200", 200, 1000, null, true);
	Zoom("絵背景200", 300, 2000, 2000, Dxl1, false);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",200,1000,null,true);
	Shake("絵背景300", 100000, 1, 2, 0, 0, 500, Dxl1, false);
	Shake("絵背景400", 100000, 10, 10, 0, 0, 500, Dxl1, false);
	Fade("絵背景300", 300, 1000, Dxl1, false);
	Fade("絵背景400", 300, 1000, Dxl1, false);
	Zoom("絵背景400", 600, 2000, 2000, Dxl1, false);
	CreateSE("SE01","se戦闘_破壊_鎧05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

	FadeDelete("絵背景400", 300, true);

	Wait(300);

	Fade("絵背景500", 300, 500, Dxl1, false);
	Zoom("絵背景500", 300, 2000, 2000, Dxl1, false);

	Wait(300);

	FadeDelete("絵背景500", 300, false);

//◆ウェイト

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorEX("フラッシュ白", 15000, "Black");
	Fade("フラッシュ白",1000,1000,null,true);
	Delete("絵背景*");

	WaitKey(3000);

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/ev/ev118_サーキットを見下ろす光と二世村正.jpg");

	CreateSE("SE01","se自然_風_荒野_L");
	CreateSE("SE02","se自然_風_荒野_L");
	MusicStart("SE02",1000,1000,0,1000,null,true);

	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");




//◆高い建物？の上。シルエット二つ。少女と異形（女王蟻）
//◆顔グラ使わず
	SetNwR("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【光】
<voice name="光" class="光" src="voice/ma03/027vs0550a14">
「うむ……見事。
　見事であった。皇路兄妹、そしてアベンジ」

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0560a14">
「おまえ達の見せた煌き……
　この光、終生忘れぬ」

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0570a14">
「なぁ、」

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0580a14">
「<RUBY text="ムラマサ">村正</RUBY>よ」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma03/027vs0590a15">
《…………》

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0600a14">
「あの煌きを我らのものとしよう。
　あの<RUBY text="はやさ">世界</RUBY>を我らが受け継ごう」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma03/027vs0610a15">
《……その速さをもって。
　何を為す？　御堂》

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0620a14">
「知れた事」

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0630a14">
「天下に武を示す！」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma03/027vs0640a15">
《……うむ……》

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0650a14">
「そして、父のもとへ至るのだ。
　この光に血肉を分け与えた、父のもとへ」

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0660a14">
「生まれながらに奪われていた父を、我が手
に取り戻す！
　<RUBY text="ただ">唯</RUBY>、それだけが光の望み！」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma03/027vs0670a15">
《……》

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0680a14">
「愛する父をこの腕に抱くまで。
　おれも走り続けてみせる」

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0690a14">
「あの青い騎影を越えてゆこう」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma03/027vs0700a15">
《……そう、か》

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0710a14">
「さて。
　景明よ……」

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0720a14">
「焦らすのはそろそろやめだ」

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0730a14">
「そろそろ……また。
　戯れ合おうじゃないか？」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 1000, 0, null);
	SetVolume("SE02", 1000, 0, null);

	CreateColorEX("フラッシュ白", 15000, "Black");
	Fade("フラッシュ白",1000,1000,null,true);
	Delete("絵背景100");

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg038_サーキット直線_03.jpg");
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);

	SoundPlay("@mbgm16",0,1000,true);

	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");


	CreateTextureEX("絵背景200", 2500, Center, Middle, "cg/ev/ev925_野太刀断片_d.jpg");
	Fade("絵背景200", 500, 1000, null, true);

//◆サーキット
//◆村正
//◆鞘が出現
	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0740a00">
「……野太刀の、鞘」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0750a01">
《ええ……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	CreateSE("SE01","se特殊_陰義_発動03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("フラッシュ白",0,1000,null,true);

	FadeDelete("絵背景200", 0, true);

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");


//◆げっと。
	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0760a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0770a01">
《御堂。
　……まだ、生きている》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0780a00">
「なに……？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0790a01">
《劔冑は完全に破壊されたけれど。
　乗り手は……まだ》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0800a01">
《……あの劔冑が……
　守ったのかも、ね……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0810a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0820a01">
《……どうするの？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm16", 1500, 0, null);

	ClearFadeAll(1600, true);


//◆ヒロイン殺害フェイズ
//◆キリング判定
//嶋：mainでフェイズ
//	judgment_of_catch();

..//ジャンプ指定
//次ファイル　"ma03_028.nss"

}

..//ma03_027vs_runs
function ma03_027vs_runs($md03_027vs_既存ファイル,優先度,$md03_027vs_ファイル名){

	CreateTextureEX("絵runs01", 優先度, Center, Middle, $md03_027vs_ファイル名);
	CreateTextureEX("絵runs02", 優先度, Center, Middle, $md03_027vs_ファイル名);
	SetBlur("絵runs01", true, 3, 400, 20, false);
	SetBlur("絵runs02", true, 3, 400, 20, false);

	SetVertex("絵runs01", 518, 389);
	SetVertex("絵runs02", 518, 389);
	SetVertex($md03_027vs_既存ファイル, 518, 389);

	CreateProcess("疾走", 1500, 0, 0, "ma03_027vs_runsProcess");
	SetAlias("疾走","疾走");
	Request("疾走", Start);

	$ma03_027vs_runs01 = 125;
	$ma03_027vs_runs02 = 250;

}

..//ma03_027vs_runsProcess
function ma03_027vs_runsProcess(){

	begin:


		Zoom($md03_027vs_既存ファイル, 50000, 2000, 2000, AxlAuto, false);
		Shake($md03_027vs_既存ファイル, 50000, 1, 1, 0, 0, 500, null, false);
		Fade($md03_027vs_既存ファイル, 500, 0, null, false);

		Fade("@絵runs01", $ma03_027vs_runs01, 500, null, false);
		Zoom("@絵runs01", $ma03_027vs_runs02, 3000, 3000, AxlAuto, false);

		Wait($ma03_027vs_runs01);

	while(1){

		Shake($md03_027vs_既存ファイル, 50000, 1, 1, 0, 0, 500, null, false);

		Zoom("@絵runs02", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs01", $ma03_027vs_runs01, 0, Axl1, false);
		Zoom("@絵runs02", $ma03_027vs_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs02", $ma03_027vs_runs01, 700, Dxl1, false);
		Wait($ma03_027vs_runs01);
		Zoom("@絵runs01", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs02", $ma03_027vs_runs01, 0, Axl1, false);
		Zoom("@絵runs01", $ma03_027vs_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs01", $ma03_027vs_runs01, 700, Dxl1, false);
		Wait($ma03_027vs_runs01);
		Zoom("@絵runs02", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs01", $ma03_027vs_runs01, 0, Axl1, false);
		Zoom("@絵runs02", $ma03_027vs_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs02", $ma03_027vs_runs01, 700, Dxl1, false);
		Wait($ma03_027vs_runs01);
		Zoom("@絵runs01", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs02", $ma03_027vs_runs01, 0, Axl1, false);
		Zoom("@絵runs01", $ma03_027vs_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs01", $ma03_027vs_runs01, 700, Dxl1, false);
		Wait($ma03_027vs_runs01);

	}


}

..//ma03_027vs_runsDelete
function ma03_027vs_runsDelete(){

	Request("@疾走", Stop);
	Delete("@疾走");
	Delete("@絵runs*");

}

..//ma03_SB2
function ma03_SB2($サーキット真横_BG,$ma03_BGNum,$ma03_BGTime,$ma03_BGpoint){

	//昼間
	if($ma03_BGNum==1){
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
	//夜
	}else if($ma03_BGNum==2){
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
	}else if($ma03_BGNum==3){
		CreateTextureSP("Circuit01", $サーキット真横_BG, InLeft, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InLeft, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
	}else if($ma03_BGNum==4){
		CreateTextureSP("Circuit01", $サーキット真横_BG, InLeft, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InLeft, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
	}else{
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
	}

	CreateSCR1("@Circuit01","@Circuit02",$ma03_BGTime,$ma03_BGpoint, @0);

	$ma03_BGNum = 0;

}


..//ma03_SB
function ma03_SB($サーキット真横_BG01,$ma03_SBtime,$ma03_BarNum){


	if($ma03_BarNum == 1){
		CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_01.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else if($ma03_BarNum == 2){
		CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_03.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else if($ma03_BarNum == 3){
		CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, 1124, Middle, "cg/bg/bg038_サーキット真横b_01.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else if($ma03_BarNum == 4){
		CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, 1124, Middle, "cg/bg/bg038_サーキット真横b_03.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else{
		CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_03.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}

	if($ma03_BarNum >= 3){
		CreateProcess("柱プロセス", 15000, 0, 0, "ma_03_SBProcess2");
		Request("柱プロセス", Start);
		SetAlias("柱プロセス","柱プロセス");
	}else{
		CreateProcess("柱プロセス", 15000, 0, 0, "ma_03_SBProcess");
		Request("柱プロセス", Start);
		SetAlias("柱プロセス","柱プロセス");
	}

	$ma03_BarNum=0;

}


..//ma_03_SBProcess
function ma_03_SBProcess(){

	begin:

	while(1){
		Fade("@Circuit_Bar", 0, 1000, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, 1074, @0, null, true);
		Fade("@Circuit_Bar", 0, 0, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, -100, @0, null, true);
	}

}

..//ma_03_SBProcess2
function ma_03_SBProcess2(){

	begin:

	while(1){
		Fade("@Circuit_Bar", 0, 1000, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, -50, @0, null, true);
		Fade("@Circuit_Bar", 0, 0, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, 1124, @0, null, true);
	}

}

..//ma_03_SBDelete
function ma_03_SBDelete(){

	Fade("@Circuit_Bar", 0, 0, null, true);
	Delete("@柱プロセス");
	Delete("@Circuit_Bar");
	SCR1stop();
	Delete("@Circuit*");

}



..//■ハリボテさん
function fakeCP(){



}

