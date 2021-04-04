//<continuation number="710">


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

scene mb02_028vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb02_028vs.nss","Lastfire",true);
	Conquest("nss/mb02_028vs.nss","EffextDamage",true);
	
//コックピット用Ｓｅｔ
	//CP_AllSet("正宗");
	if($GameDebugSelect==1){CP_AllSet("正宗");}

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#ev916_正宗飛蛾鉄炮・弧炎錫=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mb02_029vs.nss";

}

scene mb02_028vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"mb02_027.nss"

//◆正宗モニター
//◆一度赤く明滅。ダメージ表現

	PrintBG("上背景", 30000);
//	CreateColorSP("絵暗転", 18000, "#000000");

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
//	CreateTextureSP("絵背景150", 100, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");

//おがみ：コックピット動作定義========================
	Cockpit_AllFade2(300,780,0);
	MyLife_Count(0,600);
	MyTr_Count(0,720);

	CP_SpeedChange(0,700,null,true);
	CP_HighChange(0,550,null,true);
	CP_PowerChange(10,500,null,false);
	CP_AziChange(0,-220,null,true);

	CP_EHPChange(0,9,null,true);
	EnLife_Count(0,722);
	EnTr_Count(0,335);
	CP_EnemyFade(300,10,722,335);

//おがみ：コックピット定義========================

	CreateColorEXmul("絵色100", 18000, "RED");

	CreateSE("SE01","se戦闘_破壊_爆発07");
	CreateSE("SE10","se戦闘_動作_空突進05");


