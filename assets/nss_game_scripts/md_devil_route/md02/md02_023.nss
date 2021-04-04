//<continuation number="280">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_023.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md02_023.nss","md02_023_voicejoint",true);
	Conquest("nss/md02_023.nss","md02_023_voicejointProcess",true);
	Conquest("nss/md02_023.nss","md02_023_comic",true);
	Conquest("nss/md02_023.nss","md02_023_ComicProcess03",true);
	Conquest("nss/md02_023.nss","md02_023_ComicProcess02",true);
	Conquest("nss/md02_023.nss","md02_023_ComicProcess01",true);
	

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
	#bg008_教室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_024.nss";

}

scene md02_023.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_022.nss"

//◆教室
//◆カルネのイリス？
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg008_教室_01.jpg");
	FadeBG(0, true);
	CreateTextureEX("絵st50", 100, Center, InBottom, "cg/rec/stRec_イリス通常.png");
	CreateTextureEX("絵st100", 100, Center, InBottom, "cg/rec/stRec_イリス驚き.png");
	CreateTextureEX("絵st200", 200, Center, InBottom, "cg/rec/stRec_イリス笑顔.png");
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm29", 0, 1000, true);

	Fade("絵st50", 300, 1000, null, true);


	Fade("絵st100", 300, 1000, Dxl1, false);
	Fade("絵st50", 300, 0, Axl1, false);
	md02_023_comic(1);

	SetNwH("cg/fw/ny小柄な同級生.png");

//	md02_023_voicejoint();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆顔ＣＧ使わずネームＣＧ「小柄な同級生」
//【ｅｔｃ／ヒロインＤ】
<voice name="ｅｔｃ／ヒロインＤ" class="その他女声" src="voice/md02/0230010e014">
「あー、景明ちゃんだぁ〜。
{	Fade("絵st200", 300, 1000, Dxl1, false);
	Fade("絵st100", 300, 0, Axl1, false);}
　おはよーっ」

