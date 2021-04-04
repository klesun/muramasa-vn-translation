//<continuation number="70">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_013.nss_MAIN
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
	#ev178_雪車町とガッタイダー列車襲撃_c=true;
	#ev178_雪車町とガッタイダー列車襲撃_d=true;
	#ev179_列車を押し留める村正=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc03_014.nss";

}

scene mc03_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc03_012.nss"

	PrintBG("上背景", 30000);

	SoundPlay("@mbgm12", 0, 1000, true);

	CreateColorSP("黒幕１", 5000, "BLACK");
	CreateTexture("絵背景50", 100, Center, Middle, "cg/bg/bg202_旋回演出背景山a_01.jpg");
	Move("絵背景50", 216000, @0, -5150, null, false);

	CreateTextureSP("絵立絵絵合体小", 1000, Center, Middle, "cg/st/3dガッタイダー_騎航_戦闘a.png");
	Request("絵立絵絵合体小", Smoothing);
	Rotate("絵立絵絵合体小", 0, @0, @0, @55, null,true);
	Zoom("絵立絵絵合体小", 0, 100, 100, null, true);
	Move("絵立絵絵合体小", 0, @-306, @-400, null, true);
	Shake("絵立絵絵合体小", 216000, 1, 1, 0, 0, 1000, null, false);

	Delete("上背景");
	DrawDelete("黒幕１", 300, 100, "slide_03_01_1", true);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,600,0,800,null,false);
	Move("絵立絵絵合体小", 3000, @50, @300, null, false);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0130010a00">
