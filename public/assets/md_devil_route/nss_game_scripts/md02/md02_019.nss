//<continuation number="250">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_019.nss_MAIN
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
	#bg098_堀越御所内廊下_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_020.nss";

}

scene md02_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_018.nss"


//◆通路
//◆光。ずかずか。
//◆茶々丸

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg098_堀越御所内廊下_01.jpg");
	FadeBG(0, true);
	CreateSE("ずかずか", "se人体_足音_歩く09");
	MusicStart("ずかずか", 0, 1000, 0, 1000, null, true);

	SoundPlay("@mbgm30", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	StR(1000, @0, @0, "cg/st/st光_通常_私服.png");
	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStR(300, false);
	FadeStL(300, true);
	SetVolume("ずかずか", 1000, 0, null);

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190010a07">
「やっほー、御姫。
　今日もいたんだね」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_後ずさり01",1000);
	Move("@StR*", 300, @0, @80, Axl1, true);
	WaitKey(100);
	OnSE("se人体_動作_跳躍01",1000);
	DeleteStR(100,false);
	SetBlur("@StR*", true, 2, 10, 10, false);
	Move("@StR*", 100, @-80, @-80, Dxl3, true);
	SetFwC("cg/fw/fw光_怒り.png");

//inc久保田　プレ分けしました

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【光】
<voice name="光" class="光" src="voice/md02/0190020a14">
「<RUBY text="フォーリンダウンレイディバグ・コンパクト">天座失墜小彗星・簡略版</RUBY>!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずがーん
	OnSE("se戦闘_攻撃_殴る05", 1000);
	CreateTextureEXadd("ずがん", 15000, @0, @0, "cg/ef/ef042_汎用打撃.jpg");
	Rotate("ずがん", 0, 180, 0, 180, null, false);
	Zoom("ずがん", 100, 1500, 1500, null, false);

	Fade("ずがん", 0, 1000, null, true);
	DeleteStL(300,false);
	Move("@StL*", 300, @0, @300, Dxl3, false);
	WaitKey(200);
	Fade("ずがん", 150, 0, null, true);
	Delete("ずがん");



	SetFwC("cg/fw/fw茶々丸_泣き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190030a07">
「八つ当たりが痛過ぎる!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StR(1000, @-50, @0, "cg/st/st光_通常_私服.png");
	OnSE("se人体_動作_後ずさり01",1000);
	Move("@StR*", 300, @50, @0, Dxl3, false);
	FadeStR(300, false);
	SetFwC("cg/fw/fw光_警戒.png");
//inc久保田　プレ分けしました
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【光】
<voice name="光" class="光" src="voice/md02/0190040a14">
「くっ……
　憤懣やるかたない！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @50, "cg/st/st茶々丸_通常_私服.png");
	FadeStL(1500,false);
	Shake("@StL*", 1500, 2, 4, 0, 0, 500, AxlAuto, false);
	Move("@StL*", 1700, @0, @-50, DxlAuto, false);

	SetFwC("cg/fw/fw茶々丸_歯噛.png");
//inc久保田　プレ分けしました
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190050a07">
「朝は腐れ坊主のセクハラ、昼はヘボ劒冑の
いじめときて、とどめにいま挨拶しただけで
ボコられてしまったあてもどこに怒りをぶつ
けりゃいいんだかもうさっぱりわかりません」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190060a14">
「わざとらしく素知らぬ顔をするからだ。
　おまえはどうせ全て聴こえていたのだろう
に」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190070a07">
「んー、まぁ一応ね」

{	FwC("cg/fw/fw光_拗ね.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190080a14">
「景明め……
　たやすくよその女に気を許して……」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190090a14">
「おれが敵意を抱かねばならぬ一個人など、
父を奪った張本人たる母だけと思っていたが。
　よもやこんな始末になろうとはな」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190100a07">
「へー……
　あれを<RUBY text="・">女</RUBY>だって素直に認めるんだ、御姫は」

{	FwC("cg/fw/fw光_不思議.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190110a14">
「？　当然だろう。
　あれが女以外の何だ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190120a07">
「劒冑だよ？」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190130a14">
「人間の女、蝦夷の女、劒冑の女。
　女は、女だ」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190140a07">
「ごもっとも。
　それで、どうすんの？」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190150a14">
「どうもこうもない」

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190160a14">
「覇を遂げれば光の望みは全て叶う。
　それまで苛立ちの種を一つ抱え込むだけだ」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190170a14">
「最終的に、奪われたもの全てを取り戻せる
のなら……途中経過には拘泥するまい」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190180a07">
「そっか」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190190a14">
「ふん……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190200a07">
「ならさ」

{	FwC("cg/fw/fw光_不思議.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190210a14">
「む？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190220a07">
「それ、あてにくれない？」

{	FwC("cg/fw/fw光_驚き.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190230a14">
「それ？
　……ああ、<RUBY text="これ">結晶</RUBY>か」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190240a14">
「作ったはいいが無駄になった。
　欲しいのか？」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190250a07">
「うん。
　もしかしたら、使うチャンスがあるかも」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md02_020.nss"