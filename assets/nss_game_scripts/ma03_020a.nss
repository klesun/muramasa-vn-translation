//<continuation number="140">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_020a.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	if($ma03_020a_routeFlag==true){$ma03_020a_routeFlag=false;}
	else{$Muramasa_Flag = $Muramasa_Flag+2;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_021.nss";

}

scene ma03_020a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"ma03_020.nss"

//●頼み込む

	PrintBG("上背景", 30000);
	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/020a0010a00">
（それは嫌だ）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/020a0020a01">
《どうしてよ。
　御堂、ああいうのは好きなんでしょう？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/020a0030a00">
（好きだ。
　が、俺の纏う劔冑はお前のほかにない）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/020a0040a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/020a0050a01">
《えっ？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/020a0060a00">
（――劔冑鍛冶の作品は生涯一領。
　武者の駆る劔冑もまた生涯一領のみである
べし）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　それは武者古来の美風。
　数打劔冑の普及以降、守られない事も多くなったが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/020a0070a00">
（俺の劔冑は既にお前に定まった。
　他の劔冑を使う気はない）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/020a0080a01">
《…………》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/020a0090a00">
（それでもお前は俺に、ほかの劔冑を使えと
言うのか？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/020a0100a01">
《あ、え……ううん。ごめんなさい。
　今のは冗談……ただ愚痴っただけ》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/020a0110a01">
《……気にしないで、御堂。
　自分のやるべきことはわかっているつもり。
駆けっこでも何でも、貴方が出ろというなら
出るから。楽しくはないけれど……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/020a0120a01">
《私は貴方の劔冑なんだものね》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/020a0130a00">
（ああ。
　頼む）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/020a0140a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆村正好感度＋
//$Muramasa_Flag = $Muramasa_Flag++;
	$ma03_020a_routeFlag = true;
	$Muramasa_Flag = $Muramasa_Flag+2;

	judgment_of_count();

}

..//ジャンプ指定
//次ファイル　"ma03_021.nss"