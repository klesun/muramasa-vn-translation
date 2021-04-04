//<continuation number="470">

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

scene mc01_021vs.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc01_021vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc01_020vsb.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

//あきゅん「ＣＰ：ダメージフラグでライフ調整」
	$合体戦ライフ基本値 = 612;
	if($First_Battle_Damage >= 1){
		$合体戦ライフ調整値 = $合体戦ライフ基本値 - ($First_Battle_Damage*218);
	}else{
		$合体戦ライフ調整値 = $合体戦ライフ基本値 ;
	}

	MyLife_Count(0,$合体戦ライフ調整値);

//あきゅん「ＣＰ：ダメージフラグで生命値調整」
	$合体戦生命基本値 = 9;
	if($First_Battle_Damage >= 1){
		$合体戦生命調整値 = $合体戦生命基本値 - ($First_Battle_Damage*3);
	}else{
		$合体戦生命調整値 = $合体戦生命基本値 ;
	}

	CP_IHPChange(0,$合体戦生命調整値,null,false);

	MyTr_Count(0,378);
	CP_SpeedChange(0,372,null,false);

	CP_PowerChange(0,650,null,false);

	CP_HighChange(0,1200,null,false);
	CP_AziChange(0,251,null,false);
	CP_AltChange(0,1,null,false);

	CP_RollBarMove2(0,0,null,true);
	CP_RollBarMoveA();

	FrameShake();

	CreateTextureSP("絵演空", 100, InLeft, InBottom, "cg/bg/bg202_旋回演出背景山a_01.jpg");
	Move("絵演空", 0, @0, @144, null, true);

	CP_HighChange2(60000,1300,null,false);
	Move("絵演空", 60000, @0, @144, null, false);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,750,null,false);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,600,0,1000,null,true);
	MusicStart("SEL01b",2000,600,0,1500,null,true);

	Zoom("上背景", 150, 1500, 1500, Dxl2, false);
	DrawDelete("上背景", 150, 100, "circle_01_00_1", true);
	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0010a01">
《御堂、平気!?》


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0020a00">
「すつっ――」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0030a00">
（……少なくとも、今はな）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　劒冑の問いに声を<RUBY text="つむ">紡</RUBY>ぎ出して返すのは諦め、思念に
指向を持たせて送信する。
　発生通話と違い主旨が正確に汲み取られない場合も
ままあるが、今は贅沢を言っていられない。

