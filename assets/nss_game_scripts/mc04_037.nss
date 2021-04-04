//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
//	$GameDebugSelect = 1;

		Reset();
	}

}

scene mc04_037.nss_MAIN
{

//コックピット用Ｓｅｔ
	//CP_AllSet("バロウズ");

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
	#ev204_微笑する幼い香奈枝_f=true;
	#ev204_微笑する幼い香奈枝_g=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mc04_038.nss";

}

scene mc04_037.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_036.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆戻り
	PrintBG("上背景", 30000);

	CreateSE("SEトンデマスL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEトンデマスL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEトンデマスL01a",2000,750,0,1000,null,true);
	MusicStart("SEトンデマスL01b",2000,750,0,1500,null,true);

	CreateColorSPadd("絵色100", 18000, "WHITE");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Move("絵背景50", 0, @0, @2000, null, true);

	SetBlur("絵背景50", true, 3, 800, 200, false);
	Request("絵背景50", Smoothing);

	CreateTextureSP("絵狸", 1590, center, middle, "cg/st/3d村正標準_騎突_戦闘.png");
	Zoom("絵狸", 0, 7, 7, null, true);
	SetBlur("絵狸", true, 3, 200, 100, false);

	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	MyLife_Count(1,470);
	MyTr_Count(0,325);
	CP_HighChange(0,1012,null,false);
	CP_SpeedChange(0,315,null,false);
	CP_AziChange(0,31,AxlDxl,false);

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(0,"off",false);
	CP_EnemyFade(0,10,420,300);

	Delete("上背景");
	FadeDelete("絵色100", 2000, true);

	CreateSE("SE01","se特殊_ノイズ01");
	CreateTextureEXsub("絵背景30覆", 19010, -1000, -125, "cg/ev/resize/ev133_兜割に挑む光_cl.jpg");
	CreateTextureEX("絵背景30", 19000, -1000, -125, "cg/ev/resize/ev133_兜割に挑む光_cl.jpg");
	SetTone("絵背景30", Monochrome);
	SetVertex("絵背景30覆", 1637, 296);
	Zoom("絵背景30覆", 0, 1150, 1150, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　あの時に悟った。
　違ったのだ。

　死への渇望と死への恐怖が並立しているのではない。
　片方が<RUBY text="・・・・・・・・・">計算に入っていない</RUBY>のだ。

　湊斗景明は、己に人権を認めていない。

　自己の生存権を棄却している。
　自己の正当性を主張する権利を棄却している。

　だから、死に対する恐怖も顧慮しない。
　生きたいと訴える本能を黙殺して、<RUBY text="ルール">法</RUBY>に沿う死罰を
歓待する。

　つまり。
　それほどに、彼は自分を憎悪している。

//◆「ところに――」と「自己の」の間で兜割ＣＧ一瞬
　どうしてそうなったのかはわからない。
　村正として重ねてきた凄惨な罪の数々がそうさせた
のか。それだけでなく、あるいは更に根の深いところ
に――<?>
{	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeFR3("絵背景30覆",0,500,400,@0,@0,30,null, false);
	Fade("絵背景30",0,1000,null,true);
	WaitKey(100);
	Fade("絵背景30*",100,0,null,false);}
自己の全てを否定させるものが何かあるのか。

　いずれにしても、彼は自身について保護する価値を
見出さない。
　香奈枝が復讐の一刃を繰り出す時、何の抵抗もせず、
甘んじてそれを受けるだろう。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆inc久保田：プレ分けしました

	SetVolume("SEトンデマス*", 1000, 0, null);
	CreateColorEX("くろくなる", 30000, "#000000");
	Fade("くろくなる",1500,1000,null,true);

	SoundPlay("@mbgm18",0,1000,true);

	//CP_AllDelete();
	Cockpit_AllFade0();

	PrintBG("上背景", 30000);
	CreateColorSP("くらくなる", 10000, "#000000");
	CreateColorSP("絵色黒地", 10, "#000000");
	Delete("上背景");
	Delete("くろくなる");

//◆inc久保田：プレ分けしました

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
　
　　　　　　　　……納得できない。

　彼女は遂に、その想いを抱いた。

　大鳥香奈枝は、自分の行いが善行などと呼ぶに値し
ないことを知っている。
　彼女の復讐には常に理があった――しかし同時に、
狙われる罪人の側にも一つ二つの理はあった。

　彼らは復讐されるに足る罪を犯していたが、単なる
欲や衝動だけでそれをした者はむしろ少ない。
　大概は彼らなりの正義や必然があってそうしたのだ。

　だから香奈枝は復讐を決行する時、寝込みを襲った
り背後から不意に矢を射込んだりしたことはない。
　罪人に抵抗を許し、彼ら自身の正義にかけて戦うの
を許し、その上で真っ向から粉砕してきた。

　<RUBY text="せいぎ">断罪</RUBY>と<RUBY text="せいぎ">弁明</RUBY>、五分と五分で争う<RUBY text="ころしあい">法廷</RUBY>。
　そうあってこそ、復讐は正しい。

　湊斗景明にも理はある。
　彼は彼に為せる範囲で最善を尽くしたという一理が、
<RUBY text="しか">確</RUBY>とある。

　短い間ではあったが、香奈枝はその姿を傍らで見て
きたのだ。
　彼は確かに努力し、力を尽くした。

　その苦闘に、
　
　――――誰も、報いない。

　彼自身が己の理を主張せず、
　香奈枝は相反する理で彼を否定しかしないなら、
　
　彼の尽力を認める者は何処にもいないのだ。

　湊斗景明の苦闘は誰にも受け止められることなく、
　無価値なものとして廃棄されてしまう。

　
　　　　　　　　　納得できない。

　それは怒りにも似た想いだった。

　
　　　　　　　このまま殺したくはない。

　苛立ちのようでもあった。

　
　　　　　　　　彼を殺したくない。

　そして悔しさ。

　
　　　　　　　　　殺したくない。

　悲しさ――

　
　　　　　　　なら、
　　　　　　　……殺さなければいいのに。

　――自己否定。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ev204
//◆→ev204e。パキーン。なんか割れて壊れる描写
	CreateTextureSP("絵背景01", 6000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_e.jpg");
	Fade("くらくなる",1000,0,null,true);

	WaitKey(1000);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	OnSE("se特殊_鎧_アベンジ_ひび割れ",1000);
	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureSP("絵背景02", 6000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_f.jpg");
	Wait(50);
	Fade("フラッシュ白",0,0,null,true);

	WaitKey(1500);

//	OnSE("se特殊_雰囲気_崩壊音",1000);
//	Zoom("絵背景03", 500, 2000, 2000, null, false);
//	DrawEffect("絵背景03", 500, "Split", 0, 500, null);
//	FadeDelete("絵背景03", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　なぜ殺す。

　殺したくないならなぜ殺す。

　復讐のため？

　それにどの程度の価値がある。

　復讐は唯一の正義などではない、
　世に数多ある正義のひとつに過ぎないと、とうの昔
から知っているのに。

　どうしてそれに固執する？

　どうしてそれに固執した？

　……愉しいから。
　……<RUBY text="・・・・・">そうしたい</RUBY>から。

　しかし<RUBY text="おまえ">香奈枝</RUBY>は今、
　<RUBY text="・・・・・・・">そうしたくない</RUBY>と思ってしまったではないか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ev204f。ガラガラ。崩れる
//	CreateTextureSP("絵背景02", 6000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_g.jpg");
//	OnSE("se特殊_雰囲気_崩壊音",1000);
//	DrawEffect("絵背景03", 1500, "Split", 0, 1000, null);
//	FadeDelete("絵背景03", 1500, true);

	OnSE("se特殊_鎧_ひび割れ01",1000);
	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureSP("絵背景03", 6000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_g.jpg");
	Delete("絵背景01");
	Delete("絵背景02");
	Wait(50);
	Fade("フラッシュ白",0,0,null,true);
	WaitKey(1500);

	CreateTextureEX("絵演立絵左", 6100, Center, InBottom, "cg/st/st景明_通常_私服.png");
	Move("絵演立絵左", 0, @-256, @0, null, true);

	CreateTextureEX("絵演立絵右", 6100, Center, InBottom, "cg/st/st雄飛_通常_制服.png");
	Move("絵演立絵右", 0, @256, @0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　違う。違う。
　そうではない。

{	Fade("絵演立絵左", 300, 700, null, false);}
　湊斗景明への復讐はこれまでとは別。
　大鳥香奈枝自身の復讐だ。

{	Fade("絵演立絵右", 300, 700, null, false);}
　新田雄飛――
　守りたかった子。幸福になって欲しかった子。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("フラッシュ白2", 15000, "WHITE");
	Fade("フラッシュ白2",600,1000,null,true);


}

..//ジャンプ指定
//次ファイル　"mc04_038.nss"