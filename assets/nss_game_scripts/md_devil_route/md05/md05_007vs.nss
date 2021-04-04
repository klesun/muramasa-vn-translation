//<continuation number="260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_007vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md05_007vs.nss","TekiSet",true);
	Conquest("nss/md05_007vs.nss","TekiGo",true);

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
	#bg202_旋回演出背景山_02=true;
	#ev001_銀星号事件イメージ１=true;
	#bg106_富士山遠望b_00=true;
	#ev228_白銀の軍団_d=true;
	#ev228_白銀の軍団_e=true;
	#bg001_空a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "md05_008vs.nss";
}

scene md05_007vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm12",0,1000,true);

	CreateTextureSP("背景２", 100, 0, 200, "cg/bg/bg202_旋回演出背景山_02.jpg");
	Zoom("背景２", 0, 1500, 1500, Dxl2, true);

	CreateTextureEX("イメージ１", 100, 0, 0, "cg/ev/ev001_銀星号事件イメージ１.jpg");

	LoadImage("旋回イメージ１", "cg/bg/bg204_横旋回背景_02.jpg");
	SetAlias("旋回イメージ１", "旋回イメージ１");


	//★雑魚イメージ
	LoadImage("雑魚イメージ", "cg/st/resize/3d零零式汚染_騎突_通常3_ss.png");
	SetAlias("雑魚イメージ", "雑魚イメージ");
	$tekixbase=0;
	$tekiybase=0;
	$tekixx=500;
	$tekiyy=250;
	$preteki=1;

	//★雑魚セット
	$teki=0;
	$tekimax=30;
	TekiSet();

	//▼コクピット（定義）
	//CP_AllSet("村正");
	//▼コクピット（瞬間表示）
	Cockpit_AllFade2();
	//▼コクピット（自機情報：振動）
	FrameShake();
	//▼コクピット（自機情報：仰角自動化）
	CP_AltChangeA();
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(0,400,null,true);
	//▼コクピット（自機情報：高度）
	CP_HighChange(0,900,null,true);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(0,0,null,false);
	//▼コクピット（自機情報：回転軸自動化）
	CP_RollBarMoveA();

	//▼コクピット（自機情報：球体ＨＰ）
	//CP_IHPChange(0,10,null,false);
	//▼コクピット（自機情報：装甲）
	MyLife_Count(0,720);
	//▼コクピット（自機情報：出力）
	MyTr_Count(0,294);
	//▼コクピット（自機情報：熱量）
	//CP_PowerChange(0,500,null,false);



	//▼雲正面
	CloudZoomSet(1000);
	CloudZoomStart(400,800,800,300,800);

	MoveFFP1("@背景２",5000);//固定値ランダム

	CreateSE("サウンド１","se戦闘_動作_空走行01_L");
	SoundPlay("サウンド１",500,1000,true);

	FadeDelete("上背景", 500, true);


..//ジャンプ指定
//前ファイル　"md05_006.nss"

//◆朝焼けの空（夕空流用で無問題）
//◆※西へ向かっているため、進行方向に太陽が現れる
//◆ことはない
//◆騎航

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　暁闇の中、富士山頂を指して翔駆する。

　季節は既に冬であった。
　刺すような寒気が甲鉄越しにも感じられる。

　空気の密度が薄い高空に比べれば、地上はまだしも
暖かいだろうか……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	//▼コクピット（自機情報：仰角）
	//CP_AltChange2(500,-30,null,false);

	//▼雲移動
	CloudZoomVertex(500,@0,@-500,AxlDxl,false);
	Move("背景２", 500, @0, @-300, AxlDxl, false);
	Wait(500);

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md05/007vs0010a00">
「――――!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　ちらと下を見やったその一刹那、俺の心臓は鼓動を
止めた。

　あれは何処の村落であろうか。
　薄暗がりに半ば沈みつつ、人々が<RUBY text="うごめ">蠢</RUBY>いている。

　末世の様相だ。

{	Fade("イメージ１", 500, 200, null, false);}
　叫喚。
　蹂躙。
　血煙。
　鉄火。

　六波羅と進駐軍の戦闘が波及したのか。
　それとも〝神〟の降下により付近の精神汚染濃度が
増して、あの恐るべき狂態へ陥ろうとしているのか。

　どちらとも知れない。
　惨劇が起きている、その一事実のみが確かだった。

{	FadeDelete("イメージ１", 500, false);}
　暴動の渦中、何の偶然か、ぽっかりと空いた隙間が
ある。
　そこに、子供が一人いた。

　子供はこの瞬間を、奇跡的に生き延びている。

　だが次の瞬間には、死に見舞われるだろう。
　次の次の瞬間には、原形を保っていないだろう。

　子供は空を見上げた。

　その表情に一筋、輝くような喜びが差した。

　俺の姿を認めたのだ。

　天を駆ける騎影に、救いの手を見たのだ。

　子供は正しい。

　俺はあの子供を助ける事ができる。

　急着陸し、子供が生きているうちに拾い上げるのは
造作もない。

　俺の決断一つだ。

　子供を救い、<k>
　混乱に巻き込まれ、<k>
　災いの根源を断つ、この千載一遇の好機を逃す――

