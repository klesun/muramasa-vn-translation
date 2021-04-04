//<continuation number="1050">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
//嶋：デバッグ用
		$GameDebugSelect = 1;
		Reset();
	}

}

scene ma01_023vs.nss_MAIN
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

	#ev109_陰義白華爛丹=true;
	#ev506_村正VS真改_空中戦=true;
	#ev303_村正VS真改=true;
	#ev903_村正磁気バリアー展開_a=true;
	#ev902_村正電磁抜刀レールガン_b=true;
	#ev902_村正電磁抜刀レールガン_c=true;
	#ev902_村正電磁抜刀レールガン_a=true;
	#ev902_村正電磁抜刀レールガン_d=true;


	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_村正=true;

	$PreGameName = $GameName;

	$GameName = "ma01_024.nss";

	CP_AllDelete();

}

scene ma01_023vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


	if($GameDebugSelect==1){CP_AllSet("真改");}


..//ジャンプ指定
//前ファイル　"ma01_022vs.nss"

	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("暗転", 19000, "#000000");
	FadeDelete("上背景", 100, true);


	SetFwC("cg/fw/fw雄飛_怒りa.png");

	SetTone("@FwC*", Sepia);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/023vs0010b56">
『てめえの絶望に他人を巻き込むな！
　おれたちはそんなに弱くねえッ!!』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Cockpit_AllFade2();

//嶋：初期化される可能性があるため、念のため数値の再定義
	CP_PowerChange(1,500,null,false);
	CP_SpeedChange(0,350,null,false);
	CP_HighChange(0,900,null,false);
	CP_AziChange(0,10,null,false);

	MyLife_Count(0,523);
	MyTr_Count(0,210);
	CP_IHPChange(0,4,null,false);
	CP_RollBarMoveA();
	CP_AltChangeA();

	CP_EnemyFade(0,10,512,300);


	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);



	Fade("暗転", 300, 0, null, true);
	Delete("暗転");
//◆復帰

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　五月蝿い！
　私は正しい！　私は正しい！
　私は正しいんだっ！　だから死ぬべきではないんだ！

　力を！
　力をくれっ！
　<RUBY text="やつ">村正</RUBY>を殺す力を！
　理不尽にも私を殺そうとする奴を殺せる力を！

　誰でもいい！
　どんな力でもいい！

　どんな力でも――私を助けてくれるなら！
　この世の美しき諸々のために、私を！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック
//◆銀星号シルエット

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEX("フラッシュ白", 16000, "WHITE");