{	FwH("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0230020a00">
「お早うございます」

{	StC(1000, @0,@0,"cg/rec/stRec_イリス通常.png");
	FadeStC(200,false);
	Fade("絵st200", 350, 0, Axl1, false);
	NwH("cg/fw/ny小柄な同級生.png");}
//【ｅｔｃ／ヒロインＤ】
<voice name="ｅｔｃ／ヒロインＤ" class="その他女声" src="voice/md02/0230030e014">
「さむいねぇ」

{	FwH("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0230040a00">
「冬ですから」

{	NwH("cg/fw/ny小柄な同級生.png");}
//【ｅｔｃ／ヒロインＤ】
<voice name="ｅｔｃ／ヒロインＤ" class="その他女声" src="voice/md02/0230050e014">
「雪、ふらないかなぁ？」

{	FwH("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0230060a00">
「そろそろかと」

{	StC(1000, @0,@0,"cg/rec/stRec_イリス笑顔.png");
	md02_023_comic(3);
	FadeStC(300,false);
	NwH("cg/fw/ny小柄な同級生.png");}
//【ｅｔｃ／ヒロインＤ】
<voice name="ｅｔｃ／ヒロインＤ" class="その他女声" src="voice/md02/0230070e014">
「雪ってきれいだよね〜」

{	FwH("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0230080a00">
「はい」

{	NwH("cg/fw/ny小柄な同級生.png");}
//【ｅｔｃ／ヒロインＤ】
<voice name="ｅｔｃ／ヒロインＤ" class="その他女声" src="voice/md02/0230090e014">
「ふわふわのクリームみたい」

{	FwH("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0230100a00">
「は」

{	StC(1000, @0,@0,"cg/rec/stRec_イリス驚き.png");
	md02_023_comic(1);
	FadeStC(300,false);
	NwH("cg/fw/ny小柄な同級生.png");}
//【ｅｔｃ／ヒロインＤ】
<voice name="ｅｔｃ／ヒロインＤ" class="その他女声" src="voice/md02/0230110e014">
「あ！
　もしかしたら、本当にクリームなのかも！」

{	FwH("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0230120a00">
「は？」

{	StC(1000, @0,@0,"cg/rec/stRec_イリス怒る.png");
	FadeStC(300,false);
	NwH("cg/fw/ny小柄な同級生.png");}
//【ｅｔｃ／ヒロインＤ】
<voice name="ｅｔｃ／ヒロインＤ" class="その他女声" src="voice/md02/0230130e014">
「神様が食べてるケーキのかけらなのかもっ。
　それがぽろぽろ落ちてきてるんだよ！」

{	FwH("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0230140a00">
「……………………」

{	StC(1000, @0,@0,"cg/rec/stRec_イリス通常.png");
	FadeStC(300,false);
	NwH("cg/fw/ny小柄な同級生.png");}
//【ｅｔｃ／ヒロインＤ】
<voice name="ｅｔｃ／ヒロインＤ" class="その他女声" src="voice/md02/0230150e014">
「きっとそうだよ〜。
　神様だって、甘いお菓子が大好きなはずだ
しぃ」

{	StC(1000, @0,@0,"cg/rec/stRec_イリス怒る.png");
	md02_023_comic(2);
	FadeStC(300,false);}
//【ｅｔｃ／ヒロインＤ】
<voice name="ｅｔｃ／ヒロインＤ" class="その他女声" src="voice/md02/0230160e014">
「でもたくさんこぼしちゃうなんて、神様は
食べるのへたなのかなぁ？」

{	FwH("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0230170a00">
「君は何を言っているんだ」

{	StC(1000, @0,@0,"cg/rec/stRec_イリス笑顔.png");
	md02_023_comic(1);
	FadeStC(300,false);
	NwH("cg/fw/ny小柄な同級生.png");}
//【ｅｔｃ／ヒロインＤ】
<voice name="ｅｔｃ／ヒロインＤ" class="その他女声" src="voice/md02/0230180e014">
「それとも、まだ子供なのかな？
　神様のお母さんに怒られてるのかもね〜？
あははっ」

{	StC(1000, @0,@0,"cg/rec/stRec_イリス通常.png");
	FadeStC(300,false);}
//【ｅｔｃ／ヒロインＤ】
<voice name="ｅｔｃ／ヒロインＤ" class="その他女声" src="voice/md02/0230190e014">
「景明ちゃんはどう思う？」

{	FwH("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0230200a00">
「どう思うと言われても」

{	StC(1000, @0,@0,"cg/rec/stRec_イリス笑顔.png");
	FadeStC(300,false);
	NwH("cg/fw/ny小柄な同級生.png");}
//【ｅｔｃ／ヒロインＤ】
<voice name="ｅｔｃ／ヒロインＤ" class="その他女声" src="voice/md02/0230210e014">
「雪、はやくふらないかな〜。
　ね、ふったらいっしょに食べてみようよ！
おいしいかもっ！」

{	FwH("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0230220a00">
「――――――――」

</PRE>
	SetTextEXH();
	TypeBeginHIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	OnSE("se日常_物_椅子鳴る02", 1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　俺は座ったばかりの席から立ち上がった。
　級友の手を握り、優しく引く。

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――


	StC(1000, @0,@0,"cg/rec/stRec_イリス驚き.png");

	md02_023_comic(2);
	FadeStC(300,false);
	SetNwH("cg/fw/ny小柄な同級生.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／ヒロインＤ】
<voice name="ｅｔｃ／ヒロインＤ" class="その他女声" src="voice/md02/0230230e014">
「？　景明ちゃん、どうしたのぉ？」

{	SoundPlay("@mbgm31", 0, 1000, true);
	FwH("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0230240a00">
「いいんだ。
　君はもう、何も考えなくていい」

{	FwH("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0230250a00">
「きっとこれまで辛いことも多かったろう。
　だが君は、何も恥じなくて良いのだ」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0230260a00">
「病気は君の罪ではないのだから」

{	StC(1000, @0,@0,"cg/rec/stRec_イリス怒る.png");
	md02_023_comic(2);
	FadeStC(300,false);
	NwH("cg/fw/ny小柄な同級生.png");}
//【ｅｔｃ／ヒロインＤ】
<voice name="ｅｔｃ／ヒロインＤ" class="その他女声" src="voice/md02/0230270e014">
「びょーき？」

{	FwH("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0230280a00">
「さあ行こう」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	DeleteStC(300,true);
	Delete("絵st100");
	Delete("絵st200");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　涙が零れ落ちる前に、俺は歩き出した。
　まずは養護教諭のもとへ行き、彼女の今後について
相談しなくては……。

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500,1500);

..//ジャンプ指定
//次ファイル　"md02_024.nss"

}


function md02_023_voicejoint(){

	CreateProcess("md02_waitvoice", 150, 0, 0, "md02_023_voicejointProcess");
	SetAlias("md02_waitvoice","md02_waitvoice");
	Request("md02_waitvoice", Start);

}

function md02_023_voicejointProcess(){

	Wait(2600);

	Fade("@絵st200", 300, 1000, Dxl1, false);
	Fade("@絵st100", 300, 0, Axl1, true);

	$md02_iris = true;

}


//md02_023_comic(Process)
function md02_023_comic($イリス専用){

	if($イリス専用 == 1){
		CreateTextureEX("絵co", 1000, 328, 60, "cg/ef/co16_気がついた.png");
		Request("@絵co", Smoothing);
		Move("@絵co", 0, @+40, @+40, null, true);
		SetVertex("@@絵co", 100, 100);

		CreateProcess("md02_Coming", 15000, 0, 0, "md02_023_ComicProcess01");
		SetAlias("md02_Coming","md02_Coming");
		Request("md02_Coming", Start);

	}else if($イリス専用 == 2){

		CreateTextureEX("絵co", 1000, Center, 15, "cg/ef/co10_クエスチョン.png");
		Request("@絵co", Smoothing);
		SetVertex("@絵co", center, 100);
		Zoom("@絵co", 0, 1, 1, null, true);

		CreateProcess("md02_Coming", 15000, 0, 0, "md02_023_ComicProcess02");
		SetAlias("md02_Coming","md02_Coming");
		Request("md02_Coming", Start);

	}else if($イリス専用 == 3){

		CreateTextureEX("絵co02", 1000, 370, 70, "cg/ef/co19_波線.png");
		Move("@絵co02", 0, @0, @+20, null, true);
		Request("@絵co02", Smoothing);

		CreateTextureEX("絵co01", 1000, 342, 20, "cg/ef/co18_音符.png");
		Request("@絵co01", Smoothing);
		SetVertex("@絵co01", center, 100);

		SetVertex("@絵co02", 100, 100);
		Zoom("@絵co02", 0, 500, 500, null, true);

		CreateProcess("md02_Coming", 15000, 0, 0, "md02_023_ComicProcess03");
		SetAlias("md02_Coming","md02_Coming");
		Request("md02_Coming", Start);

	}

	Request("md02_Coming", Disused);

}

function md02_023_ComicProcess03(){

	Fade("@絵co02", 300, 1000, null, false);
	Zoom("@絵co02", 300, 1000, 1000, DxlAxl, false);
//	BezierMove("@絵co02", 500, (@0,@0){@-10,@0}{@+20,@0}{@-20,@0}{@+10,@0}(@0,@-20), null, false);

	Wait(280);

	Fade("@絵co01", 200, 1000, null, false);
	Rotate("@絵co01", 250, @0, @0, @+10, null,true);
	Rotate("@絵co01", 500, @0, @0, @-20, null,true);
	Rotate("@絵co01", 250, @0, @0, @+10, null,true);

	Wait(200);

	Fade("@絵co*", 500, 0, null, true);


	Delete("@絵co01");
	Delete("@絵co02");

}

function md02_023_ComicProcess02(){

	Fade("@絵co", 300, 1000, null, false);
	BezierMove("@絵co", 500, (@0,@0){@0,@+100}{@0,@-100}(@0,@0), Dxl1, false);
	Zoom("@絵co", 500, 1000, 1000, Dxl1, true);

	Rotate("@絵co", 300, @0, @0, @15, AxlDxl,true);
	Rotate("@絵co", 600, @0, @0, @-30, AxlDxl,true);
	Rotate("@絵co", 300, @0, @0, @15, AxlDxl,true);

	Wait(100);

	Zoom("@絵co", 600, 1, 1, Dxl1, false);
	Fade("@絵co", 300, 0, null, true);

	Delete("@絵co");

}

function md02_023_ComicProcess01(){

	Move("@絵co", 150, @-30, @-30, Dxl1, false);
	Zoom("@絵co", 150, 1500, 1500, Dxl1, false);
	Fade("@絵co", 100, 1000, null, true);

//	OnSE("serec_擬音_コミカル_ピピピ",1000);

	Fade("@絵co", 100, 0, null, true);
	Fade("@絵co", 100, 1000, null, true);
	Fade("@絵co", 100, 0, null, true);
	Fade("@絵co", 100, 1000, null, true);
	Fade("@絵co", 100, 0, null, true);

	Delete("@絵co");

}

