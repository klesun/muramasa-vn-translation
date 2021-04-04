//<continuation number="560">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_041.nss_MAIN
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
	#bg002_空a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_042.nss";

}

scene md04_041.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_040.nss"


//◆空
//◆銘伏

/*
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg002_空a_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm37", 0, 1000, true);

	Delete("上背景");
//	FadeDelete("黒幕１",1500,true);
	DrawDelete("黒幕１", 300, 100, "slide_02_01_0", true);


//■他キャラは表示しないで無線で会話？　inc櫻井
	OnSE("se戦闘_動作_空突進03", 1000);

	StL(1500, @-700, @500, "cg/st/3d銘伏_騎航_抜刀.png");
	FadeStL(300, false);
	Shake("@StL*", 1000000, 1, 1, 0, 0, 1000, null, false);

	CreateTextureEX("やられ役02", 900, @-850, @-300, "cg/st/3d九四式竜騎兵_騎航_戦闘b.png");
	CreateTextureEX("やられ役03", 800, @-850, @-600, "cg/st/3d九四式竜騎兵_騎航_戦闘a.png");

	Fade("やられ役02", 0, 1000, null, false);
	Fade("やられ役03", 0, 1000, null, false);

	Zoom("やられ役02", 0, 500, 500, null, false);
	Zoom("やられ役03", 0, 250, 250, null, false);

	Shake("やられ役*", 10000000, 1, 1, 0, 0, 1000, AxlDxl, false);

	Move("やられ役02", 300, @1000, @0, null, true);
	Move("やられ役02", 300, @-50, @0, null, false);

	Move("やられ役03", 300, @1000, @0, null, true);
	Move("やられ役03", 300, @-50, @0, null, false);


	CreateSE("飛行", "se戦闘_動作_空走行01_L");
	MusicStart("飛行", 0, 1000, 0, 1000, null,true);

	Move("@StL*", 300, @850, @-100, null, true);
	Move("@StL*", 500, @-150, @100, DxlAuto, true);

*/

	PrintBG("上背景", 30000);

	CreateColorSP("黒幕１", 30000, "#000000");
	OnBG(100, "bg001_空a_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm37", 0, 1000, true);

	Delete("上背景");

//	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("絵色100");
	Delete("絵演*");
	Request("プロセス*", Stop);
	Delete("プロセス*");
	Delete("カメラ１/やられ役*");


	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,Dxl2,true);


	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");



//	CreateTextureEX("カメラ１/やられ役01a", 500, @200, @-200, "cg/st/3d銘伏_騎航_抜刀.png");
	CreateTextureEX("やられ役01a", 2000, -114, -385, "cg/st/3d銘伏_騎航_抜刀.png");
	CreateTextureEX("カメラ１/やられ役02a", 350, @400, @-0, "cg/st/3d九四式竜騎兵_騎航_戦闘b.png");
	CreateTextureEX("カメラ１/やられ役03a", 200, @400, @-300, "cg/st/3d九四式竜騎兵_騎航_戦闘a.png");
	CreateTextureEX("カメラ１/やられ役04a", 100, @500, @-200, "cg/st/3d九四式竜騎兵_騎航_戦闘b.png");
//	CreateTextureEX("カメラ１/やられ役01b", 500,  @200, @-200, "cg/st/3d零零式竜騎兵_騎航_発振.png");
//	CreateTextureEX("カメラ１/やられ役02b", 350,  @400, @-0, "cg/st/3d零零式竜騎兵_騎航_発振.png");
//	CreateTextureEX("カメラ１/やられ役03b", 200,  @400, @-300, "cg/st/3d零零式竜騎兵_騎航_発振.png");
//	CreateTextureEX("カメラ１/やられ役04b", 100,  @500, @-200, "cg/st/3d零零式竜騎兵_騎航_発振.png");

//	Fade("カメラ１/やられ役01a", 0, 1000, null, false);
	Fade("やられ役01a", 0, 1000, null, false);
	Fade("カメラ１/やられ役02a", 0, 1000, null, false);
	Fade("カメラ１/やられ役03a", 0, 1000, null, false);
	Fade("カメラ１/やられ役04a", 0, 1000, null, false);

	SetVertex("やられ役01a", @-2000, @1550);

	Zoom("やられ役01a", 0, 800, 800, null, true);
	Zoom("カメラ１/やられ役02*", 0, 500, 500, null, false);
	Zoom("カメラ１/やられ役03*", 0, 300, 300, null, false);
	Zoom("カメラ１/やられ役04*", 0, 250, 250, null, false);

