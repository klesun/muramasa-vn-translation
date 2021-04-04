//<continuation number="1200">


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

scene mb02_030vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb02_030vs.nss","Lastfire",true);
	Conquest("nss/mb02_030vs.nss","EffextDamage",true);
	

//コックピット用Ｓｅｔ
	//CP_AllSet("正宗");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#ev158_一導の最期=true;
	#ev921_同田貫防御形態=true;
	#bg201_旋回演出背景市街地_03=true;
	#ev919_正宗隠剣六本骨爪_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mb02_031vs.nss";

}

scene mb02_030vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb02_029vs.nss"

	if($GameDebugSelect==1){CP_AllSet("正宗");}

//◆正宗ＶＳ童心正国
//◆ぼっかんぼっかんぼっかん。爆発連鎖
//◆が、収まってゆく
	PrintBG("上背景", 30000);
//	CreateColorSP("絵暗転", 18000, "#000000");

	CreateTextureSP("絵背景50", 100, -512, -288, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateTextureSP("絵背景150", 17010, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureEX("絵背景200", 17000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");

//おがみ：コックピット動作定義========================
	Cockpit_AllFade2(300,780,0);
	MyTr_Count(0,220);
	MyLife_Count(500,100);
	CP_IHPChange(500,2,null,false);
	CP_LockOnDelete();

	CP_EnemyFade0();

	CP_SpeedChange(500,500,null,false);
	CP_HighChange(500,734,null,true);
	CP_AltChange(500,40,null,false);
	CP_AziChange(0,35,null,false);

	CP_AltChangeA();
	CP_RollBarMoveA();
	CP_PowerChange(0,100,null,false);

	BGMoveAuto("@絵背景50",1);

//おがみ：コックピット定義========================

	CreateColorEXadd("絵色100", 18000, "WHITE");

	CreateSE("SE01","se戦闘_破壊_爆発07");
	CreateSE("SE10","se戦闘_動作_空走行02_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE10",2000,1000,0,1000,null,true);

	CloudZoomSet(1600);
	CloudZoomStart(1000,500,500,600,600);
	CloudZoomVertex(500,@0,@0,null,false);


//おがみ：コックピット動作========================
	Zoom("絵背景150", 5000, 1100, 1100, Dxl1, false);
	FadeF4("絵背景150", 500, 800, 5000, 0, 0, Dxl3, false);
	Fade("絵色100", 0, 1000, null, true);

	Shake("@CP_Frame", 500, 15, 20, 0, 0, 800, null, false);
	CP_SpeedChange(800,380,AxlDxl,false);

	Fade("絵背景200", 0, 1000, null, true);
	EffectZoomadd(18000, 5000, 4000, "cg/ef/ef026_汎用爆撃.jpg", false);


	FadeDelete("上背景", 500, true);

	Fade("絵色100", 300, 0, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, true);
	Fade("絵色100", 0, 1000, null, true);
	FadeDelete("絵色100", 1000, true);


	FrameShake();


	SetVolume("SE10", 2000, 1000, null);
	SetFrequency("SE10", 2000, 600, null);

	SetFwL("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0010a02">
「どうだぁ――――!?」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0020b40">
《クハーハハハハハハハァ!!
　その一撃が正義の怒り！　その一撃が弱者
の嘆きと知るがいいィ！》


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0030b40">
《肥溜めの底で腐った糞尿より汚らしい血を
撒き散らして死ねェ!!》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
〝鉄炮〟の連鎖爆裂は見るだに凄まじいことになって
いた。
　ざまぁ、みろ。

　旋回しながら爆炎が晴れていく様子を見守る。
　この中に野郎の<RUBY text="・・">原型</RUBY>がもしまだ残っているとしても、
無事でいるはずはない！

　これが、てめぇのやったことの報いだ……！

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	DrawDelete("絵背景200", 2000, 400, "effect_01_00_0", false);
	FadeDelete("絵背景150", 2000, false);
	FadeDelete("絵背景200", 2000, false);

	Wait(500);
	SoundPlay("@mbgm09",0,1000,true);

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0040b40">
《ギィィハハハハハところで御堂。
　別にどうでも良い事だが今の爆風の余波で
なんか右足が吹っ飛んだ》


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0050a02">
「そうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　道理でさっきから右足の膝より下が<RUBY text="・・">軽い</RUBY>と思った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0060b40">
《<RUBY text="あし">速力</RUBY>の鈍りは避けられん。
　残存熱量を考えると、航続可能距離は長く
なさそうだ》


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0070a02">
「早目に離脱しないとまずいってわけか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　もたもたしていれば、普陀楽城の真ん中へ着陸する
羽目になりかねない。
　……でも、その前に。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0080a02">
「湊斗さんの無事を確認しないと。
　どうだ？　<RUBY text="あっち">村正</RUBY>はもう脱出したか」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0090b40">
《知らん》


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0100a02">
「<RUBY text="サーチ">探査</RUBY>しろよ」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0110b40">
《どうでも良かろうが。奴らのことなど》


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0120a02">
「……良くない」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0130b40">
《何故だ》


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0140a02">
「あの人は味方だろ」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0150b40">
《敵であろう。<RUBY text="たまたま">偶々</RUBY>手を組んだだけの。
　奴めがもし<RUBY text="した">地上</RUBY>で窮しておるなら丁度良い。
始末の手間が省けるというものよ》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0160b40">
《……む。いや、それはそれで口惜しい話か。
　奴らはこの手で斬り捨てたいと、そう云う
のだな？　御堂》


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0170a02">
「……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0180b40">
《――それとも、何か。
　奴の罪を許したとでも？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　鍛冶師は己を劒冑とする時、肉体だけでなく魂をも
鋼鉄に変えるという。
　ために真打劒冑は<RUBY text="こころ">精神</RUBY>を宿すといってもそれはごく
平板で、感情の波がほとんどない……らしい。普通は。

　正宗は全く違う。人間そのもの、あるいは人間以上
に感情的だ。
　しかし、今は――まさしく劒冑らしい、冷たく硬い
鉄の声を発していた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0190a02">
「……許しちゃいない。
　ただ……罪を償って欲しいって、思ってる
んだ」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0200b40">
《罪を償う方法など無い》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆一条父切腹カット。一瞬
//◆に合わせてＳＥ。心臓の鼓動。
	SetVolume("SE10", 300, 1, null);
	SetVolume("@mbgm09", 300, 1, null);

//おがみ：回想
	EfRecoIn1(18000,200);
	CreateTextureSP("絵回想100", 17000, Center, Middle, "cg/ev/ev158_一導の最期.jpg");
	OnSE("se人体_体_心臓の音02",1000);
	EfRecoIn2(300);

	Wait(500);
//おがみ：回想終了
	EfRecoOut1(200);
	Delete("絵回想100");	
	EfRecoOut2(600,true);

	SetVolume("SE10", 3000, 1000, null);
	SetVolume("@mbgm09", 3000, 1000, null);

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0210a02">
「そ……それは、わかってる。
　でもあたしにはあの人が必要なんだ」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0220a02">
「幕府と戦うのに、あたしだけじゃ力が足り
ない。……おまえは否定するんだろうけど。
　自分の未熟は自分が一番良く知ってる」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0230a02">
「あたしと一緒にいれば、あの人だってもう
正しい人まで殺したりしなくて済むし……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0240b40">
《御堂。
　良いか》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0250b40">
《<RUBY text="・・・">悪は悪</RUBY>なのだ。
　<RUBY text="・・・・・">悪鬼は悪鬼</RUBY>なのだ》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0260b40">
《奴らと吾らは決して相容れぬ。
　あの男はいずれ御身を裏切る》


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0270a02">
「……そんなこと、ない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　あの人はあたしが信じる正しさを理解して、認めて
くれた。そう、幾度か……あの人らしい不器用な言葉
で。
　あの人はあたしと一緒にいてくれる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0280b40">
《裏切られた時はどうする》


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0290a02">
「……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0300b40">
《そこまで信じてなお裏切られたなら、どう
するのだ》


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0310a02">
「その時は許さない。
　<RUBY text="・・・・">必ず殺す</RUBY>」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0320b40">
《……》


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0330a02">
「…………」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0340b40">
《…………》


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0350a02">
「……まだ不満があるのか」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0360b40">
《御堂。
　悪とは実に往生際が悪く、しぶといものだ》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0370b40">
《そう簡単には殺し切れん》


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0380a02">
「どんなにしぶとくたって――」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 200, 0, null);
	SetVolume("SE*", 200, 0, null);
	Wait(500);
	FwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0390b40">
《来るぞ!!》


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0400a02">
「なに!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	BGMoveDelete();

//	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/st/3d同田貫亀_正面.png");
//	Rotate("絵背景100", 0, @0, @180, @0, null,true);
//	Zoom("絵背景100", 0, 200, 200, null, true);

	CreateColorEX("絵色100", 17500, "WHITE");
	CreateColorEX("絵色200", 17000, "BLACK");

	CreateSE("SE01","se戦闘_動作_空突進03");
	CreateSE("SE10","se戦闘_動作_空走行02_L");
	CreateSE("SE11","se戦闘_動作_空突進05");

	Fade("絵色200", 100, 1000, null, true);

	MovieSESet(17300,"mv同田貫_a","se特殊_mv用_同田貫_a");
	OnSE("se戦闘_動作_空突進08",1000);
	MusicStart("SE11",2000,400,0,1000,null,true);
	MovieSEStart(0);
	SetVolume("SE11", 1000, 0, null);


//◆なんか飛んでくる。ずひゅーん。
	MusicStart("SE10",2000,1000,0,1000,null,true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);

	EffectZoomadd(10000, 1000, 100, "cg/ef/ef034_精神汚染.jpg", false);
	FadeDelete("絵色200", 300, false);
//	Fade("絵背景100", 100, 1000, null, false);
//	Move("絵背景100", 300, @1000, @0, Axl3, false);
//	Zoom("絵背景100", 300, 2000, 2000, Axl3, false);
	Wait(250);

	CP_SpeedChange(1000,553,null,false);
	CP_HighChange(1000,684,Dxl2,false);
	Fade("絵色100", 0, 1000, null, true);
	CP_RollBarMove("@絵背景50", 0, -20, null, true);

	OnSE("se戦闘_動作_空突進01",1000);
	CP_AziChange(1000,65,Dxl2,false);
	Shake("絵背景50", 500, 10, 5, 0, 0, 1000, Dxl2, false);
	Move("絵背景50", 1000, @350, @-150, Dxl3, false);
	CP_RollBarMove("@絵背景50", 1000, 0, Dxl2, false);
//	Delete("絵背景100");
	FadeDelete("絵色100", 300, true);

	SetVolume("SE10", 2000, 1000, null);
	SetFrequency("SE10", 1000, 1000, null);


	SetFwC("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0410a02">
「なっ――
　てめェ!!」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0420a09">
《くわっはははははははは!!
　いや、いや、<RUBY text="たまげ">魂消</RUBY>たわいッ！》

//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0430a09">
《極楽浄土へ旅立つところであった！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆同田貫正国・防御形態
//◆要は首と手足を引っ込めた。
	SoundPlay("@mbgm12",0,1000,true);


	CreateTextureEX("絵背景150", 17000, Center, Middle, "cg/ev/ev921_同田貫防御形態.jpg");
	CreateTextureEX("絵背景200", 17000, Center, Middle, "cg/ev/ev921_同田貫防御形態.jpg");
	Zoom("絵背景200", 0, 1500, 1500, null, true);
	SetBlur("絵背景200", true, 3, 300, 200, false);
	CreateSE("SE01","se戦闘_動作_空突進06");


	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵背景200", 100, 1000, null, false);
	Zoom("絵背景200", 700, 1000, 1000, Dxl2, true);

	Fade("絵背景150", 0, 1000, null, true);
	Delete("絵背景200");

	Wait(1000);
	SetFwR("cg/fw/fw一条_驚く.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0440a02">
「か……亀!?」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0450b40">
《亀だ……》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　そんなの有りか!?
　というか、どういう構造だ!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0460b40">
《……<RUBY text="カラクリ">機巧</RUBY>仕込みに凝る鍛冶師は吾だけでは
なかったらしいな。
　あの発想は吾にも無かった》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆すぽーんすぽーんと手足が生えてくる
	CreateColorEX("絵色200", 18000, "BLACK");
	MovieSESet(18100,"mv同田貫_b","se特殊_mv用_同田貫_b");

	CreateSE("SE01","se戦闘_動作_空突進05");
//	CreateSE("SE02","se特殊_鎧_装着02");
//	CreateSE("SE03","se特殊_鎧_装着02");

	Fade("絵色200", 100, 1000, null, true);
	OnSE("se特殊_鎧_装着02",1000);
	OnSE("se特殊_鎧_装着05",1000);
	MusicStart("SE01",1000,300,0,600,null,true);
//	MusicStart("SE03",1000,1000,0,350,null,false);
	SetFrequency("SE01", 7000, 1000, Axl1);
	MovieSEStart(500);

	Delete("絵背景150");
	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3d同田貫_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 500, 500, null, true);
	Move("絵狸", 0, @0, @100, null, true);

	SetVolume("SE01", 1500, 0, null);


	OnSE("se特殊_鎧_装着04",1000);
	FadeDelete("絵色200", 300, false);
	Shake("絵狸", 500, 5, 0, 0, 0, 1000, Dxl2, false);
	Fade("絵狸", 300, 1000, null, false);
	Move("絵狸", 500, @0, @-100, Dxl3, true);


	SetFwR("cg/fw/fw童心_バサラ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0470a09">
「ふはぁっ!!」


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0480a02">
「……無傷だってのか？
　あれ食らっといて！」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0490b40">
《甲羅に閉じ篭もった亀が相手ではな。
　鉄炮の鏃も貫けぬ》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0500b40">
《うぅむ。
　怒りを通り越して呆れも通り越して感心も
通過して》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0510b40">
《今はただ無性に叩き潰したい!!》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　心の底から同感だった。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆相対。モニターでロックオン。
	CreateSE("SEロックオン","se特殊_コックピット_起動音02");


//おがみ：ロックオン
	CockPit_LockSet(@0,@0);
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
//	CP_LockOnMove("@絵狸",1600,@-200,@0,Dxl2,false);
	Fade("@絵狸", 500, 1000, null, true);
	CP_LockOnFade(100,"on",false);
	CP_EnemyFade(300,9,615,495);


	SetFwR("cg/fw/fw一条_怒りc.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0520a02">
「このやろ――」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0530a09">
《おおっと。もう手妻の時間はやらぬぞ。
　遊びが命取りになること、ようくわかった
でな……》


{	FwR("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0540a09">
《墜とさせて頂こう！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆正国突進
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef034_精神汚染.jpg", false);
	Fade("絵背景100", 100, 1000, null, false);
	Zoom("絵背景100", 500, 2000, 2000, Axl3, true);

	OnSE("se戦闘_動作_空突進02",1000);
	Shake("絵狸", 500, 5, 0, 0, 0, 1000, Dxl2, false);
	Fade("絵狸", 300, 1000, null, false);
	Zoom("@絵狸", 500, 600, 600, Dxl2, false);
	CP_LockOnMove("@絵狸",500,@0,@-50,Dxl2,false);


	SetFwR("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0550a02">
「正宗！
　鉄炮はまだ撃てるか!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　奴の攻撃のタイミングに合わせて相打ちで叩き込ん
でやれば――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0560b40">
《いや無理だ。
　これ以上甲鉄を消費すると飛べなくなる》


{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0570a02">
「くそ……！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　太刀で打ち合うしかない。
　左片手の――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw童心_バサラ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0580a09">
《破ァーーーッ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆貫流刺突
//◆正宗剣撃
//◆がきーん。吹っ飛ばされる正宗
	CreateTextureEX("絵背景100", 17000, Center, Middle, "cg/ef/ef027_貫流刺突.jpg");
	CreateTextureEX("絵背景200", 17000, Center, Middle, "cg/ef/ef027_貫流刺突.jpg");
	CreateTextureEX("絵背景300", 17000, Center, Middle, "cg/ef/ef027_貫流刺突.jpg");
	CreateColorEX("絵色100", 17500, "WHITE");
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
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵背景50", 300, 1100, 1100, Axl3, false);
	Zoom("@絵狸", 300, 1500, 1500, Axl3, true);

	SetFrequency("SE10", 2000, 1100, null);
	SetVolume("SE10", 1000, 700, null);

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Rotate("絵背景100", 1500, @0, @0, 3600, Dxl2,false);
	Fade("絵背景100", 0, 1000, null, true);

	Fade("絵色100", 0, 1000, null, true);
	DrawTransition("絵色100", 100, 1000, 0, 100, null, "cg/data/spiral_01_00_0.png", true);
	Delete("絵色100");

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

	CreateColorEX("絵色100", 17500, "WHITE");
	Fade("絵色100", 100, 1000, null, true);

	Move("絵背景50", 0, -512, 188, null, true);
	CP_RollBarMove("@絵背景50", 0, -20, null, true);
	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵狸");
	CP_LockOnDelete();

	MyLife_Count(1000,50);
	CP_IHPChange(1000,1,null,false);
	MyTr_Count(1500,80);

	CP_AziChange(1000,72,Dxl2,false);
	OnSE("se戦闘_破壊_鎧03",1000);
	Shake("@CP_Frame", 1000, 15, 20, 0, 0, 800, null, false);
	Shake("絵背景50", 500, 10, 5, 0, 0, 1000, Dxl2, false);
	Zoom("絵背景50", 1000, 1500, 1500, Dxl2, false);
	Move("絵背景50", 1000, @-100, @-200, Dxl3, false);
	CP_RollBarMove("@絵背景50", 1000, 0, Dxl2, false);

	FadeDelete("絵色100", 300, true);
	Wait(500);
	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 2000, 700, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　相手に――
　ならねえ！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0590a02">
「畜生が!!」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0600b40">
《いかぬ！　御堂！》


{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0610a02">
「正宗!?」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0620b40">
《<RUBY text="ほろ">母衣</RUBY>を砕かれた!!
　……墜ちる！》


{	FwR("cg/fw/fw一条_苦痛.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0630a02">
「!?」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆バランス崩れる
//◆落ちていく。まっさかさま、ではないが。
	SetFrequency("SE10", 2000, 500, null);
	SetVolume("SE10", 1000, 700, null);

	CreateSE("SE01","se戦闘_動作_空突進04");

	CreateTextureEX("絵背景100", 1500, Middle, -300, "cg/bg/bg201_旋回演出背景市街地_03.jpg");
	Zoom("絵背景100", 0, 1000, 1000, null, true);

	CreateSurfaceEX("絵Suf",1000,2000,"絵背景100");


	MusicStart("SE01",0,1000,0,1000,null,false);

	CP_SpeedChange(2500,236,AxlDxl,false);
	CP_HighChange(20000,524,AxlDxl,false);

	Move("絵背景100", 20000, @0, @-2400, Dxl1, false);
//	CP_RollBarMove("@絵背景50", 15000, 160, AxlDxl, false);

	CloudZoomVertex(1000,@0,500,AxlDxl,false);
	Shake("絵背景100", 1000000, 1, 0, 0, 0, 1000, null, false);
	Fade("絵背景100", 1000, 1000, null, false);
	Fade("絵Suf", 1000, 1000, null, true);

	CloudZoomVertex(2000,@0,-500,AxlDxl,false);
	CP_RollBarMove("@絵背景50", 10500, -160, AxlDxl, false);
	Rotate("絵Suf", 10500, @0, @0, @160, AxlDxl,false);
	Wait(2000);
	CloudZoomVertex(18000,@0,0,AxlDxl,false);

//	FadeF4("絵背景50", 0, 1000, 15000, 0, 0, AxlDxl, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　<RUBY text="つばさ">翼甲</RUBY>が――半分がた消し飛んでいる。
　不味い！

　この状態では、もう騎航は継続不可能だ。
　熱量を投じて再生……<k>……間に合うわけがない。

　翼甲の残りが辛うじて<RUBY text="バランス">平衡</RUBY>を維持している。墜落死
することは無さそうだ、が。
　それは単に、健在な敵騎から嬲り殺しの憂目に遭う
というだけの話。

　飛べる武者と飛べない武者の戦力比は一対三、<RUBY text="ないし">乃至</RUBY>
一対五。一対一〇とまで言われることもある。
　つまるところは勝負にならない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0640a02">
「それでも……くそ！
　やるしかねえか！」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0650b40">
《<RUBY text="・・">悠長</RUBY>な考えは、それまで生き延びてから弄べ。
　御堂！》


{	FwR("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0660a02">
「なに――」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0670b40">
《敵騎、<RUBY text="いぬいからいのかみ">三二〇度上方</RUBY>！
　落下攻勢！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆正国突進

//おがみ：定義
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵Suf");
	Delete("絵背景100");
	CreateTextureSP("絵背景50", 100, -512, -288, "cg/bg/resize/bg002_空a_03l.jpg");
	Request("絵背景50", Smoothing);
	Zoom("絵背景50", 0, 2000, 2000, null, true);

	CloudZoomSet(1600);
	CloudZoomStartB(1000,500,500,600,600);
	CloudZoomVertex(0,@0,@0,null,false);

	CP_SpeedChange(0,250,null,true);
	CP_HighChange(0,520,null,true);
	CP_RollBarMove("@絵背景50", 0, 180, null, true);

	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3d同田貫_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Rotate("絵狸", 0, @0, @0, 180, null,true);
	Zoom("絵狸", 0, 300, 300, null, true);
	Move("絵狸", 0, @0, @-100, null, true);

	CreateSE("SEロックオン","se特殊_コックピット_起動音02");
	CreateSE("SE探索","se特殊_コックピット_探索02");
	CockPit_LockSet(@0,@0);

//おがみ：動作
	MusicStart("SE探索",0,1000,0,1000,null,false);
	CP_SpeedChange(40000,436,Dxl1,false);
	CP_HighChange(40000,155,Dxl1,false);
	Zoom("絵背景50", 40000, 600, 600, Dxl1, false);
	DrawDelete("黒幕１", 200, 100, "slide_02_01_1", true);

	OnSE("se戦闘_動作_空突進02",1000);

	Shake("絵狸", 1000000, 1, 0, 0, 0, 1000, null, false);
	Zoom("絵狸", 100000, 400, 400, null, false);
	Fade("絵狸", 300, 1000, null, false);
	Move("絵狸", 400, @0, @100, Dxl3, true);

//おがみ：ロックオン
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
//	CP_LockOnMove("@絵狸",1600,@-200,@0,Dxl2,false);
	Fade("@絵狸", 500, 1000, null, true);
	CP_LockOnFade(100,"on",false);
//	CP_EnemyFade(300,10,420,300);

	SetVolume("SE10", 2000, 200, null);

	SetFwR("cg/fw/fw一条_苦痛.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0680a02">
《――はッ！
　地面まで生かしとく気はないってかぁ！》


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0690a09">
《もう時間はやらぬ……
　そう言うたのう！》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　むかつくほど正しい決断をしやがる。
　確かに、半墜落中の今こそがこちらは一番無防備だ！

　天頂側から最大の速度と最大の勢力を確保して攻め
寄せてくる敵騎に対し、こちらは全く何もできない。
　
　いや――何も無いのか!?　本当に！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0700a02">
「正宗！」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0710b40">
《応！》


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0720a02">
「あたしらはここまでか？」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0730b40">
《断じて否！》


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0740a02">
「あたしはあいつを倒せるか!?」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0750b40">
《正宗は正義を行うにあたり無敵である!!》


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0760a02">
「どうすればいい!?」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0770b40">
《吾に命じよ！》


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0780a02">
「<RUBY text="・・">やれ</RUBY>!!」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0790b40">
《承知ィ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆正国至近。攻撃準備
	OnSE("se戦闘_動作_空突進01",1000);
	Zoom("絵背景50", 500, 1100, 1100, Dxl2, false);
	Zoom("絵狸", 500, 1000, 1000, Dxl2, true);

	SetFwR("cg/fw/fw童心_バサラ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0800a09">
《御命頂戴！》


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0810a02">
《てめぇが寄越せ！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進02",1000);
	Rotate("絵狸", 700, @0, @0, 0, AxlDxl,false);
	CP_RollBarMove("@絵背景50", 700, 0, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　来る。
　あたしは刹那、<RUBY text="ロール">横転</RUBY>した。

　まるで背泳ぎするような格好で敵を迎える。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw童心_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0820a09">
「ム!?」


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0830a02">
「正宗七機巧が一」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆フェード
	CreateColorEX("絵色100", 17600, "BLACK");
	Fade("絵色100", 500, 1000, null, true);

	CP_LockOnDelete();


	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　
//◆読み「おんけん・ろっぽんこっそう」
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0840b40">
　　　　　《隠剣・六本骨爪》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――


//◆隠剣・六本骨爪
//◆肋骨がズガーッと飛び出して敵をガッツリ掴む
	CreateTextureEX("絵背景100", 17500, Center, Middle, "cg/ev/ev919_正宗隠剣六本骨爪_b.jpg");
	CreateTextureEX("絵背景200", 17500, Center, Middle, "cg/ev/ev919_正宗隠剣六本骨爪_b.jpg");
	CreateTextureEX("絵背景300", 19500, Center, Middle, "cg/ef/ef043_爪攻撃.jpg");
	CreateTextureEXadd("絵背景400", 19500, Center, Middle, "cg/ef/ef043_爪攻撃.jpg");
	Rotate("絵背景400", 0, @0, @0, @180, null,true);

	SetBlur("絵背景200", true, 2, 500, 200, false);
	SetBlur("絵背景300", true, 2, 300, 70, false);
	Request("絵背景200", Smoothing);


	OnSE("se特殊_鎧_装着04",1000);

	EffectZoomadd(10000, 1000, 100, "cg/ef/ef043_爪攻撃.jpg", false);
	Fade("絵背景300", 50, 1000, null, true);
	Zoom("絵背景300", 600, 1100, 1100, Dxl2, false);

	OnSE("se戦闘_正宗_隠剣六本骨爪01",1000);
	Wait(200);
	Fade("絵背景400", 50, 1000, null, true);
	Zoom("絵背景400", 600, 1100, 1100, Dxl2, false);

	Wait(200);
	Fade("絵背景100", 0, 1000, null, true);

	Zoom("絵背景300", 300, 2000, 2000, Axl3, false);
	Zoom("絵背景400", 300, 2000, 2000, Axl3, false);
	FadeDelete("絵背景300", 300, false);
	FadeDelete("絵背景400", 300, false);
	FadeDelete("絵色100", 300, false);
	Zoom("絵背景200", 500, 1500, 1500, Axl2, false);
	Fade("絵背景200", 200, 1000, null, true);
	FadeDelete("絵背景200", 500, true);

	Wait(1000);

	SoundPlay("@mbgm08",0,1000,true);


	SetFwL("cg/fw/fw一条_憎悪b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0850a02">
「グハ――ガッ、キ、ヒ」


{	FwL("cg/fw/fw童心_怒気.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0860a09">
「なっ……
　なんじゃあァ!?」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　……骨が。
　屈曲した長い骨が、三対。あたしの胸を突き破って、
爪のように伸びて、敵騎を<RUBY text="・・・・・">噛んでいた</RUBY>。

　骨は、骨のままじゃない。
　甲鉄で覆われている……

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	CreateTextureSP("上敷き", 17500, Center, Middle, "cg/ev/ev919_正宗隠剣六本骨爪_b.jpg");
	SetFwL("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0870b40">
《この正宗に死角なァァァァァシ！
　手も足も出ない窮地に陥ることもあろうと
予期し――》


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0880b40">
《肋骨を出せるようにしておいたのだァ!!
　クハーハハハハハハハハ!!》


{
	OnSE("se戦闘_正宗_隠剣六本骨爪02",1000);
	Shake("上敷き", 1000, 3, 5, 0, 0, 500, null, false);
	FwL("cg/fw/fw童心_怒気.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0890a09">
「ぐ……おぉ!?」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0900b40">
《無駄じゃ無駄じゃ無駄じゃ！
　この六本骨爪の<RUBY text="・・">握力</RUBY>は<RUBY text="えぞ">北曾</RUBY>の羆をも凌ぐ》


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0910b40">
《そう容易く逃れられるものではないわ！
　御堂、今ぞ！》


{	FwL("cg/fw/fw一条_苦痛.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0920a02">
「が、ふ……ッ！」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0930b40">
《血を吐きながらでも良いから攻撃せよ！
　敵は藁人形同然！》


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0940b40">
《こうして食いついておる限り墜落の心配も
ない。
　叩き斬ってしまえぃ!!》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	Delete("上敷き");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　あ――そうか。
　今が…………<k>好機か！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0950a02">
「っ……」


{	FwL("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0960a02">
「お……らぁぁっ!!」


{	FwL("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0970a09">
「うぬ――」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆斬撃
//◆正国、亀形態
//◆がちーん。
	CreateTextureEX("絵狸", 17000, Center, middle, "cg/ev/resize/ev921_同田貫防御形態l.jpg");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 1000, 1000, null, true);
//	Move("絵狸", 0, @0, @100, null, true);

	OnSE("se特殊_鎧_装着05",1000);
	Wait(150);
	OnSE("se特殊_鎧_装着05",1000);
	Wait(150);
	OnSE("se特殊_鎧_装着06",1000);
	FadeDelete("絵背景100", 500, false);

	Shake("絵狸", 500, 5, 0, 0, 0, 1000, Dxl2, false);
	Fade("絵狸", 300, 1000, null, false);

	Wait(500);
	Shake("絵狸", 100000, 0, 1, 0, 0, 1000, Dxl2, false);

	SetFwL("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0980a02">
「ち、この……！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　寸前で、敵騎はまた亀の形になった。
　掴まれた状態から無理矢理、手足と首を引っ込めて。

　片手振りの一撃は虚しく弾かれる。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0990a02">
「足掻きやがって！」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs1000b40">
《何の。
　御堂、<RUBY text="・・・・">焦がして</RUBY>やれぃ！》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　それだ。
　劒冑の誘導に従って、熱量を太刀へ注ぎ込む。

　――正宗七機巧が一。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs1010a02">
「<RUBY text="オボロ">朧</RUBY>」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs1020b40">
《<RUBY text="ショウシケン">焦屍剣</RUBY>》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆朧・焦屍剣。正宗ヒートソード
//◆鉄板に油を引くようなＳＥ？

	CreateColorEXadd("絵色300上", 18200, "WHITE");

	Fade("絵色300上", 200, 1000, null, true);
	CreateColorSPadd("絵色300", 18000, "WHITE");


	OnSE("se戦闘_正宗_朧焦屍剣",1000);

	CreateMovie("ムービー１", 18100, 0, 0, false, false, "dx/mv焦屍剣.ngs");
	Request("ムービー１", Smoothing);
	SetAlias("ムービー１", "ムービー１");
	Zoom("ムービー１", 0, 2000, 2000, null, true);
	Move("ムービー１", 0, @0, @287, null, true);
	Request("ムービー１", Stop);

	Fade("絵色300上", 200, 0, Axl2, false);
	Request("ムービー１", Play);
	WaitAction("ムービー１", null);
	Fade("絵色300上", 100, 1000, null, true);

	Delete("ムービー１");

//	MovieSESet(18100,"mv焦屍剣","se戦闘_正宗_朧焦屍剣");
//	MovieSEStart(0);

	Wait(200);

//	CreateSE("SE01","se戦闘_正宗_朧焦屍剣");
//	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色100", 17100, "RED");
	CreateColorEXadd("絵色200", 17500, "#FFAA00");
	Fade("絵色100", 0, 500, null, true);
	FadeDelete("絵色300*", 1000, false);
	Fade("絵色200", 1000, 700, null, false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　超々高温が刀身に宿った。
　炎熱は握り手をも焼く。皮膚を焦がし肉を溶かし骨
を<RUBY text="あぶ">炙</RUBY>る。

　この腕が炭化して動かなくなる前に済ませなければ
ならない。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs1030a02">
「正宗。
　甲冑の弱点は、喉と……」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs1040b40">
《もう一つ》


{	FwL("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs1050a02">
「あれか」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs1060b40">
《あれだ》


{	FwL("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs1070a02">
「じゃあ、それだ！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　左腕を振り戻して、
　突く。

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//―――――――――――――――――――――――――――――

	CreateSE("SE05","se戦闘_攻撃_焼き鏝_弱");
	CreateSE("SE06","se戦闘_破壊_鎧04");
	CreateColorSP("絵色300", 17500, "BLACK");
	CreateColorSPadd("絵色200", 17400, "#FFAA00");
	Fade("絵色200", 0, 700, null, true);
	CreateTextureEXadd("絵背景100", 17300, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Zoom("絵背景100", 0, 1100, 1100, null, true);


	SL_centerout2(20000,@0, @0,1000);
	MusicStart("SE06",0,1000,0,1000,null,false);
	SL_centeroutfade2(10);

	FadeDelete("絵色300", 1000, false);

//◆肉を焼く音
	MusicStart("SE05",0,1000,0,1000,null,false);

	Zoom("絵背景100", 15000, 1200, 1200, Dxl2, false);
	FadeF4("絵背景100", 1000, 500, 15000, 0, 0, AxlDxl, false);

	CP_EHPChange(0,3,null,true);


	Wait(500);

	SetFwL("cg/fw/fw童心_怒気.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs1080a09">
「ぎッ――――」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　全てを焼き溶かす刃は、丸亀武者の<RUBY text="・・・">股ぐら</RUBY>をいとも
簡単に刺し貫いた。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs1090a02">
《言ったよなぁ!?
　てめぇが生きてる間に、目玉と<RUBY text="きんたま">睾丸</RUBY>抉って
やるって……》


{	FwL("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs1100a02">
《まずは汚ねェ方からだ！
　約束通り！　貰っとく!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆肉を焼く音・強
	CreateSE("SE01","se戦闘_攻撃_焼き鏝_強");
	CreateColorSPadd("絵色100", 7500, "WHITE");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色100", 1000, 0, null, true);

	SetFwL("cg/fw/fw童心_怒気.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs1110a09">
「げぇぇあがががががががががが!?」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs1120b40">
《ギハハハハハハハハハハハハ!!
　まるで絞め殺される豚の悲鳴だァ!!》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　更に太刀をねじり込む。
　豚の叫びは途切れなく続いた。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	Shake("絵狸", 500, 5, 0, 0, 0, 1000, Dxl2, false);

	SetFwL("cg/fw/fw童心_怒気.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs1130a09">
「ががが」


{	Shake("絵狸", 500, 8, 0, 0, 0, 1000, Dxl2, false);}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs1140a09">
「がっ」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEXadd("絵背景燃", 10000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateColorEXadd("絵色500", 400, "#FFAA00");


	CreateTextureEX("絵狸２", 100, Center, middle, "cg/st/3d同田貫_立ち_通常.png");
	Request("絵狸２", Smoothing);
	Zoom("絵狸２", 0, 2000, 2000, null, true);
	Move("絵狸２", 0, @0, @130, null, true);

	OnSE("se特殊_鎧_装着05",1000);
	Wait(150);
	OnSE("se特殊_鎧_装着05",1000);
	Wait(150);
	OnSE("se特殊_鎧_装着06",1000);
//	FadeDelete("絵背景100", 500, false);

	Fade("絵色500", 0, 700, null, true);
	Fade("絵背景燃", 0, 200, null, true);
	Zoom("絵背景燃", 15000, 1200, 1200, Dxl1, false);

	FadeDelete("絵色200", 200, false);
	FadeDelete("絵背景100", 200, false);
	FadeDelete("絵狸", 200, true);

	Shake("絵狸２", 500, 5, 10, 0, 0, 1000, Dxl2, false);
	Fade("絵狸２", 300, 1000, null, false);
	Move("絵狸２", 300, @0, @-130, Dxl2, true);


	SetFwL("cg/fw/fw童心_怒気.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0541]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs1150a09">
「ひィ！」


{	FwL("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs1160a02">
「待ってたぜェ!!」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　堪りかねたのか、敵の<RUBY text="あたま">兜</RUBY>が遂に鎧の中から飛び出す。
　あたしは股間に刺した太刀を引き抜いた。

　狙いを定める。
　今度こそは、一撃必殺の喉！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs1170a02">
「死ぃ、ね――」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);

	CreateTextureEX("絵狸３", 100, Center, middle, "cg/st/3d同田貫_立ち_陰義.png");
	Request("絵狸３", Smoothing);
	Zoom("絵狸３", 0, 2000, 2000, null, true);
	Move("絵狸３", 0, @0, @0, null, true);

	Fade("絵狸３", 300, 1000, null, true);
	FadeDelete("絵狸２", 200, false);

	OnSE("se特殊_陰義_発動04",1000);
	EffectZoomDXadd(10000, 1500, 200, "RED", "cg/ef/ef034_精神汚染.jpg", true);

	CreateColorEX("絵色100", 17500, "BLACK");
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵狸３");
	Delete("絵背景燃");


	SetFwC("cg/fw/fw童心_怒気.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0561]
//◆読み「カーラスートラ」
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs1180a09">
《ＫＡＬＡＳＵＴＲＡ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆正国火炎放射
	CreateTextureEX("絵背景100", 17500, Center, Middle, "cg/ef/ef028_汎用火炎放射.jpg");
	CreateTextureEXadd("絵背景200", 17500, Center, Middle, "cg/ef/ef028_汎用火炎放射.jpg");
	CreateTextureEXover("絵背景300", 17500, Center, Middle, "cg/ef/ef028_汎用火炎放射.jpg");
	Request("絵背景100", Smoothing);
	Request("絵背景200", Smoothing);
	Zoom("絵背景100", 0, 1200, 1200, null, true);
	Zoom("絵背景200", 0, 2000, 2000, null, true);
	Zoom("絵背景300", 0, 1200, 1200, null, true);
	Move("絵背景100", 0, @100, @0, null, true);
	SetBlur("絵背景100", true, 1, 300, 200, false);
	SetBlur("絵背景200", true, 1, 300, 200, false);

	CreateSE("SE01","se戦闘_攻撃_火炎放射");
	CreateSE("SE04","se戦闘_攻撃_焼き鏝_強");


	DrawEffect("絵背景300", 50, "LowWave ", 100, 150, null);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE04",0,1000,0,1000,null,false);
	Fade("絵背景300", 1000, 1000, null, false);
	Fade("絵背景100", 1000, 1000, null, false);
	FadeF4("絵背景200", 1000, 1000, 3000, 0, 0, AxlDxl, false);
	Wait(2000);
	FadeDelete("絵背景200", 1000, false);
	Move("絵背景100", 700, @-100, @0, Dxl2, false);
	Zoom("絵背景100", 1000, 1000, 1000, Dxl2, true);

	Fade("絵背景100", 0, 1000, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　……!?

　火を――――吐いた!?

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_憎悪b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs1190a02">
「がぁっ……」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs1200b40">
《いかん！
　逃げられっ――》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se戦闘_正宗_朧焦屍剣");
	CreateSE("SE03","se戦闘_動作_空落下02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);

	CreateColorEXadd("絵色100", 20000, "WHITE");

	Zoom("絵背景100", 1000, 2000, 2000, Axl2, false);
	Move("絵背景100", 1000, @-512, @-188, Axl2, false);
	Fade("絵色100", 1000, 1000, null, true);

	Wait(2500);
	CP_AllDelete();

	SetVolume("SE*", 2000, 0, null);
	ClearFadeAll(3000, true);

	Wait(2000);

//◆正国、脱出
//◆正宗、落ちる
//◆出城の上に落下。ずどーん。




}

..//ジャンプ指定
//次ファイル　"mb02_031vs.nss"



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
