//<continuation number="370">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_033vs.nss_MAIN
{

	
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
	#ev949_バロウズ構え=true;
	#ev203_技術解説ＶＳバロウズ編２_a=true;
	#ev203_技術解説ＶＳバロウズ編２_b=true;
	#ev205_矢を撃ち放つバロウズ_a=true;



	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_034.nss";

	CP_AllDelete();


}

scene mc04_033vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_032.nss"


	PrintBG("上背景", 30000);

	SoundPlay("@mbgm10",0,1000,true);
	CreateSE("SE01","se戦闘_動作_空突進04");
	CreateSE("SE05","se戦闘_動作_空突進02");
	CreateSE("SE06","se戦闘_動作_空突進02");
	CreateSE("SE10","se戦闘_動作_空突進05");
	CreateSE("SE11","se戦闘_動作_空突進05");


	CreateTextureSP("絵背景100", 100, Center, -864, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	CreateTextureEX("絵演村正", 1010, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	CreateTextureEX("絵演バロウズ", 1020, Center, Middle, "cg/st/3dバロウズ_騎突_戦闘.png");
	Request("絵演村正*", Smoothing);
	Request("絵演バロウズ", Smoothing);
	Rotate("絵演バロウズ", 0, @0, @0, @0, null,true);
	Rotate("絵演村正*", 0, @0, @0, @20, null,true);
	Zoom("絵演村正*", 0, 5, 5, null, true);
	Zoom("絵演バロウズ", 0, 5, 5, null, true);

	SetBlur("絵演村正", true, 1, 300, 70, false);
	SetBlur("絵演バロウズ", true, 1, 300, 70, false);

//	Move("絵演村正", 0, -500, -200, null, true);
	Move("絵演バロウズ", 0, 77,-413, null, true);
	Move("絵演村正", 0, 177,-213, null, true);

	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");

	CloudZoomSet(1000);
	CloudZoomStartB(1000,800,800,1000,1000);
	CloudZoomVertex(500,@400,@0,null,false);



	CreateColorEXadd("絵色200", 18500, "WHITE");
	CreateTextureEXadd("絵背景勢い", 18000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	MusicStart("SE01",0,1000,0,900,null,false);
	MusicStart("SE10",0,1,0,1250,null,true);
	MusicStart("SE11",0,1,0,1200,null,true);

	Request("プロセス１", Start);

	Move("絵背景100", 3000, @0, @-200, Axl1, false);
	FadeDelete("上背景", 1000, true);

	SetVolume("SE10", 800, 1000, null);
	Shake("絵演バロウズ", 2000, 0, 1, 0, 0, 1000, Axl2, false);
	Rotate("絵演バロウズ", 1100, @0, @0, @-90, Axl2,false);
	Zoom("絵演バロウズ", 1100, 6500, 6500, Axl3, false);
	BezierMove("絵演バロウズ", 1100, (77,-413){80,-150}{60,-110}(-10313,-1848), Axl1, false);
	Fade("絵演バロウズ", 300, 1000, null, false);


	Wait(800);

	SetVolume("SE10", 1000, 1, null);
	SetFrequency("SE10", 1000, 800, null);
	MusicStart("SE05",0,1000,0,1200,null,false);
	Shake("絵演村正", 2000, 1, 0, 0, 0, 1000, Axl2, false);
	Rotate("絵演村正", 1100, @0, @0, @-30, Axl3,false);
	Zoom("絵演村正", 1100, 5000, 5000, Axl3, false);
	BezierMove("絵演村正", 1100, (177,-213){80,10}{60,10}(-10013,-348), Axl1, false);
	Fade("絵演村正", 300, 1000, null, false);

	SetVolume("SE11", 800, 1000, null);
	Shake("絵背景100", 400, 50, 10, 0, 0, 1000, AxlDxl, false);
	Wait(200);

	Fade("絵演バロウズ", 100, 0, null, false);

	Wait(600);

	SetVolume("SE11", 600, 0, null);
	SetFrequency("SE11", 1000, 800, null);
	MusicStart("SE06",0,1000,0,950,null,false);
	Shake("絵背景100", 500, 50, 30, 0, 0, 1000, Dxl2, false);

	Wait(200);

	Fade("絵演村正", 100, 0, null, false);
	Fade("絵色200", 200, 1000, null, true);
	SetFrequency("SE10", 0, 1200, null);
	Delete("プロセス１");
	Delete("絵背景*");
	CloudZoomDelete(0,true);
	Delete("絵背景効果線");
	Delete("絵演*");


	CreateTextureSP("絵背景50", 100, Center, -400, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	Request("絵背景50", Smoothing);

	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	CP_SpeedChangeA();
	FrameShake();

	MyLife_Count(1,780);
	MyTr_Count(0,300);
	CP_HighChange(0,1012,null,false);
	CP_SpeedChange(0,315,null,false);
	CP_AziChange(0,31,AxlDxl,false);

	SetVolume("SE10", 3000, 300, null);
	SetFrequency("SE10", 3000, 900, null);

	OnSE("se戦闘_動作_空突進07",1000);

	CloudZoomSet(1000);
	CloudZoomStart(1000,800,800,1000,1000);
//	CloudZoomVertex(500,@300,@0,null,false);

	DrawDelete("絵色200", 200, 100, "slide_02_01_1", false);
	Move("絵背景50", 1000, @0, @100, Dxl2, true);

	BGMoveAuto("@絵背景50",1);



//◆村正モニター
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0010a01">
《……頭を押さえられた！》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0020a00">
「高度優勢は先方か。
　あの甲鉄が備える独特の光彩、やはり伊達
ではなかったらしい」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0030a01">
《<RUBY text="わか">解析</RUBY>るの？》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0040a00">
「あれは<RUBY text="オリハルコン">輝彩甲鉄</RUBY>だ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -344, "cg/bg/resize/bg002_空a_01.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16200, -410, -400, "cg/st/resize/3dバロウズ_騎航_通常m.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	Move("絵演窓上/絵演背景", 60000, @-100, @0, null, false);
	Move("絵演窓上/絵立絵", 60000, @-200, @0, null, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　西洋鍛鉄術に極上の三種有り。
　<RUBY text="ミスリル">聖銀甲鉄</RUBY>、<RUBY text="アダマンタイト">玉宝甲鉄</RUBY>、<RUBY text="オリハルコン">輝彩甲鉄</RUBY>と云う。

　聖銀甲鉄は聖別の<RUBY text="はがね">鋼金</RUBY>にして、魔を祓う力を持つと
される。
　玉宝甲鉄は堅牢無比、巨象はおろか城に踏まれよう
とも形を変えぬと伝説に謳われる。

　そして輝彩甲鉄は――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0050a00">
「劒冑が羽衣に思えるほどの軽量なのだとか。
　その為、<RUBY text="・・・・・">立ち上がり</RUBY>が異常に鋭い」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0060a01">
《緒戦の<RUBY text="うわて">上位置</RUBY>は約束されたようなものって
わけね。
　……なかなかやるじゃない》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0070a01">
《けど、重量が軽いことには短所もある！》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0080a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 500, false);
	FadeDelete("絵演窓*", 500, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　負けん気を起こす村正に首肯しておく。
　皆まで聞かず、言わんとするところは察せられた。

　突進力をそのまま打撃力に転化する武者にとって、
体重の軽さは剣撃の威力の軽さでもある。
　敵騎の<RUBY text="ロングソード">長剣</RUBY>が一撃必殺を成すのは難しかろう。

　高所から攻め下りてくる対手を迎え撃たねばならぬ
この形勢、必ずしも俺の決定的な不利ではない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転
//◆対峙
	BGMoveDelete();

	OnSE("se戦闘_動作_空突進03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);


//おがみ：定義
	CreateTextureEX("絵背景150", 100, 0, 0, "cg/bg/resize/bg002_空a_01.jpg");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 6000, 1000, null, true);

	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3dバロウズ_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 200, 200, null, true);
	SetBlur("絵狸", true, 1, 300, 100, false);


	CreateSE("SEロックオン","se特殊_コックピット_起動音02");

//	CP_AltChange(2000,10,AxlDxl,false);
	CP_AziChange(2000,-171,AxlDxl,false);

//おがみ：動作
	CloudZoomVertex(500,@300,@0,Axl2,false);
	CP_RollBarMove("@絵背景50", 500, 8, AxlDxl, false);
	Move("@絵背景150", 1500, @-5048, @0, AxlDxl, false);
	Move("@絵背景50", 200, @-200, @-20, Axl3, false);
	Fade("@絵背景150", 200, 1000, null, true);

	Move("@絵背景50", 0, -312, -388, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵狸",0,@200,@0,null,true);

	Wait(600);
	CP_RollBarMove("@絵背景50", 600, 0, Dxl2, false);
	Wait(200);
	FadeDelete("絵背景150", 300, false);

//おがみ：ロックオン
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
	CloudZoomVertex(600,@-300,@0,Dxl2,false);
	Fade("@絵狸", 500, 1000, null, false);
	Move("@絵背景50", 600, -512, -288, Dxl2, false);
	CP_LockOnMove("@絵狸",800,@-200,@0,Dxl2,true);
//	CP_LockOnMove("@絵狸",0,@0,@0,null,true);
	WaitAction("@絵狸",null);

$ループムーブナット名 = "@絵狸";
$ループムーブタイム = 30000;

	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス２","プロセス２");

	CP_LockOnFade(100,"on",false);
	CP_EnemyFade(300,10,420,300);

	BGMoveAuto("@絵背景50",1);
	Request("プロセス２", Start);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……尤も。
　それも、敵が格闘戦で勝負する限りにおいての話だ。

　飛び道具には騎体重量の多寡など関わりない。
　敵騎が長剣ではなくあの大型の<RUBY text="クロスボウ">石弓</RUBY>を用いてくるの
なら、軽量の不利は何も無かった。

　武者弓は並みの銃砲火器など比較にもならぬ威力を
持つ。太刀の一撃に優りこそすれ劣りはしない。
　弓にも長弓、短弓ほか各種あるが、わけても石弓の
破壊力は特筆すべきものがあると伝え聞く。

　大和では発達しなかった武装であるが、武者の剛力
に機械の補助を加えて初めて巻上げが可能となる強弦
からの<RUBY text="ボルト">回転矢</RUBY>は、分厚い胸部甲鉄すら容易に貫通する
という。

　高威力の反面、連射が利かないため、敵騎も濫用は
せず使い所を選んでくるものと考えられるが……。
　あの武器への対処を第一に考えるなら、空戦の誘い
に応じるべきではなかったろう。

　遮蔽物のない空中よりも、地上で山林に潜んで戦う
方がこちらにとっての都合は良かった。
　
　<RUBY text="・・・・">別の都合</RUBY>がなかったら、そうしていたところだ。

　地上に留まるこちらに対して、敵が戦意を持続させ
てくれれば良いが、あっさり気を変えて大鳥大尉の方
へ向かう可能性もある。……そうなった場合、出足で
遅れるこちらが追いつける見込みはない。

　それでは困るのだ。
　敵騎の変心に備えるなら、こちらは戦術的な不利を
承知の上で空に上がり、機動力を確保しておくほかに
選ぶ道が無かった。

　あの騎士がまず俺から狙ってきたのは、こうやって
大鳥大尉を一種の足枷として利用する意図あっての事
なのかもしれない。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆接近
	OnSE("se戦闘_動作_空突進02",1000);

	EffectZoomadd(10000, 800, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("@絵狸", 800, 500, 500, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　ひとまず、対敵は石弓の使用を控える肚のようだ。
　長剣を抜き、<RUBY text="ダイブ">降撃</RUBY>して来る。

　外してしまえば後がない兵器だけに、やはり決定的
な局面まで出し惜しむつもりなのであろう。
　剣でこちらを弱らせ、動きを止めてから――か。

　ならば、その企図を挫いてくれる。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0090a00">
「剣の勝負で優り、追い詰めて、あの石弓を
撃たせる」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0100a01">
《それを防いで仕留める。
　……諒解！》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0110a01">
《飛び道具に頼る武者なんて所詮、邪道よ。
　そこのところを教えてあげないとね！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進03",1000);

	EffectZoomadd(10000, 800, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("@絵狸", 800, 800, 800, Dxl2, true);

//◆接近
//◆バロウズ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　敵騎は右手に長剣、左手に石弓を構えているが――
　あれは盾でもあるのか？

　盾も石弓と同様、大和の武の世界では軽んじられて
きたものだ。
　どう使ってくるのか、俺には今ひとつ操法の見当が
付けられなかった。

　西洋剣術との対戦経験は少ない。
　江ノ島において、ジョージ・ガーゲット少佐と剣を
交えてはいるが――彼の得物は両手持ちの大剣であり、
大和の武者刀法とそう大きく異なる部分はなかった。

　剣と盾を同時に操る術は未知の領域だ。
　
　つまり、憶測を巡らせても仕方がない。

　敵の手の内が読めない時は下手に策を弄したりせず、
正攻法で押すのが堅実である。
　盾で防ぎ、剣で斬ってくるのはわかっているのだ。
ならばこちらは一刀で敵の攻守を打ち砕けば済む話。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆村正上段
	BGMoveDelete();
	Request("プロセス２", Stop);
	Delete("プロセス２");
	OnSE("se戦闘_動作_刀構え02",1000);
	OnSE("se戦闘_動作_空突進02",1000);
	CloudZoomDelete(500,false);
	Zoom("@絵背景50", 600, 1050, 1050, Dxl2, false);
	Zoom("@絵狸", 500, 900, 900, Dxl2, false);
	Move("@絵狸", 500, @0, @-100, Dxl2, false);
	Move("@絵背景50", 500, @0, -300, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　太刀を上段にとる。
　<RUBY text="ピッチ">兜角</RUBY>を下げて敵騎の腹へ入りつつ、斬り下ろす――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_バロウズ_ボーガン構え02",1000);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
　――それに反応し、対手が盾を掲げたと見えた刹那。
　
　俺は太刀を下段に回し、兜角を引き上げ、敵騎の背
へ抜けながら斬り上げの一刀を放った。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fwバロウズ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/033vs0120a03">
「!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆斬り上げ
//◆がちーん。盾で止めた
	CreateColorEXadd("絵色100", 1500, "WHITE");
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟04");
	SL_up(@0, @0,1000);

	SetFrequency("SE10", 1000, 1200, null);
	OnSE("se戦闘_動作_空突進01",1000);
	Zoom("絵背景50", 400, 1100, 1100, Axl2, false);
	CP_LockOnMove("@絵狸",300,@0,@-150,Axl2,false);
	Zoom("@絵狸", 300, 1000, 1000, Axl3, false);

	Wait(200);
	SL_upfade2(10);
	Wait(100);

	Rotate("@絵狸", 300, @0, @0, @20, Dxl2,false);
	Fade("絵色100", 0, 1000, null, true);


	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵色100", 500, true);


	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0130a00">
「……ぬぅ！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　敵手の対応は明敏を極めた。
　堅牢な甲鉄盾に、俺の太刀はがちりと食い止められ
ている――

　こちらの<RUBY text="フェイント">偽攻</RUBY>を見切ったのだ。
　しかし、流石に防ぐのみで手一杯だったらしい。

　長剣が俺に振り下ろされる様子はなく、

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆刺突
//◆ずぎゃー。
//◆交差、離れる
	BGMoveDelete();
	CreateColorEXadd("絵色100", 20500, "WHITE");
	CreateColorEX("絵色200", 18000, "BLACK");

	OnSE("se戦闘_破壊_鎧04",1000);

	CP_LockOnMove("@絵狸",200,@0,@1000,Axl1,false);
	Zoom("@絵狸", 200, 1500, 1500, Axl2, false);
	Fade("絵色200", 200, 1000, null, true);
	SL_centerin2(20000,@0, @0,1000);
	SL_centerinfade2(10);
	Wait(200);
	Fade("絵色100", 50, 1000, null, true);

	Delete("@絵色200");
	Delete("@絵狸");

	CloudZoomSet(1000);
	CloudZoomStart(1000,800,800,1000,1000);

	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ01",1000);

	Shake("@CP_Frame", 1000, 5, 10, 0, 0, 800, null, false);
	Zoom("絵背景50", 1000, 1000, 1000, Dxl2, false);
	CP_LockOnDelete();

	MyLife_Count(1000,620);
	MyTr_Count(1000,350);

	FadeDelete("絵色100", 1000, false);
	Move("@絵背景50", 1500, @0, @-300, Dxl3, true);

	BGMoveAuto("@絵背景50",1);



	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//嶋：修正（腹部）【090930】
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0140a01">
《胸部甲鉄に損傷！
　危ない……一発で破られかけたっ》


{	FwR("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0150a00">
「<RUBY text="つき">刺突</RUBY>か!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　幾つかの理解を一言に込めて吐き出す。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆解説
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev949_バロウズ構え.jpg");
	Fade("絵背景100", 500, 1000, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　斬撃が線で甲鉄を断つのに対し、刺突は点で甲鉄を
貫く。
　一点に集約される<RUBY text="エネルギー">力</RUBY>の程は斬撃の比ではなく、ただ
一撃で甲鉄を突破する事も不可能としない。

　対手のような軽量の騎体においてすら。
　
　しかし一方、<RUBY text="・">点</RUBY>攻撃である刺突は余程の手練を<RUBY text="もつ">以</RUBY>て
しても容易には高速騎航する武者を捕捉できない。

　大和の武者刀法が、一部流派を除いて刺突の有効性
を高く評価しないのはその為であるが……。
　その欠点を、敵の剣術は盾との組み合わせによって
克服していた。

　即ち相手の攻撃に対する防御を盾に任せる事で、剣
は標的が懐に入るまで待機させておける。
　必中の間合になったところで、刺突を繰り出す事が
できるのだ。

　同じ事を太刀しか持たない武者がやれば、待ち構え
ている間に斬られて終わるか、良くて相討ちだろう。
　まさしくこれは、盾と長剣という武装における最も
効率的な運用法の一つであるに違いなかった。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景100", 500, true);

	Wait(200);

//◆反転
	BGMoveDelete();

$ループムーブナット名２ = "@絵狸";
$ループムーブタイム２ = 30000;

	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス２","プロセス２");

//おがみ：定義
	CreateTextureEX("絵背景150", 100, -5048, 200, "cg/bg/resize/bg002_空a_01.jpg");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 6000, 2000, null, true);
	Rotate("絵背景150", 0, @0, @180, @0, null,true);

	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3dバロウズ_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 200, 200, null, true);
	SetBlur("絵狸", true, 1, 300, 100, false);

	CockPit_LockSet(@0,@0);
	CreateSE("SEロックオン","se特殊_コックピット_起動音02");

	OnSE("se戦闘_動作_空突進03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);

	CP_AziChange(2000,-30,AxlDxl,false);

//おがみ：動作
	CloudZoomVertex(600,@-300,@0,Axl2,false);
	CP_RollBarMove("@絵背景50", 500, -8, AxlDxl, false);
	Move("@絵背景150", 1500, @5048, @200, AxlDxl, false);
	Move("@絵背景50", 200, @200, @-200, Axl3, false);
	Fade("@絵背景150", 200, 1000, null, true);

	Move("@絵背景50", 0, -512, -398, null, true);
	CP_LockOnMove("@絵狸",0,@-200,@-50,null,true);

	Wait(600);
	CP_RollBarMove("@絵背景50", 600, 0, Dxl2, false);
	Wait(200);
	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

//おがみ：ロックオン
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
	Fade("@絵狸", 500, 1000, null, false);

	CloudZoomVertex(600,@300,@0,Dxl2,false);
	FadeDelete("絵背景150", 300, false);
	Move("@絵背景50", 1200, -312, -288, Dxl2, false);
	CP_LockOnMove("@絵狸",1200,@200,@50,Dxl2,true);
	CP_LockOnMove("@絵狸",0,@0,@0,null,true);

	CP_LockOnFade(100,"on",false);
//	CP_EnemyFade(300,10,420,300);

	BGMoveAuto("@絵背景50",1);
	Request("プロセス２", Start);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0160a00">
「こういうものか……」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0170a01">
《感心するのはいいけど。
　やられっぱなしは御免よ》


{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0180a00">
「無論だ。
　そんなつもりは毛頭ない」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　この一戦は、断じて譲れぬ勝負。

　大鳥大尉のもとに、この危険な刺客を送り出すわけ
にはいかないのだ。
　彼女は湊斗景明にとって、他の誰にも代えられない
存在。

　守り抜かねばならぬ。
　俺を正しく殺す<RUBY text="ひと">女性</RUBY>なのだから。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆進撃
	OnSE("se戦闘_動作_空突進03",1000);

	EffectZoomadd(10000, 800, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("@絵狸", 800, 500, 500, Dxl2, true);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0190a00">
（そう――か？）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　風を切り、冬空を駆けながら。
　脳裏にふと自問が過ぎる。

　誰かを守る為に戦う。

　俺は本当に、そのような真摯な想いに<RUBY text="よ">拠</RUBY>って戦って
いるのだろうか。
　いや――そんな想いを抱いて戦って、良いのだろう
か？

　何かを守ろうとして戦った事は、過去にもあった。
　そうしてしかし、守り通せたものが一つでもあった
ろうか？

　養母は守れなかった。

　江ノ島でも、芳養少年と兄弟達を守れなかった。

　湊斗景明の剣に何かを守る力などあるのだろうか。
　無い、だろう。

　もし有るのなら……
　どうして、つい先日にも、養父をみすみす死なせて
しまったのか。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 200, 1, null);

//◆フラッシュバック。署長の死
	EfRecoIn1(19000,600);
	Cockpit_AllFade0();
	CreateTexture("思い出", 18000, Center, Middle, "cg/ev/ev170_バロウズ署長を射殺_a.jpg");
	EfRecoIn2(300);

	Wait(1500);

	EfRecoOut1(300);
	Delete("思い出");

	Cockpit_AllFade2();
	CP_HighChangeA();
	CP_AltChangeA();
	CP_SpeedChangeA();

	EfRecoOut2(600,true);

	SetVolume("SE10", 2000, 300, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　――――そうだ。

　湊斗景明の剣は、誰かを守る為の剣に<RUBY text="あら">非</RUBY>ず。
　誰かを殺す為の剣。

　俺自身の志向など、どうでも良い。
　<RUBY text="・・・・・">事実として</RUBY>、そうであったのだ。

　ならば――今も。
　必勝を期すなら、そうすべきではないのか。

　殺すのだ。

　ただ、殺すのだ。

　理由は充分。
　あれは養父の仇。

　思い出せ……。
　目の前で明堯様を失う、あの悪夢の瞬間、俺は約束
した筈ではなかったか。

　<RUBY text="おのれ">自分</RUBY>と、<RUBY text="かれ">仇敵</RUBY>と、運命とに。
　必ず殺す、と。

　復讐すると。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0200a01">
《……御堂？》


{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0210a00">
「――――」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆接近
	OnSE("se戦闘_動作_空突進03",1000);

	EffectZoomadd(10000, 800, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("@絵狸", 800, 800, 800, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　太刀打の間合に臨む。
　敵騎はやはり、盾で防ぎ剣で突く<RUBY text="フォーム">構</RUBY>だ。

　攻守の均衡が取れた優良の戦形。
　容易には崩し難い。

　だがそれなら、死力を奮って崩せば良いのだ。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆バロウズ
//◆村正上段
	BGMoveDelete();
	Request("プロセス２", Stop);
	Delete("プロセス２");
	OnSE("se戦闘_動作_刀構え02",1000);
	OnSE("se戦闘_動作_空突進02",1000);
	CloudZoomDelete(500,false);

	OnSE("se戦闘_動作_刀構え02",1000);
	OnSE("se戦闘_動作_空突進02",1000);
	Zoom("@絵背景50", 600, 1050, 1050, Dxl2, false);
	Zoom("@絵狸", 500, 900, 900, Dxl2, false);
	Move("@絵狸", 500, @0, @-100, Dxl2, false);
	Move("@絵背景50", 500, @0, -300, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　武者刀法の正調、右上段に太刀をとる。
　そうして進突。

　最終距離に入る一瞬、構を切り替える。
　下段へ回し、敵騎の背面へ抜けつつの斬り上げ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fwバロウズ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/033vs0220a03">
「――――」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　刹那、敵は警戒の気配を漲らせた。
　当然だろう……こちらは一度破られた手管を再び、
そのままに用いようとしているのだ。

　凡夫ならば油断するところでも、見るからに修羅場
ずれしたこの対手にとっては正逆の局面に他なるまい。
　下方へ回した盾の防御は堅固かつ柔軟、力押しにも
変幻の術にも対応する様子を見せている。

　――しかし、無意味だ。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆短ウェイト。間を外す

	OnSE("se戦闘_動作_刀構え01",1000);
	OnSE("se戦闘_動作_空突進01",1000);
	Zoom("@絵背景50", 600, 1080, 1080, Dxl2, false);
	Zoom("@絵狸", 500, 980, 980, Dxl2, true);
	Wait(200);
	SetFwR("cg/fw/fwバロウズ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/033vs0230a03">
「……？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　敵の警戒の中に、困惑の波紋が広がる。
　……この刹那。如何なる衝撃も、その盾を襲っては
いない。

　俺は斬り上げの一閃を、放つ――と見せるに留めた。
　斬り込まず、太刀を左片手に持ち替えだけしておく。

　右腕が空く。

　……敵騎は逡巡を抱いたとしても、動作に反映させ
なかった。
　迷いなき鋭さで、長剣の刺突を繰り出してくる。

　狙いは恐ろしいほどに正確。
　先の一合で抉った箇所を再び刺し、今度こそ貫通を
期す――<k>が、今回はこちらに<RUBY text="・">盾</RUBY>が控えている。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



//◆刺突
	CreateColorEX("絵色100", 18000, "BLACK");
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟01");

	Zoom("@絵背景50", 200, 1100, 1110, Axl2, false);
	Zoom("@絵狸", 200, 1200, 1200, Axl2, false);
	Move("@絵狸", 200, @150, @300, Axl2, false);
	Move("@絵背景50", 200, @20, @50, Axl2, false);

	Wait(200);
	Fade("絵色100", 0, 1000, null, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_centerin2(20000,@0, @0,1000);
	SL_leftup2(20000,@0, @0,1000);

	SL_centerinfade2(10);

//◆払う
	OnSE("se戦闘_攻撃_剣戟弾く02",1000);
	SL_leftupfade2(10);

	Move("@絵狸", 500, @100, @50, Dxl2, false);
	Move("@絵背景50", 500, @50, @20, Dxl2, false);
	FadeDelete("絵色100", 500, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　左手の太刀で防御。
　そうして、

　俺は<RUBY text="・・">右腕</RUBY>を振り込んだ。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ef/ef001_汎用移動.jpg");

	OnSE("se戦闘_攻撃_刀振る02",1000);

	Fade("絵背景100", 150, 1000, null, false);
	EffectZoomadd(18000, 500, 200, "cg/ef/ef001_汎用移動.jpg", true);

	SetFwR("cg/fw/fwバロウズ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/033vs0240a03">
「!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　吉野御流合戦礼法。
　当身の七段目、<RUBY text="ユメマクラ">夢枕</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆図解入れるか？

	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ev/ev203_技術解説ＶＳバロウズ編２_a.jpg");
	Fade("絵背景200", 500, 1000, null, true);
	WaitKey(1200);

	CreateTextureEX("絵背景300", 18000, Center, Middle, "cg/ev/ev203_技術解説ＶＳバロウズ編２_b.jpg");
	Fade("絵背景300", 500, 1000, null, true);

	WaitKey(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　敵騎と交差する瞬間、鉤状に曲げた腕を相手の顔面
に引っ掛け――
　彼我の運動エネルギーを以て、敵騎の頚骨を潰す術。

　<RUBY text="き">極</RUBY>まれば最後。
　決して醒めない夢の底へ、沈みゆく。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆アックスボンバー。
//◆バロウズ避け。ちょっと引っ掛かったような音？
//◆両騎離れ
	SetVolume("SE10", 2000, 500, null);
	SetFrequency("SE10", 2000, 1200, null);

	CreateColorEXadd("絵色100", 1500, "WHITE");

	Delete("@絵背景200");
	Fade("絵背景300", 200, 0, null, true);

	OnSE("se戦闘_攻撃_振る04",1000);
	EffectZoomadd(18000, 200, 200, "cg/ef/ef001_汎用移動.jpg", false);
	Zoom("絵背景100", 200, 2000, 2000, Axl2, true);

	Fade("絵色100", 0, 1000, null, true);

	Delete("@絵背景100");
	Delete("@絵背景300");
	Shake("@CP_Frame", 1000, 5, 5, 0, 0, 800, null, false);
	Zoom("絵背景50", 1000, 1000, 1000, Dxl2, false);
	CP_LockOnDelete();

	OnSE("se戦闘_動作_空突進06",1000);
	OnSE("se特殊_鎧_装着01",1000);
	FadeDelete("絵色100", 500, false);
	Zoom("@絵狸", 500, 3000, 3000, Axl2, false);
	Move("@絵狸", 500, @16000, @5000, Axl2, false);
	Move("@絵背景50", 1500, @0, @-300, Dxl3, true);
	Delete("@絵狸");

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 2000, 900, null);

	BGMoveAuto("@絵背景50",1);

	Wait(500);


	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0250a00">
「――チ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　完全に意表を突いたつもりだったが……
　敵手の即応力は卓抜するものがある。

　文字通り間髪の差で、首を沈み込ませ、俺の右腕を
やり過ごしていた。
　兜を擦る所まで迫ったらしい。腕の内側に、僅かな
衝撃の余韻が残っている。

　あと一歩。
　いや半歩の所で、捉え損ねた。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	Fade("絵背景100", 500, 1000, null, true);


	SetFwC("cg/fw/fwバロウズ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//◆喉で笑う
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/033vs0260a03">
「……ッ、……ッッ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　気のせいか。
　……耳孔を打つものがある。

　裂空の界域に、低い笑声が渡っている。

　侮蔑ではない。玩弄でもない。
　それは、喜悦の、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CloudZoomSet(1000);
	CloudZoomStart(1000,800,800,1000,1000);

	FadeDelete("絵背景100", 500, true);

//◆反転

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0270a00">
「次は仕留める……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0280a01">
《……御堂》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0290a00">
「敵情」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0300a01">
《…………。
　<RUBY text="ひのえからうまのかみ">一七〇度上方</RUBY>、距離六二〇》


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0310a01">
《反転――》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転終え
//◆対峙
	BGMoveDelete();

	SetVolume("SE10", 2000, 500, null);
	SetFrequency("SE10", 1500, 1100, null);

	OnSE("se戦闘_動作_空突進03",1000);

	CreateTextureEX("絵背景100", 1500, 0, 0, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Zoom("絵背景100", 0, 1000, 1000, null, true);
	Move("絵背景100", 0, @0, 0, null, true);

	CreateSurfaceEX("絵Suf",1000,2000,"絵背景100");


	Fade("絵背景100", 0, 1000, null, true);
	Fade("絵Suf", 500, 1000, null, false);
	Rotate("絵Suf", 2500, @0, @0, @180, AxlDxl,false);
	Move("絵背景100", 2500, @0, -5000, AxlDxl, false);
	Move("@絵背景50", 500, @0, @-200, Axl2, false);

	CP_AziChange(1000,189,Axl1,false);
	CP_SpeedChange(2000,650,null,false);
	CP_HighChange(2000,357,null,false);

	CP_RollBarMove2(1500,180,AxlDxl,true);
	CP_RollBarMove("@絵背景50",0,0,null,true);

	Wait(500);

	CP_SpeedChange(2000,378,null,false);
	CP_HighChange(2000,557,null,false);
	Move("@絵背景50", 0, -512, -588, null, true);
	Fade("絵Suf", 500, 0, null, false);
	Move("@絵背景50", 500, -512, -458, Dxl2, true);
	Move("@絵背景50", 500, -512, -488, AxlDxl, true);
	BGMoveAuto("@絵背景50",1);
	Delete("絵背景100");
	Delete("絵Suf");

	SetVolume("SE10", 3000, 0, null);
	SetFrequency("SE10", 2000, 1000, null);
//	SetVolume("SE*", 1000, 0, null);
	SetVolume("@mbgm*", 1000, 0, null);

	Wait(500);
	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0320a01">
《!!　あれは》


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0330a00">
「……む」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/033vs0340a01">
《御堂、敵騎が！》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　指摘されるまでもなく見えていたし、意味も知れて
いた。
　しかし、その<RUBY text="・・">意図</RUBY>は簡明ではなかった。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆バロウズ射撃態勢
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	Fade("絵背景100", 300, 1000, null, true);

	SoundPlay("@mbgm12",0,1000,true);

	Wait(300);

	CreateWindow("ウィンドウ上", 18500, 0, 0, 1024, 288, false);
	CreateWindow("ウィンドウ下", 18500, 0, 288, 1024, 576, false);
	SetAlias("ウィンドウ上","ウィンドウ上");
	SetAlias("ウィンドウ下","ウィンドウ下");

	CreateTextureSP("ウィンドウ上/絵背景50", 18500, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	CreateTextureSP("ウィンドウ下/絵背景50", 18500, Center, Middle, "cg/bg/bg002_空a_01.jpg");

//おがみ：EV後で差し替え
	CreateTextureSP("kana", 18100, 0, Middle, "cg/ev/resize/ev205_矢を撃ち放つバロウズ_al.jpg");
	SetBlur("kana", true, 1, 300, 100, false);
	Move("kana", 0, @-200, @-200, null, true);
	CreateTextureSP("絵EV100", 18000, 0, Middle, "cg/ev/ev205_矢を撃ち放つバロウズ_a.jpg");
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	SetBlur("絵EV100", true, 1, 300, 100, false);


	Move("ウィンドウ上", 1500, @0, @-150, null, false);
	Move("ウィンドウ下", 1500, @0, @+150, null, false);
	Move("kana", 1500, @-200, @+100, Dxl1, true);

	Wait(500);

	OnSE("se特殊_鎧_装着06",1000);
	Move("kana", 300, @-500, @250, Dxl2, true);

	Wait(800);

	Move("ウィンドウ上", 300, @0, @-150, Axl3, false);
	Move("ウィンドウ下", 300, @0, @+150, Axl3, true);
	Delete("ウィンドウ上/絵背景50");
	Delete("ウィンドウ上");
	Delete("ウィンドウ下/絵背景50");
	Delete("ウィンドウ下");

	Move("絵EV100", 0, -390, 140, null, true);

	OnSE("se戦闘_バロウズ_ボーガン構え01",1000);
	FadeDelete("kana", 250, false);
	Move("絵EV100", 500, 0, 0, Axl3, false);
	Zoom("絵EV100", 500, 1000, 1000, Axl3, true);

	Wait(800);

	Delete("絵背景100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　対敵の戦形が変貌している。

　剣を納め――構えるは<RUBY text="クロスボウ">石弓</RUBY>。
　鋭利な<RUBY text="やじり">鏃</RUBY>が俺に狙点を合わせつつある。

　<RUBY text="アーチャー">弓箭兵</RUBY>にとって、それは全く不思議がるに及ばない、
正調の行為であると云えばその通りだ。
　
　が――おかしいのは<RUBY text="タイミング">時機</RUBY>。

　早過ぎる。

　こちらはまだ、損傷らしい損傷を受けていない。
　熱量の消耗にしても軽微なところだ。

　つまり、<RUBY text="あし">速力</RUBY>は損なわれていない。
　健在なる機動性能をもって、最大限度の回避能力を
発揮し得る。

　その事実は敵にもわかっている筈だ。
　なのに何故、いま撃つのか。

　敵騎の弓は速射性に秀でた狩猟弓などではない。
　対極の、殺傷力を高めて連射性能を犠牲にした、弦
の巻上げが必要となる石弓である。

　濃密な短時間の内に終結する武者の戦闘において、
これを射撃する機会は如何にしても限られるだろう。
　おそらく一度きり。二度目は果たして有るか無きか。

　であれば、必中必殺の勝機まで温存して当たり前。
　余程の愚劣者でもわかる道理だ。

　その道理に、敵は背こうとしている。
　何故？

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Zoom("絵背景50", 0, 1100, 1100, null, true);

	FadeDelete("絵EV100", 500, true);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0350a00">
（焦った、とでもいうのか）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　あれしきの事で。
　敗死の予感に怯え、動揺し、なりふり構わず勝負を
決めにきた――と？

　……とてもの事に、そんな小胆とは思えない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0360a00">
（なら？）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　どうして。
　
　
　…………いや。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆回避機動
	BGMoveDelete();

	OnSE("se戦闘_動作_空突進03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);


//おがみ：定義
	CreateTextureEX("絵背景150", 100, 0, 0, "cg/bg/bg204_横旋回背景_01.jpg");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 4000, 2000, null, true);
//おがみ：サーフェース作成
	CreateSurfaceEX("絵Suf",1000,2000,"絵背景150");

	CreateSE("SEロックオン","se特殊_コックピット_起動音02");


	CP_AltChange(2000,10,AxlDxl,false);
	CP_AziChange(3000,-150,AxlDxl,false);
	CP_SpeedChange(3000,757,null,false);


	MusicStart("SEロックオン",0,1000,0,1000,null,false);
//おがみ：サーフェース動作

//おがみ：動作
	Move("@絵背景50", 800, @-50, @0, Axl3, false);
	Wait(500);
	Fade("絵背景150", 500, 1000, null, false);
	Fade("絵Suf", 500, 1000, null, false);
	Rotate("絵Suf", 2000, @0, @0, @370, AxlDxl,false);
	CP_RollBarMove2(2000,370,AxlDxl,false);
	Move("@絵背景150", 2500, @-4048, @0, AxlDxl, false);
	Fade("@絵背景150", 300, 1000, null, true);

	Zoom("絵背景50", 0, 1300, 1300, null, true);
	Move("@絵背景50", 0, -312, -388, null, true);

	Wait(1500);

//おがみ：サーフェース動作終了
	Fade("絵Suf", 300, 0, null, false);
	CP_RollBarMove2(800,360,AxlDxl,false);
	Move("@絵背景50", 800, -512, -288, Dxl2, true);
	Delete("絵背景150");
//おがみ：サーフェース削除
	Delete("絵Suf");

	BGMoveAuto("@絵背景50",1);

	Wait(500);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　俺は思考の泥沼から自分自身を引き抜いた。
　射撃に備え、速力の確保を開始する。

　敵の意図するところが奈辺にあれ、こちらにとって
これは好機だ。
　相手の切札を浪費させるチャンス。

　掴み損ねてはなるまい。
　この一矢を回避すれば、趨勢は大きく傾く。

　敵騎が再び剣に持ち替え、構え直すその間に、満を
持して襲う事ができる。
　その状況に至ったなら、勝ちは決まったようなもの
だ。

　ＧＨＱの刺客はここで墜ちる。
　養父の仇はここで潰える。

　香奈枝嬢のもとに辿り着くことなく。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵EV100", 18000, 0, Middle, "cg/ev/ev205_矢を撃ち放つバロウズ_a.jpg");
	Fade("絵EV100", 500, 1000, null, true);

	Wait(300);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/033vs0370a00">
「――――」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　瞬きを禁じて、俺は敵影を見据えた。
　充満しゆく殺意が解き放たれる、その一刹那を計り
知る為に。

　輝彩甲鉄の騎士もまた、俺を見詰めていた。
　俺の心臓か、喉笛か、あるいは脳髄を……<RUBY text="いっせん">一箭</RUBY>にて
穿つ為に。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);
	ClearFadeAll(2000, true);

	CP_AllDelete();

	Wait(1000);


}

..//ジャンプ指定
//次ファイル　"mc04_034.nss"

