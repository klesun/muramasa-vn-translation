
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_010vsa.nss_MAIN
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
	#bg201_旋回演出背景市街地_02=true;
	#bg107_富士山頂火口a_00=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_010vsaa.nss";

}

scene md05_010vsa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_010vs.nss"

//●遮蔽物
	SoundPlay("@mbgm08",0,1000,true);
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景", 100, Center, -700, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……〝神〟はこちらを捕捉して空間歪曲を行使して
いる。
　視界内に留まる限り、危機は去らない。

　ならば、こちらの姿を見失わせるべきだ！
　向こうにはまともな知能が無い。再発見には時間を
要する筈……！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆地上へ。bg107
	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_00_1.png", true);

	CreateTextureEX("絵震用背景", 110, Center, Middle, "cg/bg/bg107_富士山頂火口a_00.jpg");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg107_富士山頂火口a_00.jpg");

	DrawDelete("絵色黒", 150, 100, "slide_02_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　良し。
　うまく、適当な岩陰へ潜り込めだ。

　念のため、音も殺す。
　
　……これで〝神〟の認識から俺は<RUBY text="ロスト">消失</RUBY>しただろう。

　距離上、ここは敵からそう遠くない。
　隙を見て飛び出し、電磁抜刀を撃ち――

　それで、終わりだ！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0980a01">
《……御堂。思うんだけど……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0990a01">
《あれが視覚とか聴覚とか、そういう普通の
感覚機能でこっちを捉えているとは限らない
んじゃないの……？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1000a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　――そういえば。
　あれには眼のような器官も耳のような器官も見当た
らなかった……か……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空間歪曲
//◆圧縮。フェードアウト
	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se特殊_その他_空間歪曲");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 10000, "#FFFFFF");
	Fade("絵色白", 3000, 800, null, false);

	DrawEffect("絵震用背景", 2000, "LowWave", 0, 200, null);
	Fade("絵震用背景", 1000, 1000, null, true);
	Shake("絵震用背景", 2000, 0, 0, 0, 30, 1000, Axl2, false);

	WaitAction("絵色白", null);

//◆ウェイト

	Wait(2000);

	CreateColorEX("絵色黒", 11000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　…………

　……暗い。

　ここは何処だ？

　俺はどうなった……？

　…………意識が重い…………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"md05_010vsaa.nss"