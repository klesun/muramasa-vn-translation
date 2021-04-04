//<continuation number="390">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_018.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb04_018.nss","DenziMan",true);
	Conquest("nss/mb04_018.nss","DenziManSET",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg041_片瀬海岸_02=true;
	#bg041_海岸_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_019.nss";

}

scene mb04_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_017vs.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 5000, "#000000");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　…………

　……………………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180010b40">
《御堂》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180020b40">
《寝ている時ではない。
　眼を開けて立て》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆海岸
//◆正宗天牛虫
	CreateSE("SEL01","se自然_水_浜辺の波01_L");
	OnBG(100,"bg041_海岸_02.jpg");
	StR(1000, @0, @350,"cg/st/3d正宗天牛虫_正面.png");
	FadeBG(0,true);
	FadeStA(0,true);
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	DrawTransition("絵暗転", 1000, 1000, 0, 300, DxlAuto, "cg/data/slide_05_00_0.png", true);
	Delete("絵暗転");

	SetFwC("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180030a02">
「……っ……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180040a02">
「正宗……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180050b40">
《良し。
　状況は弁えていような？》


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180060a02">
「…………」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180070a02">
「ああ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演背景", 4000, -330, -85, "cg/ev/resize/ev948_正宗突進汎用exl.jpg");
	Fade("絵演背景", 1000, 750, null, false);

	SoundPlay("@mbgm26",0,1000,true);

/*

//あきゅん「演出：電磁抜刀ムービーを流してたけどなんかバグるので保留」
	DenziMan();
*/


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　村正の陰義を受け――
　耐えて。その後、正宗の陰義でそれを<RUBY text="・・・・・">打ち返した</RUBY>。

　因果覿面の陰義。
　自らに加えられた攻撃を再現して相手へ叩き込む、
相州正宗の真骨頂。

　つまりあの稲妻そのものの抜刀術を、村正は自分の
身に浴びたはずだ……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵演背景", 1000, false);
//	FadeDelete("@プロ電磁抜刀回想", 1000, false);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180080a02">
「……斃した……のか？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180090b40">
《いや。
　奴めの一刀は本来の威勢を欠いていたよう
だからな。こちらの返しも力が足らなんだわ》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180100b40">
《まったく、腹立たしい！
　奴の一撃が腑抜けておらねば、吾の陰義は
必殺であったものを！》


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180110a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　その場合、返す前にこっちが墜とされたんじゃない
のか。
　
　……一瞬だけそう思って、すぐに思い直す。

　そんなことはない。
　<RUBY text="あたしたち">正宗</RUBY>は<RUBY text="・・・・・・・">絶対に倒れない</RUBY>。

　倒れないから、つまり必ず敵の切り札を奪い取れる。
　この陰義は間違いなく最強の一手だ。

　問題は無い。
　正宗は倒れないのだから問題など無い。

　正義を背負う者は倒れないのだから！
　
　どれほどの傷を受けても、
　たとえ――信じた人に裏切られても。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆一条、立つ
//◆少しよろめく
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180120a02">
「……くっ」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180130b40">
《外傷は一通り塞いだはずだ。
　支障はあるまい？》


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180140a02">
「……ねえよ。充分だ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　何となく内臓が足りないような気はするが。
　まぁ、今は別にどうでもいい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180150a02">
「てめぇの方はどうなんだ」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180160b40">
《最低限の修復は済ませておる。
　案ずるな》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180170b40">
《では参ろうぞ。
　悪鬼めも墜としはした……おそらくさほど
離れておらぬ何処かにおる筈》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180180b40">
《いざ、止めをくれてやらん！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ボックスと立ち絵消して背景表示
	DeleteStA(300,true);
	WaitKey(2000);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180190a02">
「……ここはどの辺だ？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180200b40">
《美浜とか申した辺りだな》


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180210a02">
「小弓へ行くのに通ったとこか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　そう言えば、見覚えがある。

　習志野から海岸線を下っていったのだ。
　ほぼ南東の方角へ……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180220a02">
「――――」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180230b40">
《奴の所在は……{WaitKey(3500);}<BR>　ぬぅ。やはり地上で<RUBY text="みみ">信号探査</RUBY>は利かんか》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180240b40">
《だが北西とみて良かろう。そちらへ墜ちて
いったからな。
　さぁ、ゆこうか御堂》


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180250a02">
「正宗……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180260b40">
《……む？　如何した》


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180270a02">
「あれを見ろ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆視界移動
	CreateTextureEX("絵演背景", 4000, Center, 0, "cg/bg/resize/bg004_鄙びた村b_02.jpg");
	Move("絵演背景", 3000, @-256, @0, DxlAuto, false);
	Fade("絵演背景", 600, 1000, null, true);

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180280b40">
《……煙？
　そう遠くはないな……》


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180290a02">
「ああ。
　何だと思う。火事か」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180300b40">
《さて……
　…………いや！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180310b40">
《御堂、鋼の音がするぞ》


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180320a02">
「鋼？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180330b40">
《<RUBY text="・・">軍勢</RUBY>だ。
　間違いない》


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180340a02">
「……！」


{	FadeDelete("絵演背景", 300, false);
	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180350b40">
《どうする？》


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180360a02">
「行くぞ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆だっしゅ。
	SetVolume("@mbgm*", 2000, 0, null);
	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,1000,0,1000,null,false);

//◆ウェイト
	WaitPlay("@mbgm*", null);
	WaitPlay("SE01", null);
	WaitKey(3000);

//◆以下、顔グラ無し
	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0180370b21">
「………………」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0180380b21">
「……やっと追いついた……」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0180390b21">
「もう逃がさない」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb04_019.nss"


.//プロセス用======================================================

..//電磁抜刀返しの回想
function DenziMan()
{
	CreateProcess("プロ電磁抜刀回想", 5000, 0, 0, "DenziManSET");
	SetAlias("プロ電磁抜刀回想", "プロ電磁抜刀回想");
	Request("プロ電磁抜刀回想", Start);
	Request("プロ電磁抜刀回想", Disused);
}

function DenziManSET()
{
	CreateMask("マスク", 3100, 0, 0, "cg/data/slide_08_00_0.png", true);
	CreateMovie("マスク/絵演動画", 3000, 0, 0, false, false, "dx/mv電磁抜刀_禍.ngs");

//	Fade("マスク/絵演動画", 0, 0, null, true);
	Request("マスク/絵演動画", Stop);
//	Fade("マスク/絵演動画", 1000, 1000, null, false);
	Request("マスク/絵演動画", Play);

	WaitPlay("マスク/絵演動画", null);

	Fade("マスク/絵演色白", 1000, 1000, null, false);
	Fade("マスク/絵演動画", 1000, 0, null, true);
	Delete("マスク/絵演動画");
	Fade("マスク", 2000, 0, null, true);
	Delete("マスク");
}