//	Move("カメラ１/やられ役01*", 0, -41, -218, null, true);
	Move("カメラ１/やられ役02*", 0, -268, -45, null, true);
	Move("カメラ１/やられ役03*", 0, -429, -206, null, true);
	Move("カメラ１/やられ役04*", 0, -257, -304, null, true);

	Request("カメラ１/やられ役0*", Smoothing);

	OnSE("se戦闘_動作_空突進03", 1000);
	OnSE("se戦闘_動作_空突進06", 1000);
	CreateSE("停滞", "se戦闘_動作_空走行02_L");
	MusicStart("停滞", 0, 700, 0, 1000, null,true);


$ループムーブナット名 = "@やられ役01*";
$ループムーブタイム = 25000;

$ループムーブナット名２ = "@カメラ１/やられ役02*";
$ループムーブタイム２ = 20000;

$ループムーブナット名３ = "@カメラ１/やられ役03*";
$ループムーブタイム３ = 15000;

$ループムーブナット名４ = "@カメラ１/やられ役04*";
$ループムーブタイム４ = 10000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	CreateProcess("プロセス３", 150, 0, 0, "FlyMoving3");
	CreateProcess("プロセス４", 150, 0, 0, "FlyMoving4");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");
	SetAlias("プロセス３","プロセス３");
	SetAlias("プロセス４","プロセス４");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);
	Request("プロセス４", Start);

	MoveCamera("@カメラ１", 0, 500, 50, @0, null, true);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", false);
	Zoom("やられ役01a", 1500, 1000, 1000, Dxl1, false);
	MoveCamera("@カメラ１", 1500, 100, 200, @300, Dxl1, true);
	Delete("黒幕１");
	SetBlur("カメラ１/やられ役0*", true, 1, 500, 100, false);
	SetBlur("やられ役01a", true, 1, 500, 100, false);

	Wait(500);

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410010a06">
「…………」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410020a06">
（そうか）

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410030a06">
（これは……貴様か。茶々丸）

