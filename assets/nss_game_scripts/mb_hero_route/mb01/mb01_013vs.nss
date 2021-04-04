//<continuation number="1950">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_013vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb01_013vs.nss","Shoushiken",true);
	
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
	#bg022_山林a_01=true;
	#ev915_鍔競り合う村正と正宗=true;
	#bg025_山脈と森a_01=true;
	#ev916_正宗飛蛾鉄炮・弧炎錫=true;
	#bg022_山林b_01=true;
	#ev902_村正電磁抜刀レールガン_c=true;
	#ev112_一条をお姫様だっこする村正=true;
	#ev115_一条の髪に触れる景明_a=true;
	#ev917_正宗朧焦屍剣=true;
	#ev141_正宗ＶＳ村正初戦_a=true;
	#ev141_正宗ＶＳ村正初戦_b=true;
	#bg018_署長執務室_01=true;
	#ev158_一導の最期=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mb01_014.nss";

}

scene mb01_013vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_012.nss"



//◆戦闘開始
	PrintBG("上背景", 30000);

	CreateEffect("絵効果雨", 9000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 3000, 3000, null, true);
	Fade("絵効果雨", 0, 200, null, true);

	CreateTextureSP("絵背景正宗太刀", 7500, Center, Middle, "cg/st/resize/3d正宗_騎航_戦闘al_ex.png");
	CreateTextureSP("絵背景100", 7000, Center, Middle, "cg/bg/resize/bg022_山林a_01.jpg");
	SetShade("絵背景100", HEAVY);
