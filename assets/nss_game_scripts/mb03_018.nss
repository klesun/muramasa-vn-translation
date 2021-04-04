//<continuation number="100">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_018.nss_MAIN
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
	#bg049_景明故郷住宅地a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_019.nss";

}

scene mb03_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_017.nss"

//◆外。夕方
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg049_景明故郷住宅地a_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　一家と別れた後。
　小弓御所襲撃の思案は、結局、妥当な結論を見た。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0180010a02">
「東から」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0180020a00">
「ああ。
　<RUBY text="てき">親王軍</RUBY>は陸路で北から、ないし浦賀水道を
渡って南から来ると彼らは想定している」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0180030a00">
「それ以外、特に東側の警戒は甘い筈だ。
　少なくとも比較的」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0180040a02">
「そっちから行けば、懐まで食い込めるって
ことですね」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0180050a00">
「二人だけならば。おそらく」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0180060a02">
「心配なのは、時間だけですか」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0180070a00">
「そうだな……
　東に回ってみて、期待通り防備が甘く対空
警戒にも隙があるようなら。騎航して一気に
突破してしまおう」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0180080a02">
「防空隊は気にしなくていいんですか？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0180090a00">
「低空騎航なら<RUBY text="レーダー">信号探査</RUBY>に察知されにくい。
地上の構造物の中に反応が紛れる。
　後は運次第だ」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0180100a02">
「わかりました！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演背景", 5000, Center, InBottom, "cg/bg/resize/bg002_空a_02.jpg");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　天運なら疑う余地もないと、快活に応える一条から
眼を逸らす。
　どうしてか、直視し難い。

{	SetVolume("@mbgm*", 3500, 0, null);
	Move("絵演背景", 3000, @0, @560, AxlDxl, false);
	Fade("絵演背景", 3000, 1000, null, false);}
　ともかくも俺と一条は東から小弓を攻める。
　
　……そろそろ、鎌倉の親王たちも動く頃か。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	WaitAction("絵演背景", null);
	WaitPlay("@mbgm*", null);
	WaitKey(1000);

}

..//ジャンプ指定
//次ファイル　"mb03_019.nss"