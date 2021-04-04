//<continuation number="630">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_002.nss_MAIN
{

	$TITLE_NOW=" ――――　第一編 鮮紅騎　―――― ";

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
	#bg006_雄飛の部屋_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_新田雄飛=true;
	#voice_on_来栖野小夏=true;

	$PreGameName = $GameName;

	$GameName = "ma01_003.nss";

}

scene ma01_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_001.nss"

//◆タイトル「第一編　鮮紅騎」
//◆テロップ：これは英雄の物語ではない。

//◆雄飛の部屋



/*
//嶋流作成αスクリプト
	CreateTexture("タイトル", 500, Center, 50, "cg/bg/第一章Taitle.jpg");
	Move("タイトル", 0, @0, @+10, null, true);
	Fade("タイトル", 0, 0, null, false);

	CreateTexture("テロップ", 500, Center, Middle, "cg/bg/テロップ.png");
	Move("テロップ", 0, @0, @+10, null, true);
	Fade("テロップ", 0, 0, null, false);

	Wait(300);
	Move("タイトル", 700, @0, @-10, Dxl1, false);
	Fade("タイトル", 1000, 1000, null, true);

	WaitKey(2000);

	Move("タイトル", 700, @0, @+10, Dxl1, false);
	Fade("タイトル", 1000, 0, null, false);
	Request("タイトル", Disused);

	WaitKey(2000);
	WaitAction("タイトル", null);

	Move("テロップ", 500, @0, @-10, null, false);
	Fade("テロップ", 500, 1000, null, false);

	WaitKey(3000);

	CreateColor("白幕１", 19000, 0, 0, 1024, 576, "White");
	Fade("白幕１", 0, 0, null, false);

	Wait(200);

	Fade("白幕１", 1000, 1000, null, true);
	Delete("テロップ");
	CreateColor("黒幕１", 1000, 0, 0, 1024, 576, "Black");
	Fade("白幕１", 500, 0, null, true);
	Delete("白幕１");
*/

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 1500, "Black");
	Delete("上背景");


	CreateTextureEX("絵テロ100", 2000, Center, Middle, "cg/sys/Telop/lg_第一編.png");
	Fade("絵テロ100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("絵テロ100", 2000, true);

	WaitKey(2000);

	CreateTextureEX("絵テロ100", 2000, Center, Middle, "cg/sys/Telop/tp_第一編序文.png");
	Zoom("絵テロ100", 0, 700, 700, null, true);
	Request("絵テロ100", Smoothing);
	Fade("絵テロ100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("絵テロ100", 3000, true);

	WaitKey(2000);

	SoundPlay("@mbgm35",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……唐突だが。
　最悪の目覚めというものについて語らせて欲しい。

　いや、まず聞こう。
　最悪の目覚めとは何がもたらすのだろうか？

「悪夢」

　さてどうだろう？
　むしろ悪夢からの目覚めは安堵で満たされるのでは
ないか？

「騒音」

　なるほど迷惑だ。
　しかしそれは、忍耐という武器を駆使すれば凌げる
程度のものだ。凌げないのなら出刃包丁という武器を
使えば済む。どちらにしろ大したことではない。

　他には？

「幼馴染の女の子が早く起きて遅刻しちゃうとか妙に
甘ったるくて滑舌の良い声で言いながら強引に布団を
引っぺがす」

　笑止。

「――加えて親が決めた許嫁と面倒見のいいとなりの
お姉さんと義理の妹とそのやたら若い母親と住み込み
のメイドさんと裏山の神社の巫女さんと某国から留学
中の王女さまも毎朝起こしに来てくれるのだけど」

「全員、植物に例えるとウツボカズラに似ている」

　……うん。それはとてもスリリングだ。
　だが君が優柔不断さを捨て、勇気と決断力をもって
彼女たちに接すれば、きっと問題は解決できる。最悪
の状態ではない。諦めてはならない。――戦え。

　ポイントは死体を残さないことだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　――では。
　最悪の目覚めとは？

　それはただ一つ。<k>
　寝ている最中に足が<RUBY text="つ">攣</RUBY>って、その痛みで目が覚める
ということだ。

　なんだそれとか言わないように。
　特に経験のない人は。

　想像してみて欲しい。
　公園を散歩する夢を見ていたとしよう。その夢の中
で突然、怪我をする。<k>痛い。<k>何がなんだかわからない。<k>
もがき苦しみ、やがて目覚めて――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　足が攣っている自分を発見する。

　わかってもらえるだろうか？
　一日の始まり、起床の瞬間に、<RUBY text="・・・・・・・・・">足を攣らせて苦痛に</RUBY>
<RUBY text="・・・・・・・・・・・・">悶えている自分を発見する</RUBY>というのが、どういうこと
なのか。

　……たまらなく哀しい気分になってきた人は正常な
感性を持っていると思う。
　実際、たまらない。泣きたい。泣いても解決しない
ところがまた酷い。

　その哀しみを味わう時間が来たようだ。
　おれの眠りはそろそろ覚める。足から感じる痛みが
ここまでクリアーになっているのなら、もうあと十秒
とは掛からないだろう。

　ああ――自分自身が浮かび上がってきた。
　おれはそう、<RUBY text="にったゆうひ">新田雄飛</RUBY>という。

　名も無き君よ、さらば。そしてありがとう。
　君という現実逃避対話用仮想人格がいてくれたお陰
で、おれの苦しみは少しだけ和らいだ。

　もう会うことも無いだろうが、どうか元気で。
　おれは現実へゆくよ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateColor("白幕", 150, 0, 0, 1024, 576, "White");
	Request("白幕", AddRender);
	Fade("黒幕１", 5000, 0, null, false);

	SetVolume("@mbgm35", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
　そこに待つのは苦痛ばかりだけれど。
　大丈夫。なんとかやっていけるさ――――

</PRE>
	SetTextEXC();
	TypeBeginCO();//―――――――――――――――――――――――――――――

//◆雄飛の部屋
	CreateTextureSP("絵背景100", 50, Center, Middle, "cg/bg/bg006_雄飛の部屋_01.jpg");
	CreateTextureSP("絵背景１", 100, Center, Middle, "cg/bg/bg006_雄飛の部屋_01.jpg");


//◆顔ウィンドウ定義
	SetFwC("cg/fw/fw雄飛_通常b.png");

	Fade("黒幕１", 1000, 0, Dxl1, true);
	Delete("黒幕１");
	Fade("白幕", 1000, 0, null, true);
	Delete("白幕");

	#voice_on_新田雄飛=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020010b56">
「…………」

{	#voice_on_来栖野小夏=true;
	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020020b33">
「…………」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020030b56">
「……や」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020040b33">
「や？」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020050b56">
「やってけねえ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
（図解）

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆文字表示速度操作でノーウェイト表示にしたいんだ
//◆けどできたっけか？

//◆　　　　　／　　／
//◆おれ→　○□卍□○　←？
//◆　　　　　＼　　＼


SetBacklog("　　　　　／　　／", null, null);
SetBacklog("おれ→　○□卍□○　←？", null, null);
SetBacklog("　　　　　＼　　＼", null, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　　　　　＼　　＼
おれ→　○□卍□○　←？
　　　　　／　　／

</PRE>
	SetTextEXC();
	Request("@text0090", NoLog);
	Request("@text0090", PushText);
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆　　　　　／　＼
//◆　　　　○□卍□○
//◆　　　　　＼　　＼
//◆　　　　　　↑裏四の字

SetBacklog("　　　　　／　＼", null, null);
SetBacklog("　　　　○□卍□○", null, null);
SetBacklog("　　　　　＼　　＼", null, null);
SetBacklog("　　　　　　↑裏四の字", null, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　　　　　＼　　＼
　　　　○□卍□○
　　　　　／　＼
　　　　　　↑裏四の字

</PRE>
	SetTextEXC();
	Request("@text0100", NoLog);
	Request("@text0100", PushText);
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆　　　　　／　＜　←ガッツポーズ
//◆　　　　○□卍□○
//◆　　　　　＼　　＼

SetBacklog("　　　　　／　＜　←ガッツポーズ", null, null);
SetBacklog("　　　　○□卍□○", null, null);
SetBacklog("　　　　　＼　　＼", null, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　　　　　＼　∧　←ガッツポーズ
　　　　○□卍□○
　　　　　／　　／

</PRE>
	SetTextEXC();
	Request("@text0110", NoLog);
	Request("@text0110", PushText);
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　――なあ、君よ。
　おれはどうやら、間違っていたようだ。

</PRE>
	SetTextEXC();
	TypeBeginCO();//―――――――――――――――――――――――――――――

//◆ズバッとワイプして空へ

	SoundPlay("@mbgm25",0,1000,true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 250, 0, 1000, 100, Dxl1, "cg/data/slide_02_01_0.png", true);

	CreateTexture("絵背景50", 500, 0, 0, "cg/bg/bg001_空a_01.jpg");
	Fade("絵背景50",0,1000,null,true);
	Zoom("絵背景50", 0, 1500, 1500, null, true);

	Zoom("絵背景50", 400, 1000, 1000, Axl1, false);
	DrawTransition("黒幕１", 250, 1000, 0, 100, Dxl1, "cg/data/slide_02_01_1.png", false);
	Request("黒幕１", Disused);

	Wait(100);

	SetFwC("cg/fw/fw雄飛_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020060b56">
「なぜだ<RUBY text="くるすのこなつ">来栖野小夏</RUBY>ゥーーーーッッ!!」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020070b33">
「雄飛、早く起きないと遅刻しちゃうよっ」

{	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020080b56">
「妙に甘ったるく滑舌の良い声でそんなこと
言うな！　この状況でっ！　それ人間業じゃ
ない！　断じて有り得ない！　そんな生物は
人間であってはならないとおれは信じる！」

{	FwC("cg/fw/fw小夏_照れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020090b33">
「起きないと……キ・スしちゃうぞ♪」

{	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020100b56">
「憎い！　傲慢にも優しさを装うその残虐性！
　これが憎悪か！　真性の邪悪に対する人間
精神の根源的憎悪かっ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	Shake("絵背景１", 500, 0, 3, 0, 0, 500, null, false);

//◆ＳＥ：床ばんばんばん
	CreateSE("SE01","se人体_動作_叩く01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(200);
	CreateSE("SE02","se人体_動作_叩く01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Wait(200);
	CreateSE("SE03","se人体_動作_叩く01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Wait(200);

	SetFwC("cg/fw/fw雄飛_驚くb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020110b56">
「それはそれとしてほんともう限界なんであ
ががが外して外して外してぇぇぇぇぇぇ!!」

{	FwC("cg/fw/fw小夏_照れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020120b33">
「この寝ぼすけさんめっ。ちゅー☆」

{	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020130b56">
「甘い声の描き出す幸福の幻影がおれを苛む！
そんなありもしない希望を見せるんじゃねえ！
せめて絶望させろ！　わかったもういい殺せ、
最後の慈悲でおれを殺せぇーーーーーーッ!!」

{	NwC("cg/fw/nw小夏の父.png");}
//【ｅｔｃ／小夏父】
<voice name="ｅｔｃ／小夏父" class="その他男声" src="voice/ma01/0020140e125">
「はっはっはっ、小夏はやっぱり雄飛くんの
ことが好きなんだなぁ……」

{	NwC("cg/fw/nw小夏の母.png");}
//【ｅｔｃ／小夏母】
<voice name="ｅｔｃ／小夏母" class="その他女声" src="voice/ma01/0020150e126">
「ほんと、聞いてるこっちが照れちゃう。
　もぉ」

{	FwC("cg/fw/fw雄飛_怯えb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020160b56">
「おじさーん！　おばさーん！　お願いです
からちょっとここまで足を運んであなた方の
娘であるところのこの怪生物の実態を見て！
つーかおれの声聴こえてるの!?　ねえ!?」

{	FwC("cg/fw/fw小夏_通常a.png");
	FadeFwC(0,true);}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020170b33">
「雄飛ったらー。ほんと、わたしがいないと
駄目なんだからっ」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆ＳＥ：ぎり。
	CreateSE("SE01","se人体_動作_締める01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("絵背景１", 500, 5, 3, 0, 0, 500, null, false);

	FwC("cg/fw/fw雄飛_驚くb.png");
	FadeFwC(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020180b56">
「がぁぁぁぁぁぁぁぁぁぁぁぁぁぁぁぁ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　本当に最悪の目覚めが、ここにあった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteFw(300,false);

	SetVolume("@mbgm25", 1000, 0, null);

//◆町並み
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 5000, "#000000");
	CreateTextureSP("絵背景50", 50, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	Wait(1000);

	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	CreateSE("SE01","se人体_足音_歩く02_L");
	MusicStart("SE01",0,1000,0,750,null,true);

	SoundPlay("@mbgm22",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　鎌倉はのどかな町だ。

　歴史ある都市だからか、活気に満ちた朝の時間帯に
あってもどこか<RUBY text="しんしん">深々</RUBY>としていて、ともすれば殺気立つ
忙しい人々を悠然と宥めるような気風がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　源頼朝の開府に始まって千年――正確には八百年に
満たないが――という時間の積み重ねには、得も言わ
れぬ力が宿っていたとしても、不思議のないことだ。

　たかだか数十年の命しか持たない人間が抗えるもの
ではなかろう。

　だからだ、と言うことはできるだろうか。
　一人のちっぽけな人間として、悠久なる時の重さに
は逆らえなかった――いやそんな不遜なことを考えも
しなかったと。

　そう告げたとして、どんな人間がそれを責められる
だろう。
　いないはずだ……歴史というものに抗えるような、
抗えると錯覚するような、そんな愚かしい者は。

　誰も責めない。
　この鎌倉という町がおれを遅刻させたことを、学校
の教師たちはきっと責めない。責められはしない。

{	SetVolume("SE01", 3000, 0, null);}
　責めるに決まっていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StL(500, @0,@0,"cg/st/st雄飛_通常_制服.png");

	FadeStL(300,true);

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020190b56">
「はぁ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　ため息をついて、のたのたと歩く。
　自己正当化に失敗しても、まだ痛む足を早める気は
さっぱり起きない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StR(500, @0,@0,"cg/st/st小夏_通常_制服.png");

	FadeStR(300,true);
	SetFwC("cg/fw/fw小夏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020200b33">
「雄飛、遅いよー」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020210b56">
「……理由がわからんとでも言うつもりか」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020220b33">
「それはわかるけど」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020230b56">
「当たり前だ。前から聞こうとは思っていた
んだがな、どうしておめーは何事につけ何か
につけてああ破壊的破壊的な方向へ――」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020240b33">
「元から低い背が更に縮んで足も短くなった
から遅いのね。かわいそう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆攻撃軌道
//◆ＳＥ：ヒュン

	SetVolume("@mbgm22", 300, 200, null);
	CreateSE("SE01","se戦闘_攻撃_振る02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColor("フラッシュ白", 15000, 0, 0, 1024, 576, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	Delete("@fw*");
	DeleteStR(0,true);
	DeleteStL(0,true);

	CreateTexture("絵背景１", 1000, 0, 0, "cg/ef/ef015_汎用横軌道.jpg");

	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　――――<RUBY text="シュン">迅</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　おれは鞄の紐から肩を抜くや、それを横殴りに振り
込んだ。
　<RUBY text="テレフォン">大振り</RUBY>な一撃。だがそれでいい。

　狙いは三つ。
　先制の一撃、重荷の投棄、そして囮だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SL_centerout(@0,@0,3000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　小夏に向かう鞄を投げ放ちながら、沈み込む。
　息を吸い溜めている時間はない。今あるだけの貯蓄
を使い切る。

　――ハ。

　気の塊を吐き出す。

　三撃。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	SL_rightdown(@0,@0,2000);
	SL_right(@-100,@100,2500);
	Delete("絵背景１");

	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");


	CreateSE("SE03","se戦闘_攻撃_刀振る01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	SL_centeroutfade(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　腹部へ掌底。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_攻撃_振る02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SL_rightdownfade(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　逆手を使って首筋に手刀。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se戦闘_攻撃_刀振る01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	SL_rightfade(10);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　足甲を狙った下段踵打ち。

　一連の三手。

　そこまで手を重ねた理由は単純。

　掌底も手刀も、当たらなかったからだ。

　当たらなかった理由も簡明。

　いるべき場所に敵がいなかったから。

　宙を舞うおれの鞄だけが見える。

</PRE>
	SetTextEXC();
	TypeBeginCO();//―――――――――――――――――――――――――――――

	SL_Delete();
	CreateSE("SE02","se戦闘_攻撃_刀振る02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	SL_down(@0,@0,3000);
	SL_downfade2(10);
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　最後の一打、踵蹴りが、空気を散らして地面を踏む。

　それと、同時か。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SL_rightup(@0,@0,2500);

	CreateSE("SE02","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	SL_rightupfade2(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0411]
　死角をくぐって――おそらくは左脇下からの攻撃か
――疾風のような一閃が、狙い過たずおれの顎を打ち
抜いていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆がす。
//◆ホワイトアウト

	CreateSE("SE02","se戦闘_攻撃_殴る02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorEXadd("フラッシュ白", 3000, "WHITE");

	CreatePlainSP("絵シェイク500", 500);
	Shake("絵シェイク500", 300, 5, 20, 0, 0, 500, Dxl1, false);

	Wait(100);

	Fade("フラッシュ白",500,1000,null,true);
	Wait(500);
	Delete("絵シェイク500");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　空を見る。
　真っ白だ。やけに明るい。

　光り過ぎだよ。空。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆青空
	CreateTexture("絵背景１", 500, 0, 0, "cg/bg/bg001_空a_01.jpg");
	Fade("フラッシュ白", 1000, 0, null, true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　気がつくと、おれは仰向けに寝転がっていた。
　空は元通り、単に青かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　そして、おれは牛に踏まれかけていた。

</PRE>
	SetTextEXC();
	TypeBeginCO();//―――――――――――――――――――――――――――――

//◆町並み
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("絵背景１");


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　半分寝ている農夫のおじさんに曳かれるまま野菜を
運んでいるその牛は、心底どうでも良さそうな顔付き
で、おれを眺めていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	CreateSE("SE01","se人体_動作_起きる02");
	MusicStart("SE01",0,500,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　起き上がる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	CreateSE("SE02","se人体_動作_拾う01");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　鞄を拾う。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(500, @0,@0,"cg/st/st雄飛_通常_制服.png");
	StR(500, @0,@0,"cg/st/st小夏_通常_制服.png");

	FadeStL(300,false);
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　十歩ほども先を歩いていた小夏に小走りで追いつき、
隣へ並ぶ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm22", 1000, 1000, null);

	SetFwC("cg/fw/fw小夏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020250b33">
「でね」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020260b56">
「おう」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020270b33">
「リツから聞いた話だけど、やっぱり服とか
アクセサリーとかは今のうちに買っておいた
方がいいんだって」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020280b56">
「高いだろ？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020290b33">
「うん。ちょっとしたブラウスなんかでも、
一着千円くらいはするよ」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020300b56">
「一生遊んで暮らせる金額だな」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020310b33">
「あんたの一生、あと一週間で終わりなの？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020320b56">
「冗談だ。でも感覚的にはそれくらい高ぇ」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020330b33">
「そーねー。ちょっと前まではその十分の一
くらいで買えたのに」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020340b56">
「いや……。
　さすがにそれは、ちょっと前じゃない気が
するぞ。戦前の話じゃねーか」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020350b33">
「そうかなぁ。
　ここ数年でばかみたいに値上がりしてる気
がするんだけど」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020360b56">
「で、おまえ、そんなの買うのか？」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020370b33">
「買えるわけないでしょ。
　あんたと同じお小遣いしかもらってないん
だから、わたしも」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020380b56">
「だよな」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020390b33">
「でも、欲しいなら今買うしかないんだって
さ。もう少しするとお金があっても買えなく
なるんだって」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020400b56">
「なんで」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020410b33">
「ええとね……よくわからないけど。女物の
服とか装飾品とかを作るのに使われる資源が、
軍需産業に回される、ってことみたい」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020420b56">
「あー……なるほど」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　今に始まったことではない。
　戦前、戦中から、そういった流れは続いている。

　わからないのは、戦争が終わって数年経つ現在でも
それが途絶えないことだが。
　六波羅の連中がやることにまともな理由があるなど
とは思わない方がいいのだろう。

　どうせ利権がらみのなんやかんやだ。
　幕府万歳。どんどん肥え太れ元帥サマ。足腰が立た
なくなるまでね！　そしたら焼いて食ってやれる。

　何にしろ、嗜好品は徐々に庶民の手から遠ざけられ、
かわりに軍需物資や生活必需品の増産に拍車がかかる。
　曰く、贅沢は敵なり。さて誰の敵やら。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_呆れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020430b33">
「輸入品なら関係ないけど、それこそ買えた
もんじゃないし……」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020440b56">
「まあいいじゃねえか別に。服くらい」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020450b33">
「あんた、わたしが継ぎのある服とか着てて
も平気なの!?」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020460b56">
「平気じゃない理由は相模湾の底まで探して
も無さそうなんだが……」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020470b33">
「そう。もう覚悟は出来ているのね。
　わたしがみっともない格好をして人に笑わ
れる都度なぜかあんたの肋骨が一本破損する
仕組みになってるんだけど」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020480b56">
「何その暴力システム……」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020490b33">
「肋骨って二四本しかないのにね。
　一ヶ月ももたないのね。可哀想に」

{	FwC("cg/fw/fw雄飛_怯えb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020500b56">
「一日一本かよ！　嫌だよ！
　笑われたくないなら出歩くなよ家にいろよ
ずっと！」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020510b33">
「でも、あら不思議。これは例えばの話なん
だけど、あんたとわたしがお金を出し合って
服を一着買ったりすると、なんと一月の寿命
が一年になったりするの。命って神秘的よね」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020520b56">
「……ああ。そこへ持っていきたかったんだ。
　この話」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　回りくどかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020530b56">
「ま、別にいいけどな」

{	FwC("cg/fw/fw小夏_驚くa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020540b33">
「……えっ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0601]
　あっさり答えたおれに、小夏が凝固する。
　どうやら冗談半分だったらしい。まあ普通そうか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0602]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020550b33">
「なんで？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020560b56">
「なんでって言われても。
　おれ、金の使い道ってねえし」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0603]
　スポーツに打ち込んでいるわけでなく。
　何か趣味を持っているでもなく。

　小遣いを使う機会といえば……
　学校の帰りに小腹が空いた時とか、退屈凌ぎに雑誌
でも読みたくなった時とか、その程度。

　スポーツ全般が好きで趣味も多彩な忠保あたりとは
必要経費の桁が違う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_笑顔b.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020570b56">
「だからいいよ、別に。いくら要るんだ？」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020580b33">
「…………」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020590b56">
「おーい？」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020600b33">
「要らない」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020610b56">
「へ？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020620b33">
「早くいこ。ほんとに遅刻するよ」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020630b56">
「……ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	DeleteStR(300,false);
	DeleteStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　先に立ってすたすたと歩いていってしまう小夏を、
おれは慌てて追った。

　女心と秋の空。
　さっぱりわからんね。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1000, 1000);




..//ジャンプ指定
//次ファイル　"ma01_003.nss"

}