//	Move("絵背景正宗太刀", 0, -1541, -19, null, true);
	Move("絵背景正宗太刀", 0, -1641, -539, null, true);

	CreateSE("SE01","se人体_動作_跳躍03");

	OnSE("se戦闘_攻撃_鎧_剣戟01",1000);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵背景正宗太刀", 200, -2041, -219, Dxl2, false);
	Move("絵背景100", 200, @-20, @-10, Dxl2, false);
	DrawDelete("上背景", 150, 100, "slide_01_03_0", true);
	Wait(50);

	Move("絵背景正宗太刀", 950, -1341, 19, Axl2, false);
	Move("絵背景100", 950, @-100, @-50, Axl2, false);

	WaitKey(800);

	CreateColorSP("絵暗転", 18000, "#000000");
	DrawTransition("絵暗転", 150, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	OnSE("se戦闘_動作_刀構え01",1000);

	Delete("絵背景正宗太刀");
	Delete("絵背景100");
//おがみ：コックピット動作定義========================
	Cockpit_AllFade2(300,780,0);
	MyTr_Count(0,352);
	MyLife_Count(0,720);

	CP_SpeedChange(0,0,null,true);
	CP_HighChange(0,0,null,true);
	CP_AziChange(0,160,null,false);


//おがみ：コックピット動作定義========================

	Fade("絵効果雨", 0, 300, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	OnBG(100,"bg022_山林a_01.jpg");
//	StC(1000, @0,@0,"cg/st/3d正宗_立ち_通常.png");
	StC(1000, @0,@0,"cg/st/3d正宗_立ち_戦闘a.png");
	FadeBG(0,true);
	FadeStC(0,true);



	DrawDelete("絵暗転", 150, 100, "slide_03_01_0", true);
	SoundPlay("@mbgm08",0,1000,true);


	//FadeStC(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　一条――正宗が太刀を抜き放つ。
　長い。

　今は失われている村正の野太刀ほどではないが。
　斬馬刀と称しても良いだけの刃渡り、そして身幅が
ある。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0010a00">
「鎌倉末期の典型だな……」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0020a01">
《ええ。
　太刀の長大化が始まった頃の作よ》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -144, "cg/bg/bg022_山林a_01.jpg");
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);

	CreateTextureEX("絵演窓上/絵立絵", 16200, -455, -500, "cg/st/resize/3d正宗_騎航_戦闘al_ex.png");
	Move("絵演窓上", 0, @0, @128, null, true);
	Move("絵演窓上/絵立絵", 0, -1441, 69, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵立絵", Smoothing);
	SetShade("絵演窓上/絵演背景", HEAVY);


	Move("絵演窓上/絵立絵", 30000, -2041, -219, null, false);
	Move("絵演窓上/絵演背景", 30000, @-100, @-50, null, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 300, 1000, null, false);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　鎌倉時代の末から太刀は次第に長く大振りのものが
好まれるようになり、その風潮は次の時代まで続く。
　戦国期に入って槍・鉄砲による集団戦術が発達する
と共に鎮静したが、武者の間ではなお廃れず、

　朝倉氏に仕えた豪将真柄十郎左衛門などは七尺三寸
にも及ぶ大太刀を駆使していたと云う。
　このような風潮が生まれた契機は、諸説あって定か
ではない。

　一説には、その原因を元寇とする。
　蒙古武者の強固な甲鉄に手を焼かされた大和武者は、
それを打ち破れる剛刀を求めたのだ――と。

　そんな大太刀も、扱いこなすだけの力量が無ければ
無用の長物と堕す。
　状況にも縛られる。

　地上、特に障害物の多い場所は適さない。
　<RUBY text="セオリー">常道</RUBY>に則れば、一条は騎航に移る筈だ――が。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

	Fade("絵色100", 300, 0, null, false);
	Fade("絵演窓上*", 300, 0, null, true);
	Delete("絵演窓上*");
	Delete("絵色100");

	Wait(500);

//◆剣閃数度
//◆木が倒れてくる。ざざー。
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateMovie("絵動画剣戟乱", 18000, Center, Middle, false, false, "dx/mv剣戟_チャキーンチャキキーン.ngs");

	$残時間=RemainTime("絵動画剣戟乱");
	WaitKey($残時間);

	CreateSE("SE01b","se戦闘_攻撃_鎧攻撃命中03");
	CreateSE("SE01c","se自然_森_木々倒れる01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 5100, "#FFFFFF");
	Delete("絵動画剣戟乱");
	DeleteStA(0,true);
	Wait(100);
	CreateTextureEX("絵演震", 2000, Center, Middle, "cg/bg/bg022_山林a_01.jpg");
	Fade("絵演震", 0, 600, null, true);
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Shake("絵演震", 5000, 0, 0, 0, 20, 1000, Axl1, false);
	FadeDelete("絵色白", 800, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0030a00">
「ッ！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0040a01">
《木を!?》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se戦闘_衝撃_衝突01");
	CreateSE("SE03","se戦闘_衝撃_衝突01");
	MusicStart("SE02",0,800,0,1200,null,false);
	Shake("絵演震", 300, 30, 14, 0, 0, 1000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　一条の選択は俺の意表を突いた。
　その場で太刀を一振――二振――三振。

{	MusicStart("SE03",0,800,0,800,null,false);
	Shake("絵演震", 600, 30, 30, 0, 0, 1000, Dxl1, false);}
　膝ほどの高さで切り断たれた木々が倒れ込む。
　俺の立つ方角へと……だがそれ自体は何の脅威にも
ならない。

　この一手の核心は別に有る。
　――散り舞う木の葉が、刹那。濃藍色の敵騎を覆い
隠した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0050a00">
（この技は!?）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　脳内を駆け巡る警鐘に従って、その場所を捨てる。
　飛び下がり――それでも<RUBY text="・・・・">つるつる</RUBY>と伸び来る鋭鋒が
視界の中央から迫った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵演震");
//◆刺突
//◆弾く。キーン。
	CreateTextureSP("絵背景林", 100, Center, Middle, "cg/bg/resize/bg022_山林a_01.jpg");
	Request("絵背景林", Smoothing);
	Zoom("絵背景林", 0, 500, 500, null, true);
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ef/ef016_汎用正面軌道.jpg");
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景300", 11000, Center, Middle, "cg/st/3d正宗_騎突_戦闘.png");
	Request("絵背景*", Smoothing);
	SetBlur("絵背景300", true, 3, 100, 100, false);
	Zoom("絵背景300", 0, 700, 700, null, true);

	OnSE("se戦闘_動作_空突進01",1000);
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟03");

	EffectZoomadd(10000, 300, 0, "cg/bg/bg022_山林a_01.jpg", false);
	Zoom("絵背景300", 400, 2000, 2000, Axl3, false);
	Zoom("絵背景林", 400, 700, 700, Axl3, false);
	Fade("絵背景300", 100, 1000, null, true);

	Wait(200);

	Fade("絵背景300", 100, 0, null, false);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景100", 300, 1300, 1300, Axl2, false);
	Fade("絵背景100", 0, 1000, null, true);

	Wait(150);
	Zoom("絵背景200", 300, 1100, 1100, Dxl2, false);
	Fade("絵背景200", 0, 1000, null, true);

	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);

	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef013_汎用斜め軌道.jpg", true);
	Delete("絵背景100");
	Delete("絵背景300");
	FadeDelete("絵背景200", 500, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　腰の太刀を抜きざま、下からすくい上げて打ち弾く。
　その時には既に見えていた。

　色鮮やかなる相州正宗。
　あたかも何かの魔術を駆使したかのように、こちら
の目前へ<RUBY text="・・">転移</RUBY>していた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0060a01">
《なに――まさか陰義!?》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0070a00">
（いや。
　<RUBY text="・・">縮地</RUBY>だ）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0080a01">
《え？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_鎧_着地02",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　後方へ流れた体重を、足の踏み替えで前方へ向ける。
　そして止まらず踏み込み、一刀。

　逆袈裟の形に斬りつける。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆逆袈裟
//◆ガキーン
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景300", 11000, 100, Middle, "cg/st/3d正宗_立ち_戦闘a.png");
	Request("絵背景*", Smoothing);
	SetBlur("絵背景300", true, 3, 200, 200, false);

	OnSE("se戦闘_動作_空突進01",1000);
	CreateSE("SE01","se戦闘_攻撃_剣戟弾く01");

	EffectZoomadd(10000, 300, 0, "cg/bg/bg022_山林a_01.jpg", false);
	Move("絵背景300", 400, @100, @50, Axl2, false);
	Zoom("絵背景300", 400, 1100, 1100, Axl3, false);
	Fade("絵背景300", 100, 1000, null, true);

	Wait(200);

	Fade("絵背景300", 100, 0, null, false);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景100", 300, 1100, 1100, Dxl2, false);
	Fade("絵背景100", 0, 1000, null, true);

	Wait(150);
	Zoom("絵背景200", 1000, 1500, 1500, Dxl2, false);
	Fade("絵背景200", 0, 1000, null, true);

	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);

	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef012_汎用斜め軌道.jpg", true);
	Delete("絵背景100");
	Delete("絵背景300");
	FadeDelete("絵背景200", 500, false);
	CP_AziChange(800,185,Dxl1,false);
	Move("絵背景林", 800, @100, @0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　予測していたのか、一条の太刀が迎え撃つ。
　俺の剣勢は殺され――しかし一条の剣も弾かれる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景300", 11000, 100, Middle, "cg/st/3d正宗_立ち_戦闘a.png");
	SetBlur("絵背景300", true, 3, 150, 150, false);

	OnSE("se戦闘_攻撃_鎧_剣戟02",1000);
	Fade("絵背景300", 100, 1000, null, false);
	Move("絵背景300", 200, @-200, @0, Dxl2, false);
	CP_AziChange(200,175,Dxl2,false);
	Move("絵背景林", 200, @-50, @0, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
　弾かれて――
　<RUBY text="・・・・・・">そのまま旋回</RUBY>。

　頭上でぐるりと取り回した太刀を、一条は叩きつけ
てきた。

　想定通り。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣閃
//◆ガキーン
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	Request("絵背景*", Smoothing);

	OnSE("se戦闘_動作_空突進01",1000);
	CreateSE("SE01","se戦闘_攻撃_剣戟弾く03");

	Move("絵背景林", 400, @-100, @0, Axl2, false);
	Move("絵背景300", 400, @200, @0, Axl2, false);
	Zoom("絵背景300", 400, 1500, 1500, Axl2, false);
	Fade("絵背景300", 100, 1000, null, true);

	Wait(200);

	Fade("絵背景300", 100, 0, null, false);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景100", 300, 1100, 1100, Dxl2, false);
	Fade("絵背景100", 0, 1000, null, true);

	Wait(150);
	Zoom("絵背景200", 1000, 1500, 1500, Dxl2, false);
	Fade("絵背景200", 0, 1000, null, true);

	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);

	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef012_汎用斜め軌道.jpg", true);
	Delete("絵背景100");
	Delete("絵背景300");
	FadeDelete("絵背景200", 500, false);
	CP_AziChange(600,110,Dxl1,false);
	Move("絵背景林", 600, @-100, @0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　それは先の一合の役割交替。
　一条が打ち込み、俺が受け返す。

　そして今度はこちらが、弾かれた勢いを利して斬り
つける。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆逆袈裟
//◆ガキーン
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	Request("絵背景*", Smoothing);

	OnSE("se戦闘_動作_空突進01",1000);
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟03");

	Wait(200);


	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景100", 300, 1100, 1100, Dxl2, false);
	Fade("絵背景100", 0, 1000, null, true);

	Wait(150);
	Zoom("絵背景200", 1000, 1500, 1500, Dxl2, false);
	Fade("絵背景200", 0, 1000, null, true);

	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);

	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef010_汎用斜め軌道.jpg", true);
	Delete("絵背景100");
	FadeDelete("絵背景200", 500, false);
	CP_AziChange(600,165,Dxl1,false);
	Move("絵背景林", 600, @100, @0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　同じ打ち込み。
　同じ受け。

　見物人がいたなら、首を傾げたことだろう。
　稽古でもしているのか？――と。
　
　その感想は真実から極めて近い。

　同じ技を使う者同士の対決など、実際、稽古のよう
なものだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();

	CreateColorEX("絵色100", 100, "BLACK");
	Fade("絵色100", 0, 500, null, true);

	CreateWindow("絵ＷＬ", 150, Center, -288, 1024, 288, true);
	SetAlias("絵ＷＬ","絵ＷＬ");
	CreateTextureSP("絵ＷＬ/絵背景Ｌ100", 100, Center, middle, "cg/bg/resize/bg022_山林a_01.jpg");
	CreateTextureSP("絵ＷＬ/絵ＳＴＬ", 500, Center, -400, "cg/st/3d正宗_立ち_戦闘a.png");
	Request("絵ＷＬ*", Smoothing);

	Move("絵ＷＬ/絵背景Ｌ100", 0, @312, @0, null, true);
//	Zoom("絵ＷＬ/絵背景Ｌ100", 0, 2000, 2000, null, true);
	Move("絵ＷＬ/絵ＳＴＬ", 0, @-120, @230, null, true);
	Move("絵ＷＬ", 0, @0, @288, null, true);

	CreateWindow("絵ＷＲ", 150, Center, 576, 1024, 288, true);
	SetAlias("絵ＷＲ","絵ＷＲ");
	CreateTextureEX("絵ＷＲ/絵背景Ｒ100", 100, Center, InBottom, "cg/bg/resize/bg022_山林a_01.jpg");
	CreateTextureEX("絵ＷＲ/絵ＳＴＲ", 500, Center, -400, "cg/st/3d村正標準_立ち_戦闘.png");
	Request("絵ＷＲ*", Smoothing);

	Move("絵ＷＲ/絵背景Ｒ100", 0, @-212, @144, null, true);
//	Zoom("絵ＷＲ/絵背景Ｒ100", 0, 2000, 2000, null, true);
	Move("絵ＷＲ/絵ＳＴＲ", 0, @120, @230, null, true);
	Move("絵ＷＲ", 0, @0, @-288, null, true);

	Rotate("絵ＷＲ/絵背景Ｒ100", 0, @0, @-180, @0, null,true);



	Move("絵ＷＬ/絵背景Ｌ100", 500, @-380, @0, Dxl1, false);
	Move("絵ＷＬ/絵ＳＴＬ", 500, @-190, @0, Dxl2, false);



	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	Wait(300);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0090a02">
「……っ。
　あんた、まさか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　千日手を打ち切って距離を取り、一条が面甲の奥で
呟く。いくらかの驚きを込めて。
　その心情はこちらとて同じであった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵ＷＲ*", 300, 1000, null, false);
	Move("絵ＷＲ/絵背景Ｒ100", 500, @380, @0, Dxl1, false);
	Move("絵ＷＲ/絵ＳＴＲ", 500, @190, @0, Dxl2, true);
	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0100a00">
「やはり吉野御流か」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0110a02">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0120a00">
「最初の仕掛けは吉野御流、猿隠れ。
　そこから繋げた瞬速の踏み足は、<RUBY text="・・・・">膝を抜く</RUBY>
ことで実現する吉野御流秘伝の縮地法」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0130a00">
「そして切り返しの応酬は、技であり稽古法
でもある木霊打ち……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0140a02">
「……そうか。
　あんたも」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0150a00">
「吉野御流合戦礼法。
　免許は受けていないが、奥伝には達した」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0160a02">
「吉野御流堂上礼法。
　免許も奥伝も知らねぇけど、多分一通りは
習った」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　……堂上礼法。
　その名には覚えがある。系譜上、吉野御流合戦礼法
の源流とされている流派だ。

　ここまで技が酷似しているということは、あながち
事実無根でもないのだろう。
　何らかの、深い縁があるのは間違いなさそうだ。

　思えばこれまでにも、一条は俺が修めたものに近い
組打術を幾度か披露した。
　その折々には、単なる偶然の符合だろうとしか思わ
なかったのだが。

　まさか同系流儀であったとは……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0170a00">
「劒冑を扱えるのも道理か」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0180a02">
「……お互い、手の内はお見通しってわけだ。
　でもそんなの」


{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0190a02">
「関係あるか――よっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade2();

	Delete("絵ＷＬ*");
	Delete("絵ＷＲ*");
	Delete("絵色100");

//◆突進
	CreateTextureSP("絵背景林", 100, Center, Middle, "cg/bg/resize/bg022_山林a_01.jpg");
	Request("絵背景林", Smoothing);
	Zoom("絵背景林", 0, 500, 500, null, true);
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ef/ef009_汎用下上軌道.jpg");
	CreateTextureEX("絵背景300", 11000, Center, Middle, "cg/st/3d正宗_騎突_戦闘.png");
	Request("絵背景*", Smoothing);
	SetBlur("絵背景300", true, 3, 100, 100, false);
	Zoom("絵背景300", 0, 500, 500, null, true);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);


	OnSE("se戦闘_動作_空突進01",1000);

	EffectZoomadd(10000, 300, 0, "cg/bg/bg022_山林a_01.jpg", false);
	Zoom("絵背景林", 400, 600, 600, Axl3, false);
	Zoom("絵背景300", 400, 2000, 2000, Axl3, false);
	Fade("絵背景300", 100, 1000, null, true);

	Wait(200);

	Fade("絵背景300", 100, 0, null, false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　再び、一条が縮地で迫る。
　こちらの懐へ入り――下段の太刀を<RUBY text="・・・">裏返す</RUBY>。

　逆流れ！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆逆流れ一閃
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景100", 300, 1100, 1100, Dxl2, false);
	Fade("絵背景100", 0, 1000, null, true);

	Wait(150);

	Zoom("絵背景林", 800, 500, 500, Dxl1, false);
	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef009_汎用下上軌道.jpg", true);
	Delete("絵背景100");
	Delete("絵背景300");
	FadeDelete("絵背景200", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　後方への退避は間に合わない。
　飛ぶ。

　上方へ跳躍。
　股座に吹き付ける太刀風から逃れる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆跳躍
	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se人体_足音_鎧歩く03",1000);
	Delete("絵背景林");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg025_山脈と森a_01.jpg");
	Move("絵背景50", 0, -512, -576, null, true);

//おがみ：コックピット動作定義========================
	CP_HighChange(5000,412,Dxl3,false);
	CP_SpeedChange(5000,315,Dxl2,false);

	CP_AltChangeA();
	CP_RollBarMoveA();
	BGMoveAuto("@絵背景50",1);

//おがみ：コックピット動作定義ここまで========================
	Move("絵背景50", 5000, @0, -288, Dxl3, false);
	DrawDelete("黒幕１", 300, 100, "slide_02_01_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　合当理に火を入れなくとも、この程度の飛翔は造作
ない。
　木々の狭間を抜け、円往寺一帯を眼下に見下ろす。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0200a01">
《このまま騎航戦に移るのも一手だけれど？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0210a00">
「いや――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　劒冑の具申に頷かず、地表へ向けて太刀を構える。
　武者の本領は空にあり。その意味で、村正の提案は
正しい。

　だが今現在、天候は雨だ。
　探査機能が著しく制限される。

　そんな状況下での騎航戦闘など、もはや戦闘の名に
値しない。
　博打だ。一条はそれを厭うて、あの大太刀を持ちな
がら<RUBY text="つばさ">母衣</RUBY>を畳んでいるのだろう。

　俺とても、そんな投機的趣向をもって戦いに臨む事
などできなかった。
　
　仮にあったとしても、今は無理だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0220a00">
「そんな暇はない」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0230a01">
《――ッ!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆正宗飛翔
//◆一閃
//◆がきゃーん
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景300", 11000, Center, Middle, "cg/st/3d正宗_騎突_戦闘.png");
	Rotate("絵背景300", 0, @0, @0, @50, null,true);
	CreateTextureEX("絵背景400", 18000, Center, Middle, "cg/ev/ev915_鍔競り合う村正と正宗.jpg");
	Zoom("絵背景400", 0, 2000, 2000, null, true);
	SetBlur("絵背景400", true, 3, 300, 80, false);


	Move("絵背景300", 0, @0, @300, null, true);


	Request("絵背景*", Smoothing);
	SetBlur("絵背景300", true, 3, 100, 100, false);
	Zoom("絵背景300", 0, 500, 500, null, true);

	OnSE("se戦闘_動作_空突進01",1000);
	CreateSE("SE01","se戦闘_攻撃_剣戟弾く02");

	EffectZoomadd(10000, 300, 0, "cg/bg/bg025_山脈と森a_01.jpg", false);
	Rotate("絵背景300", 800, @0, @0, @-50, Axl1,false);
	Move("絵背景300", 800, @0, @-300, Dxl1, false);
	Zoom("絵背景300", 800, 2000, 2000, Axl3, false);
	Fade("絵背景300", 100, 1000, null, true);

	Wait(400);


	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景100", 300, 2000, 2000, Dxl2, false);
	Fade("絵背景100", 0, 1000, null, true);

	Wait(150);
	Zoom("絵背景200", 300, 1100, 1100, Dxl2, false);
	Fade("絵背景200", 0, 1000, null, true);

	Shake("@CP_Frame", 200000, 2, 3, 0, 0, 1000, null, false);
	Shake("@絵背景300", 200000, 2, 1, 0, 0, 1000, null, false);

	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef003_汎用移動.jpg", true);
	Delete("絵背景100");
	Zoom("絵背景50", 0, 2000, 2000, null, true);

	Zoom("絵背景400", 500, 1000, 1000, Dxl2, false);
	Fade("絵背景400", 500, 1000, null, true);

	FadeDelete("絵背景200", 500, true);
	Wait(300);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　<RUBY text="アンチエアークラフトガン">対空砲</RUBY>の一弾に等しかった。
　こちらを追って翔躍した正宗の一撃。

　翼なくば、武者とて空中の動作は自在ならない。
　回避など許されず、真っ向から受け止める。

　重い一撃を、村正の剛力は辛うじて支え切った。
　鍔迫り合う。足場もない虚空で、腕任せに押し切り
合う。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0240a00">
「<RUBY text="ガリュウ">臥竜</RUBY>で敵を空へ追い込み、<RUBY text="ショウリュウ">昇竜</RUBY>で仕留める。
　……基本通りの見事な連携だ」


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0250a02">
「ほざいてろよ！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_鎧_踏み込み01",1000);

	FadeDelete("絵背景400", 300, false);
	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);
	Move("絵背景300", 200, @0, @100, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　大地の引力が彼我の騎体を引き寄せている。
　正宗の片足が俺の足に裏から絡んだ。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");

	CreateSE("SE01","se特殊_鎧_駆動音01");
	CreateSE("SE02","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CP_RollBarMove("@絵背景50", 1000, @-180, AxlDxl, false);
	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);
	Move("絵背景300", 300, @0, @100, Dxl2, true);
//	Fade("絵背景100", 400, 1000, null, false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("絵背景300", 400, @0, @-200, AxlDxl, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0275]
　そうして押し込む。
　足絡みを軸に体勢が変転した。

　正宗が上に。村正が下に。
　敵騎の太刀は、我が首筋を狙い――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0281]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0260a00">
（させては、やれぬ）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　吉野御流は〝二虎競落〟の法。
　争いに熱中するあまり山から転げ落ち、而して尚も
相手の喉笛を食い合う二虎の故事に倣い。空中戦闘に
おいて双方の騎体が絡んだならば上位を奪う。

　そして墜落、敵を地面との間に挟み圧殺する。
　決して容易くはないこの術を、一条は全うしていた。

　良き師のもとで学んだのだと知れる。
　だが――俺とても。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_攻撃_鎧_打撃01",1000);


	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);
	CP_RollBarMove("@絵背景50", 1000, @-180, AxlDxl, false);
//	Rotate("絵背景100", 600, @0, @0, @180, null,false);
//	Fade("絵背景100", 400, 0, null, true);

	Wait(500);

//◆更に逆転
	SetFwR("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0270a02">
「……ッ!?　この――」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0280a00">
「これが<RUBY text="・・">返し</RUBY>だ。
　知っていたか」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

//おがみ：コックピット動作定義========================
	CP_HighChange2(500,0,null,false);
	CP_SpeedChange2(500,0,null,false);

	MyLife_Count(0,264);

	CP_AltChange2(0,0,null,false);
	CP_AltChange(0,0,null,false);
	CP_RollBarMove2(0,0,null,true);

//	CP_AltChangeA();
//	CP_RollBarMoveA();
	BGMoveDelete();

//おがみ：コックピット動作定義ここまで========================

	Cockpit_AllFade0();
	Delete("絵背景*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　一条がしたように、絡む足を軸にして転回する。
　但し――一条が縦方向に回ったのに対し、横方向へ。

　位置関係が逆転する。
　村正が上。正宗が下へ。

　こちらの優位。
　しかし、一条の反応も迅速であった。

　すぐさま体勢を捻り返し、またもや上位へ。

　それを更に返して俺が上位へ。

　――変転、数度。
　墜落の瞬間にどちらが<RUBY text="まさ">勝</RUBY>っていたかはわからない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateSE("SE01","se戦闘_衝撃_鎧転倒02");

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg022_山林a_01.jpg");
	CreateTextureSP("絵背景150", 100, Center, Middle, "cg/bg/bg022_山林a_01.jpg");

	DrawDelete("黒幕１", 300, 100, "slide_02_01_0", true);


	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("絵背景150", 1000, 0, 20, 0, 0, 500, null, false);

	Wait(700);

//◆墜落
	SetFwC("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0290a02">
「ぐッッ!!」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0300a00">
「つ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　どちらも企図を遂げ得なかった。
　それだけは明白だった。

　浮遊から着陸への急な移行に伴う平衡感覚の混乱が、
一瞬一秒でも素早く立ち上がりたがる両足を妨害する。
　姿勢回復までは半呼吸――千年のようなその時間。

　しかし、長く短い時間を費やしたのは濃藍の敵騎も
同様だった。
　合わせ鏡の正確さで、揃って起き上がり対峙する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_跳躍02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	EffectZoomadd(10000, 300, 0, "cg/bg/bg022_山林a_01.jpg", true);

	SetFwC("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0310a02">
「かッッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　間合を読む、呼吸を計る――そんな<RUBY text="・・・・・・・">まだるっこしい</RUBY>
思案はこの少女と無縁のようだった。
　衰える気配もない獰猛さを剥き出しにして襲い来る。
短い気合は発砲に似ていた。

　愚直、剛直なる一直線の突進。
　速度が充分ならばそれは大いに脅威であり、そして
一条／正宗の足は必要値を五割ばかり超えていた。

　――が。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0320a00">
（正直過ぎる……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se人体_動作_跳躍01");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　迅雷と呼ぶのが相応の速さで撃尺の距離へ進入し、
一条は太刀を担ぎ上げる。
　刃、一旋――――

{	MusicStart("SE02",0,1000,0,1000,null,false);}
　その前に。
　俺は剣を投げ捨てながら半歩踏み込み、身を屈めて
対手の懐へ入った。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 16200, Center, 0, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");

	CreateTextureEX("絵演窓上/絵演背景", 16200, 0, -144, "cg/bg/bg022_山林a_01.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16300, -550, -500, "cg/st/3d正宗_騎航_戦闘a.png");
	CreateTextureEX("絵演窓上/絵立絵２", 16300, 200, -200, "cg/st/3d村正標準_騎航_通常.png");

//	Rotate("絵演窓上/絵立絵", 0, @0, @0, @180, null,true);
	Request("絵演窓上/絵演背景", Smoothing);

	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	Move("絵演窓上", 0, @0, @-338, null, true);

	OnSE("se戦闘_動作_空突進01",1000);


	Move("絵演窓上", 300, @0, @432, Dxl2, false);
	Fade("絵演窓上/絵演背景", 300, 1000, null, true);
	Move("絵演窓上/絵立絵", 300, @200, @0, Dxl2, false);
	Move("絵演窓上/絵立絵２", 300, @-200, @0, Dxl2, false);
	Fade("絵演窓上/絵立絵", 300, 1000, null, false);
	Fade("絵演窓上/絵立絵２", 300, 1000, null, true);


	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0330a02">
「……っ？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0340a00">
「<RUBY text="・・・">借りる</RUBY>ぞ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Fade("絵演窓*", 300, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　お前自身の力を。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵演窓*");
	CreateSE("SE01","se特殊_鎧_装着05");
	MusicStart("SE01",0,1000,0,1000,null,false);

	EffectZoom(10000, 300, 100, "cg/bg/bg022_山林a_01.jpg", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0391]
　右手を敵騎の脇から差し入れ、背に回し。
　腰を合わせて右足を払う。

　払い腰。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 16200, Center, 0, 1024, 288, true);
	SetAlias("絵演窓上","絵演窓上");

	CreateTextureEX("絵演窓上/絵演背景", 16200, 0, -144, "cg/bg/bg022_山林a_01.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16300, -135, -950, "cg/st/3d正宗_騎突_戦闘.png");

	Rotate("絵演窓上/絵立絵", 0, @0, @0, @180, null,true);
	Request("絵演窓上/絵演背景", Smoothing);

	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	Move("絵演窓上", 0, @0, @-288, null, true);

	OnSE("se戦闘_動作_空突進01",1000);


	Move("絵演窓上", 300, @0, @432, Dxl2, false);
	Fade("絵演窓上/絵演背景", 300, 1000, null, false);

	Move("絵演窓上/絵立絵", 300, @-200, @1000, Dxl2, false);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);

	SetFwC("cg/fw/fw一条_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0350a02">
「なぁっっ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	Move("絵演窓上/絵立絵", 200, @0, @400, Axl2, false);
	DrawTransition("絵演窓上*", 200, 1000, 0, 100, null, "cg/data/slide_01_03_0.png", false);
	FadeDelete("絵演窓上*", 300, true);
	FadeDelete("絵背景200", 300, true);

	Wait(300);
	OnSE("se戦闘_衝撃_鎧転倒03",1000);

	Shake("絵背景150", 1000, 0, 10, 0, 0, 500, null, false);

	Wait(1000);
	Delete("絵背景150");
//◆投げられる正宗
//◆どんがらごろごろ



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　……ごくごく基本的な投げ技は、教本に掲載を申請
したいほどの完璧さで決まった。
　一回転して背から地面へ落ち、一条の身体が勢いの
まま盛大に転がってゆく。

　俺は太刀を拾い上げた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0360a01">
《御堂！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　村正の声が俺を促す。
　言われるまでもない。

　今が、好機。

　勝機。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0370a00">
「……」

//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0380a00">
「得難い体験をしたな、一条。
　空に命を預ける武者にとって、<RUBY text="・・・・・">投げられる</RUBY>
機会など滅多にあるものでもない」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0390a02">
「くぅ……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0400a00">
「良い<RUBY text="わざ">術技</RUBY>を身につけているようだが、それ
のみに依存していては戦術の幅が狭まる。
　搦め手もあることを知っておけ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0410a00">
「例えば今の……
　単なる基礎的な柔術に過ぎんが、使い所を
間違えなければ有効な一手となる。甲冑剣法
だけが武者の技ではない」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0420a02">
「……抜かしやがる」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_刀構え03",1000);
	StC(1000, @0,@100,"cg/st/3d正宗_立ち_抜刀.png");

	Move("@StC*", 500, @0, @-100, Dxl2, false);
	FadeStC(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　立ち上がる一条。
　天晴れな事に、その手は大太刀を離していなかった。

　眼光が怒りの温度で俺を射る。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0430a02">
「追い打ちも掛けねぇで技の解説か。
　さっきから、受け一方だしよ」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0440a01">
《……》


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0450a02">
「余裕ぶりやがって……
　搦め手か。ああ、そうかよ。そっちが好み
だってんなら見せてやる……」


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0460a02">
「正宗！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_刀構え01",1000);

	StC(1000, @50,@0,"cg/st/3d正宗_立ち_戦闘b.png");
	FadeStC(300,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　藍色の武者が片腕を突き出す。
　槍のように。何も握らぬ腕を。

　その手首には……筒型の器具。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0470a00">
「……？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　……砲門？
　いや、まさか。

　鎌倉時代の劒冑にそんな兵装があろう筈もない。
　だが一条は、その箇所に戦気を注いで、短い一言を
発した。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0480a02">
「<RUBY text="くら">喰</RUBY>え」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0490b40">
《承知》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);


//◆鉄板が曲がる音＆肉を裂く音
	CreateSE("SE01","se戦闘_正宗_鉄砲準備02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(1000);

	SetFwR("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0500a02">
「がっッ――」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0510a01">
《……!?》


{	FwR("cg/fw/fw一条_憎悪b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0520a02">
「ぎっ、い、りいいいイイイイイイッッ!!」


{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0530a00">
「な――」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　――何をしている？

　この、<RUBY text="・・・・・">引き剥がす</RUBY>音は……
　何を――――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0540a02">
「あああ、あ、らぁぁぁアアアアアアッ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm12",0,1000,true);

	SetVolume("SE*", 1000, 0, null);
	DeleteStC(300,false);
	Fade("絵効果雨", 300, 0, null, false);


//◆「鉄炮」射出
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev916_正宗飛蛾鉄炮・弧炎錫.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetBlur("絵背景100", true, 3, 300, 200, false);

	CreateSE("SE01","se戦闘_正宗_鉄砲発射01");

	EffectZoomDXadd(10000, 500, 500, "#FFFFFF", "cg/ev/ev916_正宗飛蛾鉄炮・弧炎錫.jpg", false);
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景100", 1000, 1000, 1000, Dxl2, false);
	Fade("絵背景100", 100, 1000, null, true);
	Wait(1500);
	Delete("絵効果雨");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　筒が、火を吹いた。

　射出される――――弾丸。
　あれは砲だったのだ。有り得ない砲。

　いや。

　……違う。
　弾丸には速度がない。威力がない。

　まるで<RUBY text="ばね">撥条</RUBY>仕掛けで飛ばしたかのようだ。
　それが砲弾であるとすれば、怠慢の度が過ぎた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//◆読み「だぁぁぁい」
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0550b40">
《ＤＡＡＡＡＡＡＡＡＡＡＩＩＩＩ――》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　至近距離の砲撃であるにも拘わらず、見切って躱す
だけのゆとりがある。
　俺は軽く身を捻った。それで事足りた。

　弾丸が村正の甲鉄に近付く。しかし届かず。
　標的を失い、遠ざかる。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	EffectZoomDXadd(10000, 1000, 500, "#FFFFFF", "cg/ev/ev916_正宗飛蛾鉄炮・弧炎錫.jpg", false);

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//◆読み「だらぁーーーー!!」
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0560b40">
《ＤＡＡＡＲＡＡＡＡＡＨＨＨＨＨＨＨＨ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色100", 1500, "WHITE");

	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

	Zoom("絵背景100", 100, 2000, 2000, Axl2, false);

	Fade("絵色100", 100, 1000, Axl2, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　
　　　　　　　時間と空間が消失した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆「鉄炮」爆砕。
//おがみ：素材定義
	CreateTextureEX("絵背景400", 17000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureEX("絵背景500", 17000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateColorEXadd("絵色100", 17500, "WHITE");
	Request("絵背景400", Smoothing);
	Request("絵背景500", Smoothing);
	Zoom("絵背景400", 0, 2000, 2000, null, true);
	Zoom("絵背景500", 0, 1200, 1200, null, true);
	SetBlur("絵背景500", true, 2, 200, 70, false);

	CreateSE("SE05","se戦闘_破壊_大爆発01");
	CreateSE("SE01","se戦闘_破壊_爆発07");


//おがみ：爆発動作
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE05",200,1000,0,1000,null,false);

	Fade("絵色100", 0, 1000, null, true);

	FadeDelete("黒幕１", 100, false);
	Fade("絵色100", 150, 0, null, false);
	Fade("絵背景400", 0, 1000, null, true);
	DrawTransition("絵背景400", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
//	Wait(50);
	Move("絵背景400", 0, -312, -100, null, true);
	Wait(50);
	Move("絵背景400", 0, -350, -150, null, true);
	Wait(50);
	Move("絵背景400", 0, -510, -120, null, true);


	Fade("絵色100", 50, 1000, null, true);
	Delete("絵背景200");
	Delete("絵背景400");
	Delete("疾走カー2");

	Fade("絵背景500", 0, 1000, null, true);
	Zoom("絵背景500", 500, 1000, 1000, Dxl2, false);
	EffectZoomadd(18000, 6000, 4000, "cg/ef/ef026_汎用爆撃.jpg", false);
	FadeDelete("絵色100", 2000, true);



	Wait(2000);

	PrintGO("上背景", 20000);

	CreateColorSP("絵色100", 19000, "BLACK");

	SetVolume("SE*", 3000, 0, null);
	FadeDelete("上背景", 3000, true);

	Wait(2000);

	CreateSE("SE10","se自然_水_雨音02_L");
	MusicStart("SE10",3000,1000,0,1000,null,true);


//◆辺り一面ふっ飛ばしましたって感じ。破壊力過剰。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　忘我。

　幽離。

　……苦痛。
　一度何処かへ消え去った俺の世界を再構築したのは、
全身を貫く疼痛だった。

　鉄の肌に感じる冷たさ。
　雨が降っていたことを思い出す。

　雨は、正面から注がれている。
　意識を飛ばしていた刹那に、倒れていたようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 2000, 500, null);


	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0570a00">
「……っ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	MyLife_Count(0,243);
	CP_IHPChange(0,4,null,false);


	Cockpit_AllFade2();

	CreateEffect("絵効果雨", 9000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 300, null, true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg022_山林b_01.jpg");
	CreateTextureSP("絵背景200", 100, Center, Middle, "cg/bg/bg022_山林b_01.jpg");
	CreateTextureSP("絵背景300", 100, Center, InBottom, "cg/st/3d正宗_立ち_抜刀.png");
	CreateTextureSP("絵背景400", 100, Center, InBottom, "cg/st/3d正宗_立ち_抜刀.png");
	Zoom("絵背景200", 0, 1100, 1100, null, true);
	FadeF4("絵背景200", 0, 300, 10000, 0, 0, Dxl3, false);
	FadeF4("絵背景400", 0, 300, 10000, 0, 0, Dxl3, false);

	OnSE("se特殊_鎧_駆動音02",1000);
	SetVolume("SE10", 6000, 0, null);
	SoundPlay("@mbgm13",0,1000,true);


	FadeDelete("絵色100", 1000, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　上体を跳ね起こす。
　幾多の負傷が存在を主張し、神経を焼いた。

　前方に、佇む敵騎。
　昏く輝く騎体は奇妙に揺らいで見えた。視覚が安定
していないらしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_コックピット_起動音04");



	Fade("絵背景200", 300, 0, null, false);
	Fade("絵背景300", 300, 0, null, false);
	Fade("絵背景400", 300, 0, null, false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0580a00">
「今のは…………
　村正」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0590a00">
「村正」


{	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(100);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0600a01">
《――ッ――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Delete("絵背景200");
	Delete("絵背景300");
	Delete("絵背景400");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　衝撃が、一時的に機能を<RUBY text="シャットダウン">停止</RUBY>させていたのか。
　劒冑の反応は数秒遅れた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0610a01">
《御堂……》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0620a00">
「損傷状況を報告」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0630a01">
《……全身に無数の鏃……。
　針鼠にされた心地よ》


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0640a01">
《戦闘行動への支障は大》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0650a00">
「鏃？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0660a01">
《小さな鉄片よ。
　其処彼処に突き刺さっている》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　…………つまり。
　先の砲弾は、<RUBY text="ハイエクスプロージブ">榴弾</RUBY>の一種であったのか。

　着弾衝撃ではなく、炸薬の破裂によって中に仕込ん
だ鉄片を撒き散らし、敵の殺傷を期する。
　……しかし。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0670a00">
「何故だ……？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0680a01">
《…………》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0690a00">
「何故そんなものを古式の劒冑が……」


//◆読みは「てつほう」か。
{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0700a01">
《……てつはう》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0710a00">
「何？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　……てつほう？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(1000, @0,@0,"cg/st/3d正宗_立ち_抜刀.png");
	FadeStC(300,true);

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0720b40">
《道は誤れど、鍛冶師の端くれか。
　過去を学ぶに怠りはなかったと見ゆる》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0730a01">
《……正解だったの。
　真逆、と思ったけれど》


//◆ボイスは「てつほう」
{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0740b40">
《如何にもこれは〝<RUBY text="てつはう">鉄炮</RUBY>〟……
　正宗<RUBY text="ななつのからくり">七機巧</RUBY>が一であり》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0750b40">
《嘗て、蒙古どもが使いし武器でもある》


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0760a00">
「！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　そうか。
　名高き竹崎季長の蒙古襲来絵詞。

　そこに描かれし怪兵器〝てつはう〟――
　<RUBY text="シンテンライ">震天雷</RUBY>とも呼ばれた黎明の火器。

　それならば相州正宗が知っていてもおかしくはない
……！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0770a01">
《……そんな代物。
　よくも造れたものね》


{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0780a00">
「おそらくは武者の熱量を一種の<RUBY text="ＦＡＥ">気体爆薬</RUBY>と
成さしめて炸薬に代え、鉄片は甲鉄を割いて
用立てたのだろうが……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　確かに、並みの発想ではない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0790a01">
《ええ。
　けれど、そういうことじゃないのよ。御堂》


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0800a00">
「……？」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0810a01">
《そう、あの武器は甲鉄を原料にしている。
　仕手の肉体と<RUBY text="・・・">一体化</RUBY>した甲鉄をね》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0820a01">
《自分の骨肉を<RUBY text="・・・・・・">引き千切って</RUBY>敵にぶつける、
なんて攻撃手段があっていいと思う？》


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0830a00">
「!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　俺は一条の姿を見直した。

　……荒い息をついている。
　足元も覚束ない様子だ。

　揺れていると見えたのは、錯覚ではなかった。
　一条は苦悶していた。

　……己の骨肉を千切って敵に投擲するが如き攻撃法。
　そんな真似をしたならば当然だ。

　しかも――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0840a01">
《とんだ欠陥兵器よ》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0850b40">
《……》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0860a01">
《射程の短さに反して、効果範囲が<RUBY text="・・・・">広過ぎる</RUBY>。
　……自分で食らってるじゃないの》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　村正が指摘する通り。
　あの爆裂が正宗にも損傷を与えた事は見るも明らか
だった。

　無論、直撃されたこちらほどではないが……いや、
大した違いは無いかもしれない。
　一条の全身にも幾多の鋭い鉄針が食い込んでいる。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0870b40">
《クックック……
　クハーッハッハッハッハッハッハッ!!》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0880b40">
《<RUBY text="・・">それ</RUBY>が何だと云う？
　邪甲<RUBY text="ばら">輩</RUBY>！》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0890a01">
《……何ですって？》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0900b40">
《侮るでないわ。
　我が理念を。我が主の信念を！》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0910b40">
《<RUBY text="われら">正宗</RUBY>は<RUBY text="・・・・・・・">正義を貫徹する</RUBY>。
　それのみが肝心。他は瑣末事》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0920b40">
《<RUBY text="おの">己</RUBY>が甲鉄を費やすのは、それこそ最も<RUBY text="つよ">剛</RUBY>い
方法だからだ。
　己を巻き添えにするのは、そうするまいと
思えば剛さが欠け落ちるからだ》


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0930a02">
「そうだ……」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0940b40">
《邪悪を打ち砕く剛さ！
　正宗にはそれだけあれば良い。他には何も
要らぬ！》


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs0950a02">
「ああ。
　そうだ。正宗」


{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs0960a00">
「……」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs0970a01">
《……なんて無茶苦茶な》


</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_刀構え03");
	CreateTextureEX("絵背景300", 100, Center, InBottom, "cg/st/3d正宗_立ち_戦闘a.png");

	MusicStart("SE01",0,1000,0,1000,null,false);
	DeleteStC(160,true);
	Fade("絵背景300", 240, 1000, null, true);


	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0761]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0980b40">
《見下げるか、村正……。
　だがおのれは蒙昧にして知らぬのだ。正義
に魂を捧げた者は不屈である事をまだ知らぬ》


//◆読み「だぁぁいあぁぁぁぁ!!」
{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs0990b40">
《これから思い知る!!
　ＤＡＡＡＩＩＡＡＡＡＡＨＨＨＨＨ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景400", 100, Center, -200, "cg/st/3d正宗_騎突_戦闘.png");
	CreateTextureEX("絵背景150", 100, -512, -288, "cg/bg/resize/bg022_山林b_01.jpg");
	Zoom("絵背景150", 0, 600, 600, null, false);
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟03");



	OnSE("se戦闘_動作_空突進01",1000);

	FadeDelete("絵背景300", 200, false);
	Fade("絵背景150", 350, 1000, null, false);
	Zoom("絵背景150", 350, 1000, 1000, Axl2, false);
	Zoom("絵背景400", 350, 2000, 2000, Axl2, false);
	Fade("絵背景400", 150, 1000, null, true);

	Wait(100);

	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);
	FadeDelete("絵背景400", 200, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomDXadd(10000, 1000, 500, "#FFFFFF", "cg/bg/bg022_山林b_01.jpg", true);


//◆正宗、突進
//◆一撃。ガシーン。


	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1000a00">
「……ッッ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
　総身の傷など知らぬげな、一条の猪突。
　一撃。

　対してこちらは、反応がわずか遅れた。
　為す術なく受け、衝撃を浴びる。

　振動が全身の甲鉄に伝わり、骨格が麻痺する。
　そこへ、返しの一打――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆もう一撃
//◆がーん。
	CreateTextureEX("絵背景300", 100, Center, InBottom, "cg/st/3d正宗_立ち_戦闘a.png");

	OnSE("se戦闘_攻撃_鎧_剣戟02",1000);
	Fade("絵背景300", 200, 1000, null, true);


	CreateTextureEX("絵背景500", 18000, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	Request("絵背景*", Smoothing);

	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟03");

	OnSE("se戦闘_動作_空突進02",1000);

	Move("絵背景150", 200, @300, @0, Axl2, false);
	Move("絵背景300", 400, @200, @0, Axl2, false);
	Zoom("絵背景300", 400, 1500, 1500, Axl2, false);
	Fade("絵背景300", 100, 1000, null, true);

	Wait(200);

	Fade("絵背景300", 100, 0, null, false);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景500", 300, 1100, 1100, Dxl2, false);
	Fade("絵背景500", 0, 1000, null, true);

	Wait(150);
	CP_AziChange(1000,205,Dxl1,false);
	Move("絵背景150", 1000, @-200, @0, Dxl2, false);
	Zoom("絵背景200", 1000, 1000, 1000, Dxl2, false);
	Zoom("絵背景200", 1000, 1500, 1500, Dxl2, false);
	Fade("絵背景200", 0, 1000, null, true);

	Shake("@CP_Frame", 1000, 20, 20, 0, 0, 1000, null, false);

	EffectZoomDX(18000, 100, 100, "#FFFFFF", "cg/ef/ef012_汎用斜め軌道.jpg", true);
	Delete("絵背景500");
	Delete("絵背景300");
	FadeDelete("絵背景200", 500, true);


	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1010a00">
「うぬ……っ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs1020a01">
《御堂！》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1030a00">
「大事なし」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
　ふらつく足を蹴り放って後退――と見せておき円転、
敵騎の側面へ逃れる。
　そんな小技が許される程度に、今の被弾の悪影響は
留まっていた。流石に筋力が万全ではなかったのか。

　一瞬こちらを見失った一条が、再び捉えて舌を打つ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1040a02">
「ちっ……固ぇ」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs1050b40">
《悪名を響かせるだけのものはある甲鉄だ。
　忌々しいの……》


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1060a02">
「だが、大したことじゃない」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs1070b40">
《然り。
　斬れぬなら、<RUBY text="・・・">砕けば</RUBY>良かろうよ》


{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1080a02">
「だ、なぁッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆正宗進撃

	CreateTextureEX("絵背景300", 100, Center, InBottom, "cg/st/3d正宗_立ち_戦闘a.png");
	Move("絵背景300", 0, @100, @0, null, true);
	SetBlur("絵背景300", true, 2, 500, 100, false);


	OnSE("se人体_動作_跳躍02",1000);
	EffectZoomDX(18000, 300, 100, "#FFFFFF", "cg/ef/ef003_汎用移動.jpg", false);
	CP_AziChange(200,165,Dxl2,false);
	Move("絵背景150", 200, @-200, @0, Dxl2, false);
	Move("絵背景300", 200, @-100, @0, Dxl2, false);
	FadeDelete("絵背景150", 200, false);
	Fade("絵背景300", 200, 1000, null, true);

	Wait(200);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs1090a01">
《……好き放題言われているわね。
　御堂？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1100a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs1110a01">
《私たちがあいつを砕く。
　いい？》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1120a00">
「……ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆村正帯電
	CreateColorEXadd("絵色100", 1500, "BLUE");

	CreateSE("SE01","se特殊_電撃_帯電01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 150, 1000, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 50, 1000, null, true);
	Fade("絵色100", 0, 1000, null, true);
	FadeDelete("絵色100", 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　村正の要請に応えて、<RUBY text="サイクロトロン">丹田</RUBY>を回す。
　熱量放出。

　迫る一条は一見して、芸の無い猪突猛進。
　が、その姿勢は低く、重心もまた下にある。

　同じ手は食わぬという事だろう。
　それは良い――だがやはり甘い。

　こちらの<RUBY text="・・・・">引き出し</RUBY>を見誤っている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs1130a01">
《<RUBY text="ながれ・まわる">磁装・正極</RUBY>――》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1140a00">
「――<RUBY text="リニア・アクセル">磁力加速</RUBY>」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆磁力加速
//◆相互剣撃。ガキーン。
	Move("絵背景300", 300, @100, @50, Axl2, false);
	Zoom("絵背景300", 300, 1200, 1200, Axl2, false);
	FadeDelete("絵背景300", 300, false);

	Wait(200);
	OnSE("se戦闘_攻撃_鎧_剣戟03",1000);
	EffectZoomDX(18000, 500, 0, "#FFFFFF", "cg/ef/ef011_汎用斜め軌道.jpg", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
　正宗の刀撃を、対称的な一撃で迎え撃つ。
　相撃。互いに跳ね返され、しかしそのまま次の一撃
へ繋ぐ。

　吉野御流、木霊打ち。
　双方がこれを用いて戦えば、先刻も実証された通り、
その様は稽古じむ。

　――だが。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆雷閃

	OnSE("se特殊_電撃_放電02",1000);
	EffectZoomadd(10000, 150, 100, "cg/ef/ef003_汎用移動.jpg", true);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1150a02">
「――!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
　稽古とはならない。
　剣速に格段の差があったなら、そうはならない。

　甲鉄の磁気侵食による動作最適化が<RUBY text="ロス">無駄</RUBY>という<RUBY text="ロス">無駄</RUBY>
を殺し。
　関節は存在を忘れるほどに軽く。

　太刀はあたかも羽根を得たかのように踊る。
　
　――吉野御流、木霊打ちの村正崩し。

　<RUBY text="ツバメ">飛燕</RUBY>打ち。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一撃
//◆ばきゃーん。

	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/ef/ef009_汎用下上軌道.jpg");

	CP_PowerChange(300,400,null,false);

	OnSE("se戦闘_攻撃_剣戟弾く02",1000);
	OnSE("se戦闘_攻撃_鎧攻撃命中02",1000);
	Fade("絵背景200", 100, 1000, null, false);
	EffectZoomadd(10000, 200, 200, "cg/ef/ef003_汎用移動.jpg", true);
	FadeDelete("絵背景200", 1000, true);


	SetFwC("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1160a02">
「ぎっ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ01",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
　この<RUBY text="・・">反則</RUBY>には対応の術が無かったろう。
　眼前、息の届く間にあった敵影が吹き飛ぶ。

　吹き飛ぶ――
　そう、斬れてはいない。刃は弾かれていた。

　恐ろしいまでに硬い手応え。
　村正の堅牢さを<RUBY text="なじ">詰</RUBY>られる筋合いではなかった。

　これほどの甲鉄を断ち切るには……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs1170a01">
《御堂、時間を与えないで！
　今よ！》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1180a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
　結論は一致する。
　大刀を、鞘へ。

　この機に決着をつけねばならない。

　体内でちからを回す。
　今一度。しかし比較にならぬほどの力量を。

　行き着く処は一つ。
　――――<RUBY text="オワリノナガレ">蒐窮の太刀</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1190a02">
「くそ……がっ！」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs1200b40">
《御堂！　立てェい！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(1000, @-50,@80,"cg/st/3d正宗_立ち_抜刀.png");

	OnSE("se人体_足音_鎧歩く03",1000);

	Move("@StC*", 500, @50, @-50, Dxl2, false);
	FadeStC(500,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
　<RUBY text="とお">徹</RUBY>らなかったとはいえ、武者の一太刀を浴びながら
一条の回復は言語道断の早さだった。
　既に膝を立て、剣を取り直している。

　あまつさえ――
　
　あれは、何か。

　太刀の周囲に陽炎が昇り、近付く雨を霧と散らして
いる。
　…………熱量を太刀に注いでいるのか？

　あれも先刻の鉄炮と同様、五郎正宗固有の兵装なの
かもしれない。
　だが、その<RUBY text="ちから">性能</RUBY>を誇示する機会はない。

　こちらが早い！
　何をしようとも遅い。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStC(300,true);

	CreateTextureEX("絵背景200", 17000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_d.jpg");
	Zoom("絵背景200", 0, 2000, 2000, null, true);

	CreateSE("SE01","se特殊_陰義_レールガン穿_準備");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景200", 500, 1000, 1000, Dxl2, false);
	Fade("絵背景200", 500, 1000, null, true);

	Delete("絵効果雨");

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1210a00">
「<RUBY text="レールガン">電磁抜刀</RUBY>――――〝<RUBY text="マガツ">禍</RUBY>〟」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぎゅいーん。エネルギー充填
//◆エネルギー解放。どがー。
	CreateColorEXadd("絵色100", 18000, "WHITE");
	CreateTextureEX("絵背景300", 17000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_e.jpg");
	Request("絵背景300", AddRender);
	Zoom("絵背景300", 0, 1050, 1050, null, true);

	CreateSE("SE02","se特殊_電撃_帯電01");

	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeF4("絵背景300", 1000, 1000, 3000, 0, 0, Axl3, false);
	Wait(2000);
	Fade("絵色100", 1000, 1000, null, true);
	Delete("絵背景200");
	Delete("絵背景300");

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 2000, 0, null);

	Wait(500);

//◆そこへ割り込み画像
//◆笑顔の一条、罪のイメージ、殺すと告げる一条等
	CreateTextureEX("絵背景400", 17500, Center, Middle, "cg/ev/ev112_一条をお姫様だっこする村正.jpg");
	CreateTextureEX("絵背景500", 17500, Center, Middle, "cg/ev/ev115_一条の髪に触れる景明_a.jpg");

	Fade("絵背景400", 0, 1000, null, true);
	Fade("絵色100", 500, 200, null, true);

	Wait(500);
	Fade("絵色100", 200, 1000, null, true);
	Fade("絵背景500", 0, 1000, null, true);
	Fade("絵色100", 200, 200, null, true);

	Wait(500);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景400");
	Delete("絵背景500");

//◆レールガン
//◆空振り
	CreateSE("SE03","se特殊_陰義_レールガン穿_発動");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Wait(2500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/013vs1220a01">
《……御堂!?》


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1230a00">
「ッ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Cockpit_AllFade0();
	FadeDelete("絵色100", 2000, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
　――外し――――た――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1240a02">
「ぎっ……」


{	FwC("cg/fw/fw一条_憎悪b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1250a02">
「いぃ、がっ、」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆正宗の太刀が灼熱。但し腕ごと。
//◆ヒートサーベル
	CreateColorEXadd("絵色100", 1500, "WHITE");
	CreateColorEXadd("絵色下敷き", 120, "WHITE");

//	CreateTextureEX("絵背景200", 200, Center, Middle, "cg/ev/ev917_正宗朧焦屍剣.jpg");
//	Zoom("絵背景200", 0, 2000, 2000, null, true);
//	SetBlur("絵背景200", true, 3, 300, 200, false);

	CreateSE("SE02","se戦闘_正宗_朧焦屍剣");
	CreateProcess("プロセス１", 12000, 0, 0, "Shoushiken");

	Fade("絵色100", 200, 1000, null, true);
	Fade("絵色下敷き", 0, 1000, null, true);
	MovieSESet(150,"mv焦屍剣","se戦闘_正宗_朧焦屍剣");

	Fade("絵色100", 300, 0, Axl2, false);
	MovieSEStart(0);
	Request("プロセス１",Start);

	Fade("絵色100", 200, 1000, null, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
//	Fade("絵背景200", 0, 1000, null, false);




	CreateSE("SE01","se戦闘_正宗_朧焦屍剣");
	CreateSE("SE02","se戦闘_攻撃_火炎放射");
	MusicStart("SE01",0,1000,0,1000,null,false);
//◆正宗ヒートソード
	CreateTextureEX("絵正宗演出用", 100, Center, Middle, "cg/ev/resize/ev917_正宗朧焦屍剣l.jpg");
	CreateTextureEXadd("絵正宗炎", 100, Center, Middle, "cg/ef/ef028_汎用火炎放射.jpg");
	CreateTextureEX("絵正宗２", 100, Center, Middle, "cg/ev/ev917_正宗朧焦屍剣.jpg");
	SetBlur("絵正宗演出用", true, 2, 500, 70, false);
	SetBlur("絵正宗炎", true, 2, 500, 200, false);
	Zoom("絵正宗炎", 0, 2000, 2000, null, true);
	Rotate("絵正宗炎", 0, @0, @0, @-30, null,true);

	DrawEffect("絵正宗炎", 50, "LowWave ", 0, 100, null);

	Delete("絵色下敷き");

	Fade("絵正宗炎", 0, 1000, null, true);
	FadeDelete("絵色100", 300, false);
	Fade("絵正宗演出用", 200, 1000, null, false);
	Move("絵正宗演出用", 500, -1024, 0, Dxl2, true);

	Delete("絵正宗");

	WaitKey(300);

	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeDelete("絵正宗炎", 1000, false);
	Zoom("絵正宗演出用", 800, 500, 500, Axl3, false);
	Move("絵正宗演出用", 800, -512, -288, Axl3, false);

	Wait(500);

	EffectZoomDXadd(10000, 1000, 100, "#FFFFFF", "cg/ev/ev917_正宗朧焦屍剣.jpg", false);
	Fade("絵正宗２", 200, 1000, null, true);
	Delete("絵背景効果線");
	Delete("絵正宗");


//	Zoom("絵背景200", 1500, 1000, 1000, Dxl3, true);
	Wait(1000);
	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1260a02">
「ぐぅぅぅるぅああああーーーーーーッッ!!」


//◆読み「だぁいだらーーー!!」
{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs1270b40">
《ＤＡＡＩＥＤＡＲＡＡＡＡＡＡＡＨＨＨ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ヒートソード一閃
//◆ずばー。
//◆斬られました。

	CreateTextureEX("絵背景300", 100, Center, Middle, "cg/ev/ev917_正宗朧焦屍剣.jpg");
	Request("絵背景300", AddRender);
	SetBlur("絵背景300", true, 3, 300, 200, false);

	CreateColorEXadd("絵色100", 18000, "WHITE");

	CreateSE("SE01","se戦闘_攻撃_剣戟弾く02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ02",1000);


	Fade("絵背景300", 1000, 1000, null, false);
	Zoom("絵背景300", 2000, 2000, 2000, Axl3, false);
	Fade("絵色100", 2000, 1000, Axl3, true);

	Delete("絵正宗*");

	CreateSE("SE03","se戦闘_攻撃_鎧攻撃命中");
	CreateSE("SE04","se戦闘_攻撃_鎧_吹っ飛ぶ02");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Wait(1000);
	MusicStart("SE04",0,1000,0,1000,null,false);

	Wait(2500);

	SetVolume("SE*", 3000, 0, null);


	Delete("絵背景200");
	Delete("絵背景300");

	Request("プロセス１", Stop);
	Request("プロセス１", Disused);
	Delete("プロセス１");


	PrintGO("上背景", 25000);
	CreateColorSP("絵色100", 15000, "BLACK");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg022_山林b_01.jpg");
	FadeDelete("上背景", 3000, true);

	CreateEffect("絵効果雨", 9000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 300, null, true);

	Wait(2000);

	FadeDelete("絵色100", 1500, true);

	Wait(500);

//◆正宗視点

	CreateSE("SE10","se自然_水_雨音02_L");
	MusicStart("SE10",3000,1000,0,1000,null,true);

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs1280b40">
《キハーッハッハッハッハッハァーーーッ!!
　どうだ……思い知ったか、妖甲よ！》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/013vs1290b40">
《悪に報いあり！
　正義に勝利あり！
　世の真理は今ここにあり！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 3000, 0, null);

	CreateTextureEX("絵背景200", 10000, Center, Middle, "cg/ev/ev141_正宗ＶＳ村正初戦_a.jpg");
	Fade("絵背景200", 1000, 1000, null, true);

	Delete("絵効果雨");
	Delete("絵背景100");

	SoundPlay("@mbgm31",0,1000,true);
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
　湊斗景明は木にもたれている。

　立ち上がる力を失くしていることは明白だった。
　こうも斬られて、動ける筈がない。

　傷口は<RUBY text="・・・・・・">じゃりじゃり</RUBY>と音を鳴らしていた。

　焼かれているのだ。
　まだ冷めやらぬ炎熱に。

　似たような音は、自分の右腕からもする。
　太刀を握る手が焼けている。

　痛みはなかった。
　多分、神経が既に焼き切れたのだろう。

　腕と太刀は焼接されて、もう一本の棒だ。
　それでも動かせる。

　この<RUBY text="つるぎ">正宗</RUBY>は<RUBY text="おれ">武者</RUBY>が戦いを望む限り、力をくれる。

　真紅色の武者の前へ、歩み寄った。
　雨粒を焼いて煙を立てる刀を、喉元に突き付ける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1300a02">
「殺す……ぞ……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1310a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1020]
　返答はない。
　聴いていることは、目を見ればわかる。けれど何も
返してはこない。

　言葉も。<RUBY text="ひとみ">眸</RUBY>の光すらも。
　それがとてつもなく癇に障った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1320a02">
「できないとでも、思ってるのか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1040]
　気のせいか。
　この台詞は二度目であるように思う。

　だとすると、あたしは何を未練がましく繰り返して
いるのか。
　彼に、それを否定された覚えもないのに。

　頭が痛い。
　しかし、そんなものより遥かに痛く辛い何かが、胸
の奥からせり上がってきている。

　良くない。

　この光景は良くない。
　この男は良くない。

　終わらせるべきだ。
　罪人の首を<RUBY text="は">刎</RUBY>ねよう。

　この男は人殺し。
　六波羅とも銀星号とも関わりのない、何も悪くない
人間を幾人も殺したのだ。本人がそう認めた。

　あたしはそんな奴を許さない。
　正宗という力を手に入れた今、そんな奴を滅ぼす事
があたしの役目だ。

　正義の味方は何処にもいない。
　だから、あたしが正義に味方する。

　非凡な力を持つ武者でありながら、その力で弱者を
殺すような奴は、あたしの手で倒す。
　どんな理由があっても許さない。

　許してはならない。
　そう、教えられた。

　………………………………誰に？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1050]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1330a02">
「……うくっ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1060]
　心臓が、鼓動を一回だけ飛ばした。
　息が止まり、肌が震える。

　早くしよう。
　悪を許さないのなら、もう殺すだけでいい。

　すぐに済む。
　剣を一突きして終わりだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1340a02">
「なんでだよ……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1350a00">
「……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1360a02">
「なんで……
　何も言わない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1080]
　誰かがしつこく、湊斗景明を問い詰めている。
　あたしはもう、許さないと決めているのに。

　煩わしい……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1090]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1370a02">
「言えよ！」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1380a00">
「……」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1390a02">
「理由があったんだろ!?
　どうしようもなかったんだろっ!?」


//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1400a02">
「あんたはそうするしかなかったんだろぉ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想100", 12000, Center, Middle, "cg/bg/bg018_署長執務室_01.jpg");
	Delete("絵効果雨");
	EfRecoIn2(300);

	SetFwC("cg/fw/fw署長_沈黙.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1410a11">
「……呪いだよ」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1420a02">
「呪い……？」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1430a11">
「村正が妖甲と称される所以。
　……善悪相殺の掟。その呪縛」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1440a11">
「悪しきものを一つ斬ったなら、
　善きものも一つ斬る」

//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1450a11">
「景明の意思とは関わりなく」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1460a02">
「……な」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1470a11">
「呪いで最初に殺したのは自分の<RUBY text="はは">養母</RUBY>だ。
　あいつは一番最初に、一番大切な人間を手
に掛けた」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1480a11">
「だから引き返せなくなった。
　そこから始まった全てを終わらせるための
……戦いの道を」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1490a02">
「――――」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1500a11">
「……それでも止めてやるべきだったのかも
しれない。
　そうだろうな。おそらくは。きっとそうだ
ろう」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1510a11">
「だが……私は景明を戦わせている。
　呪いも、何もかも、全て承知の上で」


//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1520a11">
「他にいないからだ。
　銀星号と戦い、その〝卵〟を破壊し、災厄
の拡散を防いでくれる武者は……」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/013vs1530a11">
「責められるべきは、私だよ」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1540a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆戻り
	EfRecoOut1(300);
	Delete("絵回想*");

/*
	CreateEffect("絵効果雨", 9000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 300, null, true);
*/

	EfRecoOut2(600,true);


	Wait(500);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1110]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1550a00">
「……」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1560a02">
「……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1570a00">
「…………」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1580a02">
「こ……のっっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一突き
//◆ずさー。
	CreateTextureEX("絵背景300", 10000, Center, Middle, "cg/ev/ev141_正宗ＶＳ村正初戦_b.jpg");

	OnSE("se戦闘_攻撃_刀刺さる02",1000);
	OnSE("se人体_動作_後ずさり01",1000);

	CreateColorSPadd("絵色100", 1500, "RED");

	OnSE("se戦闘_特殊_鎧溶け出す",1000);

	EffectZoomadd(11000, 1000, 1000, "cg/ev/ev141_正宗ＶＳ村正初戦_b.jpg", false);
	Fade("絵背景300", 100, 1000, null, true);

	FadeDelete("絵色100", 1000, true);
	Delete("絵背景200");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120]
　太刀を手元に引き戻し、体重を掛けて突き出す。
　破滅的な高温を宿した切先は、甲鉄を水飴も同然に
貫いた。

　肉を焦がす。
　その下の内臓をも焼き上げる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1130]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1590a00">
「ぐふ……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1600a02">
「どうだ……」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1610a00">
「…………。
　場所が違う」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1620a02">
「……何？」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1630a00">
「そんな所を刺しても……
　武者は死なぬ」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1640a02">
「てめ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1140]
　湊斗景明の言う通りだ。
　喉元に当てていた刀を、わざわざ引き戻して、胸へ
突き入れて……どうする。

　そのまま刺せば、それで良かった。
　……今からそうしよう。

　すぐに。
　許されざる罪人を殺すために。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1650a02">
「ほかにあるだろ……」


{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1660a02">
「言う事ならほかにあるはずだろ！」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1670a00">
「……」

//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1680a00">
「無くも……ない」

//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1690a00">
「言えた筋合いでも……ないが……」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1700a02">
「……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1710a00">
「……銀星号を……頼む」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1720a02">
「………………」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1730a02">
「な、に？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1740a00">
「その正宗ならば……あるいは……
　止められるかもしれない」

//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1750a00">
「頼む……」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1760a02">
「違うだろッ!!
　そんなこと聞きたいんじゃねぇよ!!」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1770a00">
「……？」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1780a02">
「あんたは悪くないんだろうがっ！
　なのに、殺されていいわけねぇだろ！」

//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1790a02">
「あたしに理由を言えよ！
　呪いのせいだったんだって、説明しろよ！」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1800a00">
「………………」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1810a02">
「そうすりゃ……
　そうしてくれれば……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1820a00">
「関係……ない」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1830a02">
「――――」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1840a00">
「罪は……罪。
　悪は……悪」

//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1850a00">
「それを裁こうとする……お前は、正しい。
　理由など……関係ない……」

//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1860a00">
「悪は」

//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1870a00">
「罪は」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1880a02">
「――――――」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1890a00">
「許しては、ならないのだ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フラッシュバック
//◆切腹する一条父
//	SetVolume("@mbgm*", 1000, 0, null);
//	SetVolume("SE*", 1000, 0, null);

	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想100", 100, Center, Middle, "cg/ev/ev158_一導の最期.jpg");
//	Delete("絵効果雨");
	Delete("絵背景*");
	EfRecoIn2(300);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1160]
　
　　　　　　　私を止めてはならない

　
　　　　　　　私を許してはならない

　
　　　　　　　　　　　憎め

　
　　　　　　　　私の犯した罪を憎め

　
　　　　　　　　私という悪を憎め

　
　　　　　　　　　　　憎め
　　　　　　　　　　　怒れ

//◆ウェイト

　
　　　　　　　　　　　殺せ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);
	Delete("絵回想*");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg022_山林b_01.jpg");
	CreateEffect("絵効果雨", 9000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 300, null, true);

	EfRecoOut2(600,true);

	Wait(500);

//◆村正視点
	Wait(500);

	SetFwC("cg/fw/fw一条_涙.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1170]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1900a02">
「……やだよぅ……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1910a00">
「一条……」


{	FwC("cg/fw/fw一条_涙.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1920a02">
「やだよ……父様……
　もう、やだよ……」

//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1930a02">
「死なないで……」

//【一条】
<voice name="一条" class="一条" src="voice/mb01/013vs1940a02">
「……父様……
　………湊斗さん………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/013vs1950a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1180]
　俺は――――
　<RUBY text="すが">縋</RUBY>りつき、泣きじゃくる一条を、ただ眺めやること
しかできなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	ClearWaitAll(2000, 2000);

	Delete("絵効果雨");

}

..//ジャンプ指定
//次ファイル　"mb01_014.nss"



function Shoushiken()
{

	CreateColor("焚き火光", 1400, 0, 0, 1024, 576, "RED");
	SetAlias("焚き火光","焚き火光");
	Fade("焚き火光", 0, 0, null, false);
	DrawTransition("焚き火光", 0, 100, 200, 990, null, "cg/data/out_slash_1.png", true);


	begin:

	while(1)
	{
	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",200,150,null,true);
	Fade("焚き火光",180,230,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,190,null,true);
	Fade("焚き火光",200,150,null,true);

	Fade("焚き火光",150,230,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",100,280,null,true);
	Fade("焚き火光",350,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",200,220,null,true);
	Fade("焚き火光",170,100,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",140,140,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,130,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,130,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,120,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,90,null,true);
	Fade("焚き火光",180,110,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,130,null,true);
	Fade("焚き火光",200,90,null,true);

	}


}
