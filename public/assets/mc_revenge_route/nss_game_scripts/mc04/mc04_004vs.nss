//<continuation number="540">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_004vs.nss_MAIN
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
	#bg088_大鳥邸ホール_01a=true;
	#ev184_館に踏み込む香奈枝_a=true;
	#ev184_館に踏み込む香奈枝_b=true;
	#ev184_館に踏み込む香奈枝_c=true;
	#ev184_館に踏み込む香奈枝_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_005vs.nss";

}

scene mc04_004vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_003.nss"


//◆香奈枝の侵攻
//◆入り口ホール？　悠々と現れる香奈枝


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");

	OnBG(100, "bg088_大鳥邸ホール_01a.jpg");
	FadeBG(0, true);
	OnSE("se人体_足音_木床ゆっくり歩く01_L", 1000);


	Delete("上背景");
	FadeDelete("黒幕１",2000,true);


	SoundPlay("@mbgm06", 0, 1000, true);

	WaitKey(1000);

	SetVolume("@OnSE*", 1000, 0, null);

	OnSE("se人体_足音_走る05", 1000);


	StR(1100, @-80, @0, "cg/st/st香奈枝_通常_私服d.png");
	Move("@StR*", 1500, @80, @0, DxlAuto, false);
	FadeStR(300, true);

	SetVolume("@OnSE*", 1000, 0, null);

	Wait(250);

	OnSE("se人体_足音_走る06", 1000);


	StL(1100, @-50, @0, "cg/st/st六波羅将校_通常_制服.png");
	Move("@StL*", 300, @50, @0, DxlAuto, false);
	FadeStL(300, true);

	SetNwC("cg/fw/nw大鳥軍将校Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/004vs0010e167">
「何者かッ！
　ここは釈天御由緒家、<RUBY text="たいまのまひと">当麻真人</RUBY>大鳥の邸宅
である！」

//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/004vs0020e167">
「無法の侵略を迎えるに剣林弾雨を以てする
ほか一切の礼はなきものと心得よ！
　神妙に投降するならば良し、さあらずんば
幽明<RUBY text="さかい">境</RUBY>を<RUBY text="こと">異</RUBY>にせん!!」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0030a03">
「あらあら。
　流石は腐っても大鳥家、なかなかのご口上」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0040a03">
「普通なら『死ねやおらー』で済ますところ
ですのにね？」

{	NwC("cg/fw/nw大鳥軍将校Ａ.png");}
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/004vs0050e167">
「止まれ！
　それ以上の武装進入は容認しない！」

//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/004vs0060e167">
「従わずば射殺する!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆兵士ずらー

	OnSE("se人体_足音_兵士集合01", 1000);

	CreateSE("SE00","se戦闘_銃器_複数構える02");
	MusicStart("SE00",0,1000,0,1000,null,false);

	CreateTextureEX("絵背景100", 5000, @0, @0, "cg/bg/bg088_大鳥邸ホール_01a.jpg");
	CreateTextureEX("絵背景200", 5300, @-250, @300, "cg/st/st六波羅兵士_通常_制服.png");
	CreateTextureEX("絵背景210", 5150, @0, @300, "cg/st/st六波羅兵士_通常_制服.png");
	CreateTextureEX("絵背景220", 5100, @250, @300, "cg/st/st六波羅兵士_通常_制服.png");
	CreateTextureEX("絵背景230", 5050, @400, @300, "cg/st/st六波羅兵士_通常_制服.png");
	CreateTextureEX("絵背景240", 5000, @550, @300, "cg/st/st六波羅兵士_通常_制服.png");

	Zoom("絵背景100", 0, 2000, 2000, null, false);
	Zoom("絵背景200", 0, 2000, 2000, null, false);
	Zoom("絵背景210", 0, 1800, 1800, null, false);
	Zoom("絵背景220", 0, 1400, 1400, null, false);
	Zoom("絵背景230", 0, 1200, 1200, null, false);
	Zoom("絵背景240", 0, 1000, 1000, null, false);

	StCL(1200, @-100, @0, "cg/st/st六波羅兵士_通常_制服.png");
	StC(1000, @-100, @0, "cg/st/st六波羅兵士_通常_制服.png");

	Request("絵背景*", Smoothing);

	Move("絵背景100", 5000, @170, @0, null, false);
	Move("絵背景200", 3000, @70, @0, null, false);
	Move("絵背景210", 3000, @70, @0, null, false);
	Move("絵背景220", 3000, @70, @0, null, false);
	Move("絵背景230", 3000, @70, @0, null, false);
	Move("絵背景240", 3000, @70, @0, null, false);

	Fade("絵背景100", 1000, 1000, null, false);

	Fade("絵背景200", 1000, 1000, null, false);
	Fade("絵背景210", 1000, 1000, null, false);
	Fade("絵背景220", 1000, 1000, null, false);
	Fade("絵背景230", 1000, 1000, null, false);
	Fade("絵背景240", 1000, 1000, null, true);
	WaitKey(1000);

	FadeDelete("絵背景*", 1000,false); 

	CreateSE("SE00","se戦闘_銃器_複数構える02");

	CreateTextureEX("絵背景400", 4000, @0, @0, "cg/bg/bg088_大鳥邸ホール_01a.jpg");
	CreateTextureEX("絵背景500", 4300, @500, @300, "cg/st/st六波羅兵士_通常_制服.png");
	CreateTextureEX("絵背景510", 4250, @300, @300, "cg/st/st六波羅兵士_通常_制服.png");
	CreateTextureEX("絵背景530", 4150, @100, @300, "cg/st/st六波羅兵士_通常_制服.png");
	CreateTextureEX("絵背景540", 4100, @-50, @300, "cg/st/st六波羅兵士_通常_制服.png");
	CreateTextureEX("絵背景550", 4050, @-150, @300, "cg/st/st六波羅兵士_通常_制服.png");

	Zoom("絵背景400", 0, 2000, 2000, null, false);
	Zoom("絵背景500", 0, 2000, 2000, null, false);
	Zoom("絵背景510", 0, 1800, 1800, null, false);
	Zoom("絵背景530", 0, 1400, 1400, null, false);
	Zoom("絵背景540", 0, 1200, 1200, null, false);
	Zoom("絵背景550", 0, 1000, 1000, null, false);

	Move("絵背景400", 3000, @-170, @0, null, false);
	Move("絵背景500", 3000, @-70, @0, null, false);
	Move("絵背景510", 3000, @-70, @0, null, false);
	Move("絵背景520", 3000, @-70, @0, null, false);
	Move("絵背景530", 3000, @-70, @0, null, false);
	Move("絵背景540", 3000, @-70, @0, null, false);
	Move("絵背景550", 3000, @-70, @0, null, false);


	Request("絵背景*", Smoothing);
	Rotate("絵背景500", 0, @0, @180, @0, null, false);
	Rotate("絵背景510", 0, @0, @180, @0, null, false);
	Rotate("絵背景520", 0, @0, @180, @0, null, false);
	Rotate("絵背景530", 0, @0, @180, @0, null, false);
	Rotate("絵背景540", 0, @0, @180, @0, null, false);
	Rotate("絵背景550", 0, @0, @180, @0, null, false);


	Fade("絵背景400", 300, 1000, null, false);
	Fade("絵背景500", 300, 1000, null, false);
	Fade("絵背景510", 300, 1000, null, false);
	Fade("絵背景520", 300, 1000, null, false);
	Fade("絵背景530", 300, 1000, null, false);
	Fade("絵背景540", 300, 1000, null, false);
	Fade("絵背景550", 300, 1000, null, true);

	MusicStart("SE00",0,1000,0,1000,null,false);

	WaitKey(1000);
	FadeStCL(0, false);
	FadeStC(0, false);
	FadeDelete("絵背景*", 1000,true); 

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0070a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵板写",1500,false);
	FadeDelete("絵演銃兵士*",1500,true);

//◆ＣＧ：香奈枝オープンコンバット
//◆ホールに立つ香奈枝

//嶋：ここでは立ち絵でお願いいたします【09/07/06】
	StCL(1200, @-100, @0, "cg/st/st六波羅兵士_通常_制服.png");
	StC(1000, @-100, @0, "cg/st/st六波羅兵士_通常_制服.png");
	FadeStCL(300, false);
	FadeStC(300, false);


	SetNwC("cg/fw/nw大鳥軍将校Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/004vs0080e167">
「名乗れ」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0090a03">
「名乗れと言われて、名乗れましょうか……」


{	NwC("cg/fw/nw大鳥軍将校Ａ.png");}
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/004vs0100e167">
「名乗れ！」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0110a03">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がちゃ。武器構え

	OnSE("se戦闘_銃器_複数構える01", 1000);

	Wait(250);

	SetNwC("cg/fw/nw大鳥軍将校Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/004vs0120e167">
「今日は祝賀の日だ……だからといって血を
厭う忍耐がいつまでも続くと思われては困る。
　女、従え！」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0130a03">
「断る」


{	NwC("cg/fw/nw大鳥軍将校Ａ.png");}
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/004vs0140e167">
「……貴様……！」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0150a03">
「下僕に詰問されて名乗る主が何処にいるか。
　吠える前に分際を知れ」


{	NwC("cg/fw/nw大鳥軍将校Ａ.png");}
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/004vs0160e167">
「……何？」


//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/004vs0170e167">
「何だと……」


{	NwC("cg/fw/nw大鳥軍兵士Ｄ.png");}
//【ｅｔｃ／大鳥兵士Ｄ】
<voice name="ｅｔｃ／大鳥兵士Ｄ" class="その他男声" src="voice/mc04/004vs0180e174">
「わけのわからんことを！
　鳥羽様、取り合う必要はありません」


{	NwC("cg/fw/nw大鳥軍兵士Ｅ.png");}
//【ｅｔｃ／大鳥兵士Ｅ】
<voice name="ｅｔｃ／大鳥兵士Ｅ" class="その他男声" src="voice/mc04/004vs0190e175">
「とにかく武装を解除させましょう。
　女、銃を捨てろ！　他にも武装があるなら
それもだ！」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0200a03">
「……武装……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆差分：コートを開く香奈枝。銃火器ぎっしり。
//◆要はマトリックスのあのシーン。
//嶋：ここからＥＶでお願いいたします（ev184_館に踏み込む香奈枝_a）【09/07/06】

	OnSE("se人体_動作_衣類脱ぐ01", 1000);

	SetVolume("@mbgm*", 1000, 0, null);

	CreateTextureEX("絵背景100", 15000, @0, @0, "cg/ev/ev184_館に踏み込む香奈枝_a.jpg");
	Fade("絵背景100", 500, 1000, Axl1, true);

	DeleteStA(0,true);
	Move("絵背景100", 2000, @0, @-500, DxlAuto, true);

	SoundPlay("@mbgm10", 0, 1000, true);

	SetNwR("cg/fw/nw大鳥軍兵士Ｄ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／大鳥兵士Ｄ】
<voice name="ｅｔｃ／大鳥兵士Ｄ" class="その他男声" src="voice/mc04/004vs0210e174">
「――――」


{	NwR("cg/fw/nw大鳥軍兵士Ｅ.png");}
//【ｅｔｃ／大鳥兵士Ｅ】
<voice name="ｅｔｃ／大鳥兵士Ｅ" class="その他男声" src="voice/mc04/004vs0220e175">
「なっ……おい……」


{	FwR("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0230a03">
「これを……どうして欲しいと？」


</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 19000);
	Wait(10);

	Delete("絵背景*");
	CreateWindow("絵窓中央", 5000, 342, 0, 340, 576, false);
	SetAlias("絵窓中央","絵窓中央");
	CreateTextureSP("絵窓中央/絵演ＥＶ", 5100, Center, Middle, "cg/ev/ev184_館に踏み込む香奈枝_a.jpg");
	Request("絵窓中央/絵演ＥＶ", Smoothing);
	Zoom("絵窓中央/絵演ＥＶ", 0, 500, 500, null, true);

	CreateWindow("絵窓左", 4000, 0, 0, 512, 576, false);
	SetAlias("絵窓左","絵窓左");
	CreateTextureSP("絵窓左/絵演背景", 4010, InLeft, Middle, "cg/bg/resize/bg088_大鳥邸ホール_01am.jpg");
	Move("絵窓左/絵演背景", 0, @0, @-100, null, true);

	CreateTextureSP("絵窓左/絵演兵士412", 4120, Center, Middle, "cg/st/resize/st六波羅兵士_通常_制服m.png");
	CreateTextureSP("絵窓左/絵演兵士411", 4110, Center, Middle, "cg/st/resize/st六波羅兵士_通常_制服m.png");
	CreateTextureSP("絵窓左/絵演兵士410", 4100, Center, Middle, "cg/st/resize/st六波羅兵士_通常_制服m.png");
	Move("絵窓左/絵演兵士*", 0, @-300, @-60, null, true);
	Move("絵窓左/絵演兵士412", 0, @-150, @0, null, true);
	Move("絵窓左/絵演兵士410", 0, @+150, @0, null, true);

	Request("絵窓左/絵演兵士*", Smoothing);
	SetVertex("絵窓左/絵演兵士*", center, bottom);
	Zoom("絵窓左/絵演兵士411", 0, 980, 980, null, true);
	Zoom("絵窓左/絵演兵士410", 0, 960, 960, null, true);



	CreateWindow("絵窓右", 4000, 512, 0, 512, 576, false);
	SetAlias("絵窓右","絵窓右");
	CreateTextureSP("絵窓右/絵演背景", 4010, InRight, Middle, "cg/bg/resize/bg088_大鳥邸ホール_01am.jpg");
	Move("絵窓右/絵演背景", 0, @0, @-100, null, true);

	CreateTextureSP("絵窓右/絵演兵士412", 4120, Center, Middle, "cg/st/resize/st六波羅兵士_通常_制服m.png");
	CreateTextureSP("絵窓右/絵演兵士411", 4110, Center, Middle, "cg/st/resize/st六波羅兵士_通常_制服m.png");
	CreateTextureSP("絵窓右/絵演兵士410", 4100, Center, Middle, "cg/st/resize/st六波羅兵士_通常_制服m.png");
	Move("絵窓右/絵演兵士*", 0, @300, @-60, null, true);
	Move("絵窓右/絵演兵士412", 0, @+150, @0, null, true);
	Move("絵窓右/絵演兵士410", 0, @-150, @0, null, true);

	Request("絵窓右/絵演兵士*", Smoothing);
	SetVertex("絵窓右/絵演兵士*", center, bottom);
	Zoom("絵窓右/絵演兵士411", 0, 980, 980, null, true);
	Zoom("絵窓右/絵演兵士410", 0, 960, 960, null, true);

	Rotate("絵窓右/絵演兵士*", 0, @0, @180, @0, null,true);


	FadeDelete("絵板写", 1000, false);

	NwR("cg/fw/nw大鳥軍兵士Ｄ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【ｅｔｃ／大鳥兵士Ｄ】
<voice name="ｅｔｃ／大鳥兵士Ｄ" class="その他男声" src="voice/mc04/004vs0240e174">
「……う、うろたえるな！
　虚仮威しに過ぎん」


//【ｅｔｃ／大鳥兵士Ｄ】
<voice name="ｅｔｃ／大鳥兵士Ｄ" class="その他男声" src="voice/mc04/004vs0250e174">
「武器がどれだけあろうと一人は一人だ！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetNwL("cg/fw/nw大鳥軍兵士Ｅ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【ｅｔｃ／大鳥兵士Ｅ】
<voice name="ｅｔｃ／大鳥兵士Ｅ" class="その他男声" src="voice/mc04/004vs0260e175">
「わ――わかってる。
　その武装を全て捨てろ、女!!」


{	FwL("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0270a03">
「…………」


{	NwL("cg/fw/nw大鳥軍兵士Ｅ.png");}
//【ｅｔｃ／大鳥兵士Ｅ】
<voice name="ｅｔｃ／大鳥兵士Ｅ" class="その他男声" src="voice/mc04/004vs0280e175">
「う……」


</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw大鳥軍兵士Ｄ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
//【ｅｔｃ／大鳥兵士Ｄ】
<voice name="ｅｔｃ／大鳥兵士Ｄ" class="その他男声" src="voice/mc04/004vs0290e174">
「この――あくまで従わぬ気か！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆がちゃがちゃがちゃ。一斉に銃構え
	OnSE("se戦闘_銃器_複数構える01", 1000);
	WaitKey(1000);
	SetNwR("cg/fw/nw大鳥軍兵士Ｄ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060a]
//【ｅｔｃ／大鳥兵士Ｄ】
<voice name="ｅｔｃ／大鳥兵士Ｄ" class="その他男声" src="voice/mc04/004vs0300e174">
「鳥羽様、宜しいな!?
　総員、その女を――」


</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetNwL("cg/fw/nw大鳥軍将校Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060b]
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/004vs0310e167">
「い、いや！
　待て、待っ――」


{	FwL("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0320a03">
「バロウズ。〝<RUBY text="チューニング">調弦</RUBY>〟<RUBY text="スタート">開始</RUBY>」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆差分：バスケースから銀糸（弦）が幾本も伸びる
//◆差分：弦が銃器を構える
//嶋：ＥＶでお願いいたします（ev184_館に踏み込む香奈枝_b）【09/07/06】
//嶋：ＥＶでお願いいたします（ev184_館に踏み込む香奈枝_c）【09/07/06】

	OnSE("se特殊_生物_蜘蛛の糸吐く01", 1000);

	FadeDelete("ウィンドウ２/絵ev100", 1000, false);

	CreateTextureEX("絵背景200", 15500, @0, @0, "cg/ev/ev184_館に踏み込む香奈枝_b.jpg");
	Fade("絵背景200", 1000, 1000, null, true);
	Delete("絵背景100");
	WaitKey(500);
	
	CreateTextureEX("絵背景300", 15600, @0, @0, "cg/ev/ev184_館に踏み込む香奈枝_c.jpg");
	Fade("絵背景300", 1000, 1000, null, true);
	Delete("絵背景200");

	SetNwR("cg/fw/nw大鳥軍兵士Ｄ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆呻く
//【ｅｔｃ／大鳥兵士Ｄ】
<voice name="ｅｔｃ／大鳥兵士Ｄ" class="その他男声" src="voice/mc04/004vs0330e174">
「……ぉ……」


{	FwR("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0340a03">
「『その女を』？」


{	NwR("cg/fw/nw大鳥軍兵士Ｄ.png");}
//【ｅｔｃ／大鳥兵士Ｄ】
<voice name="ｅｔｃ／大鳥兵士Ｄ" class="その他男声" src="voice/mc04/004vs0350e174">
「そ、その女を……
　うっ、う――」

//【ｅｔｃ／大鳥兵士Ｄ】
<voice name="ｅｔｃ／大鳥兵士Ｄ" class="その他男声" src="voice/mc04/004vs0360e174">
「撃」


{	FwR("cg/fw/fw香奈枝_獰猛.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0370a03">
「銃口を向けてから呼吸を置くな、鈍骨!!」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆香奈枝発砲。ずがががが。ガンパレード。
//嶋：ＥＶでお願いいたします（ev184_館に踏み込む香奈枝_d）【09/07/06】
	CreateSE("ガンパレ", "se特殊_攻撃_香奈枝ガンパレード_L");
	MusicStart("ガンパレ", 0, 1000, 0, 1000, null,true);

	MFlash(20, 20);

	CreateTextureEX("絵背景400", 16500, @0, @0, "cg/ev/ev184_館に踏み込む香奈枝_d.jpg");
	Fade("絵背景400", 0, 1000, null, true);
	Delete("絵背景300");


	SetNwR("cg/fw/nw大鳥軍兵士Ｄ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ｅｔｃ／大鳥兵士Ｄ】
<voice name="ｅｔｃ／大鳥兵士Ｄ" class="その他男声" src="voice/mc04/004vs0380e174">
「あ……あぃっ……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ばた。倒れる
//◆※以上まで香奈枝、帽子有り
//◆※以下（ＥＶから立ち絵に戻る所から）は帽子無し

	SetVolume("ガンパレ", 1000, 0, null);


	OnSE("se人体_衝撃_転倒_複数", 1000);

	Delete("@MF*");

	PrintGO("上背景", 30000);

	Wait(10);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg088_大鳥邸ホール_01a.jpg");
	StR(1100, @0, @0, "cg/st/st香奈枝_通常_私服c.png");
	StL(1100, @0, @0, "cg/st/st六波羅将校_通常_制服.png");
	FadeStL(0, false);
	FadeStR(0, true);
	FadeDelete("上背景", 1000, true);

	SetNwC("cg/fw/nw大鳥軍将校Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/004vs0390e167">
「…………」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0400a03">
「通る」


{	NwC("cg/fw/nw大鳥軍将校Ａ.png");}
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/004vs0410e167">
「……あ、貴方は……
　貴方様は……あ、あ、かっ、」


//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/004vs0420e167">
「香奈枝様ッッ!?」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0430a03">
「……」


{	NwC("cg/fw/nw大鳥軍将校Ａ.png");}
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/004vs0440e167">
「な――何ゆえに……」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0450a03">
「何ゆえ……？」


{	NwC("cg/fw/nw大鳥軍将校Ａ.png");}
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/004vs0460e167">
「…………」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0470a03">
「わからないのか。
　<RUBY text="・・・・・・・・・・">大鳥香奈枝が帰還した</RUBY>。その理由がわから
ないのか」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0480a03">
「本当にわからないのか。
　それとも、恐ろしくて、わからないふりを
したいだけか」


{	NwC("cg/fw/nw大鳥軍将校Ａ.png");}
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/004vs0490e167">
「――ひ――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆発砲ずぎゅーん。
	OnSE("se戦闘_攻撃_ライフル撃つ01", 1000);
	CreateColorSP("フラッシュ白", 15000, "WHITE");

	StR(1000, @0, @0,"cg/st/st香奈枝_射撃_私服b.png");
	FadeStR(0,true);
	Fade("フラッシュ白",300,0,null,true);

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0500a03">
「<RUBY text="アンサーワン">回答一</RUBY>、<RUBY text="リベンジ">復讐</RUBY>!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("@StL*", 300, @-20, @0, Axl1, false);

//◆発砲ずぎゅーん。
	OnSE("se戦闘_攻撃_ライフル撃つ01", 1000);
	Fade("フラッシュ白",1,1000,null,true);
	Fade("フラッシュ白",300,0,null,true);

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0510a03">
「<RUBY text="アンサーツー">回答二</RUBY>、<RUBY text="スローター">殺戮</RUBY>!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("@StL*", 300, @-20, @0, Axl1, false);

//◆発砲ずきゅんずきゅんずきゅん
	OnSE("se戦闘_攻撃_ライフル撃つ01", 1000);
	Fade("フラッシュ白",1,1000,null,true);
	Fade("フラッシュ白",300,0,null,true);

	OnSE("se戦闘_攻撃_ライフル撃つ01", 1000);
	Fade("フラッシュ白",1,1000,null,true);
	Fade("フラッシュ白",300,0,null,true);

	OnSE("se戦闘_攻撃_ライフル撃つ01", 1000);
	Fade("フラッシュ白",1,1000,null,true);
	Fade("フラッシュ白",300,0,null,true);

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0520a03">
「<RUBY text="アンサースリー">回答三</RUBY>、<RUBY text="リベンジ">復讐</RUBY>!!
　<RUBY text="アンサーフォー">回答四</RUBY>、<RUBY text="リベンジ">復讐</RUBY>!!
　<RUBY text="アンサーファイブ">回答五</RUBY>、<RUBY text="リベンジ">復讐</RUBY>!!」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/004vs0530a03">
「<RUBY text="アンド・ソウ・オン">以下同様</RUBY>!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ずがががががががが。
//◆ＳＥ止めず
	CreateSE("乱射", "se戦闘_銃器_機関銃乱射01");
	MusicStart("乱射", 0, 1000, 0, 1000, null,true);
	Fade("フラッシュ白",1,1000,null,true);

	DeleteStR(0,true);
	FadeDelete("フラッシュ白", 300, true);

	MFlash(10, 50);

	SetNwC("cg/fw/nw大鳥軍将校Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/004vs0540e167">
「ひっ……ひぃぁぁぁァァァァァァァァ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆将校、逃走
	OnSE("se人体_足音_走る05", 1000);

	Move("@StL*", 300, @-50, @0, AxlAuto, false);
	DeleteStL(300,true);

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);

	SetVolume("乱射", 1000, 0, null);

	Delete("@MF");
	WaitKey(1000);


}

..//ジャンプ指定
//次ファイル　"mc04_005vs.nss"