　その決断さえ下せるなら、助けられる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md05/007vs0020a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正、騎航

	//▼コクピット（自機情報：仰角）
	//CP_AltChange2(500,0,null,false);

	//▼雲移動
	CloudZoomVertex(500,@0,@500,Dxl1,false);
	Move("背景２", 500, @0, @300, Dxl1, false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　見捨てた。

　あの子供は救わないと、俺は自らの意思で決断した。

　無論、それは殺害と同義であった。

　一瞬の奇跡が終わる。

　凶暴な鉄が小さな獲物に襲い掛かる。

　子供の絶望を、俺は確かに見た。

　子供の怨嗟を、俺は確かに聴いた。

　切り刻まれ、引き千切られ、踏みにじられる子供の
惨死を、俺は確かな事実として受け止めた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Wait(500);

	CreateColorEX("色１", 18000, "#000000");

	SetVolume("サウンド１", 2000, 0, NULL);
	Fade("色１", 1000, 1000, null, true);

	FadeDelete("背景２", 0, true);
	MoveFFP1stop();

	//★雑魚セット
	$teki=30;
	$tekimax=40;
	TekiSet();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
　また一つ、殺害の罪を積んで……
　俺は一路、最後の戦場へ向かう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	//Wait(3000);
	//★雑魚セット
	$teki=40;
	$tekimax=80;
	TekiSet();

	CreateTextureSP("背景２", 17000, 148, 0, "cg/bg/bg106_富士山遠望b_00.jpg");
	Zoom("背景２", 0, 1500, 1500, Dxl2, true);
	CreateTextureSP("自機１", 17000, -714, -174, "cg/st/3d村正最終_騎航_通常3.png");
	//Rotate("自機１", 0, @0, @0, 45, null, true);
	//Zoom("自機１", 0, 100, 100, Dxl2, true);
	SetBlur("自機１", true, 1, 300, 100, false);

	CreateTextureSP("背景１", 100, 450, 250, "cg/bg/bg106_富士山遠望b_00.jpg");
	Zoom("背景１", 0, 2000, 2000, Dxl2, true);

	CreateTextureEX("背景４", 17000, 0, 150, "cg/bg/resize/bg204_横旋回背景_02ex.jpg");
	CreateTextureEX("背景５", 17000, 0, 150, "cg/bg/resize/bg204_横旋回背景_02ex.jpg");
	Zoom("背景４", 0, 1500, 1500, Dxl2, true);
	Zoom("背景５", 0, 1500, 1500, Dxl2, true);

	CreateTextureEX("イベント１", 18100, 0, Middle, "cg/ev/resize/ev228_白銀の軍団_dl.jpg");
	CreateTextureEX("イベント２", 18100, 0, 0, "cg/ev/ev228_白銀の軍団_d.jpg");

//◆富士山近く
	CreateSE("サウンド１","se戦闘_動作_空走行01_L");
	SoundPlay("サウンド１",500,700,true);
	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("サウンド２",500,500,true);

	FadeDelete("色１", 500, false);
	Shake("背景２", 8000, 0, 2, 0, 0, 600, null, false);
	Shake("自機１", 8000, 0, 4, 0, 0, 600, null, false);
	FadeF("背景２",8000,1000,8000,-148,0,null, false);
	FadeF3("自機１",8000,1000,8000,300,0,null, false);

	Wait(7000);

//◆アラーム。警告
	OnSE("se特殊_コックピット_アラーム",1000);
	MoveFFP1("@背景１",5000);//固定値ランダム

	SetVolume("サウンド２", 500, 0, NULL);
	SoundPlay("サウンド１",500,1000,true);

	FadeDelete("背景２", 500, false);
	FadeDelete("自機１", 500, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/007vs0030a01">
《御堂！　敵騎よ!!》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/007vs0040a00">
「何？　……数は」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/007vs0050a01">
《数――――<?>
{	Wait(1000);}
百以上！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/007vs0060a00">
「連隊規模だと!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　村正が敵騎と断定するからには、攻撃態勢を隠しも
していないのだろう。
　問答無用の好戦性。そしてこの数。この場所。

　思い当たるのは……{Wait(2000);}
　
　<RUBY text="・・">あれ</RUBY>か!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星連隊。ev228c
	LoadImage("イメージ１", "cg/st/3d零零式汚染_騎航_通常.png");
	SetAlias("イメージ１", "イメージ１");

	CreateTextureSP("敵機１", 17000, -200, -1000, "イメージ１");
	Zoom("敵機１", 0, 500, 500, Dxl2, true);
	Rotate("敵機１", 0, @0, @0, 90, null, true);
	CreateTextureSP("敵機２", 17000, 0, -1500, "イメージ１");
	Zoom("敵機２", 0, 1000, 1000, Dxl2, true);
	Rotate("敵機２", 0, @0, @0, 90, null, true);
	CreateTextureSP("敵機３", 17000, -500, -2000, "イメージ１");
	Zoom("敵機３", 0, 1500, 1500, Dxl2, true);
	Rotate("敵機３", 0, @0, @0, 90, null, true);

	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("サウンド２",500,800,true);

	CreateSCR1("@背景４","@背景５",1000,@0,-5000);
	Fade("背景４", 1000, 1000, null, true);

	Wait(500);

	OnSE("se戦闘_動作_空突進07",1000);
	Move("敵機２", 1000, @200, @3000, Dxl1, false);
//	Wait(150);
	OnSE("se戦闘_動作_空突進07",1000);
	Move("敵機１", 750, @-300, @2000, Dxl1, false);
	Wait(150);
	OnSE("se戦闘_動作_空突進07",1000);
	Move("敵機３", 400, @80, @2700, null, true);

	Rotate("敵機３", 0, @0, @0, 0, null, true);
	Rotate("敵機２", 0, @0, @0, 0, null, true);
	Rotate("敵機１", 0, @0, @0, 0, null, true);

	Wait(1000);

	CreateSE("サウンド３","se戦闘_動作_空走行02_L");
	SetVolume("サウンド２", 4000, 0, NULL);
	SoundPlay("サウンド３",1000,1000,true);

	Shake("敵機３", 100000, 0, 2, 0, 0, 500, null, false);
	BezierMove("敵機３", 3000, (@0,@0){@-200,@-320}{@200,@-680}(@0,@-950), Dxl1, 300);
	Shake("敵機２", 100000, 0, 2, 0, 0, 500, null, false);
	BezierMove("敵機２", 3000, (@0,@0){@-200,@-320}{@200,@-680}(@-50,@-2000), Dxl1, 300);
	Shake("敵機１", 100000, 0, 2, 0, 0, 500, null, false);
	BezierMove("敵機１", 3000, (@0,@0){@-200,@-320}{@200,@-680}(@600,@-1200), Dxl1, 1500);

	Fade("イベント１", 1500, 1000, null, false);
	Move("イベント１", 4500, @-1024, @0, null, 3000);
	Fade("イベント２", 1000, 1000, null, true);

	SetVolume("サウンド３", 2000, 0, NULL);

	SCR1stop();
	MoveFFP1stop();
	Delete("イベント１");
	Delete("背景４");
	Delete("背景５");
	Delete("敵機*");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/007vs0070a01">
《複製!!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/007vs0080a00">
「あの〝神〟が呼んだのか!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　それとも<RUBY text="オリジナル">本物</RUBY>の気配に引かれ、勝手に集まって来た
のか。

　篠川軍の新鋭部隊が丸々変じて出現した、銀星号の
複製集団。
　世界最強かつ最悪の<RUBY text="ドラコレジメント">竜騎兵連隊</RUBY>!!

　富士を目前にしてこんな奴らに阻まれるとは、思い
もしなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md05/007vs0090a00">
「相手をしている暇は無いが――」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/007vs0100a01">
《向こうは相手して欲しくて仕方ないみたい
よ！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆モニター。敵騎多数
	//シェイク
	MoveSSP1("@背景１",100000,0,1,0,1,300,null);
	MoveSSP2("@雑魚*",100000,0,1,0,1,1000,null);

	Fade("イベント２", 1000, 0, null, true);

	OnSE("se特殊_コックピット_ロックオン",1000);

	//▼コクピット（ロックオン：設置）
	CockPit_LockSet(@0,@0);
	//▼コクピット（ロックオン：切替）
	CP_LockOnFade(500,"off",true);

	CreateSE("サウンド９","se特殊_コックピット_探索01");
	CreateProcess("プロセス１", 150, 0, 0, "TekiGo");
	SetAlias("プロセス１", "プロセス１");

	Wait(500);
	Request("プロセス１", Start);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　あの複製は本物以上に厄介なのかもしれない。

　汚染波の中継点となる性質はこの際考慮から外せる
としても、親譲りの高い機動性……
　そして零零式から受け継いだ対竜騎兵用狙撃兵器。

　この組み合わせはどう控えめに考えても脅威である。
　加えて一個連隊分の頭数だ。

　敵集団の進撃は乱雑で、およそ戦術らしきものなど
見受けられない。
　しかし数に物を言わせた面制圧は付け入る隙が無く、
逃れる余地も無い。

　あの敵が「優勢を確保して降伏を促す」ような文明
的行動をとれるとも思えなかった。
　射程距離に入り次第、一斉に発砲するのみだろう。

　どう対処する？
　それはつまり、一射一射が致命的である分厚い弾幕
に包み込まれるという事なのだが――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	Delete("サウンド９");

	CreatePlainSP("背景０", 17000);

	CreateSEEX("サウンド４","se戦闘_荒覇吐_攻撃02_L");
	SoundPlay("サウンド４",5000,700,true);

//◆複製、発振砲準備
	CreateTextureEX("イベント１", 18100, -1024, Middle, "cg/ev/resize/ev228_白銀の軍団_dl.jpg");
	CreateTextureEX("イベント２", 18100, -1024, Middle, "cg/ev/resize/ev228_白銀の軍団_el.jpg");
	CreateTextureEX("イベント３", 18100, 0, 0, "cg/ev/ev228_白銀の軍団_e.jpg");

	Move("イベント１", 30000, 0, @0, null, false);
	Move("イベント２", 30000, 0, @0, null, false);
	Fade("イベント１", 1000, 1000, null, true);

	//▼コクピット（ロックオン：消去）
	CP_LockOnFadeT(0,true);

	Delete("背景０");

	//シェイク
	MoveSSP1stop();
	MoveSSP2stop();
	Request("@プロセス１", Stop);
	Delete("@プロセス１");
	Delete("雑魚*");

	Wait(1000);

	Fade("イベント２", 5000, 1000, null, false);

	SetFwC("cg/fw/fw景明_通常a.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md05/007vs0110a00">
「……村正」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/007vs0120a01">
《ええ》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/007vs0130a00">
「<RUBY text="・・・・">振り切る</RUBY>ぞ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/007vs0140a01">
《諒解！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 3000, 0, NULL);

	SoundPlay("@mbgm08",0,1000,true);

//◆発振。次々と
	Fade("イベント３", 500, 1000, null, true);
	Delete("イベント１");
	Delete("イベント２");

	CreateTextureSP("背景２", 100, 0, 2000, "cg/bg/bg202_旋回演出背景山_02.jpg");

	CreateColorEXadd("色１", 19000, "#FFFFFF");

	CreateSE("サウンド３","se戦闘_荒覇吐_攻撃03");

	SetVolume("サウンド４", 2000, 0, NULL);
	OnSE("se戦闘_荒覇吐_攻撃01",1000);

	SetBlur("イベント３", true, 3, 500, 200, false);
	Zoom("イベント３", 500, 2000, 2000, Axl1, false);
	Fade("色１", 500, 1000, Axl1, true);

	LoadImage("イメージ２", "cg/ef/ef036_無我の境地.jpg");
	CreateTextureEXadd("エフェクト３", 10000, -400, 0, "イメージ２");
	Rotate("エフェクト３", 0, @0, @0, 180, null, true);
	CreateTextureEXadd("エフェクト４", 10000, -200, 0, "イメージ２");
	Rotate("エフェクト４", 0, @0, @0, 45, null, true);
	CreateTextureEXadd("エフェクト５", 10000, 0, 0, "イメージ２");
	Rotate("エフェクト５", 0, @0, @0, 210, null, true);
	CreateTextureEXadd("エフェクト６", 10000, 200, 0, "イメージ２");
	Rotate("エフェクト６", 0, @0, @0, 95, null, true);
	CreateTextureEXadd("エフェクト７", 10000, 400, 0, "イメージ２");
	Rotate("エフェクト７", 0, @0, @0, 180, null, true);
	Zoom("エフェクト*", 0, 0, 0, Axl2, false);
	CreateTextureEXadd("エフェクト１", 10000, 0, 0, "cg/ef/ef014_汎用横軌道.jpg");
	CreateTextureEXadd("エフェクト２", 10000, 0, 0, "cg/ef/ef015_汎用横軌道.jpg");
	Move("エフェクト３", 0, @0, @-10, null, true);
	Move("エフェクト４", 0, @0, @10, null, true);
	Move("エフェクト５", 0, @0, @0, null, true);
	Move("エフェクト６", 0, @0, @12, null, true);
	Move("エフェクト７", 0, @0, @-7, null, true);

	Zoom("エフェクト*", 0, 0, 0, Axl2, false);
	Zoom("エフェクト１", 0, 1000, 0, Axl2, false);
	Zoom("エフェクト２", 0, 1000, 0, Axl2, false);

	Delete("イベント３");

	//▼コクピット（自機情報：仰角）
	CP_AltChange2(3500,-60,null,false);
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(3500,600,null,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange(3500,300,null,false);

	Zoom("背景１", 3000, 3000, 3000, AxlAuto, false);
	Fade("色１", 300, 0, null, true);

	CreateColorEXadd("色１", 12000, "#FFFFFF");
	SoundPlay("サウンド３",0,1000,false);

	DrawTransition("色１", 1500, 0, 1000, 300, null, "cg/data/circle_02_00_0.png", false);
	Fade("色１", 2000, 1000, Axl2, false);

	Rotate("エフェクト３", 2000, @0, @0, @-3600, Axl1, false);
	Rotate("エフェクト４", 2000, @0, @0, @3600, Axl1, false);
	Rotate("エフェクト５", 2000, @0, @0, @-3600, Axl1, false);
	Rotate("エフェクト６", 2000, @0, @0, @3600, Axl1, false);
	Rotate("エフェクト７", 2000, @0, @0, @-3600, Axl1, false);

	Zoom("エフェクト３", 2000, 30000, 20000, Axl2, false);
	Zoom("エフェクト４", 2000, 30000, 20000, Axl2, false);
	Zoom("エフェクト５", 2000, 30000, 20000, Axl2, false);
	Zoom("エフェクト６", 2000, 30000, 20000, Axl2, false);
	Zoom("エフェクト７", 2000, 30000, 20000, Axl2, false);

	Zoom("エフェクト１", 2000, 10000, 50000, Axl2, false);
	Zoom("エフェクト２", 2000, 10000, 50000, Axl2, false);
	Fade("エフェクト*", 1000, 1000, null, 500);

	Move("エフェクト*", 1500, @0, @-200, null, false);
	Move("背景１", 1500, @0, @-600, AxlAuto, true);

	Delete("エフェクト*");
	Delete("イメージ２");
	Delete("背景１");

//◆下方へ直進。地面が迫る。
	Zoom("背景２", 0, 3000, 3000, Dxl2, true);
	MoveSSP1("@背景２",100000,0,3,0,3,300,null);//シェイク

	//▼雲消去
	//CloudZoomFade(500,false);

//◆村正、回避
	OnSE("se戦闘_動作_空突進07",1000);

	Fade("色１", 500, 0, null, false);
	Move("背景２", 700, @0, 800, Dxl2, false);
	Wait(700);

	MoveFFP1("@背景２",5000);//固定値ランダム

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　射線計算に基づく回避行動は、最終的に俺を下方向
へ直進させた。
　速度が急速に上昇し、地表が接近する。

　騎航術の定石に従うなら、<RUBY text="ピッチ">兜角</RUBY>を引き上げて上昇に
移らなくてはならない。
　
　しかし、そんな暢気な真似をしていては捕まる！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	//▼コクピット（自機情報：出力）
	MyTr_Count(1000,412);

	//CreateSE("サウンド３","se特殊_雰囲気_集中01_L");
	//SoundPlay("サウンド３",0,1000,true);
	OnSE("se特殊_陰義_発動04",1000);

	CreateColorEXadd("色１", 10000, "#FFFFFF");
	Fade("色１", 1000, 100, null, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/007vs0150a01">
《招き集わせ<RUBY text="たぐ">手繰</RUBY>る――》

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/007vs0160a00">
「<RUBY text="グラビトンコントロール">引辰制御</RUBY>!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se特殊_陰義_グラビティアクセル加速",1000);

	CreateColorEX("色２", 20000, "#000000");
	Zoom("背景２", 300, 4000, 4000, Axl1, false);
	Fade("色２", 300, 1000, null, true);

	//▼雲消去
	CloudZoomFade(0,false);
	MoveFFP1stop();
	MoveSSP1stop();

	//★コクピット消去
		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

	CreateTextureEXadd("エフェクト２", 20000, 0, 0, "cg/ef/ef003_汎用移動.jpg");
	Zoom("エフェクト２", 0, 2000, 2000, Axl1, true);

	Rotate("エフェクト２", 600, @0, @0, 36000, null, false);
	Fade("エフェクト２", 300, 1000, null, true);
	Fade("エフェクト２", 300, 0, null, true);

	SetVolume("サウンド３", 3000, 0, NULL);

//◆複製の攻撃
	CreateColorEXadd("色１", 19000, "#FFFFFF");
	CreateTextureEX("背景１", 100, 0, -100, "cg/bg/bg106_富士山遠望b_00.jpg");
	Zoom("背景１", 0, 1500, 1500, Dxl2, true);

	CreateTextureEX("背景３", 17000, 0, Middle, "旋回イメージ１");
	CreateTextureEX("背景４", 17000, 0, Middle, "旋回イメージ１");

	CreateTextureEX("敵機２", 17000, 122, -300, "イメージ１");
	CreateTextureEX("敵機４", 17000, 122, -300, "cg/st/3d零零式汚染_騎航_発振.png");
	CreateTextureEX("敵機１", 17000, -150, -200, "イメージ１");
	CreateTextureEX("敵機３", 17000, -150, -200, "cg/st/3d零零式汚染_騎航_発振.png");
	Zoom("敵機２", 0, 500, 500, Dxl2, true);
	Zoom("敵機４", 0, 500, 500, Dxl2, true);
	Rotate("敵機*", 0, @0, @0, @25, null, true);


	CreateSCR1("@背景３","@背景４",1000,-4000,@0);
	Fade("背景３", 0, 1000, null, false);

	Fade("敵機１", 0, 1000, null, false);
	Fade("敵機２", 0, 1000, null, true);
	FadeF2("敵機２",0,1000,10000,-50,-80,Dxl1,false);
	FadeF3("敵機１",0,1000,10000,-100,-50,Dxl1,false);
	FadeF2("敵機４",0,0,10000,-50,-80,Dxl1,false);
	FadeF3("敵機３",0,0,10000,-100,-50,Dxl1,false);

	CreateTextureEXadd("エフェクト１", 18000, 0, 0, "cg/ef/ef047_発振砲集団射撃.jpg");
	SetVertex("エフェクト１", 100, 100);
	Zoom("エフェクト１", 0, 1200, 1200, Axl1, false);

	OnSE("se特殊_鎧_エネルギー充電01",1000);

	CreateSE("サウンド７","se戦闘_動作_空走行02_L");
	SoundPlay("サウンド７",0,1000,true);

	Fade("色２", 300, 0, null, true);

	Fade("敵機４", 2000, 1000, null, false);
	Fade("敵機３", 2000, 1000, null, true);
	Fade("敵機１", 0, 0, null, false);
	Fade("敵機２", 0, 0, null, false);

	OnSE("se戦闘_荒覇吐_攻撃03",1000);

	Move("敵機４", 1200, @-100, @-300, Dxl1, false);
	Move("敵機３", 1200, @-300, @-1000, Dxl1, false);
	Shake("敵機*", 5000, 0, 40, 0, 0, 1000, Dxl1, false);
	Shake("背景３", 5000, 20, 20, 0, 0, 800, Dxl1, false);
	Shake("背景４", 5000, 20, 20, 0, 0, 800, Dxl1, false);

	Fade("色１", 1000, 1000, null, false);
	DrawTransition("色１", 1000, 0, 1000, 100, null, "cg/data/circle_12_01_1.png", true);

		SCR1stop();
		CreateTextureSP("背景５", 17000, 0, 0, "cg/bg/bg001_空a_02.jpg");
		Zoom("背景５", 0, 1500, 1500, Dxl2, true);

	Shake("背景５", 10000, 50, 50, 0, 0, 500, null, false);
	Shake("エフェクト１", 10000, 30, 30, 0, 0, 500, null, false);
	Fade("エフェクト１", 0, 1000, null, false);
	Zoom("エフェクト１", 1500, 3000, 3000, Axl1, false);

	Fade("色１", 500, 200, null, false);
	DrawTransition("色１", 500, 1000, 500, 100, null, "cg/data/circle_09_00_0.png", true);
	Fade("色１", 500, 1000, null, false);
	DrawTransition("色１", 500, 500, 1000, 100, null, "cg/data/circle_09_00_0.png", true);

	SetVolume("サウンド７", 2000, 0, NULL);

		Delete("敵機*");
		Delete("エフェクト*");
		Move("背景３", 0, -4000, @0, Axl1, true);
		Move("背景４", 0, -4000, @0, Axl1, true);
		Fade("背景*", 0, 0, null, true);
		Fade("背景３", 0, 1000, null, true);
		Delete("背景５");
		CreateTextureSP("自機１", 18000, 0, -100, "cg/st/3d村正最終_騎航_通常.png");
		//Zoom("自機１", 0, 100, 100, Dxl2, true);
		SetBlur("自機１", true, 2, 500, 50, false);
	
		//★ロック設置
		LockVideo(true);
		CreateColorEXadd("色２", 19000, "#FFFFFF");

		CreateTextureEXadd("エフェクト１", 18000, 0, 0, "cg/ef/ef038_汎用射撃.jpg");
		Zoom("エフェクト１", 0, 4000, 4000, Dxl2, true);
		Rotate("エフェクト１", 0, @0, @0, -70, null, true);
		CreateTextureEXadd("エフェクト２", 18000, 0, 0, "cg/ef/ef038_汎用射撃.jpg");
		Zoom("エフェクト２", 0, 3000, 3000, Dxl2, true);
		Rotate("エフェクト２", 0, @0, @0, -30, null, true);
		CreateTextureEXadd("エフェクト３", 18000, 0, 0, "cg/ef/ef038_汎用射撃.jpg");
		Zoom("エフェクト３", 0, 2000, 2000, Dxl2, true);
		Rotate("エフェクト３", 0, @0, 180, 0, null, true);

		CreateTextureEXadd("エフェクト４", 17000, 0, 0, "cg/ef/ef038_汎用射撃.jpg");
		Zoom("エフェクト４", 0, 2000, 2000, Dxl2, true);
		Rotate("エフェクト４", 0, @0, @0, @45, null, true);
		CreateTextureEXadd("エフェクト５", 17000, 0, 0, "cg/ef/ef038_汎用射撃.jpg");
		Zoom("エフェクト５", 0, 3000, 3000, Dxl2, true);
		Rotate("エフェクト５", 0, @0, @0, @85, null, true);
		CreateTextureEXadd("エフェクト６", 17000, 0, 0, "cg/ef/ef038_汎用射撃.jpg");
		Zoom("エフェクト６", 0, 4000, 4000, Dxl2, true);
		Rotate("エフェクト６", 0, @0, @0, @125, null, true);
		//★ロック設置
		LockVideo(false);

	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("サウンド２",500,600,true);

//◆速度急上昇、横にスライドとか理不尽な機動で避け
	CreateSCR1("@背景３","@背景４",1000,0,@0);
	FadeF("自機１",1000,1000,1000,-100,100,Dxl1,false);
	Fade("色１", 1000, 0, null, true);

		OnSE("se戦闘_荒覇吐_攻撃01",1000);
		Zoom("自機１", 500, 700, 700, Dxl2, false);
		BezierMove("自機１", 500, (@0,@0){@100,@200}{@200,@100}(@-200,@-100), AxlDxl, false);
		Zoom("エフェクト１", 750, 5000, 5000, Axl2, false);
		Shake("エフェクト１", 750, 100, 0, 0, 0, 800, Dxl2, false);
		Fade("色１", 500, 300, null, false);
		Fade("エフェクト１", 500, 1000, null, true);
		Fade("色１", 250, 100, null, false);
		Fade("エフェクト１", 250, 0, null, false);

		OnSE("se戦闘_荒覇吐_攻撃01",1000);
		Zoom("自機１", 500, 400, 400, Dxl2, false);
		BezierMove("自機１", 500, (@0,@0){@-100,@-200}{@0,@-100}(@200,@100), AxlDxl, false);
		Zoom("エフェクト２", 750, 4000, 4000, Axl2, false);
		Shake("エフェクト２", 750, 50, 0, 0, 0, 800, Dxl2, false);
		Fade("色１", 500, 400, null, false);
		Fade("エフェクト２", 500, 1000, null, true);
		Fade("色１", 250, 200, null, false);
		Fade("エフェクト２", 250, 0, null, false);

		OnSE("se戦闘_荒覇吐_攻撃01",1000);
		Zoom("自機１", 500, 200, 200, Dxl2, false);
		BezierMove("自機１", 500, (@0,@0){@300,@-200}{@100,@-100}(@-200,@-100), AxlDxl, false);
		Zoom("エフェクト３", 750, 3000, 3000, Axl2, false);
		Shake("エフェクト３", 750, 20, 0, 0, 0, 800, Dxl2, false);
		Fade("色１", 500, 500, null, false);
		Fade("エフェクト３", 500, 1000, null, true);
		Fade("色１", 250, 100, null, false);
		Fade("エフェクト３", 250, 0, null, false);

		DrawTransition("色２", 2000, 0, 500, 100, null, "cg/data/circle_09_00_0.png", false);
		Fade("色２", 2000, 500, null, false);
		FadeF("自機１",1000,1000,2000,300,100,null, false);
		Zoom("自機１", 1000, 150, 150, null, true);

		//開始
		FadeDelete("色２", 500, false);
		//Zoom("自機１", 2000, 3000, 3000, null, false);
		//BezierMove("自機１", 500, (@0,@0){@200,@-200}{@-500,@800}(@-3000,@-400), AxlAuto, false);

		OnSE("se戦闘_荒覇吐_攻撃01",1000);
		Zoom("自機１", 500, 700, 700, null, false);
		BezierMove("自機１", 500, (@0,@0){@200,@-200}{@-500,@500}(@-300,@0), AxlDxl, false);
		Zoom("エフェクト４", 750, 3000, 3000, Axl2, false);
		Shake("エフェクト４", 750, 20, 0, 0, 0, 800, Dxl2, false);
		Fade("色１", 500, 500, null, false);
		Fade("エフェクト４", 500, 1000, null, true);
		Fade("色１", 250, 100, null, false);
		Fade("エフェクト４", 250, 0, null, false);

		OnSE("se戦闘_荒覇吐_攻撃01",1000);
		Zoom("自機１", 500, 1400, 1400, null, false);
		BezierMove("自機１", 500, (@0,@0){@200,@200}{@400,@300}(@600,@-200), AxlAuto, false);
		Zoom("エフェクト５", 750, 4000, 4000, Axl2, false);
		Shake("エフェクト５", 750, 30, 0, 0, 0, 800, Dxl2, false);
		Fade("色１", 500, 500, null, false);
		Fade("エフェクト５", 500, 1000, null, true);
		Fade("色１", 250, 100, null, false);
		Fade("エフェクト５", 250, 0, null, false);

		OnSE("se戦闘_荒覇吐_攻撃01",1000);
		Zoom("自機１", 500, 3000, 3000, null, false);
		BezierMove("自機１", 500, (@0,@0){@200,@200}{@-500,@500}(@-3000,@0), AxlAuto, false);
		Zoom("エフェクト６", 750, 6000, 6000, Axl2, false);
		Shake("エフェクト６", 750, 50, 0, 0, 0, 800, Dxl2, false);
		Fade("色１", 500, 500, null, false);
		Fade("エフェクト６", 500, 1000, null, true);
		Fade("色１", 1000, 1000, null, true);

//◆上昇
	SCR1stop();
	Delete("背景３");
	Delete("背景４");
	Delete("自機１");
	Delete("エフェクト*");
	CreateTextureSP("エフェクト１", 18999, 0, 0, "cg/ef/ef002_汎用移動.jpg");
	Move("背景２", 0, @-200, @0, Dxl1, true);

	//★コクピット再起動
		//▼コクピット（瞬間表示）
		Cockpit_AllFade2();
		//▼コクピット（自機情報：振動）
		FrameShake();
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,-90,null,true);
		//▼コクピット（自機情報：回転軸自動化）
		CP_RollBarMoveA();
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(1200,0,null,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(1200,800,null,true);
		//▼コクピット（自機情報：高度）
		CP_HighChange(1200,1500,null,true);

	SetVolume("サウンド２", 3000, 0, NULL);

	CreateSE("サウンド３","se特殊_陰義_グラビティアクセル準備");
	SoundPlay("サウンド３",0,1000,true);
	Fade("色１", 100, 0, null, true);

	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(300,0,null,false);

	SetBlur("背景２", true, 2, 500, 50, false);
	Fade("エフェクト１", 300, 0, null, false);
	Fade("色１", 300, 0, null, false);
	Fade("背景２", 300, 1000, null, false);
	Move("背景２", 500, @200, @0, Dxl1, true);
	SetBlur("背景２", false, 2, 500, 50, true);

	//▼雲正面
	CloudZoomStart(700,1000,1000,500,1000);

	Move("背景２", 1000, @0, -50, AxlDxl, false);
	Zoom("背景２", 1000, 1000, 1000, Dxl1, 700);

	Move("背景１", 300, @0, 0, Dxl1, false);
	Fade("背景１", 300, 1000, null, true);
	MoveFFP1("@背景１",5000);//固定値ランダム

	SetVolume("サウンド３", 2000, 0, NULL);

	Delete("エフェクト１");

	SetFwC("cg/fw/fw景明_戦闘.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md05/007vs0170a00">
「良し……！
　扱い切れるな、<RUBY text="・・・・">重力飛行</RUBY>！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/007vs0180a01">
《銀星号にも引けを取らない程度にはね！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　野太刀を取り戻した事で、村正の諸性能は飛躍的に
増している。
　特にこれまでは小技の一つでしかなかった引辰制御
能力の成長が著しい。

　以前は騎体の加速に用いるのが関の山だったが、今
ならば様々な応用が利く。
　銀星号の株を奪う重力飛行はその一端だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md05/007vs0190a00">
「これならば……
　この群れが相手でも負けはしない」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/007vs0200a01">
《勿論！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("色３", 20000, "#000000");
	Fade("色３", 300, 1000, null, true);

	//▼雲消去
	CloudZoomFade(0,true);

	//★コクピット消去
		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

//◆銀星連隊攻撃
	CreateTextureEX("背景３", 17000, -4000, 0, "旋回イメージ１");
	CreateTextureEX("背景４", 17000, -4000, 0, "旋回イメージ１");

	LoadImage("イメージ２", "cg/st/3d零零式汚染_騎航_発振.png");
	SetAlias("イメージ２", "イメージ２");

	CreateTextureSP("敵機４", 17100, 600, 100, "イメージ２");
	Zoom("敵機４", 0, 200, 200, Dxl2, true);
	CreateTextureSP("敵機１", 17100, 640, -670, "イメージ２");
	Zoom("敵機１", 0, 300, 300, Dxl2, true);
	Rotate("敵機１", 0, @0, @0, -90, Axl1, true);
	CreateTextureSP("敵機２", 17100, 500, 400, "イメージ２");
	Zoom("敵機２", 0, 700, 700, Dxl2, true);
	CreateTextureSP("敵機３", 17100, 250, 600, "イメージ２");
	Zoom("敵機３", 0, 1000, 1000, Dxl2, true);

	CreateColorEXadd("色１", 19999, "#FFFFFF");

	CreateTextureEX("エフェクト５", 18000, 0, 0, "cg/ef/ef047_発振砲集団射撃.jpg");
	Rotate("エフェクト５", 0, 180, @0, @0, null, true);

	CreateTextureEX("自機１", 17100, -500, -500, "cg/st/3d村正最終_騎航_通常5.png");
	Rotate("自機１", 0, @0, @0, 180, null, true);
	SetBlur("自機１", true, 1, 500, 50, false);
	CreateTextureEX("自機２", 17100, -500, -500, "cg/st/3d村正最終_騎航_通常4.png");
	Rotate("自機２", 0, @0, @0, 180, null, true);
	SetBlur("自機２", true, 2, 500, 50, false);
	CreateTextureEX("自機３", 17100, -500, -500, "cg/st/3d村正最終_騎航_通常2.png");
	SetBlur("自機３", true, 2, 500, 50, false);
	Rotate("自機３", 0, 180, @0, @0, null, true);

	Move("自機*", 0, @-100, @0, null, true);

	Shake("自機*", 300000, 0, 2, 0, 0, 800, null, false);

		CreateColorEXadd("色２", 19000, "#FFFFFF");

		CreateTextureEXadd("エフェクト１", 17000, -300, 0, "cg/ef/ef038_汎用射撃.jpg");
		Zoom("エフェクト１", 0, 3000, 3000, Dxl2, true);
		Rotate("エフェクト１", 0, @0, @0, -250, null, true);
		CreateTextureEXadd("エフェクト２", 18000, -300, 0, "cg/ef/ef038_汎用射撃.jpg");
		Zoom("エフェクト２", 0, 4000, 4000, Dxl2, true);
		Rotate("エフェクト２", 0, @0, @0, -230, null, true);
		CreateTextureEXadd("エフェクト３", 18000, 0, 0, "cg/ef/ef038_汎用射撃.jpg");
		Zoom("エフェクト３", 0, 2000, 2000, Dxl2, true);
		Rotate("エフェクト３", 0, @0, @0, -200, null, true);
		CreateTextureEXadd("エフェクト４", 17000, 0, -100, "cg/ef/ef038_汎用射撃.jpg");
		Zoom("エフェクト４", 0, 2000, 2000, Dxl2, true);
		Rotate("エフェクト４", 0, @0, @0, -180, null, true);


	OnSE("se特殊_鎧_エネルギー充電01",1000);
	CreateSE("サウンド７","se戦闘_動作_空走行02_L");
	SoundPlay("サウンド７",0,1000,true);

	CreateSCR1("@背景３","@背景４",1000,0,@0);

	Fade("背景３", 0, 1000, null, true);
	Fade("色３", 300, 0, null, false);

	//BezierMove("敵機１", 500, (@0,@0){@-400,@-300}{@-500,@-400}(@-400,@-450), null, false);
	BezierMove("敵機２", 2000, (@0,@0){@-400,@-500}{@-500,@-1000}(@-400,@-850), null, false);
	Rotate("敵機２", 2000, @0, @0, -100, Axl1, 500);
	BezierMove("敵機４", 2000, (@0,@0){@-400,@-200}{@-500,@-400}(@-400,@-300), null, false);
	Rotate("敵機４", 2000, @0, @0, -90, Axl1, 500);
	BezierMove("敵機３", 2000, (@0,@0){@-400,@-600}{@-500,@-1100}(@-400,@-900), null, false);
	Rotate("敵機３", 2000, @0, @0, -110, Axl1, 500);


	OnSE("se戦闘_荒覇吐_攻撃03",600);

	Move("敵機１", 500, @-320, @320, Dxl1, false);
	Shake("敵機１", 500, 0, 50, 0, 0, 500, Dxl1, false);
	Fade("色１", 100, 300, null, true);
	Fade("色１", 500, 0, null, 400);
	Move("敵機１", 5000, @-640, @-50, Axl1, false);
	Rotate("敵機１", 5000, @0, @0, -180, null, false);
	Fade("色１", 300, 0, null, false);

	WaitAction("背景４", null);

	OnSE("se戦闘_荒覇吐_攻撃03",700);

	Move("敵機２", 500, @-100, @50, Dxl1, false);
	Shake("敵機２", 500, 0, 50, 0, 0, 500, Dxl1, false);
	Fade("色１", 100, 500, null, true);
	Fade("色１", 500, 0, null, 150);
	Move("敵機２", 5000, @-640, @-50, Axl1, false);
	Rotate("敵機２", 5000, @0, @0, -180, null, false);

	OnSE("se戦闘_荒覇吐_攻撃03",800);

	Move("敵機４", 500, @-100, @50, Dxl1, false);
	Shake("敵機４", 500, 0, 50, 0, 0, 500, Dxl1, false);
	Fade("色１", 100, 700, null, true);
	Fade("色１", 500, 0, null, 150);
	Move("敵機４", 5000, @-640, @-50, Axl1, false);
	Rotate("敵機４", 5000, @0, @0, -180, null, false);

	OnSE("se戦闘_荒覇吐_攻撃03",900);

	Move("敵機３", 500, @-400, @200, Dxl1, false);
	Shake("敵機３", 500, 0, 100, 0, 0, 500, Dxl1, false);
	Fade("色１", 300, 1000, null, true);

	SCR1stop();
	Fade("エフェクト５", 0, 1000, null, true);
	Zoom("エフェクト５", 0, 1200, 1200, null, true);

	Zoom("エフェクト５", 1000, 2000, 2000, Axl1, false);
	Shake("エフェクト５", 1000, 0, 30, 0, 0, 800, null, false);
	Fade("色１", 500, 0, null, true);
	Fade("色１", 500, 1000, null, true);

	SetVolume("サウンド７", 2000, 0, NULL);

		Delete("敵機*");
		Delete("エフェクト５");
		Move("背景３", 0, 0, @0, Axl1, true);
		Move("背景４", 0, 0, @0, Axl1, true);
		CreateSCR1("@背景３","@背景４",1000,-4000,@0);
		Fade("自機１", 0, 1000, null, true);


//◆回避回避回避
//◆重力飛行なので航空力学はもう無視。
	BezierMove("自機*", 500, (@0,@0){@20,@-20}{@20,@-40}(@60,@60), Dxl1, false);
	Zoom("自機*", 500, 700, 700, Dxl1, false);
	Fade("色１", 500, 0, null, true);
//	WaitKey();

		OnSE("se戦闘_荒覇吐_攻撃01",1000);
		Zoom("自機*", 500, 1000, 1000, Dxl2, false);
		BezierMove("自機*", 500, (@0,@0){@500,@-200}{@0,@-400}(@200,@100), Dxl1, false);
		Move("エフェクト１", 750, @-400, @0, Axl1, false);
		Zoom("エフェクト１", 750, 4000, 4000, Axl2, false);
		Shake("エフェクト１", 750, 100, 0, 0, 0, 800, Dxl2, false);
		Fade("色１", 500, 300, null, false);
		Fade("エフェクト１", 500, 1000, null, true);
		Fade("色１", 250, 100, null, false);
		Fade("エフェクト１", 250, 0, null, false);

//	WaitKey();
		Fade("自機１", 100, 0, null, false);
		Fade("自機３", 100, 1000, null, false);

		OnSE("se戦闘_荒覇吐_攻撃01",1000);
		Zoom("自機*", 500, 400, 400, Dxl1, false);
		BezierMove("自機*", 500, (@0,@0){@-500,@60}{@-100,@60}(@250,@40), Axl1, false);
		Move("エフェクト２", 750, @-400, @0, Axl1, false);
		Zoom("エフェクト２", 750, 5000, 5000, Axl2, false);
		Shake("エフェクト２", 750, 50, 0, 0, 0, 800, Dxl2, false);
		Fade("色１", 500, 400, null, false);
		Fade("エフェクト２", 500, 1000, null, true);
		Fade("色１", 250, 200, null, false);
		Fade("エフェクト２", 250, 0, null, false);

//	WaitKey();
		Fade("自機３", 100, 0, null, false);
		Fade("自機２", 100, 1000, null, false);

		OnSE("se戦闘_荒覇吐_攻撃01",1000);
		Zoom("自機*", 500, 200, 200, Dxl1, false);
		BezierMove("自機*", 500, (@0,@0){@-200,@-200}{@-300,@-100}(@200,@-20), Dxl2, false);
		Move("エフェクト３", 750, @-400, @0, Axl1, false);
		Zoom("エフェクト３", 750, 3000, 3000, Axl2, false);
		Shake("エフェクト３", 750, 20, 0, 0, 0, 800, Dxl2, false);
		Fade("色１", 500, 500, null, false);
		Fade("エフェクト３", 500, 1000, null, true);
		Fade("色１", 250, 100, null, false);
		Fade("エフェクト３", 250, 0, null, false);

//	WaitKey();

		OnSE("se戦闘_荒覇吐_攻撃01",1000);
		Zoom("自機*", 500, 500, 500, Dxl1, false);
		BezierMove("自機*", 500, (@0,@0){@100,@300}{@300,@100}(@600,@-100), Axl1, false);
		Move("エフェクト４", 750, @-400, @0, Axl1, false);
		Zoom("エフェクト４", 750, 2000, 2000, Axl2, false);
		Shake("エフェクト４", 750, 100, 0, 0, 0, 800, Dxl2, false);
		Fade("色１", 500, 300, null, false);
		Fade("エフェクト４", 500, 1000, null, true);
		Fade("色１", 250, 0, null, false);
		Fade("エフェクト４", 250, 0, null, false);


		OnSE("se戦闘_荒覇吐_攻撃01",1000);
		Fade("色１", 100, 1000, null, true);

			//▼コクピット（自機情報：回転軸）
			CP_RollBarMove2(0,-90,null,true);

			SCR1stop();
			Delete("自機*");
			Delete("エフェクト*");
			Fade("背景３", 0, 0, null, true);
			Fade("背景４", 0, 0, null, true);

			CreateTextureSP("背景２", 300, 0, 0, "cg/bg/resize/bg106_富士山遠望b_00l.jpg");
			CreateSurfaceEX("絵Suf",300,2000,"背景２");
			Rotate("絵Suf", 0, @0, @0, 90, null, true);
			Fade("絵Suf", 0, 1000, null, true);

			//★コクピット再起動
				//▼コクピット（瞬間表示）
				Cockpit_AllFade2();
				//▼コクピット（自機情報：振動）
				FrameShake();
				//▼コクピット（自機情報：仰角自動化）
				CP_AltChangeA();
				//▼コクピット（自機情報：速度自動化）
				CP_SpeedChangeA();
				//▼コクピット（自機情報：高度自動化）
				CP_HighChangeA();

				//▼雲正面
				CloudZoomStart(700,1000,1000,500,1000);

	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(1000,0,null,false);

	Fade("色１", 1000, 0, null, false);
	Rotate("絵Suf", 1000, @0, @0, 0, Dxl1, false);
	Move("背景２", 800, @-512, @100, Dxl1, true);

	//▼コクピット（自機情報：回転軸自動化）
	CP_RollBarMoveA();

	//固定値ランダム
	MoveFFP1("@背景２",5000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　敵群の数的暴力に、常識外の速力をもって対抗する。

　幾度繰り返そうが、窮地に追い詰められる状況とは
ならない。
　むしろこちらが新たな機動に慣熟するにつれ、少し
ずつ余裕すら生まれつつあった。

　しかし――
　
　負けはしないにしても、どう打ち破ったものか。

　勝つとなると、やはりこの数の差は軽視し難い。
　一騎一騎墜としていてはいつ終わるか。

　いや、途中で力尽きる。

　包囲を破って富士山頂へ到達する……のは、難しく
とも不可能ではないだろう。
　が、それは〝神〟と複製連隊による挟撃という死地
を自ら招く愚策だ。

　何らかの方法で連隊を富士山から引き離す。
　
　……方針としては、これが最善と思われる。

　問題はその具体的手法。
　どうすれば敵集団を俺の希望通りに動かせるか――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnSE("se特殊_コックピット_アラーム",1000);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/007vs0210a01">
《御堂！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/007vs0220a00">
「上か」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　危険を示唆され、考えを打ち切る。
　頭上に敵数騎が陣取ったようだ。

　もっとも、危ぶむには及ばない。
　重力飛行の術を掌握した<RUBY text="おれ">村正</RUBY>にとって、<RUBY text="・・・・">高度優勢</RUBY>と
いう武者戦の一大原則はほぼ有名無実。

　どうとでも対処できる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃
	CreateTextureSP("背景５", 17100, 0, 0, "cg/bg/bg001_空a_02.jpg");
	CreateTextureSP("敵機１", 17100, 100, -800, "cg/st/3d八剣姫_騎航_通常.png");
	Rotate("敵機１", 0, @0, 180, -90, null, true);

	OnSE("se戦闘_動作_空突進02",1000);
	Move("敵機１", 100, @-200, @2000, null, true);

	//▼コクピット（自機情報：回転軸停止）
	CP_RollBar_ADelete();
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(0,180,null,true);

//◆ぎりぎり回避
	CreateColorEXadd("色１", 19000, "#FFFFFF");
	CreateTextureEX("エフェクト１", 18000, 0, 0, "cg/ef/ef008_汎用上下軌道.jpg");
	OnSE("se戦闘_攻撃_刀振る02",1000);

	MoveFFP1stop();

	Fade("エフェクト１", 0, 1000, null, false);
	Move("エフェクト１", 300, @-200, @0, Axl1, false);
	Zoom("エフェクト１", 300, 10000, 10000, Dxl1, false);
	Fade("色１", 300, 1000, null, true);

	Delete("背景５");
	Delete("敵機１");
	Rotate("絵Suf", 0, @0, @0, @-180, null, false);
	Fade("エフェクト１", 0, 0, null, true);

	OnSE("se戦闘_動作_空突進01",1000);

	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(1500,0,null,false);

	Rotate("絵Suf", 1500, @0, @0, @180, Dxl1, false);
	Move("背景２", 1500, @-300, @-50, Dxl1, false);
	Fade("色１", 1500, 0, null, false);

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md05/007vs0230a00">
「――何？」
{
	WaitAction("色１", null);
	//▼コクピット（自機情報：回転軸自動化）
	CP_RollBarMoveA();
	MoveFFP1("@背景２",5000);//固定値ランダム
}<BR>

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　速い……!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/007vs0240a01">
《気をつけて！
　こいつら、他のとは<RUBY text="・">桁</RUBY>が違う!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆連続攻撃
	CreateTextureSP("背景５", 17001, 0, 0, "cg/bg/bg001_空a_02.jpg");

	CreateTextureEX("背景３", 17001, -4000, Middle, "旋回イメージ１");
	CreateTextureEX("背景４", 17001, -4000, Middle, "旋回イメージ１");

	LoadImage("イメージ１", "cg/st/3d八剣姫_騎航_通常.png");
	SetAlias("イメージ１", "イメージ１");
	CreateTextureSP("敵機１", 17150, 300, -800, "イメージ１");
	Rotate("敵機１", 0, @0, 180, -70, null, true);
	Zoom("敵機１", 0, 300, 300, Dxl2, true);
	CreateTextureSP("敵機２", 17099, -300, -800, "イメージ１");
	Rotate("敵機２", 0, @0, 180, -150, null, true);
	Zoom("敵機２", 0, 600, 600, Dxl2, true);
	CreateTextureSP("敵機３", 17200, 100, -800, "イメージ１");
	Rotate("敵機３", 0, @0, 180, -90, null, true);

	//▼固定値ランダム：停止
	MoveFFP1stop();
	//▼雲消去
	CloudZoomFade(0,true);

	//★コクピット消去
		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

	OnSE("se戦闘_動作_空突進02",1000);
	Move("敵機１", 100, @-400, @2000, null, 50);

	OnSE("se戦闘_動作_空突進02",1000);
	Move("敵機２", 100, @200, @2000, null, 50);

	OnSE("se戦闘_動作_空突進02",1000);
	Move("敵機３", 100, @-200, @2000, null, true);


//◆どうにか避けるが
		CreateColorEXadd("色１", 19999, "#FFFFFF");
		CreateTextureEX("自機１", 17120, 0, 0, "cg/st/3d村正最終_騎航_通常.png");
		Zoom("自機１", 0, 900, 900, Dxl2, true);
		SetBlur("自機１", true, 1, 500, 50, false);
		CreateTextureEX("自機２", 17110, 0, -200, "cg/st/3d村正最終_騎航_通常5.png");
		Rotate("自機２", 0, @0, @0, @0, null, true);
		Zoom("自機２", 0, 700, 700, Dxl2, true);
		SetBlur("自機２", true, 1, 500, 50, false);
		CreateTextureEX("自機３", 17150, 0, -200, "cg/st/3d村正最終_騎航_通常4.png");
		Rotate("自機３", 0, @0, @0, @0, null, true);
		Zoom("自機３", 0, 600, 600, Dxl2, true);
		SetBlur("自機３", true, 1, 500, 50, false);

		CreateTextureEXadd("エフェクト１", 17120, 0, 0, "cg/ef/ef008_汎用上下軌道.jpg");
		Zoom("エフェクト１", 0, 2000, 2000, Dxl2, true);
		CreateTextureEXadd("エフェクト２", 17100, 0, 0, "cg/ef/ef011_汎用斜め軌道.jpg");
		Zoom("エフェクト２", 0, 2000, 2000, Dxl2, true);
		CreateTextureEXadd("エフェクト３", 17150, 0, 0, "cg/ef/ef010_汎用斜め軌道.jpg");
		Zoom("エフェクト３", 0, 2000, 2000, Dxl2, true);

		CreateTextureSP("背景１", 500, 0, Middle, "cg/bg/resize/bg002_空a_02.jpg");
		CreateSurfaceEX("絵Suf2",500,2000,"背景１");

		CreateTextureEX("エフェクタ１", 19100, 0, 0, "cg/ef/ef045_スパーク.jpg");
		CreateTextureEX("エフェクタ２", 19100, 0, 0, "cg/ef/ef045_スパーク.jpg");
		Zoom("エフェクタ*", 0, 1200, 1200, Dxl2, true);
		Rotate("エフェクタ２", 0, @0, @180, @0, null, true);

		Zoom("敵機１", 0, 1000, 1000, Dxl2, true);
		Move("敵機１", 0, 0, -800, Axl1, true);
		Zoom("敵機２", 0, 500, 500, Dxl2, true);
		Move("敵機２", 0, -400, -800, Axl1, true);
		Move("敵機３", 0, 400, -800, Axl1, true);


	CreateSE("サウンド２","se戦闘_動作_空走行02_L");
	MusicStart("サウンド２",0,1000,0,2000,null,true);

	//Ｘ軸ランダムＹ軸均等
	CreateSCR1("@背景３","@背景４",1000,0,@0);

	Fade("自機１", 0, 1000, null, true);
	Move("自機１", 500, @-200, @-150, Dxl1, true);
	MoveFTP1("@自機*",5000,3,5);
	Wait(100);

	OnSE("se戦闘_動作_空突進08",1000);

	Fade("自機１", 300, 0, null, false);
	Fade("自機２", 300, 1000, null, false);
	Zoom("自機１", 300, 500, 500, Dxl3, false);
	Zoom("自機２", 300, 500, 500, Dxl3, false);
	Wait(100);
	//Shake("自機*", 300, 0, 10, 0, 0, 500, Dxl1, false);
	Move("敵機１", 200, @-400, @2000, null, false);
	Fade("色１", 50, 300, null, false);
	Fade("エフェクト１", 50, 1000, null, true);
	Fade("色１", 50, 0, null, false);
	Fade("エフェクト１", 50, 0, null, false);
	//WaitKey();

	OnSE("se戦闘_動作_空突進08",1000);

	Fade("自機２", 300, 0, null, false);
	Fade("自機３", 300, 1000, null, false);
	Zoom("自機２", 300, 1000, 1000, Dxl3, false);
	Zoom("自機３", 300, 1000, 1000, Dxl3, false);
	Wait(100);
	//Shake("自機*", 300, 0, 10, 0, 0, 500, Dxl1, false);
	Move("敵機２", 300, @1000, @1500, null, false);
	Fade("色１", 50, 400, null, false);
	Fade("エフェクト２", 50, 1000, null, true);
	Fade("色１", 50, 0, null, false);
	Fade("エフェクト２", 50, 0, null, false);
	//WaitKey();

	OnSE("se戦闘_動作_空突進08",1000);

	Zoom("自機１", 0, 1000, 1000, Dxl2, true);
	Fade("自機３", 300, 0, null, false);
	Fade("自機１", 300, 1000, null, false);
	Zoom("自機３", 300, 700, 700, Dxl3, false);
	Zoom("自機１", 300, 700, 700, Dxl3, false);
	Wait(100);
	Shake("自機*", 300, 0, 10, 0, 0, 500, Dxl1, false);
	Move("敵機３", 300, @-1600, @2000, null, false);
	Fade("エフェクト３", 50, 1000, null, false);
	//WaitKey();
	Fade("色１", 300, 1000, Axl1, true);


//◆一発軽く食らう
	SetVolume("@mbgm*", 2000, 0, NULL);

	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);
	OnSE("se戦闘_攻撃_剣戟弾く02",1000);
	CreateSE("サウンド３","se戦闘_動作_鎧_速度失速01");
	SoundPlay("サウンド３",0,1000,false);

	Fade("エフェクタ１", 0, 1000, null, true);
	Shake("エフェクタ*", 10000, 0, 20, 0, 0, 800, null, false);

	Zoom("エフェクタ*", 600, 2000, 2000, null, false);
	Fade("色１", 100, 0, null, true);
	Fade("色１", 300, 1000, null, false);
	Fade("エフェクタ２", 300, 1000, null, true);

	Delete("エフェクタ*");
	Delete("エフェクト*");
	Delete("敵機*");
	Delete("自機*");
	MoveFTP1stop();
	SCR1stop();
	Delete("背景３");
	Delete("背景４");
	Delete("背景５");

	CreateTextureSPadd("エフェクト１", 10000, 0, 0, "cg/ef/ef045_スパーク.jpg");

			//★コクピット再起動
				//▼コクピット（瞬間表示）
				Cockpit_AllFade2();
				//▼コクピット（自機情報：振動）
				//FrameShake();
				//▼コクピット（自機情報：回転軸）
				CP_RollBarMove2(0,40,null,false);
				//▼コクピット（自機情報：仰角自動化）
				//CP_AltChangeA();
				//▼コクピット（自機情報：速度自動化）
				//CP_SpeedChangeA();
				//▼コクピット（自機情報：高度自動化）
				//CP_HighChangeA();
				//▼コクピット（自機情報：装甲）
				MyLife_Count(500,716);
				//▼雲正面
				CloudZoomStart(700,1000,1000,500,1000);

	Rotate("絵Suf", 0, @0, @0, @-45, null, true);
	Move("背景２", 0, 0, -30, Axl1, true);

	OnSE("se戦闘_動作_空突進04",1000);

	Shake("背景２", 1000, 0, 20, 0, 0, 600, Dxl1, false);
	Move("背景２", 500, @-924, @0, Dxl1, false);
	Fade("色１", 300, 0, null, false);
	Shake("エフェクト１", 1000, 0, 20, 0, 0, 800, null, false);
	Zoom("エフェクト１", 300, 2000, 2000, null, false);
	FadeDelete("エフェクト１", 500, true);

	SetVolume("サウンド３", 1000, 0, NULL);
	SetVolume("サウンド２", 1000, 0, NULL);

	//▼雲消去
	CloudZoomFade(500,false);
	//▼コクピット（自機情報：速度停止）
	CP_SpeedChange2(1000,0,AxlDxl,false);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(1000,0,AxlDxl,false);
	//▼コクピット（自機情報：方位）
	CP_AziChange(1000,-130,AxlDxl,false);

	Move("背景２", 1000, @-100, @0, Axl1, false);
	Fade("絵Suf2", 1000, 1000, Axl2, false);
	Move("背景１", 20000, @-300, @0, null, false);

	SetFwC("cg/fw/fw景明_苦痛.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md05/007vs0250a00">
「ぢっ……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/007vs0260a01">
《背面に被弾、損傷軽微！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　当てられた!?

　現在の村正の機動性能は武者の常識を完全に超えた
所にある。
　そこにこちらの油断があった事は否めないが、それ
にしても追随できる敵騎の速度は異常だ。

　これは……一体？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("サウンド１", 1000, 0, NULL);

	//▼コクピット（自機情報：方位）
	CP_AziChange(1000,-180,Axl1,false);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(1000,90,Axl1,false);

	Rotate("絵Suf2", 1000, @0, @0, @-90, null, false);
	Move("背景１", 1000, @-724, @0, Axl1, false);

	//▼コクピット（削除）
	//CP_AllDelete();
	//あきゅん「ＣＰ：すぐに後でも使用するので非表示に変更」

	Cockpit_AllFade0();

	ClearFadeAll(1000, true);
}

..//ジャンプ指定
//次ファイル　"md05_008vs.nss"

function TekiSet(){
	while($tekimax>$teki){
		$tekiname=String("%s%02d","雑魚",$teki);

		$tekiS=$teki*5;
		$tekiW=$teki*1;

		if($preteki==1){
			$tekixbase=$tekixx;
			$tekiybase=$tekiyy-$tekiW;
		}else if($preteki==2){
			$tekixbase=$tekixx+$tekiS;
			$tekiybase=$tekiyy-$tekiW;
		}else if($preteki==3){
			$tekixbase=$tekixx+$tekiS;
			$tekiybase=$tekiyy;
		}else if($preteki==4){
			$tekixbase=$tekixx+$tekiS;
			$tekiybase=$tekiyy+$tekiW;
		}else if($preteki==5){
			$tekixbase=$tekixx;
			$tekiybase=$tekiyy+$tekiW;
		}else if($preteki==6){
			$tekixbase=$tekixx-$tekiS;
			$tekiybase=$tekiyy+$tekiW;
		}else if($preteki==7){
			$tekixbase=$tekixx-$tekiS;
			$tekiybase=$tekiyy;
		}else if($preteki==8){
			$tekixbase=$tekixx-$tekiS;
			$tekiybase=$tekiyy-$tekiW;
			$preteki=0;
		}
		$tekiybase=$tekiyy;

		if(Random(2)==1){$tekixbase+=Random(20);}
		else{$tekixbase-=Random(20);}
		if(Random(2)==1){$tekiybase+=Random(100);}
		else{$tekiybase-=Random(100);}
		CreateTexture($tekiname, 1000, $tekixbase, $tekiybase, "雑魚イメージ");
		SetAlias($tekiname, $tekiname);
		Fade($tekiname, 0, 0, null, true);

		$preteki++;
		$teki++;
	}
	Zoom("雑魚*", 0, 0, 0, Dxl2, true);
}

function TekiGo(){
	$tekixbase=0;
	$tekiybase=0;
	$tekixx=612;
	$tekiyy=400;
	$preteki=1;
	$teki=0;
	while($tekimax>$teki){

		$tekiname=String("%s%02d","@雑魚",$teki);

		if($preteki==1){
			$tekixbase=0;
			$tekiybase-=($tekiyy+$teki);
		}else if($preteki==2){
			$tekixbase=$tekixx+$teki;
			$tekiybase-=($tekiyy+$teki);
		}else if($preteki==3){
			$tekixbase=$tekixx+$teki;
			$tekiybase=0;
		}else if($preteki==4){
			$tekixbase=$tekixx+$teki;
			$tekiybase=$teki;
		}else if($preteki==5){
			$tekixbase=0;
			$tekiybase-=($tekiyy+$teki);
		}else if($preteki==6){
			$tekixbase-=($tekixx+$teki);
			$tekiybase=$teki;
		}else if($preteki==7){
			$tekixbase-=($tekixx+$teki);
			$tekiybase=0;
		}else if($preteki==8){
			$tekixbase-=($tekixx+$teki);
			$tekiybase-=($tekiyy+$teki);
			$preteki=0;
		}

		Move($tekiname, 600000, @$tekixbase, @$tekiybase, null, false);
		//FadeF($tekiname,600000,1000,600000,$tekixbase,$tekiybase,null, false);
		Fade($tekiname, 0, 1000, null, false);
		Zoom($tekiname, 0, 300, 300, null, true);
		Zoom($tekiname, 10000, 500, 500, null, false);

		if($teki<10){
			SetVolume("@サウンド９", 0, 1000, NULL);
			Request("@サウンド９", Play);
			//▼コクピット（ロックオン：位置自動調整）
			//CP_LockOnGet($tekiname,20,26,26,Dxl1,true);
			//FadeF("@CP_LockO*",600000,1000,600000,$tekixbase,$tekiybase,null, false);
		}
		Wait(5);

		$preteki++;
		$teki++;
	}
}