//おがみ：コックピット動作========================
//	FadeF4("絵背景150", 0, 300, 10000, 0, 0, Dxl3, false);
	Fade("絵色100", 0, 1000, null, true);


	CreateTextureEX("絵背景400", 31000, Center, Middle, "cg/ef/ef027_貫流刺突.jpg");
	Request("絵背景400", AddRender);

	CreateTextureEXadd("絵st150", 32000, -531, -668, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("絵st160", 32000, 250, -435, "cg/ef/ef044_火花c.png");
	Rotate("絵st160", 0, @0, @0, 120, null,true);
	CreateTextureEXadd("絵st170", 32000, -186, -576, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("絵st180", 32000, -2, -324, "cg/ef/ef044_火花c.png");
	Rotate("絵st180", 0, @0, @0, 160, null,true);
	Zoom("絵st*", 0, 500, 500, null, true);
	SetBlur("絵st*", true, 2, 400, 150, false);
	SetTone("絵st*", Sepia);

	CreateColorEXadd("絵色500", 37500, "WHITE");

	CreateSE("SE01L","se戦闘_攻撃_殴打連撃02_L");
	MusicStart("SE01L",0,1000,0,1000,null,true);

	Fade("絵背景400", 0, 1000, null, false);
	Shake("絵背景400", 50000, 2, 3, 0, 0, 1000, null, false);
	Zoom("絵背景400", 500, 4000, 4000, Dxl3, false);
	FadeDelete("絵背景400", 500, false);


	Rotate("絵st150", 500, @0, @0, @+2500, DxlAuto,false);
	Zoom("絵st150", 200, 1400, 1400, Dxl1, false);
	Fade("絵st150", 50, 1000, Dxl1, true);
	Zoom("絵st140", 25, 500, 500, null, false);
	Fade("絵st150", 200, 0, null, false);

	Rotate("絵st160", 500, @0, @0, @+3500, Dxl2,false);
	Zoom("絵st160", 200, 1100, 1100, Dxl1, false);
	Fade("絵st160", 50, 1000, Dxl1, true);
	Zoom("絵st150", 25, 500, 500, null, false);
	Fade("絵st160", 200, 0, null, false);

	Rotate("絵st170", 500, @0, @0, @+3600, Dxl3,false);
	Zoom("絵st170", 200, 1300, 1300, Dxl1, false);
	Fade("絵st170", 50, 1000, Dxl1, true);
	Zoom("絵st160", 25, 500, 500, null, false);
	Fade("絵st170", 200, 0, null, false);

	Rotate("絵st130", 500, @0, @0, @+3000, Dxl1,false);
	Zoom("絵st130", 200, 1400, 1400, Dxl1, false);
	Fade("絵st130", 50, 1000, Dxl1, true);
	Zoom("絵st170", 25, 500, 500, null, false);
	Fade("絵st130", 200, 0, null, false);

	Rotate("絵st140", 500, @0, @0, @+7900, DxlAuto,false);
	Zoom("絵st140", 200, 1700, 1700, Dxl1, false);
	Fade("絵st140", 50, 1000, Dxl1, true);
	Zoom("絵st130", 25, 500, 500, null, false);
	Fade("絵st140", 200, 0, null, false);

	Rotate("絵st150", 500, @0, @0, @+1800, DxlAuto,false);
	Zoom("絵st150", 200, 1600, 1600, Dxl1, false);
	Fade("絵st150", 50, 750, Dxl1, true);
	Zoom("絵st140", 25, 500, 500, null, false);
	Fade("絵st150", 200, 0, null, false);

	SetVolume("SE01L", 1000, 0, null);

	Fade("絵色500", 150, 1000, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE10",2000,1000,0,1000,null,true);



	CP_IHPChange(500,4,null,false);
	MyLife_Count(1500,380);


	CP_RollBarMove("@絵背景50", 0, 0, null, true);


	CP_AziChange(2000,-200,Dxl2,false);
	CP_PowerChange(2000,400,null,false);
	CP_SpeedChange(2000,332,Dxl2,false);
	CP_HighChange(2000,422,Dxl2,false);
	CP_RollBarMove("@絵背景50", 500, 10, Dxl2, false);

	CloudZoomSet(1000);
	CloudZoomStart(1000,500,500,600,600);
	CloudZoomVertex(500,@0,@0,null,false);

	Shake("@絵背景50", 1000, 2, 1, 0, 0, 1000, Dxl1, false);
	Move("@絵背景50", 2000, @200, @-150, Dxl1, false);
	Shake("@CP_Frame", 500, 15, 20, 0, 0, 800, null, false);


	FadeDelete("絵色500", 500, false);
	FadeDelete("上背景", 500, true);

	Fade("絵色100", 300, 0, null, true);
	CP_RollBarMove("@絵背景50", 1000, 0, AxlDxl, false);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, true);
	Fade("絵色100", 0, 1000, null, true);
	FadeDelete("絵色100", 300, false);

	FrameShake();

	SoundPlay("@mbgm12",0,1000,true);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 2000, 600, null);

	SetFwC("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0010a02">
「ぐぅ……っ！」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0020b40">
《背面に被撃！
　貫通された――おのれェ!!》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0030b40">
《修復を開始する！
　御堂、この程度で沮喪するでない！》


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0040a02">
「あ、当たり……前だぁっ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　背中に<RUBY text="・・・・・">穴が開いた</RUBY>苦痛を噛み殺す。
　泣いている暇なんかない。喚いている暇もない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFrequency("SE10", 2000, 1000, null);
	SetVolume("SE10", 1000, 700, null);

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, Axl2, "cg/data/slide_02_01_0.png", true);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	Request("絵背景50", Smoothing);

	Delete("絵背景150");
	CP_AziChange(0,-200,null,true);
	CP_RollBarMove("@絵背景50", 0, 0, null, true);
	CockPit_LockSet(@0,@0);

	Move("絵背景50", 5000, @0, @200, Dxl2, false);
	CP_AltChange(5000,10,Dxl2,false);
	CP_HighChange(5000,720,Dxl2,false);
	CP_SpeedChange(5000,435,AxlDxl,false);
	CP_PowerChange(2500,380,null,false);

	DrawDelete("黒幕１", 300, 100, "slide_02_01_1", true);
	SetVolume("SE10", 1000, 300, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
　視野を確保して、崩れかけた騎航体勢を立て直す。
　損傷の回復に<RUBY text="カロリー">熱量</RUBY>を取られている分、<RUBY text="あしこし">翼回り</RUBY>が重い
――それでも力任せに<RUBY text="ピッチ">兜角</RUBY>を持ち上げて高度を上げる。

　墜落したらそれまでだ。
　たとえ即死を免れても、勝敗はそこで着く。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw童心_哄笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/028vs0050a09">
《はっはァ！
　如何なものかな、貫流の<RUBY text="つき">刺突</RUBY>は》


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/028vs0060a09">
《なかなかに食い応えがあろう？》


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0070a02">
《抜かしてろ！》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　毒づく。
　差し当たって、他に返せるものがない。

　貫流。管。槍……。
　今更ながらに、思い出していた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0080a02">
「管槍だ。
　畜生め……」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0090b40">
《御堂、それは？》


{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0100a02">
「普通、槍ってやつは左手を<RUBY text="・">口</RUBY>にして右手で
突くだろ」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0110b40">
《うむ》


{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0120a02">
「左手で持つ所に管を通して、口の<RUBY text="・・・">すべり</RUBY>を
良くしたのが管槍だ。
　普通の槍よりも速く突けるし、修練すれば
回転を利かせて捻り込めるようにもなる」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0130b40">
《成程……。
　しかしそれにしても先のあれは、<RUBY text="・・・・">回り過ぎ</RUBY>
ではないか？》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 17500, "WHITE");
	CreateTextureEX("絵背景100", 17000, Center, Middle, "cg/ef/ef027_貫流刺突.jpg");

	Fade("絵色100", 500, 300, null, false);
	Fade("絵背景100", 500, 1000, null, true);


	SetFwR("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0140a02">
「……尾張貫流の管槍はもう一工夫あるんだ。
　螻蛄首がやたらと<RUBY text="・・・">しなる</RUBY>」


{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0150a02">
「鞭かなんかみたいにな。
　そのお陰で、手元の捻りが尖端へ伝わる頃
にはあんな大回転になってるって寸法」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0160b40">
《むゥ……》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　――管槍の尾張貫流。
　いつだったか、一媛婆さんが話して聞かせてくれた。
編み物をしながら……なんで編み物しながら槍の話に
なったのかはさっぱりだけど。

　槍の怖さを知りたいなら貫流と立ち合え。
　槍は最初の一突を<RUBY text="かわ">躱</RUBY>せばいいだけ――なんて<RUBY text="・・">寝言</RUBY>
は一瞬で吹っ飛ばしてくれる、とかなんとか。

　確かに婆さんの言う通り。
　躱せばいい、それは間違いない――が。どうやって
あれを躱す？

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆反転
//◆対峙
	FadeDelete("絵背景100", 500, false);
	FadeDelete("絵色100", 500, true);

	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3d同田貫_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 150, 150, null, true);

	CP_AziChange(0,-200,null,true);
	CP_RollBarMove("@絵背景50", 0, 0, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵狸",0,@0,@-200,null,true);

	CP_AltChange(2000,10,Dxl2,false);
//	CP_HighChange(2000,1100,Dxl2,false);
//	BGMoveAuto("@絵背景50",1);


	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


	OnSE("se特殊_コックピット_起動音02",1000);
	CP_LockOnMove("@絵狸",800,@0,@100,Dxl2,false);

	Fade("@絵狸", 500, 1000, null, true);
	CP_LockOnFade(100,"on",false);
	CP_EnemyFade(300,10,420,300);

	SetVolume("SE10", 1000, 300, null);

	SetFwR("cg/fw/fw童心_悪笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/028vs0170a09">
《さぁて。先程、有難い忠告を頂いたばかり
であるし……。
　今度は一息に仕留めさせて貰うとしようか
のう！》


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0180a02">
《舐めんな！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆接近
//◆貫流刺突
	CreateTextureEX("絵背景100", 17000, Center, Middle, "cg/ef/ef027_貫流刺突.jpg");
	CreateTextureEX("絵背景200", 17000, Center, Middle, "cg/ef/ef027_貫流刺突.jpg");
	CreateTextureEX("絵背景300", 17000, Center, Middle, "cg/ef/ef027_貫流刺突.jpg");
	Request("絵背景100", Smoothing);
	Request("絵背景200", Smoothing);
	Zoom("絵背景100", 0, 4000, 4000, null, true);
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	SetBlur("絵背景300", true, 3, 300, 200, false);

	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateSE("SE02","se戦闘_攻撃_殴打連撃02_L");
	CreateSE("SE03","se戦闘_動作_空突進03");
	CreateSE("SE04","se戦闘_攻撃_殴打連撃02_L");

//おがみ：動作
	CP_SpeedChange(1000,452,Dxl2,false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵背景50", 500, 1100, 1100, Axl2, false);
	Zoom("@絵狸", 500, 600, 600, Axl2, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Rotate("絵背景100", 1500, @0, @0, 3600, Dxl2,false);
	Fade("絵背景100", 0, 1000, null, true);

	DrawTransition("絵色100", 100, 1000, 0, 100, null, "cg/data/spiral_01_00_0.png", true);

	Move("絵背景100", 0, 0, 0, null, true);
	Wait(150);
	Move("絵背景100", 0, -312, -100, null, true);
	Wait(150);
	Move("絵背景100", 0, -350, -150, null, true);
	Wait(150);
	Move("絵背景100", 0, -510, -120, null, true);

	Wait(150);
	MusicStart("SE04",200,1000,0,1000,null,false);
	SetVolume("SE02", 1000, 0, null);


	Fade("絵背景300", 200, 1000, null, false);
	Zoom("絵背景300", 500, 1000, 1000, Dxl2, true);

	SetVolume("SE04", 1000, 0, null);
	Fade("絵背景200", 0, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景300");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　大きな螺旋を描いて、牙のような穂先が飛んで来る。
　――この軌道を見切ろうったって無理だ。

　けど、<RUBY text="・・・">しなる</RUBY>根元を打ち払えば――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆太刀一撃。ガキーン。
//◆弾かれました。
//◆正宗被弾

	CreateColorSP("上背景", 17500, "BLACK");
	SL_centerin2(17500,@0, @0,1000);
	CreateSE("SE01","se戦闘_動作_空突進01");

	CP_LockOnDelete();
	Delete("絵狸");
	Delete("絵背景200");

	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_centerinfade2(10);
	Wait(500);


	CreateColorEXmul("絵色100", 18000, "RED");


	CreateSE("SE01","se戦闘_破壊_爆発07");
	CreateSE("SE05","se戦闘_攻撃_鎧_剣戟01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE05",2000,1000,0,1000,null,false);


	FadeF4("絵背景50", 0, 1000, 10000, 0, 0, Dxl3, false);
	Fade("絵色100", 0, 1000, null, true);

	Shake("@CP_Frame", 1000, 15, 20, 0, 0, 800, null, false);
	CP_SpeedChange(800,380,AxlDxl,false);
	CP_RollBarMove("@絵背景50", 150, @10, AxlDxl, false);

	OnSE("se戦闘_破壊_鎧03",1000);

	Shake("@絵背景50", 1000, 2, 1, 0, 0, 1000, Dxl1, false);
	Move("@絵背景50", 2000, @-200, @-150, Dxl1, false);
	CP_RollBarMove("@絵背景50", 300, @-10, Dxl2, false);

	CP_AziChange(2000,-220,Dxl2,false);
	CP_HighChange(2000,612,Dxl2,false);
	CP_SpeedChange(2000,332,Dxl2,false);

	DrawDelete("上背景", 200, 100, "zoom_01_00_1", true);

	Fade("絵色100", 300, 0, null, true);
	CP_RollBarMove("@絵背景50", 1000, 0, AxlDxl, false);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, true);
	Fade("絵色100", 0, 1000, null, true);
	FadeDelete("絵色100", 300, true);

	FrameShake();

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 2000, 600, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　……どうにもならねえのかよ!!

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	FadeF4("絵背景50", 0, 1000, 10000, 0, 0, null, false);
	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0190b40">
《右肩に被撃……！》


{	FwR("cg/fw/fw一条_苦痛.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0200a02">
「ッ……程度は!?」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0210b40">
《案ずるな！
　肉が少し吹っ飛んで関節が砕けただけだ。
大事は無い！》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　良し。
　<RUBY text="・・・・">ぶらぶら</RUBY>して邪魔で動かない右腕のことは忘れる。

　目が眩みそうな激痛も鬱陶しいので無視する。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0220a02">
「、……っ……{WaitKey(2300);}<BR>　問題無さそうだ」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0230b40">
《うむ。
　問題は無いが、あと一撃食らえば墜ちる》


{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0240a02">
「対抗手段がねえな……」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0250b40">
《情けないことを言うでない。
　この正宗の仕手ともあろう者が》


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0260a02">
「弱音吐いてんじゃねえ。
　考えてるんだ」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 3000, 1, null);

	CreateColorEX("絵色100", 17500, "BLACK");
	Fade("絵色100", 500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　……一媛婆さんは、なんて言ってたっけか。
　尾張徳川家<RUBY text="おとめ">御留</RUBY>流儀。槍術の至芸と目されたがため
二百年に渡って一藩内に秘め置かれた貫流の槍先を、
太刀によって封じるには。

　確か……

『対抗策？
　そうねえ』

『避けて避けられるもんじゃないし。
　受けたって弾かれるだけだし』

『無いな。
　無理無理』

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw一条_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0270a02">
（無いのかよ！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　記憶の中の無責任な言葉に、記憶の中の自分の声を
なぞって返す。
　記憶の中の無責任な婆さんは、小馬鹿にする風で肩
をすくめながら言ってきた。

『刀じゃどうにもなんないって。
　それでもどうしても勝ちたいなら、拳銃か
なんか持ってくれば？』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色100", 1500, "WHITE");

//◆転回
//おがみ：定義
	CreateTextureEX("絵背景150", 100, 0, 0, "cg/bg/resize/bg002_空a_03l.jpg");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 6000, 1000, null, true);

	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3d同田貫_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 200, 200, null, true);

	CreateSE("SEロックオン","se特殊_コックピット_起動音02");

	CP_AltChange(2000,10,AxlDxl,false);
	CP_HighChange(2000,1050,AxlDxl,false);
	CP_AziChange(2000,-370,AxlDxl,false);
	CP_SpeedChange(2000,432,Dxl2,false);

	CloudZoomVertex(0,1000,@0,null,false);

//おがみ：動作
	OnSE("se戦闘_動作_空突進03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);
	FadeDelete("絵色100", 500, false);

	CP_RollBarMove("@絵背景50", 500, -5, AxlDxl, false);
	Move("@絵背景150", 1500, @-5048, @0, AxlDxl, false);
	Move("@絵背景50", 200, @-200, @0, Axl3, false);
	Fade("@絵背景150", 200, 1000, null, true);

	Move("@絵背景50", 0, -312, -288, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵狸",0,@200,@0,null,true);

	Wait(600);
	CP_RollBarMove("@絵背景50", 600, 0, Dxl2, false);
	Wait(200);
	FadeDelete("絵背景150", 300, false);
	CloudZoomVertex(1000,0,@0,AxlDxl,false);
	Move("@絵背景50", 600, -512, -288, Dxl2, false);

//おがみ：ロックオン
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
	CP_LockOnMove("@絵狸",1600,@-200,@0,Dxl2,false);
	Fade("@絵狸", 500, 1000, null, true);
	CP_LockOnFade(100,"off",false);
//	CP_EnemyFade(300,10,420,300);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);



	SetFwR("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0280a02">
「……けっ。
　それしか<RUBY text="ね">無</RUBY>ぇか！」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0290b40">
《ほゥ。
　やるのか、御堂？》


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0300a02">
「やっちまえ。
　あの糞坊主をこれ以上図に乗らせるよりは
何だってマシだ！」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0310b40">
《心得たり》

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


//◆進撃

	SetFwR("cg/fw/fw童心_宥め.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/028vs0320a09">
《まだ墜ちぬか。
　粘るのう。粘るのう》


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/028vs0330a09">
《その粘りが勝機を呼べば良いがのう？》


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0340a02">
「――――」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/028vs0350a09">
《くふ、ふふ……
　忘れてはおらぬであろうが、ここは六波羅
が主城、普陀楽山塞の上空。時間を掛ければ、
邪魔者が大挙して闖入して来ぬとも――》


{	FwR("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/028vs0360a09">
《……》


{	FwR("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/028vs0370a09">
《はて。そういえば……解せぬな。
　何故いまだ、一騎たりと現れんのか……？》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　正面の空飛ぶ豚が何やらごちゃごちゃ言っているの
は聞き流しておく。そんなのはどうだっていい。
　奥歯から前歯、歯という歯を全力で噛み締める。

　一度、息を吐いて。
　<RUBY text="はら">肚</RUBY>を据える。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0380a02">
「正宗」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0390b40">
《応》


{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0400a02">
「喰え」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0410b40">
《拝領》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ぞぶぞぶぞぶ。不気味な捕食音
	CreateSE("SE01","se戦闘_正宗_鉄砲準備02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CP_PowerChange(2000,255,null,false);

	Wait(1000);
	SetFwR("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0420a02">
「ぐギ……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　体のどこかで鉄の肌と鉄の肉、生の肌と生の肉が、
べきべきべりべりと<RUBY text="は">剥</RUBY>がされていく。
　それは<RUBY text="こ">捏</RUBY>ね合わされ。球形に固められ。

　弾丸と化す。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw童心_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/028vs0430a09">
「――ぬぅ？」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆童心をロックオン
	CreateSE("SEロックオン","se特殊_コックピット_起動音02");
	CreateSE("SE01","se戦闘_動作_空突進02");
	CP_SpeedChange(2000,482,Dxl2,false);
	CP_HighChange(2000,650,AxlDxl,false);

//おがみ：動作
/*
	CP_RollBarMove("@絵背景50", 500, 0, AxlDxl, false);
	Move("@絵背景150", 1500, @-5048, @0, AxlDxl, false);
	Move("@絵背景50", 200, @-200, @0, Axl3, false);
	Fade("@絵背景150", 200, 1000, null, true);

	Move("@絵背景50", 0, -312, -288, null, true);

*/
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
	CockPit_LockSet(@0,@0);
//	CP_LockOnMove("@絵狸",0,@200,@0,null,true);
	CP_LockOnFade(100,"on",false);

	Wait(200);

	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 300, 100, "cg/ef/ef034_精神汚染.jpg", false);
	Zoom("@絵背景50", 400, 1200, 1200, Dxl2, false);
	Zoom("@絵狸", 250, 500, 500, Dxl2, true);


	SetFwR("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0440a02">
「……正宗、七機巧が<RUBY text="ひとつ">一</RUBY>。
　<RUBY text="ひがてつほう">飛蛾鉄炮</RUBY>・<RUBY text="こえんしゃく">弧炎錫</RUBY>」


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0450a02">
「くれてやる――」


//◆読み「だぁい・あー！」
{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0460b40">
《ＤＡＡＩ・ＡＡＡＲＲＲＲＲＲＲ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆射出
//◆〝鉄炮〟弾
	CreateTextureEX("絵背景150", 17000, Center, Middle, "cg/ev/ev916_正宗飛蛾鉄炮・弧炎錫.jpg");
	CreateTextureEX("絵背景200", 17000, Center, Middle, "cg/ev/ev916_正宗飛蛾鉄炮・弧炎錫.jpg");
	Zoom("絵背景200", 0, 1500, 1500, null, true);
	SetBlur("絵背景200", true, 3, 300, 100, false);
	CreateSE("SE01","se戦闘_正宗_鉄砲発射01");
	CreateSE("SE02","se戦闘_破壊_爆発03");


	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	EffectZoomadd(18000, 1000, 100, "cg/ev/ev916_正宗飛蛾鉄炮・弧炎錫.jpg", false);
	Fade("絵背景200", 100, 1000, null, false);
	Zoom("絵背景200", 700, 1000, 1000, Dxl3, true);

	Fade("絵背景150", 0, 1000, null, true);
	Zoom("絵背景200", 300, 2000, 2000, Axl3, false);
	FadeDelete("絵背景200", 300, true);
	Delete("絵背景200");
	Delete("絵狸");
	CP_LockOnDelete();

	SetFwR("cg/fw/fw童心_悪笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/028vs0470a09">
「……そう来るかぃ!?
　だが」


{	FwR("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/028vs0480a09">
「むん!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆槍撃
//◆弾丸を槍が捕捉
//◆爆発。ぞがーん。

//おがみ：素材定義
	CreateTextureEX("絵背景100", 17000, Center, Middle, "cg/ef/ef027_貫流刺突.jpg");
	CreateTextureEX("絵背景200", 17000, Center, Middle, "cg/ef/ef027_貫流刺突.jpg");
	CreateTextureEX("絵背景300", 17000, Center, Middle, "cg/ef/ef027_貫流刺突.jpg");
	CreateTextureEX("絵背景400", 17000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureEX("絵背景500", 17000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateColorEXadd("絵色100", 17500, "WHITE");
	Request("絵背景100", Smoothing);
	Request("絵背景200", Smoothing);
	Request("絵背景400", Smoothing);
	Request("絵背景500", Smoothing);
	Zoom("絵背景100", 0, 4000, 4000, null, true);
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	Zoom("絵背景400", 0, 2000, 2000, null, true);
	Zoom("絵背景500", 0, 1100, 1100, null, true);
	SetBlur("絵背景300", true, 3, 300, 200, false);
	SetBlur("絵背景500", true, 3, 500, 150, false);

	CreateSE("SE02","se戦闘_攻撃_殴打連撃02_L");
	CreateSE("SE03","se戦闘_動作_空突進03");
	CreateSE("SE04","se戦闘_攻撃_殴打連撃02_L");
	CreateSE("SE05","se戦闘_破壊_大爆発01");

//おがみ：槍動作
	Zoom("絵背景50", 500, 1100, 1100, Axl2, false);
	Zoom("@絵狸", 500, 600, 600, Axl2, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Rotate("絵背景100", 1500, @0, @0, 3600, Dxl2,false);

	Fade("絵背景100", 0, 1000, null, true);
	DrawTransition("絵背景100", 100, 0, 1000, 100, null, "cg/data/spiral_01_00_0.png", true);

	Move("絵背景100", 0, 0, 0, null, true);
	Wait(150);
	Move("絵背景100", 0, -312, -100, null, true);
	Wait(150);
	Move("絵背景100", 0, -350, -150, null, true);
	Wait(150);
	Move("絵背景100", 0, -510, -120, null, true);

	Wait(150);
	MusicStart("SE04",200,1000,0,1000,null,false);
	SetVolume("SE02", 1000, 0, null);


	Fade("絵背景300", 200, 1000, null, false);
	Zoom("絵背景300", 500, 1000, 1000, Dxl2, true);

	SetVolume("SE04", 1000, 0, null);
	Fade("絵背景200", 0, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景150");
	Delete("絵背景300");

//おがみ：爆発動作
	MusicStart("SE05",200,1000,0,1000,null,false);

	Fade("絵背景400", 0, 1000, null, true);
	DrawTransition("絵背景400", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Fade("絵色100", 50, 1000, null, true);
	Move("絵背景400", 0, 0, 0, null, true);
	Fade("絵色100", 150, 0, null, false);
	Wait(50);
	Move("絵背景400", 0, -312, -100, null, true);
	Wait(50);
	Move("絵背景400", 0, -350, -150, null, true);
	Wait(50);
	Move("絵背景400", 0, -510, -120, null, true);

	Fade("絵色100", 50, 1000, null, true);
	Delete("絵背景200");
	Delete("絵背景400");
	Shake("絵背景500", 500000, 0, 1, 0, 0, 1000, null, false);
	Fade("絵背景500", 0, 1000, null, true);
	Zoom("絵背景500", 5000, 1200, 1200, Dxl2, false);
	FadeDelete("絵色100", 500, true);

	Wait(200);
	EnLife_Count(1000,685);
	EnTr_Count(1000,412);

	SetFwR("cg/fw/fw童心_怒気.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/028vs0490a09">
「ぬはァッッ!?」


{	FwR("cg/fw/fw一条_苦痛.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0500a02">
「ちぃ……！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CP_IHPChange(1,3,null,false);
	MyLife_Count(500,213);


	OnSE("se戦闘_動作_空突進01",1000);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	Zoom("絵背景50", 0, 2000, 2000, null, true);
	Zoom("絵背景50", 1000, 1000, 1000, Dxl2, false);

	FadeDelete("絵背景500", 500, true);

//◆離脱

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0510b40">
《おのれ、小器用な奴！
　弾を槍で打ち落としよったか！》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　正宗が口惜しげに唸る。

〝鉄炮〟は避けようが撃ち落とそうが、爆裂四散して
無数の鉄針を飛ばす武器だ。防ぎ切ることはできない。
　広範囲に散る<RUBY text="やじり">鏃</RUBY>は敵の分厚い胴体甲鉄は貫けずとも、
薄い関節部には突き刺さったはず……。

　しかしそれも、長槍の穂先に掛かって遠間で爆裂さ
せられたのでは、果たして何本が届いたか。
　下手をすると単に驚かせただけで、実質的な被害は
ほぼ皆無かもしれない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0520a02">
「<RUBY text="・・・・">自爆兵器</RUBY>だってのに。
　こっちの<RUBY text="ダメージ">損害</RUBY>の方がでかいんじゃねえか」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0530b40">
《それは気にするな》


{	FwR("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0540a02">
「わかってる」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　正宗の甲鉄の隙間に潜り込み、肉皮をえぐっている
何本かの鉄針のことは忘れておく。
　気にしても仕方がない。傷なんてもの、気にしなけ
れば無いも同じだ。

　多分。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆転回

//おがみ：転回動作
	OnSE("se戦闘_動作_空突進03",1000);

	CreateTextureEX("絵背景100", 500, 0, 0, "cg/bg/resize/bg002_空a_03l.jpg");
	Zoom("絵背景100", 0, 1000, 28000, null, true);
	Move("絵背景100", 0, @0, @-7000, null, true);
//	CreateTextureEX("絵背景200", 500, 0, 0, "cg/bg/resize/bg002_空a_03l.jpg");
//	Zoom("絵背景200", 0, 1000, 28000, null, true);
//	Move("絵背景200", 0, @0, @-7000, null, true);
	CreateSurfaceEX("絵Suf",1000,2000,"絵背景100");

//	CP_HighChange(1000,150,null,false);
	CP_HighChange(2500,657,null,false);
	CP_SpeedChange(1000,540,null,false);

	Fade("絵Suf", 500, 1000, null, false);
	Fade("絵背景100", 500, 1000, null, false);
	Move("絵背景100", 2500, @0, 0, AxlDxl, false);
	Move("@絵背景50", 500, @0, @200, Axl2, false);


	Wait(1000);
	CP_AziChange(0,-189,null,true);
	CP_RollBarMove2(0,180,null,true);
	CP_SpeedChange(2000,350,null,false);

//	CP_AziChange(1200,189,AxlDxl,false);
	Rotate("絵Suf", 1000, @0, @0, @180, AxlDxl,false);
	CP_RollBarMove("@絵背景50",1000,0,AxlDxl,false);

	Wait(1000);

	Move("@絵背景50", 0, -512, -588, null, true);
	Fade("絵Suf", 500, 0, null, false);
	Fade("絵背景100", 500, 0, null, false);
	Move("@絵背景50", 500, -512, -258, Dxl2, true);
	Move("@絵背景50", 500, -512, -288, AxlDxl, true);
	Delete("絵背景100");

	FadeF4("絵背景50", 0, 1000, 10000, 0, 0, null, false);

	Wait(500);
	Delete("絵Suf");
	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0550b40">
《もう一発<RUBY text="・・・">かます</RUBY>か、御堂？》


{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0560a02">
「……いや。
　ちまちまやってても、埒が明かねえ」


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0570a02">
「右腕全部潰せ！」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0580b40">
《……良いのか？》


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0590a02">
「どうせ動かないならいらねーだろうが！」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0600b40">
《道理！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆進撃
	OnSE("se戦闘_動作_空突進01",1000);

	SetFrequency("SE10", 1000, 1100, null);
	Move("@絵背景50", 300, @-400, @0, Axl2, false);

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, Axl2, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	Request("絵背景50", Smoothing);
	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3d同田貫_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 300, 300, null, true);

	CP_AziChange(0,-200,null,true);
	CP_RollBarMove("@絵背景50", 0, 0, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵狸",0,@0,@200,null,true);


	Move("@絵背景50", 2000, @0, @-100, Dxl2, false);
	CP_AltChange(2000,10,Dxl2,false);
	CP_HighChange(2000,812,Dxl2,false);
	CP_SpeedChange(2000,432,Dxl2,false);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);


	OnSE("se特殊_コックピット_起動音02",1000);
	CP_LockOnMove("@絵狸",800,@0,@-150,Dxl2,false);

	Fade("@絵狸", 500, 1000, null, true);
	CP_LockOnFade(100,"on",false);
	CP_EnemyFade(300,10,420,300);

	SetFwR("cg/fw/fw童心_宥め.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/028vs0610a09">
《ふほっ。
　おぬしも意外に芸達者よの！》


//【童心】
<voice name="童心" class="童心" src="voice/mb02/028vs0620a09">
《今のは少し<RUBY text="・・・・">ひやっと</RUBY>したわぃ。
　いや、この戦慄こそが勝負の醍醐味という
ものであろうが！》


{	FwR("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/028vs0630a09">
《しかし、そんな<RUBY text="・・・・">のろのろ</RUBY>弾では――》


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0640a02">
《喜べ》


{	FwR("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/028vs0650a09">
《む？》


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0660a02">
《<RUBY text="・・・">醍醐味</RUBY>。
　大盤振る舞いだ》


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0670a02">
《残さず綺麗に、全部食え!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ぞぶぞぶぞぶ。食われ音

	CreateColorEX("絵色100", 17500, "RED");
	CreateSE("SE01","se戦闘_正宗_鉄砲準備02");

	CP_PowerChange(800,200,Dxl2,false);
	Fade("絵色100", 0, 1000, null, true);
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("絵色100", 500, 0, null, true);

	SetFwR("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0301]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0680a02">
「ギ――」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　骨は潰して硝石に。
　肉は挽いて焦がして木炭に。
　血は<RUBY text="カロリー">熱量</RUBY>。一滴の火炎。<RUBY text="プライミング">起爆剤</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ぞぶぞぶ
//◆正宗の右腕が消える
	CreateSE("SE02","se戦闘_正宗_鉄砲準備01");
	Fade("絵色100", 0, 1000, null, true);
	MusicStart("SE02",0,1000,0,1000,null,false);

	Fade("絵色100", 500, 0, null, true);

	SetFwR("cg/fw/fw一条_憎悪b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/028vs0690a02">
「イィィィィァァァァァアアアアアアア!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　甲鉄の針を込め、
　甲鉄の膜で覆う。

　鉄炮・弧炎錫。
　あたしの、<RUBY text="いかり">瞋恚</RUBY>だ。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆射出。連続
//◆鉄炮、数発
	CreateTextureEX("絵背景150", 17000, Center, Middle, "cg/ev/ev916_正宗飛蛾鉄炮・弧炎錫.jpg");
	CreateTextureEX("絵背景200", 17000, Center, Middle, "cg/ev/ev916_正宗飛蛾鉄炮・弧炎錫.jpg");
	SetBlur("絵背景200", true, 2, 300, 70, false);
	CreateSE("SE01","se戦闘_正宗_鉄砲発射01");
	CreateSE("SE02","se戦闘_正宗_鉄砲発射01");
	CreateSE("SE03","se戦闘_正宗_鉄砲発射01");
	CreateSE("SE04","se戦闘_正宗_鉄砲発射01");
	CreateSE("SE05","se戦闘_破壊_爆発07");


	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵背景200", 100, 1000, null, false);
	Zoom("絵背景200", 2000, 1300, 1300, Dxl2, false);

	MusicStart("SE02",0,1000,0,1000,null,false);
	EffectZoomadd(18000, 300, 100, "cg/ev/ev916_正宗飛蛾鉄炮・弧炎錫.jpg", true);

	MusicStart("SE03",0,1000,0,1000,null,false);
	EffectZoomadd(18000, 100, 100, "cg/ev/ev916_正宗飛蛾鉄炮・弧炎錫.jpg", true);
	MusicStart("SE04",0,1000,0,1000,null,false);
	EffectZoomadd(18000, 50, 50, "cg/ev/ev916_正宗飛蛾鉄炮・弧炎錫.jpg", true);
	MusicStart("SE05",0,1000,0,1000,null,false);
	EffectZoomadd(18000, 1000, 100, "cg/ev/ev916_正宗飛蛾鉄炮・弧炎錫.jpg", true);

	Fade("絵背景150", 0, 1000, null, true);
	FadeDelete("絵背景200", 500, true);

/*
	Zoom("絵背景200", 0, 1500, 1500, null, true);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵背景200", 100, 1000, null, false);
	Zoom("絵背景200", 200, 1000, 1000, Dxl2, true);

	Zoom("絵背景200", 0, 1500, 1500, null, true);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Fade("絵背景200", 100, 1000, null, false);
	Zoom("絵背景200", 700, 1000, 1000, Dxl2, true);

	Fade("絵背景150", 0, 1000, null, true);
	Delete("絵背景200");
	Delete("絵狸");
	CP_LockOnDelete();

*/

	SetFwR("cg/fw/fw童心_怒気.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/028vs0700a09">
《のわっ――――!?》


//◆読み「だい・あらーー！」
{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/028vs0710b40">
《ＤＡＡＩ・ＡＲＡＡＡＡＡＡＡＡＨＨＨ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆ぼかーんぼかーん。
//おがみ：素材定義
	CreateTextureEX("絵背景400", 17000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureEX("絵背景500", 17000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateColorEXadd("絵色100", 17500, "WHITE");
	Request("絵背景400", Smoothing);
	Request("絵背景500", Smoothing);
	Zoom("絵背景400", 0, 2000, 2000, null, true);
	Zoom("絵背景500", 0, 1200, 1200, null, true);
	SetBlur("絵背景500", true, 3, 200, 70, false);

	CreateSE("SE05","se戦闘_破壊_大爆発01");


//おがみ：爆発動作
	MusicStart("SE05",200,1000,0,1000,null,false);

	Fade("絵色100", 0, 1000, null, true);
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

	//CP_AllDelete();

	Cockpit_AllFade0();


	Fade("絵背景500", 0, 1000, null, true);
	Zoom("絵背景500", 500, 1000, 1000, Dxl2, false);
	EffectZoomadd(18000, 6000, 4000, "cg/ef/ef026_汎用爆撃.jpg", false);
	FadeDelete("絵色100", 2000, true);

	Wait(500);
	SetVolume("SE*", 2000, 0, null);
	Zoom("絵背景500", 2000, 10000, 10000, Axl3, false);
	ClearFadeAll(2000, true);

	//CP_AllDelete();
	Cockpit_AllFade0();
	CP_LockOnDelete();

	Wait(2000);


}

..//ジャンプ指定
//次ファイル　"mb02_029vs.nss"



function Lastfire()
{

	CreateColor("焚き火光", 15000, 0, 0, 1024, 576, "#c46c3e");
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

function EffextDamage()
{

	CreateColor("functionダメージ", 15000, 0, 0, 1024, 576, "RED");
	SetAlias("functionダメージ","functionダメージ");
	Request("functionダメージ", MulRender);
	Fade("functionダメージ", 200, 1000, null, true);




}