「――――!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateWindow("絵窓", 5000, 630, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);

	CreateTextureSP("絵窓/絵背景１", 100, Center, InTop, "cg/bg/resize/bg204_横旋回背景_01ex.jpg");
	CreateTextureSP("絵窓/絵背景２", 100, Center, InTop, "cg/bg/resize/bg204_横旋回背景_01ex.jpg");
	Zoom("絵窓/絵背景*", 0, 1500, 1000, null, true);

	$縦幅基礎=ImageVertical("絵窓/絵背景１");
	$縦幅組込値=$縦幅基礎*(-1);

	CreateSCR1("@絵窓/絵背景１","@絵窓/絵背景２",400,@0,$縦幅組込値);

	CreateTextureSP("絵窓/絵立絵絵合体", 1000, Center, Middle, "cg/st/3dガッタイダー_騎航_戦闘a.png");
	Request("絵窓/絵立絵絵合体", Smoothing);
	Rotate("絵窓/絵立絵絵合体", 0, @0, @0, @75, null,true);

	Zoom("絵窓/絵立絵絵合体", 0, 1200, 1200, null, true);
	Move("絵窓/絵立絵絵合体", 0, @256, @-400, null, true);
	Shake("絵窓/絵立絵絵合体", 216000, 1, 3, 0, 0, 1000, null, false);

	Move("絵窓/絵立絵絵合体", 21600, @0, @200, null, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　あれは……
　あの時の怪物騎!!

　万に一つも、別物の空似ということは有り得ない。
　あの日、建朝寺に向かう途上で、俺を阻んだ<RUBY text="アンノウン">不明騎</RUBY>
――特徴的などという一言では表しきれないその異形。

　千年経とうと、忘れる筈がなかった。
　
　何故、ここに。
　何の、ために。

　あれはやはり、進駐軍の戦力であったのか!?
　それが今、雪車町一蔵と結託して――<k>何を!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Zoom("絵窓", 300, 0, 1000, Dxl2, true);
	Delete("絵窓");

	Move("絵立絵絵合体小", 10000, @0, @100, null, false);

	SetFwC("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/0130020b33">
《<RUBY text="エクソシズム・ファーザーズ・キィィィック">悪霊退散神父蹴ッ</RUBY>!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガッタイダー突撃
//◆どっがーん。
	CreateSE("SE01","se戦闘_動作_空突進08");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵立絵絵合体小", 300, @0, @512, Axl2, true);

	Wait(1000);

	OnSE("se戦闘_破壊_大爆発01", 1000);

	CreateColorSPadd("絵色白", 5000, "#FFFFFF");

	Wait(10);

	CreateTextureSP("どごーん", 2000, @0, @0, "cg/ef/ef026_汎用爆撃.jpg");
	Delete("絵立絵絵合体小");

	CreatePlainSP("絵板写", 2010);
	Zoom("絵板写", 0, 2000, 2000, null, false);

	FadeDelete("絵色白", 2000, false);

	Shake("絵板写", 1000000, 2, 0, 0, 0, 1000, DxlAuto, false);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/circle_02_01_1.png", true);
	Delete("黒幕１");

	Zoom("絵板写", 3000, 1200, 1200, null, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0130030a00">
「な――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景50", 1300, Center, Middle, "cg/ev/ev178_雪車町とガッタイダー列車襲撃_c.jpg");
	Fade("絵背景50", 1000, 1000, null, true);
	Fade("どごーん", 0, 600, null, true);

	FadeDelete("絵板写",1000,true);


	Delete("黒幕１");
	FadeDelete("下じき",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　橋が……

　橋が破壊された！

　そういう事かッ!!

　この列車はまさに、橋へ踏み入る直前。
　その橋が消えた……あるのは形もなき虚空。

　虚空の下には河。
　
　――この列車は、そこに沈む。

　俺と、大鳥主従を乗せたまま。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0130040a00">
「村正ァッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　判断は瞬時に下した。
　飛び降りる――<k>助かるのは俺のみ、却下。<k>まず大鳥
大尉に危険を知らせ――<k>そんな余裕無し、却下。

　停める。<k>
　停めるしかない。前に回って……

　<RUBY text="・・・・・">この列車を</RUBY>、<RUBY text="・・・・・・・・・・・">腕ずくで押し留めるしかない</RUBY>！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆装甲

	CreateColorEXadd("フラ", 10000, "#FFFFFF");

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

	CreateSE("SE01","se特殊_鎧_装着03");

	MusicStart("SE01",0,1000,0,1250,null,false);

	Fade("フラ", 300, 1000, null, true);

	WaitKey(1000);

//◆列車に体当たり。がきーん。
//◆ＣＧ：「テリーマン頑張れ」
//ev179_列車を押し留める村正.jpg
	Delete("どごーん");
	Delete("絵背景*");

	CreateSE("SE00","se戦闘_動作_空突進01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 20000, "#000000");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("フラ");

	CreateTextureSPadd("絵演上", 3100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);

	PrintGO("上背景", 20000);
	Wait(12);
	CreateColorSP("絵色白", 20000, "#FFFFFF");
	CreateTextureSP("がきーん", 15000, @-250, @0, "cg/ev/resize/ev179_列車を押し留める村正_m.jpg");
	Delete("上背景");

	CreatePlainSP("絵板写", 15000);

	OnSE("se戦闘_破壊_鎧03", 1000);
	CreateSE("SPSE01", "se乗物_汽車_急ブレーキ01_L");
	MusicStart("SPSE01", 0, 1000, 0, 1000, null,true);
	CreateSE("SPSE02", "se乗物_汽車_走行01_L");
	MusicStart("SPSE02", 0, 800, 0, 1000, null,true);

	SetFrequency("SPSE02", 3000, 850, null);

	CreateSE("SPSE03", "se戦闘_攻撃_電撃帯電01");
	MusicStart("SPSE03", 0, 1000, 0, 1000, null,true);

//村正の顔付近を、ジャギ等が目立たないくらいまで拡大
	Zoom("絵板写", 0, 2000, 2000, null, false);

	FadeDelete("絵色白", 1000, false);
	Shake("絵板写", 10000000, 3, 2, 0, 0, 300, AxlDxl, false);

//拡大した部分を進行方向にスライド 現在は仮  ついでに揺らすか？　inc櫻井
	Move("絵板写", 1000, @500, @0, null, true);

//ゆっくりと消して全貌を見せる。

	CreateTextureSP("がきーん2", 14000, @0, @-180, "cg/ev/resize/ev179_列車を押し留める村正_l.jpg");
	CreatePlainEX("絵板写2", 14000);
	Fade("絵板写2", 0, 1000, null, false);
	Shake("絵板写2", 10000000, 1, 2, 1, 2, 1000, DxlAxl, false);

	FadeDelete("がきーん",0,false);
	FadeDelete("絵板写",1000,true);

	WaitKey(1000);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/0130050a01">
《それ、無茶ーーーーーーーっ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　惰性で走り続けているに過ぎない車両は、しかし、
まだ充分に高速だ。
　加えるに、鉄製の巨箱であるその重さ。

　途方もない<RUBY text="モーメンタム">運動量</RUBY>が俺に襲い掛かる。
　
　無理だ――――無理だ！

　とてもこんなものは支えられない。
　<RUBY text="ひ">轢</RUBY>き潰されぬようこらえるのが<RUBY text="やっと">漸々</RUBY>。

　<RUBY text="・・・・・・">つっかえぼう</RUBY>の形になっている四肢がわずかにでも
体勢を崩せば、その刹那、俺の肉体は車輪の下に消え
失せるだろう。
　村正の甲鉄も、一命を繋ぎ止める役には立つまい。

　微弱な抵抗を受けて<RUBY text="レール">条鉄</RUBY>との間に摩擦を生じ、鋼の
車輪が耳障りな音をかき鳴らす。
　俺にはそれが、餌を目の前にした肉食獣の歯軋りと
しか聞こえなかった。

　幾度味わっても慣れることがない死の恐怖に、とも
すれば手足の力を失ってしまいそうになる。
　総身の意気を奮い起こして耐えた――負けてはなら
ない。負けたら終わりだ。

　俺も、中の二人も。
　
　立ち向かう。腕を張り脚を張り。あまりにも膨大な
質量を筋力のみで押し返す。

　だが両足は際限なく滑る。
　足裏は焼肉の鉄板さながらの高熱を発していた。

　踏み留まれない。
　列車は停まらない。停められない。

　橋は――橋があった場所は何処だ。
　あとどれだけの余裕がある。

　列車が落ちるまで、あとどれだけ、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@OnSE*", 1000, 0, null);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/0130060a01">
《御堂、後ろぉっ!!》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0130070a00">
「――――ッッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	Delete("絵板写2");
//CG拡大か何かで崩れた部分を表示？ inc櫻井
	FadeDelete(がきーん2,100,false);
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSPmul("ずーむ", 180, Center, Middle, "cg/ev/ev178_雪車町とガッタイダー列車襲撃_c.jpg");
	CreateTextureEX("ずーむ上", 190, Center, Middle, "cg/ev/ev178_雪車町とガッタイダー列車襲撃_c.jpg");
	Request("ずーむ*", Smoothing);
	FadeDelete("絵色白", 500, false);
	Zoom("ずーむ上", 500, 1500, 1500, Dxl2, false);
	Fade("ずーむ上", 250, 1000, null, true);
	FadeDelete("ずーむ", 300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　ぞわりと、<RUBY text="うなじ">項</RUBY>の毛が逆立つ。
　<RUBY text="・・">空白</RUBY>の気配。

　落ちる。
　落ちる。

　駄目だ。
　そんな事は許せない。

　彼女を死なせてはならない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。香奈枝と跪く景明


	EfRecoIn1(18000,600);

	CreateTextureSP("イベ絵10", 200, Center, Middle, "cg/ev/ev171_香奈枝に跪く景明.jpg");
	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　
　　　　　　　　〝許しません。
　　　　　　　　　殺します〟

　
　　　　　　　〝決して許しません〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	WaitKey(1000);

	EfRecoOut1(300);


	Delete("イベ絵*");

	EfRecoOut2(600,true);
	

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　俺は、<k>
　
　あの<RUBY text="ひと">女性</RUBY>を失ってはならないのだあッッッ!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("フラッシュ白", 15000, "WHITE");
	OnSE("se擬音_フラッシュバック01",1000);

//◆キキー。景明の人力ブレーキ
	CreateSE("ブレーキ", "se乗物_汽車_急ブレーキ01_L");
	MusicStart("ブレーキ", 0, 700, 0, 1000, null,true);

	SetFrequency("SPSE02", 3000, 650, null);

	CreateTextureEX("がきーん", 15000, @-250, @0, "cg/ev/resize/ev179_列車を押し留める村正_m.jpg");

	Fade("がきーん", 0, 1000, null, true);

	CreatePlainEX("絵板写", 15000);
	Fade("絵板写", 0, 1000, null, true);

	Shake("絵板写", 10000000, 1, 2, 1, 2, 300, AxlDxl, false);
	Zoom("絵板写", 0, 2000, 2000, null, false);


	Move("絵板写", 500, @500, @0, null, true);

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");


//押す
//SEどかん！

	CreateSE("殴る", "se戦闘_攻撃_鎧_打撃02");
	MusicStart("殴る", 0, 1000, 0, 1000, null,false);

	CreateTextureSPadd("打撃1", 19000, @0, @0, "cg/ef/ef042_汎用打撃.jpg");
	Fade("打撃1", 1000, 0, null, false);
	Zoom("打撃1", 0, 1200, 1200, null, false);
	Shake("打撃1", 500, 50, 0, 0, 0, 1000, Dxl3, false);
	Rotate("打撃1", 0, @180, @0, @180, null, true);


	Move("絵板写", 3000, @-50, @0, null, true);

//押される

	Move("絵板写", 300, @50, @0, null, true);

//また押す
//SEどかん！

	CreateSE("殴る", "se戦闘_攻撃_鎧_打撃02");
	MusicStart("殴る", 0, 1000, 0, 1000, null,false);

	CreateTextureSPadd("打撃1", 19000, @0, @0, "cg/ef/ef042_汎用打撃.jpg");
	Fade("打撃1", 1000, 0, null, false);
	Zoom("打撃1", 0, 1200, 1200, null, false);
	Rotate("打撃1", 0, @180, @0, @180, null, true);

	Shake("打撃1", 500, 50, 0, 0, 0, 1000, Dxl3, false);

	Move("絵板写", 3000, @-100, @0, null, true);
//押される

	Move("絵板写", 300, @100, @0, null, true);

//まだまだ押す
//SEどかん！

	CreateSE("殴る", "se戦闘_攻撃_鎧_打撃02");
	MusicStart("殴る", 0, 1000, 0, 1000, null,false);

	CreateTextureSPadd("打撃1", 19000, @0, @0, "cg/ef/ef042_汎用打撃.jpg");
	Fade("打撃1", 1000, 0, null, false);
	Rotate("打撃1", 0, @180, @0, @180, null, true);

	Zoom("打撃1", 0, 1200, 1200, null, false);

	Shake("打撃1", 500, 50, 0, 0, 0, 1000, Dxl3, false);


	Move("絵板写", 3000, @-150, @0, null, true);

//押される


	Move("絵板写", 300, @50, @0, null, true);


//アスカ並にこんちくしょーととっておきの一撃！　FLASH！
//ガコンッ！って感じのSE＋ブレーキフェードアウト

	Move("絵板写", 300, @-300, @0, null, false);

	CreateColorEXadd("フラッシュ白", 25000, "WHITE");
	Fade("フラッシュ白",300,1000,null,true);

	OnSE("se特殊_陰義_発動02", 1000);

	CreateTextureEX("村正アップ", 18000, @0, @0, "cg/ev/resize/ev902_村正電磁抜刀レールガン_bl.jpg");
	Request("村正アップ", Smoothing);

	Fade("フラッシュ白",300,0,null,true);

	Fade("村正アップ", 500, 1000, null, false);
	Zoom("村正アップ", 1000, 1500, 1500, null, false);

	Move("絵板写", 600, @300, @0, null, false);

	Wait(800);

	CreateWindow("絵窓", 19000, 0, 0, 1024, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);

	$SYSTEM_effect_rain_dencity = 32;
	$SYSTEM_effect_rain_speed = 128;
	CreateEffect("絵窓/絵効果線", 19990, Center, Middle, 288, 512, "Rain");
	SetAlias("絵窓/絵効果線","絵窓/絵効果線");
	Fade("絵窓/絵効果線", 0, 500, null, true);

	Rotate("絵窓/絵効果線", 0, @0, @0, @-90, null,true);
	Zoom("絵窓/絵効果線", 0, 20000, 10000, null, true);
	Move("絵窓/絵効果線", 0, @400, @0, null, true);

	CreateColorSP("絵窓/絵色雰囲気黒二", 19020, "#000000");
	DrawTransition("絵窓/絵色雰囲気黒二", 0, 0, 80, 1000, null, "cg/data/slide_05_00_1.png", true);

	CreateColorSPmul("絵窓/絵色雰囲気赤", 19001, "#CC0000");
	CreateTextureEX("絵窓/絵背景１", 19000, 0, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
	CreateTextureEX("絵窓/絵背景２", 19000, 0, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
	$横幅基礎=ImageHorizon("絵窓/絵背景１")-1024;
	$横幅組込=$横幅基礎*(-1);
	Move("絵窓/絵背景*", 0, $横幅組込, @0, null, true);

	Fade("絵窓/絵背景*", 1, 1000, null, true);
	CreateSCR1("@絵窓/絵背景１","@絵窓/絵背景２",400,0,@0);

	CreateTextureSP("絵窓/絵演景明", 19100, Center, Middle, "cg/ev/ev996_景明カットイン.png");
	$景明横位置=ImageHorizon("絵窓/絵演景明");
	$景明横移動距離=$景明横位置*(-1);
	Move("絵窓/絵演景明", 0, $景明横位置, @0, null, true);

	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	CreateVOICE("景明","mb04/025vs0390a00");
	MusicStart("景明",0,1000,0,1000,null,false);
	Move("絵窓/絵演景明", 400, @$景明横移動距離, @0, Dxl2, false);

	Wait(300);

	Move("絵窓/絵演景明", 2000, 0, @0, null, false);

	SetVolume("SPSE*", 1000, 0, null);

	CreateColorEXadd("フラッシュ白２", 20000, "WHITE");
	Fade("フラッシュ白２",1500,1000,null,true);

	WaitKey(1000);

//アッー
	PrintGO("上背景", 30000);

	Wait(10);

	CreateColorSPadd("フラッシュ白２", 19000, "WHITE");
	CreateColorSP("絵色黒", 10, "#000000");

	Delete("ずーむ*");
	Delete("打撃*");
	Delete("フラッシュ白");
	Delete("がきーん");
	Delete("村正アップ"); 
	SetVolume("ブレーキ", 0, 0, null);
	SetVolume("@mbgm*", 0, 0, null);

	WaitKey(2000);

	FadeDelete("上背景", 2000, true);
	FadeDelete("フラッシュ白２", 2000, true);

	OnSE("se特殊_陰義_白華爛丹", 1000);
	CreateSE("SE01","se戦闘_破壊_爆発06");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(5000);

	ClearWaitAll(2000, 1000);

//素材完成版が来たら試すもの inc櫻井
/*

//何だかパチンコの演出みたいになってしまった inc櫻井	

	CreateWindow("ウィンドウ上", 1500, 0, 0, 1024, 288, false);
	CreateWindow("ウィンドウ下", 1500, 0, 288, 1024, 576, false);

//止める村正　仮画像
	CreateTextureSP("ウィンドウ上/絵背景50", 1500, Center, Middle, "cg/ev/ev179_列車を押し留める村正.jpg");
//迫ってくる終わり　仮画像
	CreateTextureSP("ウィンドウ下/絵背景50", 1500, Center, Middle, "cg/ev/ev152_見下ろす銀星号_a.jpg");

	Zoom("ウィンドウ上/絵背景50", 0, 2000, 2000, null, true);
	Move("ウィンドウ上/絵背景50", 3000, @500, @0, null, false);

	Zoom("ウィンドウ下/絵背景50", 3000, 2000, 2000, null, true);

	CreateColorEX("ホワイトアウト", 5000, "WHITE");
	Fade("ホワイトアウト", 1000, 1000, null, true);

//WaitKey(3000);
	Delete("ウィンドウ上");
	Delete("ウィンドウ下");
	Delete("ウィンドウ上/絵背景50");
	Delete("ウィンドウ下/絵背景50");
	Delete("ずーむ");
	SetVolume("ブレーキ", 1000, 0, null);
	FadeDelete("ずーむ上",1000,true);

//◆でも止まりませんでした。
//◆ＣＧ差分？　落ちる列車。どぼーん。フェードアウト。
	OnSE("se戦闘_破壊_鎧03", 1000);
	CreateTextureSP("どぼん", 180, Center, Middle, "cg/ev/ev178_雪車町とガッタイダー列車襲撃_d.jpg");

	FadeDelete("ホワイトアウト",300,true);
	WaitKey(2000);

*/

}

..//ジャンプ指定
//次ファイル　"mc03_014.nss"