//嶋SE；フラッシュバック用ＳＥの違うバージョン
	OnSE("se擬音_フラッシュバック01",1000);


	Fade("フラッシュ白",0,1000,null,true);
	CreateColorSP("絵背景黒", 1000, "Black");

	Cockpit_AllFade0();

	CreateTextureEX("絵Gin", 1050, Center, InBottom, "cg/st/3d銀星号_立ち_通常.png");
	CreateStencil("マスク１",1200,center,InBottom,128,"cg/st/3d銀星号_立ち_通常.png",false);
	SetAlias("マスク１","マスク１");

	CreateColorSP("マスク１/色１", 1200, "White");
	Fade("マスク１/色１", 0, 500, null, true);

	SetShade("マスク１", NOMORE);


	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

	SetNwR("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆以下、顔なし
//【光】
<voice name="光" class="光" src="voice/ma01/023vs0020a14">
『――愉快な真似を』

//【光】
<voice name="光" class="光" src="voice/ma01/023vs0030a14">
『その<RUBY text="・・・・・">いじましさ</RUBY>は笑うほかないな。
　見物料に、これをやろう。役に立つぞ……
というより、それを持っていれば嫌でも役に
立つ時が訪れようが』

//【光】
<voice name="光" class="光" src="voice/ma01/023vs0040a14">
『――ん？　おれが何者か、だと？
　何者、というのは深い問いだな。誰だ、と
尋ねるのとは違う。名を告げるだけでは答え
として足りるまい』

//【光】
<voice name="光" class="光" src="voice/ma01/023vs0050a14">
『おまえはおれの<RUBY text="・・">意味</RUBY>を問うのか？
　ならばこう応える』

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆銀星号
	Fade("マスク１/色１", 1000, 0, null, false);
	Fade("絵Gin", 1500, 1000, null, true);

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/ma01/023vs0060a14">
『――おれは天下布武。
　<RUBY text="ぎん">白銀</RUBY>の星の名で呼ばれている者だよ』

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆復帰
	CreateColorEXadd("フラッシュ白", 17000, "WHITE");

	OnSE("se擬音_フラッシュバック01",500);
	Fade("フラッシュ白",500,1000,null,true);

	Delete("マスク１");
	Delete("マスク１/色１");
	Delete("絵Gin");
	Delete("絵GinS");
	Delete("絵背景黒");

	Cockpit_AllFade2();
	CP_RollBarMoveA();
	CP_AltChangeA();
	CP_HighChangeA();
	CP_SpeedChangeA();


	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　そうだ……お前でもいい。
　忌まわしき殺戮者！　お前が求めに応じてくれるの
なら、それでも構わない！

　力を！
　力を！
　私に力を!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュ

	CreateColorEXadd("フラッシュ白", 16000, "WHITE");

	OnSE("se特殊_陰義_発動04",1000);
	Fade("フラッシュ白",50,1000,null,true);
	Fade("フラッシュ白",100,0,null,true);
	Fade("フラッシュ白",50,1000,null,true);
	Fade("フラッシュ白",100,0,null,true);
	Fade("フラッシュ白",50,1000,null,true);
	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0070b57">
「あ……ああああああああああああああ!!」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0080a00">
「――!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateColorEXmul("絵色100", 18000, #990000);

	CreateSE("SE01","se人体_体_心臓の音01_L");
	MusicStart("SE01",2000,1000,0,1000,null,true);

	Fade("絵色100", 4000,500,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　丹田で――横隔膜の下で――凶暴な何かが<RUBY text="ぜんどう">蠕動</RUBY>する。

　それは何かの目覚め。何かの身じろぎ。
　あの日、<RUBY text="・・・・・・・">植えつけられた</RUBY>何か。

　有り得ない<RUBY text="・・">子宮</RUBY>を錯覚する。
　有り得ない<RUBY text="・・">胎児</RUBY>を認識する。

　胎児の名を曰くカイブツ。
　暴れ狂い泣き叫び己を守る母体を食い破る。激痛。
実在しないカイブツの実在しない牙と爪が呼び起こす
幻の痛み。腹が裂ける。それも幻。苦痛だけが現実。

　鈴川令法の、真改の、存在しない子宮からいま生誕
する非事実のカイブツ。それは誰の眼にも映らない。
　誰の手にも触れはしない。完全な妄想。非実在。

　然して、ただ。
　溢れ返るこの、膨大な<RUBY text="パワー">力</RUBY>だけは事実！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE01", 500, 0, null);
	SoundPlay("@mbgm13",0,1000,true);

	OnSE("se特殊_陰義_発動03",1000);
	DrawTransition("絵色100", 600, 1000, 0, 100, Dxl1, "cg/data/circle_03_00_0.png", true);

	CreateColorSP("絵色1000", 20000, "Black");

	CreateWindow("ウィンドウ上", 16000, 0, 0, 1024, 288, false);
	CreateWindow("ウィンドウ下", 16000, 0, 288, 1024, 576, false);
	SetAlias("ウィンドウ上","ウィンドウ上");
	SetAlias("ウィンドウ下","ウィンドウ下");

	CreateColorSP("ウィンドウ上/絵色100", 16000, "Black");
	CreateColorSP("ウィンドウ下/絵色100", 16000, "Black");
	Delete("絵色1000");

	CreateColorSP("絵色1000", 15300, "Black");
	CreateColorSP("絵色100", 15400, #990000);
	Fade("絵色100", 0, 500, null, true);
	CreateTextureEX("shin", 15500, Center, -400, "cg/st/resize/3d真改_立ち_抜刀.png");
	CreateTextureEX("shin2", 15500, Center, -400, "cg/st/resize/3d真改_立ち_陰義.png");
	Move("shin", 0, @+200, @0, null, true);

	Fade("shin", 0, 1000, null, true);
	Move("shin", 700, @-200, @0, Dxl1, false);
	Move("ウィンドウ上", 500, @0, @-150, null, false);
	Move("ウィンドウ下", 500, @0, @+150, null, true);

	Wait(200);

	CreateColorEXadd("フラッシュaka", 15600, #990000);
	Fade("フラッシュaka",100,1000,null,true);

	OnSE("se特殊_鎧_装着01",1000);

	Fade("shin2", 0, 1000, null, false);
	Fade("shin", 0, 0, null, true);

	FadeDelete("フラッシュaka",500,true);

	CreateColorEX("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	Delete("ウィンドウ*");
	Delete("shin");
	Delete("shin*");
	Delete("絵色100");
	Delete("絵色100");
	Delete("絵色1000");

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw真改_通常.png");


	SetBacklog("　　　　　「曲輪来々包囲狂暮葉紅々刳々刃」", "voice/ma01/023vs0090b57", 鈴川);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0090b57">
　
　　　　　「<RUBY text="くるわ・くるくる・くるい・くるう">曲輪来々包囲狂</RUBY>
　　　　　　<RUBY text="くれは・くれくれ・くれくれ・は">暮葉紅々刳々刃</RUBY>」

</PRE>
	SetTextEXC();
	Request("@text0080", NoLog);
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　<RUBY text="コマンド・オン">呪句実行</RUBY>。

　うねる力に指向性を与える。
　膨大な質量を集束。硬度を付与。速度を付与。鋭さ
を付与。破壊するための全てを付与。

　後は――
　叩きつけるのみ！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

	SetBacklog("　　　　　「白華爛丹燦禍羅！」", "voice/ma01/023vs0100b57", 鈴川);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0100b57">
　
　　　　　「<RUBY text="びゃっか・らんたん・しゃん・かあら">白華爛丹燦禍羅</RUBY>！」

</PRE>
	SetTextEXC();
	Request("@text0100", NoLog);
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆密義・白華爛丹。地上から噴き上がる水の竜巻。メイルストローム

//嶋：【特殊_陰義_白華爛丹】変更予定
	OnSE("se自然_水_波の音強01",1000);
	CreateTextureEX("絵EV100", 16000, Center, Middle, "cg/ev/ev109_陰義白華爛丹.jpg");
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	SetBlur("絵EV100", true, 3, 500, 50, false);
	Move("絵EV100", 0, @-512, @-288, null, true);
	Shake("絵EV100", 50000, 2, 1, 0, 0, 500, null, false);
	BezierMove("絵EV100", 1500, (@0,@0){@+200,@0}{@-200,@+88}{@+300,@50}{@-100,@+50}(@+512,@+288), AxlDxl, false);
	Fade("絵EV100", 500, 1000, null, true);

	Wait(1000);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	Delete("絵EV100");

	Cockpit_AllFade0();

	CreateTextureSP("絵背景1000", 980, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureSP("絵mura", 1000, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	Move("絵mura", 0, @+500, @-100, null, true);

	CreateTextureEX("絵EV100", 16000, Center, Middle, "cg/ev/ev109_陰義白華爛丹.jpg");
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	SetBlur("絵EV100", true, 3, 500, 50, false);

	Move("絵mura", 400, @-500, @+100, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0110a00">
「<RUBY text="エンチャント">磁波鍍装</RUBY>――！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どかーん。直撃。演出適当に。

	CreateTextureEX("絵mura01", 1000, Center, Middle, "cg/st/3d村正標準_騎航_陰義.png");

	OnSE("se戦闘_動作_刀構え01",1000);

	FadeDelete("絵mura", 200, false);
	Fade("絵mura01", 200, 1000, null, true);

	Wait(200);


	Zoom("絵EV100", 1000, 1000, 1000, null, false);
	Fade("絵EV100",1000, 1000, null, true);
	CreateTextureSP("絵EV200", 15999, Center, Middle, "cg/ev/ev109_陰義白華爛丹.jpg");
	Shake("絵EV100", 10000, 1, 2, 0, 0, 500, Dxl1, false);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0120a00">
「ぬぅ……ッ!?」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0130b57">
《教えておいてやろう……血液だけではない！
　真改の陰義は<RUBY text="・・・・・・">あらゆる液体</RUBY>を操るのだ！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずどーん。吹っ飛ばす。演出適当に。
	OnSE("se自然_水_波の音強01",1000);
	Zoom("絵EV100", 500, 2000, 2000, null, false);
	Wait(300);
	CreateColorEXadd("フラッシュ白", 17000, "WHITE");
	Fade("フラッシュ白",1000,1000,null,true);
	Delete("絵背景1000");
	Delete("絵mura");
	Delete("絵mura01");
	Delete("絵EV100");
	Delete("絵EV200");

	CreateTextureEX("絵背景100", 1000, Center, 0, "cg/bg/resize/bg002_空a_02.jpg");
	Zoom("絵背景100", 0, 1500, 1500, Dxl1, false);
	Fade("絵背景100", 0, 1000, null, true);
	Request("絵背景100", Smoothing);


	Cockpit_AllFade2();
	CP_RollBarMoveA();
	CP_AltChangeA();
	CP_HighChangeA();
	CP_SpeedChangeA();

	CP_EnemyFade0();

	CP_PowerChange(1000,200,null,false);

	Shake("絵背景100", 1500, 10, 5, 0, 0, 500, Dxl1, false);
	FadeDelete("フラッシュ白", 1000, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　地上の河川から――海から――噴き上がった水流に
打ち飛ばされ、村正が<RUBY text="・・・・・">転げ落ちる</RUBY>。
　怒涛は更にそれを追った。天を渡る水の龍からして
みればあまりにもちっぽけな武者を一呑みに呑む。

　どんな猛者でもひとたまりもなかったはずだ。
　あそこまでの巨大質量に襲われて、無事でいられる
わけがあろうか！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0140b57">
「はっ……ははははは！
　はははははははは！　どうだ、見たか……
この力。真改の力。私の力だ！」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0150b57">
「美しきもののために！　我が正義だ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　込み上げる衝動を抑え切れず、哄笑しながら、だが
自分でも起きた出来事に対する驚きは禁じ得なかった。
　まさか、ここまでのものとは……！

　一体どれほどの量を引き上げたのか。
　莫大な水流は今は散り、地上に降り注いでいる。時
ならぬ雨に仰天する街の様子が目に浮かぶようだった。

　村正の姿はどこにもない。どこにも見えない。
　蜘蛛から変じたあのおぞましい姿は、綺麗に空から
消え失せている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0160b57">
「……墜落したか。
　相応の末路と言うべきだろうな」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0170b38">
《――否。
　方位<RUBY text="ひのえからうまのしも">一七〇度下方</RUBY>、距離二四〇〇。
　敵影確認》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0180b57">
「何!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CP_AziChange(3000,-128,null,false);
	CP_AltChange(500,-52,null,false);

	CP_RollBarMove("@絵背景100",800,-90,null,false);
	Zoom("絵背景100", 1200, 1700, 1700, Dxl1, false);
	Move("絵背景100", 1000, @+100, @+100, Dxl1, false);

	Wait(980);

	Move("絵背景100", 1600, @-200,@+400, AxlDxl, false);

	Wait(1000);

	Move("絵背景100", 800, @-200,@-100, AxlDxl, false);

	CP_RollBarMove("@絵背景100",1000,0,null,false);

	Wait(500);

	Move("絵背景100", 2000, @-300, @0, AxlDxl, false);

	CreateWindow("ウィンドウ上", 15000, 0, 120, 1024, 336, false);
	SetAlias("ウィンドウ上","ウィンドウ上");

	CreateTextureEX("ウィンドウ上/絵背景01", 16000, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	CreateTextureEX("ウィンドウ上/絵mura01", 16000, Center, Middle, "cg/st/3d村正標準_騎航_通常.png");
	CreateStencil("ウィンドウ上/マスク１",16100,center,Middle,128,"cg/st/3d村正標準_騎航_通常.png",false);
	CreateColor("ウィンドウ上/マスク１/色１", 16100, 0, 0, 1024, 576, "Black");
	Fade("ウィンドウ上/マスク１/色１", 0, 0, null, true);

	BezierMove("ウィンドウ上/絵mura01", 1000, (@0,@0){@0,@-50}{@0,@+50}(@0,@0), AxlDxl, false);
	BezierMove("ウィンドウ上/マスク１", 1000, (@0,@0){@0,@-50}{@0,@+50}(@0,@0), AxlDxl, false);
	Fade("ウィンドウ上/*", 0, 1000, null, false);
	Fade("ウィンドウ上/マスク１/色１", 0, 500, null, false);
	DrawTransition("ウィンドウ上/*", 500, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", false);
	DrawTransition("ウィンドウ上/マスク１/色１", 500, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　信じ難い報告に、目を剥いて示された方角を見やる。
　そこには確かに、あの姿が。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(0,"off",true);
	CreateTextureSP("絵mura001", 14000, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	Zoom("絵mura001", 0, 10, 10, null, true);
	CP_LockOnMove("@絵mura001",0,@+300,@+100,null,true);

	DrawTransition("ウィンドウ上/*", 500, 1000, 0, 100, null, "cg/data/slide_05_00_1.png", false);
	DrawTransition("ウィンドウ上/マスク１/色１", 500, 1000, 0, 100, null, "cg/data/slide_05_00_1.png", true);
	Delete("ウィンドウ上");
	Delete("ウィンドウ上/*");
	Delete("ウィンドウ上/マスク１");
	Delete("ウィンドウ上/マスク１/*");


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0190b57">
「あれを受けて無事だというのか!?」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0200b38">
《敵騎は我が白華爛丹の直撃を受ける寸前に
防壁を展開。
　その効果によって致命打を避けた模様》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0210b57">
「防壁だと？」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0220b38">
《磁力の壁を張り、水流を磁化した上で反発、
威力を減殺したものと思われる》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0230b57">
「磁力……
　つまり磁力操作が<RUBY text="やつ">村正</RUBY>の陰義なのか」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0240b38">
《そう推定するのが妥当である》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　化物め。
　唾を吐きたいところだったが、頭部を兜に覆われて
いてはそれもできない。劔冑を装甲しているとたまに
こういった細かな不自由と出くわすことがある。

　あの力でも奴を倒すには足りないのか。
　真改では奴を倒せないのか!?
　
　……おのれ。

　目障りだ。
　我が道を妨げるあの男。あくまでも立ちはだかろう
とするあの深紅。

　倒す。

　倒せないなどということがあってたまるか。
　この自分が正しいなら、正しいのだから、間違って
いる奴を排除できないはずがない。

　倒す。排除する……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnSE("se特殊_コックピット_起動音02",1000);
	CP_EnemyFade(300,3,382,240);

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0250b38">
《敵騎の状態を確認。
　胸部甲鉄を中心に深刻な損傷》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0260b57">
「ん？」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0270b38">
《全機能が大幅に低下した状態にあると推測。
　現時点における性能比は真改の優越である》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0280b57">
「損傷……！　そうか！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　さすがに奴とても無傷ではいられなかったらしい。
　考えてみれば当然のこと。

　今のうちに畳み掛ければ、勝てる！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0290b38">
《敵騎、復元機能の作動を確認。
　所要時間は不明》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0300b57">
「そんな時間は与えん！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();
	CP_LockOnDelete();

	Delete("絵mura001");
	Delete("絵背景100");

	CreateTextureEX("絵背景50", 1000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Fade("絵背景50", 0, 1000, null, true);

	CreateTextureSP("絵shin", 1200, Center, Middle, "cg/st/3d真改_騎航_戦闘.png");
	Move("絵shin", 0, @-1024, @-576, null, true);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	OnSE("se戦闘_動作_空突進03",1000);


	Move("絵shin", 300, @+1024, @+576, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　兜角を下げて降下突入。
　眼下を旋回騎航していた村正も、こちらに気付いて
覚悟を決めたか、頭を上げて向かってくる。

　先程までとは完全に逆転した格好。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵shin");

	CreateTextureEX("絵背景50", 100, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	Fade("絵背景50", 0, 1000, null, true);

	CreateTextureEX("絵背景100", 200, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	Fade("絵背景100", 0, 400, null, true);

	CreateTextureSP("絵St100", 1200, -380, -450, "cg/st/3d真改_騎航_戦闘.png");
	Request("絵St100", Smoothing);
	Rotate("絵St200", 0, @0, @0, 45, null,true);
	Zoom("絵St100", 0, 500, 500, null, true);
	SetBlur("絵St100", true, 3, 400, 50, false);

	CreateTextureSP("絵St200", 1000, 309, -34, "cg/st/3d村正標準_騎航_戦闘b.png");
	Request("絵St200", Smoothing);
	Rotate("絵St200", 0, @0, @0, 35, null,true);
	Zoom("絵St200", 0, 500, 500, null, true);
	SetBlur("絵St200", true, 3, 400, 50, false);



	OnSE("se戦闘_動作_空急降下01",1000);

	Zoom("絵背景100", 500, 1200, 1200, null, false);
	Move("絵St200", 400, @-100, @-50, Dxl1, false);
	Move("絵St100", 400, @+100, @+50, Dxl1, false);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0310b57">
《村正ァァァッ！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0320a00">
《……真改》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0330b57">
《武者の格闘は高位置を取った者が有利……
だったな!?
　頂いた御教授、有難く活用させてもらう！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進02",700);

	WaitAction("絵St100",null);
	WaitAction("絵St200",null);

	Move("絵St200", 300, @+10, @-100, Dxl1, false);
	Move("絵St100", 300, @-10, @+70, Dxl1, false);
	Zoom("絵St200", 300, 750, 750, Dxl1, false);
	Zoom("絵St100", 300, 750, 750, Dxl1, true);





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　突進。進撃。
　太刀をかざし、敵の下へ抜けながら振り下ろす！

　村正も下段に取り、切り上げてくる。
　だが――優劣は明らか！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＩ：真改上段→村正下段
//◆上段剣撃→下段剣撃
//◆カキーン。ズバーン。村正の太刀が弾かれて真改の攻撃がヒット。

	CreateColorEX("絵色100", 15000, "Black");

	Move("絵St200", 1000, @-50, @-20, Dxl1, false);
	Move("絵St100", 1000, @+50, @+20, Dxl1, false);
	Zoom("絵St200", 1000, 1000, 1000, Dxl1, false);
	Zoom("絵St100", 1000, 1000, 1000, Dxl1, false);

	Wait(500);

	Fade("絵色100", 200, 1000, null, true);
	Delete("絵St100");
	Delete("絵St200");

	OnSE("se戦闘_攻撃_野太刀振る01",1000);
	SL_down2(15001,@0, @0,1000);

	SL_downfade2(10);

	CreateColorEX("フラッシュ白", 15000, "WHITE");



	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureSP("絵ev100", 1000, Center, 0, "cg/ev/ev506_村正VS真改_空中戦.jpg");
	SetBlur("絵ev100", true, 3, 500, 50, false);
	Delete("ウィンドウ上/*");
	Delete("ウィンドウ下/*");
	Delete("ウィンドウ上");
	Delete("ウィンドウ下");
	Delete("絵色100");

	CreateTextureEX("絵ev200", 1200, Center, -100, "cg/ev/resize/ev506_村正VS真改_空中戦_m.jpg");

	Move("絵ev100", 700, 0, -600, Dxl1, false);
	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0340b57">
「しゃッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	Fade("絵ev200", 0, 1000, null, true);

	OnSE("se戦闘_攻撃_鎧_打撃02",1000);

	Shake("絵ev200", 500, 2, 4, 0, 0, 1000, null, false);
	Fade("フラッシュ白",400,0,null,true);
	Delete("フラッシュ白");


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0351]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0350a00">
「ぐぅッ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ev200", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　村正の太刀を打ち弾き、その甲鉄に切り込む！
　手応えは堅く、手首の骨が痺れるほどだったが――
しかしむしろその感覚が心地良い。

　ようやくこの手で奴に一撃を加えてやれたのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureEX("絵背景200", 1000, 0, -288, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Fade("絵背景200", 0, 1000, null, true);

	Cockpit_AllFade2();
	CP_AltChange(0,0,null,true);


	Move("絵背景200", 1500, @0, @+100, Dxl1, false);
	Shake("@CP_Frame", 2000, 0, 1, 0, 0, 500, null, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	EnLife_Count(600,312);
	CP_SpeedChange(500,541,null,false);
	CP_HighChange(500,812,null,false);

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0360b38">
《敵、左肩部甲鉄に損傷》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0370b57">
《はッ！
　どうだ、村正！　優位から一転、打ちのめ
される側になった気分は》

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0380b57">
《なかなか乙なものだろう!?》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0390a00">
《……とは、言いかねるな。
　そんなものは今更貴様に教えてもらうまで
もない》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0400a00">
《既に慣れ切り、飽き切った……。
　だが、苦痛という感覚は忌々しいほど常に
新鮮だ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　そんな答えを寄越しながら、声にだけは相変わらず
乱れというものがない。
　どうせ虚勢だろうが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0410a00">
《しかし……先の<RUBY text="・・">あれ</RUBY>は、何だ。
　如何に真改が名物とは云え、あそこまでの
力を持つとは正直、信じ難い》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0420a00">
《あれは――<RUBY text="・・">異常</RUBY>だ》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0430b57">
《ふん。
　銀色の破壊の神が、私に力を下さった……
とでも言っておこうか》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　きっと理解はできまいが。
　理解できても信じまい。

　しかし、村正の返答は予想を裏切った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0440a00">
《貴様が銀星号に<RUBY text="・">卵</RUBY>を植えられていることは
最初から知っている》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0450b57">
《ほう？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　卵。確かにあれは、卵を思わせる球形をしていた。
　とするとこの男、何か知っているのか……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0460a00">
《俺達はその気配を追っていたのだからな。
　だが……あれはただの<RUBY text="・・・・">時限爆弾</RUBY>の筈》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0470a00">
《貴様が見せた異常の力とは、何の関わりも
――》

{	NwC("cg/fw/nwその他.png");}
//嶋：ここだけネームプレート
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/023vs0480a01">
《あるのでしょうね》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　突然。
　澄んだ声が対話に割り込む。

　薄手の陶器を指先で打つような響。
　……まさか、これは、<RUBY text="ムラマサ">劔冑</RUBY>の？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

	#voice_on_村正=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/023vs0490a01">
《今回、銀星号がばら撒いている七個の卵は、
私の野太刀と掛け合わせて創られたもの。
　あの卵には私の力が宿っている》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0500a00">
《では、それが――》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/023vs0510a01">
《さっきの非常識な陰義の理由でしょうね。
　そしておそらく、甲鉄のふざけた硬さも》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/023vs0520a01">
《どう、井上和泉守？　生憎と私は<RUBY text="・・">後世</RUBY>の事
に詳しくはないけど、摂津鍛冶が独力であれ
だけの性能を完成させられたとはどうしても
思えない》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/023vs0530a01">
《それとも過小評価？
　十六<RUBY text="ようぎく">葉菊</RUBY>を戴く劔冑の、あれが真骨頂なの
かしら？》

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0540b38">
《――否。貴殿の指摘は正鵠を得ている》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　問いかけを受けて、驚いたことに真改は応じた。
　心なしか――いや、間違いなく錯覚であろうが――
敬意に似た調子を込めて、金打声を発信する。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0550b38">
《当方の<RUBY text="ちから">能力</RUBY>は当方を<RUBY text="・・">侵食</RUBY>する異物によって
高められている。この異物の詳細は解析でき
なかったが――これが貴殿の……
　貴殿<RUBY text="・">ら</RUBY>の力か》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/023vs0560a01">
《……迷惑を掛けているみたいね》

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0570b38">
《御配慮は無用。如何なる形であれ、先人の
業に触れるは喜びである》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0580b57">
「その辺にしろ、真改」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　戦闘の<RUBY text="さなか">最中</RUBY>にはふさわしからぬ奇妙にのどかな空気
を漂わせて語り合う劔冑らに苛立ち、口を挟む。
　会話には理解しかねる部分もあったが、一つだけは
はっきりしていた。意味がないということだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0590b57">
《下らんことをごちゃごちゃと……！
　時間稼ぎのつもりか、村正。往生際の悪い
……武者なら武者らしく、潔く散れ！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0600a00">
《そうだな》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　村正――甲鉄の内側からの声。
　劔冑よりもむしろ劔冑らしい冷たい声音で、それは
淡々と続けてきた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0610a00">
《今の言には全く同意する。
　では――武者らしく潔く散れ。鈴川令法》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0620b57">
《……!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	Move("絵背景200", 300, @0, @-300, null, true);
	CockPit_LockSet(@0,@0);
	CreateTextureEX("絵mura001", 14000, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	SetBlur("絵mura001", true, 3, 500, 50, false);
	Zoom("絵mura001", 0, 20, 20, null, true);
	CP_LockOnMove("@絵mura001",0,@-200,@+50,null,true);
	Fade("絵mura001", 300, 1000, null, false);
	CP_LockOnFade(300,"off",false);
	CP_LockOnMove("@絵mura001",1000,@+200,@+150,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
　言い放つや、村正の紅影は首をめぐらせて旋回。
　こちらへと進撃する――圧倒的不利な下方から。

　……何を。あの男。
　状況がわかっていないのか。

　高度で劣位にあるのも奴なら、損傷の度合いがより
深いのも奴！
　死ぬべきがどちらかなど、決まっているだろうに！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0630b57">
「……度の過ぎた虚勢は不愉快なものだな。
初めて知ったぞ。
　いいさ、真改――夢くらいは許してやる。
妄想に浸らせたまま、奴を葬れ」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0640b38">
《承知》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピッチダウン。突撃

	CP_SpeedChange(500,610,null,false);
	CP_AltChange(500,-45,null,false);
	EnTr_Count(1000,300);

	CP_PowerChange(2000,0,null,false);



	CP_LockOnMove("@絵mura001",1500,@0,@-50,null,false);

	Zoom("絵背景200", 2000, 1500, 1500, null, false);
	Zoom("絵mura001", 2000, 100, 100, null, false);

	Wait(100);

	CP_LockOnFade(300,"on",false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
　弱者め！
　そう、奴こそが弱者というものだ。あれほどなんや
かやと大言壮語をしておきながら、最後にすがるのが
負けを認めぬ妄想とは！

　なんとも見苦しい。

　醜い。
　その醜さに相応しく、無様な最期に堕ちてゆけ――！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＣＩ：真改上段→剣撃

	CreateTextureEX("絵EF100", 16000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	SetBlur("絵EF100", true, 3, 500, 50, false);
	Zoom("絵EF100", 500, 1000, 1000, Dxl1, false);
	OnSE("se戦闘_攻撃_野太刀振る02",1000);
	Fade("絵EF100", 500, 1000, Dxl1, true);

	Wait(500);

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0650a00">
「<RUBY text="エンチャント・マイナス">磁装・負極</RUBY>――」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/023vs0660a01">
《――〝ながれ・かえる〟》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateColorEX("フラッシュ白", 16100, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	CP_LockOnDelete();
	Delete("絵EF100");
	Delete("絵mura001");

	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");

/*
	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0670b57">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
*/

//◆ＣＩ：村正磁装展界
//◆ジジっとバリアが攻撃を防ぐっぽいＳＥ。フラッシュ
//◆二機、交差


	CreateColorEXadd("フラッシュ白", 17000, "WHITE");
	Fade("フラッシュ白",10,1000,null,true);

	CreateTextureEX("絵mura100", 16000, Center, Middle, "cg/ev/ev903_村正磁気バリアー展開_a.jpg");
	Zoom("絵mura100", 0, 2000, 2000, null, true);
	SetBlur("絵mura100", true, 4, 500, 50, false);
	Fade("絵mura100", 0, 1000, null, true);

	OnSE("se戦闘_陰義_磁力展開",1000);

	Fade("絵mura100", 500, 1000, Dxl1, false);
	Zoom("絵mura100", 500, 1000, 1000, Dxl1, false);
	Fade("フラッシュ白",600,0,null,true);

	SetFwL("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0680b57">
「！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//	Wait(200);

	OnSE("se戦闘_陰義_磁力弾く",1000);
	Fade("フラッシュ白",100,1000,null,true);
	Delete("絵mura100");
	Delete("絵背景100");
	Delete("絵背景200");

	CreateTextureEX("絵背景100", 1200, Center, -200, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	Shake("@CP_Frame", 500, 5, 2, 0, 0, 500, Dxl1, false);

	Move("絵背景100", 500, @0, @+100, Dxl1, false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0690b57">
「今のは――！」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0700b38">
《磁力障壁の発動を確認》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
　攻撃を弾かれた。
　甲鉄の強度に押されたのではない――硬質のゴムを
叩いたかのような。奇妙な感覚が手の内に残っている。

　――磁極の反発を利用した防御！
　先刻もこれを使い、怒涛の水流を防いでのけたのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0710b57">
「おのれ……しぶとい！」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0720b38">
《陰義の継続使用は仕手への負担が大。
　連続的な攻撃による突破が妥当である》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
　そんなまどろっこしいことはやっていられない。
　あの虫唾が走る存在をいつまでも見ていられるもの
か！

　あの結界が剣撃を防ぐのなら、防ぎ切れない攻撃を
加えてやればいい。
　そうすれば一撃で済む。

　<RUBY text="ビャッカランタン">白華爛丹</RUBY>！

　体内の力を集中する。
　うねる流れを引き寄せ、つかみ、集束して――！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0730b57">
「<RUBY text="くるわ・くるくる">曲輪来々</RUBY>――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆サーッ。血の気が引く音。ホワイトアウト
//◆ホワイトイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXover("絵色400", 16000, "White");
	Fade("絵色400", 500, 700, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0771]
　…………え？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ゆっくりと画面が白黒化。グレイアウト
	CreateEffect("エフェクト１", 16000, 0, 0, 1024, 576, "Monochrome");
	Fade("エフェクト１", 0, 0, null, true);
	Fade("エフェクト１", 5000, 600, null, false);

	CP_SpeedChange2(6000,147,null,false);
	CP_HighChange2(6000,154,null,false);

	Move("絵背景100", 6000, @0, @-500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0772]
　なんだ、これは？
　視界が――色を、失う？

　それだけではない。
　<RUBY text="あし">速度</RUBY>が――落ちる。<RUBY text="バランス">姿勢</RUBY>が――崩れる。身体が――
<RUBY text="・・">寒い</RUBY>。

　寒い――！
　なんだ、この身体の奥から来る異様な凍えは!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0740b57">
「真改！　どうしたのだ!?」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0750b38">
《――――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
　答えがない。いや――答えてはいるのか？
　ノイズじみた雑音だけがわずかに届く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0760a00">
《限界が来たようだな》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0770b57">
《村正！
　これは何だ……限界とはどういう意味だ！
　お前が何かをしたのか！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0780a00">
《俺は何もしていない。
　それは貴様の未熟が招いた現象……
　<RUBY text="フリーズ">熱量欠乏</RUBY>だ》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0790b57">
《……熱量欠乏!?》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0800a00">
《武者の旋回機動は激しい<RUBY text="Ｇ">荷重</RUBY>が掛かるため、
血液が下がり、視力障害を生じることがある。
　だがこれは通常、さほど問題にはならない。
劔冑の防護が働くからだ》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0810a00">
《しかし別の理由により、劔冑の防護が弱ま
れば、これは途端に身近な危険となる。
　そしてその<RUBY text="・・">理由</RUBY>は、問題を視力障害だけで
済ませはしない》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0820a00">
《熱量欠乏。
　劔冑は能力を発揮するために、<RUBY text="ユーザー">仕手</RUBY>の<RUBY text="カロリー">熱量</RUBY>
を絶えず消費する。強大な力を使う時ほど、
消耗も莫大だ》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0830a00">
《その消費量が、肉体の耐久限界を超えれば
……そう。今の貴様のようになる》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0840a00">
《貴様の熱量は、先の大規模な陰義で既に底
を突いていたのだ。その上に更に無理を重ね
れば、結果は……
　劔冑のほぼ完全な機能停止。違うか？》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0850b57">
《そ……そんな》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Fade("絵色400", 5000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
　そんな、馬鹿な。
　そんなこと、私は知らなかった。
　知らなかったのに。

　酷い。
　なんで……なんで誰も教えてくれなかったんだ。
　どうして、こんなことになるまで！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0860a00">
《これは武者にとって常識以前の事柄。
　しかし――生身の者しか相手にせず、限界
を味わうことのなかった貴様が知る筈もない》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0870b57">
《うぅ……》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0880a00">
《鈴川令法。他人の手を借りるまでもなく、
己の悪行への報いは自分自身で招いたな。
　貴様は程なく墜落する……》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0890a00">
《が、その甲鉄の強度があれば死ぬ事はある
まい。<RUBY text="・・・">そして</RUBY>俺は貴様の生存を認められない。
　故に最期は、俺の手で送る》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0900b57">
《い……嫌だ……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Fade("エフェクト１", 5000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
　死ねない。
　私は死ねない。

　動け！
　動け、手足！　動け、真改！
　なぜ動かない！　なぜ痺れる！　なぜ落ちてゆく!?

　動けぇぇぇぇぇぇっ！
　私は死ぬわけにはいかないのだ！
　美しいもの達のために！

　私、は――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0910a00">
《さらばだ、鈴川令法。
　人の美しさにすがった弱者》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0920a00">
《貴様は悪の一語のみで断ずるべき人間では
ないのかもしれない。
　だが<RUBY text="・・・・・">美しいもの</RUBY>は、貴様のような脆弱さを
求めてはいなかったのだ》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0930b57">
《あ……あぁ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm12",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
　もはや定かならぬ視界の奥。
　深紅の武者が太刀を鞘に納める。

　居合／抜刀術の構。
　一刀必殺の意思の具現。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆村正帯電開始
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);


	Cockpit_AllFade0();
	CP_AllDelete();


	Delete("絵M");
	Delete("絵背景50");
	Delete("絵EV100");
	Delete("絵EV200");
	Delete("絵shin");
	Delete("絵色400");
	Delete("エフェクト１");

	CreateWindow("ウィンドウ上", 15000, 0, 0,1024, 288, false);
	CreateWindow("ウィンドウ下", 15000, 0, 288, 1024, 576, false);
	SetAlias("ウィンドウ上","ウィンドウ上");
	SetAlias("ウィンドウ下","ウィンドウ下");

	CreateWindow("ウィンドウ縦", 15000, 512, 0,400, 576, false);
	SetAlias("ウィンドウ縦","ウィンドウ縦");
	CreateTextureEX("ウィンドウ縦/絵EV100", 16000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_b.jpg");
	Request("ウィンドウ縦/絵EV100", Smoothing);
	Zoom("ウィンドウ縦/絵EV100", 0, 2000, 2000, null, true);
	Move("ウィンドウ縦/絵EV100", 0, @-300, @0, null, false);
	CreateTextureEX("ウィンドウ縦/絵EV200", 16000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");
	Request("ウィンドウ縦/絵EV200", Smoothing);
	Zoom("ウィンドウ縦/絵EV200", 0, 2000, 2000, null, true);
	Move("ウィンドウ縦/絵EV200", 0, @-300, @0, null, false);


	CreateColorSP("ウィンドウ上/絵色100", 15000, "Black");
	CreateColorSP("ウィンドウ下/絵色100", 15000, "Black");

	Delete("黒幕１");

	CreateTextureSP("絵EV100", 14000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_a.jpg");
	CreateTextureEX("絵EV200", 14000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_b.jpg");
	Request("絵EV100", Smoothing);
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	Move("絵EV100", 0, @+400, @+288, null, false);
	Request("絵EV200", Smoothing);
	Zoom("絵EV200", 0, 2000, 2000, null, true);
	Move("絵EV200", 0, @0, @+288, null, false);

	Move("絵EV100", 500, @-400, @0, Dxl1, false);
	Move("ウィンドウ上", 300, @0, @-200, null, false);
	Move("ウィンドウ下", 300, @0, @+200, null, true);

	WaitAction("絵EV100", null);
	CreateColorEXadd("絵色100", 14001, "White");

	OnSE("se特殊_鎧_装着01",1000);

	Fade("絵EV200", 0, 1000, null, false);
	Fade("絵色100", 0, 1000, null, false);
	DrawTransition("絵色100", 200, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_1.png", true);
	Delete("絵EV100");
	FadeDelete("絵色100",1000,true);


	CreateColorEX("絵色100", 14005, "Black");
	Fade("絵色100", 0, 700, null, false);
	DrawTransition("絵色100", 300, 0, 1000, 100, Dxl1, "cg/data/slide_06_00_1.png", true);

	Fade("ウィンドウ縦/絵EV100", 0, 1000, null, false);
	DrawTransition("ウィンドウ縦/絵EV100", 500, 0, 1000, 100, Dxl1, "cg/data/slide_02_00_1.png", true);
//	CreateColorSP("絵色100", 10, "White");

	Wait(300);

	Fade("ウィンドウ縦/絵EV200", 0, 1000, null, false);
	Shake("ウィンドウ縦/絵EV200", 500000, 2, 1, 0, 0, 500, null, false);

	OnSE("se特殊_電撃_帯電01",700);

	CreateSE("SE01","se特殊_電撃_帯電01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("ウィンドウ縦/絵200", 20000, #99CCFF);
	Fade("ウィンドウ縦/絵200", 10, 600, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 500, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 700, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 500, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 800, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);

	SetVolume("SE01", 100, 0, null);
	CreateColorSP("黒幕１", 21000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("ウィンドウ上/*");
	Delete("ウィンドウ下/*");
	Delete("ウィンドウ縦/*");

	Delete("ウィンドウ上");
	Delete("ウィンドウ下");
	Delete("ウィンドウ縦");

	Delete("絵色100");
	Delete("絵EV100");
	Delete("絵EV200");

	CreateTextureSP("絵EV100", 1999, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");
	CreateTextureSP("絵EV200", 2000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");

	Shake_Loop("@絵EV200","shake01");

	RailgunFlash();

	CreateSE("SE01","se特殊_電撃_帯電01");
	MusicStart("SE01",300,500,0,1000,null,true);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	Fade("絵背景200", 500, 1000, null, true);

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0940b57">
「し……真改……!?」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0950b38">
《双極の磁力。
　その吸引と反発の作用を、居合の技に持ち
込むか……》

//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0960b38">
《何という恐ろしき工夫よ。
　ここまで精密かつ高圧の力を御すは仕手に
とっても劒冑にとってもまさしく生死を天に
預ける綱渡りの筈……それを遂げている……》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0970b57">
「真改ぃぃぃぃぃぃぃっ!!」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0980b38">
《……我が仕手よ。
　武の鬼道を歩んだ者の逃れ得ぬ<RUBY text="さだめ">運命</RUBY>、今が
その時と存ずる》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1060]
　呼びかけにも、劔冑は動かない。
　ただ静かな言葉だけを送ってきた。

　死が来る。
　最強にして最凶、近づいたもの全てを滅ぼすと謳わ
れた妖甲が、その<RUBY text="ノロイ">呪</RUBY>の究極を解き放とうとしている。
　絶対不可避の死の運命。村正。

　悟ってしまった。理解してしまった。
　真改の甲鉄は――無双無敵であるはずの防壁は――
今より訪れる<RUBY text="・・">もの</RUBY>を決して防ぎ止められない。

　ようやく気付いた。
　妖甲の妖甲たる所以。
　あれは死。あれは滅び。ただ純然たる、<RUBY text="・・">それ</RUBY>。

　関わってはならなかったのだ。
　近づいてはならなかったのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0990a00">
《いかに堅固な城塞とて……
　<RUBY text="いなづま">天の鉄鎚</RUBY>の前には脆いもの》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs1000a00">
《<RUBY text="エンチャント">磁波鍍装</RUBY>――<RUBY text="エンディング">蒐窮</RUBY>》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/023vs1010a01">
《諒解。
　<RUBY text="シ">死</RUBY>を始めましょう》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ここからアニメ？
//◆突撃する村正の鞘が帯電。放電。


	CreateTextureEX("絵EV300", 2000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_d.jpg");

	SetVolume("SE01", 500, 800, null);

	Shake_LoopB("@絵EV300","shake02");
	Fade("絵EV300", 700, 1000, null, true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs1020a00">
《吉野御流合戦礼法、〝迅雷〟が崩し……》

//◆鞘に手をかける村正。溜め演出
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs1030a00">
《<RUBY text="レールガン">電磁抜刀</RUBY>――――〝<RUBY text="マガツ">禍</RUBY>〟》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@SE*", 300, 0, null);

//◆抜刀。レーザーブレードっぽい感じか。
//◆ズシャードバーとまあ、派手に。直撃。ズガーン。ホワイトアウト

//嶋：ムービー差し込み予定【090305】

	CreateColorEXadd("絵色100", 15000, "White");

	Fade("絵色100", 300, 1000, null, true);

	RG_FlashDelete();
	Delete("@shake01");
	Delete("@shake02");
	Delete("絵EV100");
	Delete("絵EV200");
	Delete("絵EV300");
	Delete("絵EV400");
	Delete("@CP_SpeedAuto");
	Delete("@CP_RollBarAuto");
	Delete("@CP_HighAuto");

	MovieSESet(16000,"mv電磁抜刀_禍","se特殊_mv用_電磁抜刀_禍");

	MovieSEStart(1500);

//	if(#SYSTEM_break_play_movie){
//		MoviePlay("dx/mv電磁抜刀_禍.ngs", true);
//	}else{
//		MoviePlay("dx/mv電磁抜刀_禍.ngs", false);
//	}
//	Wait(1000);

	SetVolume("@mbgm*", 5000, 0, null);

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs1040b38">
《いかで……我が……
　こころの月を……あらは……して……》

{	FwC("cg/fw/fw鈴川_虚無.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs1050b57">
「やみに……まどえる……
　ひとを……てら…………さ…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景10", 9999, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureEX("絵背景200", 12000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetBlur("絵背景200", true, 3, 500, 100, false);
	Fade("絵背景100", 0, 1000, null, true);
	SetBlur("絵背景100", true, 3, 500, 100, false);

	Shake("絵背景100", 20000, 2, 3, 0, 0, 500, null, false);

	CreateTextureEXadd("絵ef100", 13000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵ef100", 0, 1000, null, true);
	Fade("絵背景200", 0, 800, null, true);

	SetBlur("絵ef100", true, 3, 500, 200, false);
	Zoom("絵ef100", 5000, 5000, 5000, Dxl1, false);

//◆爆散。ぼーん。
	CreateSE("SE01","se戦闘_破壊_鎧02");
	MusicStart("SE01",0,1000,0,1000,null,false);


	FadeDelete("絵色100", 1500, false);

	Wait(750);

	Zoom("絵背景200", 1000, 2000, 2000, Dxl1, false);
	Fade("絵背景200", 1000, 0, Dxl1, false);
	Fade("絵ef100", 1000, 0, null, true);

	Zoom("絵背景200", 0, 1000, 1000, Dxl1, true);

	Zoom("絵背景200", 500, 3000, 3000, Dxl1, false);
	Fade("絵背景200", 300, 500, Dxl1, true);

	Fade("絵背景200", 300, 0, Dxl1, true);

	Wait(1000);

	ClearWaitAll(1000, 3000);


..//ジャンプ指定
//次ファイル　"ma01_024.nss"

}