{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/md04/0410040e195">
《かっ、閣下……
　零零式が――全て！　<RUBY text="ぎん">白銀</RUBY>色にっ！》

//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/md04/0410050e195">
《暴走しています!!》

{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/md04/0410060e196">
《陣が……このままでは……
　閣下、如何なさいますか!?》

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410070a06">
「……」

{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/md04/0410080e195">
《何なんだこれは……
　なんでこんなことに……》

//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/md04/0410090e195">
《新型だからか？
　<RUBY text="ＣＰＵ">演算装置</RUBY>に何かとんでもない欠陥が――》

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410100a06">
《違う。
　裏切られただけだ》

{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/md04/0410110e195">
《はっ？》

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410120a06">
（裏切られただけだ。
　……これまで俺がそうしてきたように）

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410130a06">
（<RUBY text="・・・">俺の番</RUBY>が来た。
　それだけだ）

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410140a06">
（裏切りと謀殺を重ねてきた俺が、最後には
裏切られて滅ぶ。
　まぁ……そんなものだろうさ）

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410150a06">
（例え俺の信念に曇りが無かったとしても）

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410160a06">
（俺は正義を押し通して邪魔者を蹴散らした。
　ならば、別の正義が俺を邪魔者とみなして
蹴散らすのも道理よ）

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410170a06">
（結局は力の多寡で決まること）

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410180a06">
（俺がこれまで勝って来られたのは、正義が
あったからではなく、相手より強かったから
に過ぎん……）

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410190a06">
（相手の方が強ければ……
　俺が裏切られ、蹴散らされ、敗れる）

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410200a06">
（ふん。それが茶々丸とはな。
　性根の曲がり具合で負けたという辺りか）

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410210a06">
（湊斗を口説き損ねるわけだ）

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410220a06">
（…………）

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410230a06">
（命運尽きた、か）

{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/md04/0410240e196">
《閣下！》

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410250a06">
「……」

{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/md04/0410260e196">
《もはやこれまで！
　撤退のご下命を！》

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410270a06">
《撤退？》

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410280a06">
《何処へ退くというのだ》

{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/md04/0410290e196">
《この空域は危険です！
　とにかく、離脱を……》

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410300a06">
《地上には我が主、四郎邦氏殿下がおられる。
　我が民、鎌倉の市民達もいる》

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410310a06">
《その両方を打ち捨ててか》

{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/md04/0410320e196">
《……し、しかし……》

{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/md04/0410330e195">
《閣下、撤退せねば全滅の――》

{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410340a06">
《<RUBY text="うろた">狼狽</RUBY>えるな!!
　貴様らは腑抜けかッ!!》

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410350a06">
《勝ち戦しかできんのか!?
　たかだか戦局が絶望的になった程度で腰を
砕いてどうする!!》

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410360a06">
《会津武士の名に恥じるがいい!!》

{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/md04/0410370e195">
《――――》

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410380a06">
《わかっていたはずだぞ。
　この一戦こそ大和の浮沈を占う天王山》

{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410390a06">
《六年前とは違う――次の機会は無い！
　ここで戦い抜き、勝たなくてはならん》

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410400a06">
《何があろうとだ！》

{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/md04/0410410e196">
《閣下……》

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410420a06">
《思い出せ。
　岡部弾正、あの忌々しい叛賊を……》

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410430a06">
《我らに囲まれ進退窮まった時、奴は降伏し
命乞いをしたか？　家臣を捨てて逃げたか？
　そんな可愛気があの愚劣な老将にあったか》

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410440a06">
《ここで我らが無様を晒せば、いずれ地獄で
会った折に、奴の嘲笑を買う始末となろうよ。
　……貴様らの矜持は、そんな屈辱に甘んじ
られる程度のものか？》

{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/md04/0410450e195">
《……》

{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/md04/0410460e196">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410470a06">
《陣形を組み直せ》

{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410480a06">
《まず暴走中の零零式を駆逐する！
　進駐軍はその後だ！》

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410490a06">
《掛かれ!!》

{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/md04/0410500e195">
《――はッ！》

{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/md04/0410510e196">
《了解!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆配下、動く

	OnSE("se戦闘_動作_空突進02", 1000);
	OnSE("se戦闘_動作_空突進03", 1000);
	OnSE("se戦闘_動作_空突進04", 1000);

	SetBlur("カメラ１/やられ役0*", false, 1, 500, 100, false);
	MoveCamera("@カメラ１", 300, -1000, -300, @500, Axl1, false);

	Wait(100);

	Move("やられ役01*", 2400, -380, @0, DxlAuto, false);

	Wait(2400);

/*
	Move("やられ役02", 300, @-50, @-100, null, true);
	Move("やられ役02", 300, @500, @10000, null, false);

	Move("やられ役03", 300, @-50, @-100, null, true);
	Move("やられ役03", 300, @500, @10000, null, false);

	Delete("やられ役*");

	Move("@StL*", 800, @250, @0, null, true);

*/

	SetFwR("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410520a06">
「……ふん……」

{	FwR("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410530a06">
「命運尽きたか。
　だから、どうした」

{	FwR("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410540a06">
「俺は最後までやる……」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410550a06">
「諦めはせん。後悔もせん。
　そんなことは死んだ後でやっても間に合う」

{	FwR("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0410560a06">
「生きている間は、戦い戦い戦い勝つ――
　それだけだ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆銘伏、進撃
	CreateColorEXadd("絵色100", 1900, "WHITE");

	OnSE("se戦闘_動作_鎧_合当理吹かし01", 1000);
	Shake("やられ役01a", 1000, 2, 3, 0, 0, 1000, Axl2, false);

	Fade("絵色100", 1000, 1000, null, false);
	DrawTransition("絵色100", 1000, 0, 1000, 300, Axl1, "cg/data/circle_05_00_0.png", false);

	Wait(500);

	OnSE("se戦闘_動作_空突進02", 1000);

/*
	Move("@StL*", 300, @-50, @-100, null, true);
	Move("@StL*", 300, @500, @10000, null, false);
*/

	CreateColorSP("黒幕１", 30000, "#000000");
	DrawTransition("黒幕１", 150, 0, 1000, 200, null, "cg/data/slide_03_01_1.png", true);

	SetVolume("SE*", 2000, 0, null);
	SetVolume("OnSE*", 2000, 0, null);

	Wait(2000);

	ClearFadeAll(0,true);

}

..//ジャンプ指定
//次ファイル　"md04_042.nss"