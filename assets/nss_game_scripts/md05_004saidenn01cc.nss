
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004saidenn01cc.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg054_湊斗家祭殿a_01a=true;

	//▼ルートフラグ、選択肢、次のGameName

	if($md05_２週目==true){$村正目的２_Flag = true;}
	else{$村正目的_Flag = true;}

	$PreGameName = $GameName;

	$GameName = "md05_004saidenn01.nss";
	//移動先は仮入れです。本組みする時に奈良原確認

}

scene md05_004saidenn01cc.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_004saidenn01c.nss"


	PrintBG("上背景", 30000);

	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);
	StR(1000, @0, @200, "cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(0, true);
	Delete("上背景");




//●目的の事
//◆フラグ分岐


//――――――――――――――――――――――――――――――
.//◆第二段階

if($md05_２週目==true){

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004sa0090a01">
《……戦うこと……？》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004sa0100a01">
《そう、私も……貴方と一緒に……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フラグ調整
//◆$村正目的２_Flag = true;


}else{


//――――――――――――――――――――――――――――――
.//◆第一段階

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004sa0070a01">
《貴方の目的？
　……ごめんなさい。わからない》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004sa0080a01">
《……目的……
　そう、私にも目的があったはず……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フラグ調整
//◆$村正目的_Flag = true;

}//else_end

..//ジャンプ指定
//次ファイル


}


