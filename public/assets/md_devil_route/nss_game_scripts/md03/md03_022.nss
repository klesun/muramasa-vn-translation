//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_022.nss_MAIN
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
	#bg056_建長寺三門前_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_023.nss";

}

scene md03_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_021.nss"


//◆建朝寺。bg056_夜

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg056_建長寺三門前_03.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒",2000,true);

	Wait(500);

	StR(1000, @0, @0, "cg/st/st署長_通常_制服.png");
	StCL(1000, @80, @0, "cg/st/st一条_通常_制服.png");
	StL(900, @-100, @0, "cg/st/st黒瀬_通常_私服.png");
	FadeStR(300, false);
	FadeStL(300, false);
	FadeStCL(300, true);



	SetFwC("cg/fw/fw署長_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【署長】
<voice name="署長" class="署長" src="voice/md03/0220010a11">
「何か必要なものはあるか？
　可能な限り用意するが……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0220020a01">
「私は、平気」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0220030a02">
「あたしもいい」

{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/md03/0220040b40">
《クァァーーーキキィ！
　正義の魂はとうの昔に完全装備！　ほかに
何が要るというのだァ!?》

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0220050b26">
「某も手持ちの武装で充分。
　仲間を呼び集める暇が無かったのは心残り
だが……」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0220060a11">
「潜入という点を考えれば、それも一長一短
でしょう」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0220070b26">
「うむ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　これから、普陀楽城へ行く。

　彼らは彼らの目的を果たすために。
　私は――景明に会い、彼の意思を取り戻すために。

　おそらく、今の彼には拒まれるだろうけれど。
　それでも……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【署長】
<voice name="署長" class="署長" src="voice/md03/0220080a11">
「三人とも、目的は別だが。
　いずれも舞殿宮殿下が望んでおられること
には変わりない」

//【署長】
<voice name="署長" class="署長" src="voice/md03/0220090a11">
「宮殿下は宜しく頼むと云っておられた」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0220100b26">
「勿体なきお言葉」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0220110a02">
「頼まれなくてもやるさ」

{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/md03/0220120b40">
《正義は命令されてするものにあらず！
　しかし賛同するのは当然の事！》

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0220130a01">
「…………」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0220140a11">
「私からも言おう。
　……村正」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0220150a01">
「えっ？」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0220160a11">
「息子を、頼む」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0220170a01">
「…………」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0220180a01">
「はい……」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0220190a02">
「…………」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0220200b26">
「時が惜しい。
　さ、そろそろ参るとしよう」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0220210a02">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

}

..//ジャンプ指定
//次ファイル　"md03_023.nss"