　舌唇の痙攣は更に悪化し、殊更口を利こうとしなく
ても気を緩めるだけで狂声を発しそうな<RUBY text="あんばい">塩梅</RUBY>だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0040a00">
（自由の利かない場所が次第に広がっている
ような気がする……。
　首や足腰まで動かなくなった時には、危う
かろうな）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0050a01">
《そんなことになったら――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　墜ちるのみである。
　武者の騎航は背中の合当理を吹かすだけで成立する
ものではないのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0060a01">
《……くっ。
　手立てもあろうに、毒とはね！》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0070a01">
《心の底から、呆れる話よ！
　前例を探そうとしたら、蒙古襲来絵詞まで
遡っちゃうんじゃないの？》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0080a00">
（俺も、他には聞いた覚えがない。
　毒飼いを働く武者など）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 100, null);
	CreateTextureEX("絵演蒙古襲来", 18000, Center, Middle, "cg/ef/ef004_汎用血雫.jpg");
	SetTone("絵演蒙古襲来", Monochrome);
	Fade("絵演蒙古襲来", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　蒙古襲来――<RUBY text="いわゆる">所謂</RUBY>元寇の折、緒戦において蒙古側の
武者は大和武者を圧倒したが、その理由は蒙古の騎体
が運動性に優れていた事、<RUBY text="フォーメーション">編隊戦術</RUBY>に長けていた事等
の他に、毒の使用を躊躇わなかった事もあったと云う。

　わずかな掠り傷を重傷、遂には致命傷へ至らしめる
毒はさぞ有効な兵器であったことだろう。
　……しかし、世界軍史を紐解いて総覧しても、その
使用例は決して多くないのが実情だった。

　未開民族の間で狩猟に用いられた例なら無数にある。
だが仮にも文明国家の軍隊が使用した例となると、元
帝国以外は殆どが遥か遠き古代史の範疇だ。
　増して武者の使用例となると絶無である。

　それは毒という物が、<RUBY text="いつ">何時</RUBY>の時代<RUBY text="どこ">何処</RUBY>の国家の武者
にも必ず存在した特有の――戦場の王者としての――
美意識に、真っ向から刃向かうこと<RUBY text="はなは">甚</RUBY>だしかったから
であろう。

　武者は衆に優れた力を持ち、故に衆の模範とならね
ばならなかった。
　その武者がどうして、毒物など用いて姑息に勝利を
盗んだりできようものか？

　そうした意識は武者の<RUBY text="プライド">矜持</RUBY>であり、良き伝統である
筈だった。
　
　それを――かの敵騎は持ち合わせていないと<RUBY text="おぼ">思</RUBY>しい。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 750, null);
	FadeDelete("絵演蒙古襲来", 1000, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0090a00">
（<RUBY text="なじ">詰</RUBY>ったところで埒も明かんがな……）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0100a01">
《そうね。それは奴を地べたへ這わせてから
にしましょう。
　今は……その、毒のことだけど》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0110a00">
（何かわかるか）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0120a01">
《毒の正体について？　なら皆目。
　誇りに懸けてもそんな知識は学ばなかった
もの》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0130a00">
（だろうな。
　だが、俺の身体の何処にどう毒が作用して
いるのかならわかる筈）


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0140a00">
（何処だ？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　俺とて詳しくはないが、雑学程度には嗜んでいる。
一口に毒物と言っても種類は様々だ。
　しかし症状からして臓器に作用する実質毒や、接触
した組織を破壊する腐食毒は考慮から外せるだろう。

　そうなると後は血を破壊して身体機能を奪う血液毒
か、神経を冒して麻痺させる神経毒か……
　そのどちらなのかがわかれば、毒名の特定もできる
かもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0150a01">
《神経よ。
　もちろん傷口から血管を通して広がってる
んだけど、おかしくなってるのは神経のほう》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0160a01">
《あと筋肉も……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　神経毒。
　そして体の末端から異常が顕れるこの症状。

　うろ覚えの知識の中に、合致するものは――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0170a00">
（……テトロドトキシン）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0180a01">
《てと？》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0190a00">
（いや、要するに……河豚の毒だ）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 19000, "#000000");
	Fade("絵色黒", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　<RUBY text="テトロドトキシン">河豚毒</RUBY>。
　今から三十年ばかり昔、大和の田原某という博士が
初めて抽出に成功してその名を付けた。

　それが世界に先駆けて大和人の手で成されたのは、
偶然ではなく必然というものだろう。
　河豚は大和人には古くから馴染みの深い食材だ。

　<RUBY text="・・・・・・・・・・">死と背中合わせの美味</RUBY>として。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色黒", 500, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0200a01">
《つ――つまり》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0210a00">
（このまま放置すれば、すぐに死ぬな）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0220a01">
《解毒しないと！》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0230a00">
（お前の<RUBY text="ちから">機能</RUBY>でできるか？）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0240a01">
《……多分。
　全行動を停止して、数分掛ければだけど》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　今すぐには実行不可能、という事である。
　現状を最大限楽観的に捉えても、そんな余裕が得ら
れるとは考え難い。

　テトロドトキシンはいまだ人工合成の成功例が無い
物質だ。敵はおそらく実際に河豚から抽出し、通常は
経口摂取されるそれを戦闘に適するよう加工した上で
使用しているのだろう。

　そこまでするような相手が――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0250a00">
（〝<RUBY text="タイム">小休止</RUBY>〟の申請に耳を傾けてくれるとも
思えん）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0260a01">
《減らず口叩いてる場合なの？》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0270a00">
（症状の進行を遅らせる事はできるか？）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0280a01">
《……それくらいなら。
　でも、大して長くはもたないと思う》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0290a00">
（急いでけりをつけろ、と）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0300a01">
《ええ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　時間制限が設定されたという事だ。
　いや、それは元々あったようなものだが。

　タイムオーバーのペナルティは<RUBY text="たにん">舞殿宮</RUBY>の身命に危険
が及ぶ可能性から、自分自身の確実な死へと変わった。
　
　……話がわかり易くなって、有難い事だ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転。動きが少し鈍い。
//◆ちょっとガタついたり。
	CreateTextureEX("絵演空演出後", 100, InLeft, -945, "cg/bg/bg201_旋回演出背景市街地_01.jpg");

	CreateSE("SE01","se戦闘_動作_空上昇01");
	CreateSE("SE01a","se戦闘_動作_空急降下01");
	CreateTextureEX("絵演旋回背景", 200, InLeft, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	SetVertex("絵演旋回背景", left, middle);

	$背景倍角変数 = 2.50;
	$背景倍角組込変数 = $背景倍角変数 * 1000;

	$横移動計算基準値 = ImageHorizon("絵演旋回背景") * $背景倍角変数;
	$横移動計算調整値 =  $横移動計算基準値 -1200;
	$横移動計算補正値 =  $横移動計算調整値 * (-1);

	Zoom("絵演旋回背景", 0, $背景倍角組込変数, 1000, null, true);

	Wait(1);

	SetBlur("絵演旋回背景", true, 2, 500, 80, false);
	SetBlur("絵演空", true, 2, 500, 30, false);
	SetBlur("絵演空演出後", true, 2, 500, 30, false);

	CP_SpeedChange2(0,372,null,false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",900,1000,0,850,null,false);
	Fade("絵演旋回背景", 300, 1000, AxlAuto, false);

	Move("絵演空", 300, @-512, @0, null, false);
	Move("絵演旋回背景", 1800, @$横移動計算補正値, @0, AxlDxl, false);

	CP_AziChange(1800,21,AxlDxl,false);
	CP_RollBarMove2(600,87,AxlAuto,true);

	Wait(200);
	Shake("@CP_Frame", 300, 0, 20, 0, 0, 1000, Dxl3, false);

	Wait(400);
	Shake("@CP_Frame", 300, 0, 30, 0, 0, 1000, Dxl3, false);

	CP_RollBarMove2(600,-2,DxlAuto,false);

	Fade("絵演空演出後", 0, 1000, null, true);
	Delete("絵演空");

	Wait(450);
	Shake("@CP_Frame", 300, 0, 60, 0, 0, 1000, Dxl3, false);

	SetVolume("SE01a", 900, 0, null);
	Fade("絵演旋回背景", 150, 0, DxlAuto, false);
	Move("絵演空演出後", 150, @-512, @0, Dxl2, true);



	FrameShake();

//◆敵騎と相対
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,500,0,1000,null,false);
	CreateTextureEX("絵演合体", 1100, Center, Middle, "cg/st/3dガッタイダー_騎航_戦闘a.png");
	Move("絵演合体", 0, @-330, @30, null, true);
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 50, 50, null, true);
	Move("絵演合体", 300, @30, @-30, null, false);
	Fade("絵演合体", 300, 1000, null, true);

	OnSE("se特殊_コックピット_ロックオン",1000);
	CockPit_LockSet(@-300,@0);
	CP_LockOnFade(300,"on",false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　定まったかに思われた勝負の趨勢はあっさりと覆り、
俺は窮地に立たされ、敵は見るからに勢いづいている。
　体躯が一回り大きくなったようにも見えた。

　それは俺の心理的後退が見せた幻覚に過ぎなかった
のかもしれない。
　しかし、突撃の速度と勢威の増大は目前に差し迫る
現実だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 3000, 0, null);

//◆ガッタイダー
	CreateTextureEX("絵演", 18000, Center, -90, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	Fade("絵演", 1000, 1000, null, false);

	SetFwC("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/021vs0310b33">
《き――ぐェックァァァァルァァァァァァ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　敵の狂声は遂に言葉の体裁さえ失っている。
　極度の興奮のためか、それ以外の理由によるものか、
それはわからないし知った事でもない。

　対処すべきは敵騎の刃だけだ。
　重厚にして毒をも含むそれを如何に凌ごう。

　今はひとまず攻めよりも守りに専心せねばならない。
　無論、<RUBY text="・・・・・・・・">守るために攻める</RUBY>という発想も有ろうが……。

　いずれにせよ手立ては大別して二種だ。
　<RUBY text="おもてわざ">太刀業</RUBY>か、それとも――<RUBY text="うらわざ">裏業</RUBY>か。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：剣技で対抗する／陰義で対抗する


}

..//ジャンプ指定
//◆剣技で対抗する　"mc01_021vsa.nss"
//◆陰義で対抗する　"mc01_021vsb.nss"

//★選択肢シーン
scene mc01_021vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm08",0,1000,true);
	CreateTextureSP("絵演", 5000, Center, -90, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	Cockpit_AllFade0();
	CP_LockOnDelete();
	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("剣技で対抗する","陰義で対抗する");
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
			ChoiceA02();
//◆剣技で対抗する　"mc01_021vsa.nss"
				$GameName = "mc01_021vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆陰義で対抗する　"mc01_021vsb.nss"
				$GameName = "mc01_021vsb.nss";
		}
	}
}

