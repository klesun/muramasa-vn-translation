//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_021b.nss_MAIN
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
	if($ma03_021b_routeFlag==true){$ma03_021b_routeFlag=false;}
	else{$Kanae_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_022.nss";

}

scene ma03_021b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_021.nss"

//●香奈枝
	SoundPlay("@mbgm13",0,1000,true);
	PrintBG("上背景", 30000);
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　<RUBY text="ドレス">長衣</RUBY>が翻る。
　取り出されたものは、見覚えのある長い銃。

　警告の叫びが、喉までせり上がる。
　だが間に合わない。一瞬の<RUBY text="さなか">最中</RUBY>では、間に合わない。

　銃口が躍る。
　――あの洞穴から放たれた弾丸が、敵を射抜くとは
限らない。

　特にこのような乱闘の渦中では。
　あの香奈枝嬢が、その程度の事をわきまえていない
とは思えないが――

　彼女の前に立つ男は、動きを止めている。
　動揺のために。警察の権威は無視できても、銃弾の
暴威は看過し得なかったか。

　銃口は、彼を指し。
　そして外れる。

　下へ。
　兵器の先端は下を、床を向く。

　そこへ添えられる香奈枝の左手。
　その上に、右手。

　おおむねこの辺りで、俺は察していた。
　
　――ああ。銃にはそういう使用法もあった、か。

　大鳥大尉は銃を掲げる。
　剣のように。

　振り下ろす。
　斧のように。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ぶぉん。ぞこ。
	CreateSE("SE01","se戦闘_攻撃_殴る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainSP("絵振", 1000);
	Shake("絵振", 300, 0, 30, 0, 0, 1000, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……銃床が、酷く重く鈍い響きを立てて、男の額を
打ち抜いていた。
　ひと溜まりとてあろう筈もなく。眼球を回転、白目
を露出させて、ゆっくりと倒れ伏す。

　ばたりというつまらない音が、凱歌の代わりだった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵振*");
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/021b0010a03">
「お粗末さまでした」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/021b0020a04">
「お見事でございます」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　長銃の銃把で男を殴打する、淑やかな令嬢。
　……前衛芸術の題材としてはうってつけかもしれな
かった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	$ma03_021b_routeFlag = true;
	$Kanae_Flag++;

	judgment_of_count();

//◆香奈枝好感度＋１
//$Kanae_Flag = $Kanae_Flag++;

}

..//ジャンプ指定
//次ファイル　"ma03_022.nss"