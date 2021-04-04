
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004urayama01cc.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg055_山賊アジト_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	if($md05_２週目==true){$首領目的２_Flag = true;}
	else{$首領目的_Flag = true;}

	$PreGameName = $GameName;

	$GameName = "md05_004urayama01.nss";
	//移動先は仮入れです。本組みする時に奈良原確認

}

scene md05_004urayama01cc.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_004urayama01c.nss"


//●目的の事
//◆フラグ分岐

	PrintBG("上背景", 30000);

	OnBG(100,"bg055_山賊アジト_01.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);
	StL(1000, @0, @0, "cg/st/st首領_通常_制服.png");
	FadeStL(0, true);

	Delete("上背景");


//――――――――――――――――――――――――――――――
.//◆第二段階

if($md05_２週目==true){

	SetFwC("cg/fw/fw首領_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【首領】
<voice name="首領" class="首領姉" src="voice/md05/004ur0070b31">
「あなたはきっと、何をしても後悔するので
しょうね。
　けれど、何もしなくたって後悔はするのよ」

{	FwC("cg/fw/fw首領_冷笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/md05/004ur0080b31">
「決断できなかったっていう後悔は、きっと
一番辛いんじゃないかしら……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラグ調整
//◆$首領目的２_Flag = true;


}else{


//――――――――――――――――――――――――――――――
.//◆第一段階

	SetFwC("cg/fw/fw首領_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【首領】
<voice name="首領" class="首領姉" src="voice/md05/004ur0050b31">
「あなたの目的？
　それは<RUBY text="・・・・・・">あなたとして</RUBY>正しく生きることよ」

{	FwC("cg/fw/fw首領_冷笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/md05/004ur0060b31">
「決まってるでしょうに」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フラグ調整
//◆$首領目的_Flag = true;

}//else_end


..//ジャンプ指定
//次ファイル


}

