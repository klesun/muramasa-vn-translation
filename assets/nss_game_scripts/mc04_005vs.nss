//<continuation number="500">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_005vs.nss_MAIN
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
	$PreGameName = $GameName;

	$GameName = "mc04_006.nss";

}

scene mc04_005vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc04_004vs.nss"


//◆応接間

	PrintBG("上背景", 30000);
	OnBG(100, "bg089_大鳥邸貴人の間_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm10", 0, 1000, true);

	StR(1000, @0, @0, "cg/st/st獅子吼_通常_制服.png");
	FadeStR(0, true);


	DrawDelete("上背景", 100, 100, "slide_01_00_1", true);

	SetFwC("cg/fw/fw獅子吼_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0010a06">
「……館内に突入を許した、だと？」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0020a06">
「邦氏殿下もおられるのだぞ!!」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0030e173">
「めっ、面目次第もございません！」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0040a06">
「襲撃者の戦力は」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0050e173">
「車一台で攻め入ってきたとの報告ですので
……せいぜい数人かと思われます」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0060a06">
「たかが数人を止められなかったのか。
　この屋敷へ突き進む車を、貴様らは赤信号
の横断歩道に立っているような心地で、ただ
見送っていたと言うのか？」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0070e173">
「はっ……し、しかし……
　閣下もご承知であられます通り、今現在、
ここ本邸の<RUBY text="そなえ">防備</RUBY>は万全とは言い難く……」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0080a06">
「……ちっ」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/005vs0090b18">
「…………」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0100a06">
（何者だ？
　國境を突破した進駐軍の工作部隊か）


{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0110a06">
（いや……ＧＨＱの手先がどうして、こんな
馬鹿げた襲撃をする？
　あの豚どもならもう少し利口に立ち回る）


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0120a06">
（これは……<RUBY text="・・・・・・">理に合わない</RUBY>。
　つまり、物の道理などとうに振り捨てた輩
の仕業だ）

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0130a06">
（単純愚劣な暴力。
　思慮も分別もなく……ただこうしたいから
こうするのだと言わんばかりのやり方）

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0140a06">
（これは……誰だ？）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆だだだだ。将校Ａ、駆け込んで来る

	OnSE("se日常_建物_扉開く02", 1000);

	StL(1100, @-50, @0, "cg/st/st六波羅将校_通常_制服.png");
	Move("@StL*", 300, @50, @0, DxlAuto, false);
	FadeStL(300, true);

	SetNwC("cg/fw/nw大鳥軍将校Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0150e167">
「かかっ、かっ、閣下ァ！
　中将閣下ッ!!」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0160a06">
「騒がしい！
　花枝様の御前だ！」


{	NwC("cg/fw/nw大鳥軍将校Ａ.png");}
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0170e167">
「も、申し訳……
　いえ、その花枝様のっ」

//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0180e167">
「花枝様の!!」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/005vs0190b18">
「……？」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0200a06">
「見苦しいぞ、鳥羽！
　貴様ほどの男がその醜態はどうした！」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0210a06">
「亡霊でも見たか」


{	NwC("cg/fw/nw大鳥軍将校Ａ.png");}
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0220e167">
「ぼ、亡霊……亡霊、そうです。
　あの獣。あの魔物。あのおぞましい、あの
狂人がッ」

//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0230e167">
「大和から放逐されて、もうとっくに野垂れ
死んだと思っていたのに……！
　どっ、どっ、どうして、今更」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0240a06">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆チャキ。刀突きつけ
	DeleteStR(300,true);

	StR(1000, @0, @0,"cg/st/st獅子吼_戦闘_制服.png");
	OnSE("se戦闘_動作_刀構え01", 1000);
	FadeStR(300,true);

	WaitKey(300);

	SetNwC("cg/fw/nw大鳥軍将校Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0250e167">
「ちっ――中将閣下!?」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0260a06">
「……多少は正気が戻ったか？
　なら聞け。俺は今、役立たずの戯言に付き
合いたい気分ではない」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0270a06">
「簡潔に報告しろ。
　何があった？」


{	NwC("cg/fw/nw大鳥軍将校Ａ.png");}
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0280e167">
「――あ、姉君です」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0290a06">
「何？」


{	NwC("cg/fw/nw大鳥軍将校Ａ.png");}
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0300e167">
「花枝様の御姉君！
　香奈枝様が、お帰りになられました!!」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0310a06">
「――――」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/005vs0320b18">
「…………………………」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0330e173">
「……う、嘘？」


{	NwC("cg/fw/nw大鳥軍将校Ａ.png");}
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0340e167">
「お帰りになったのです！
　我々を殺しに戻って来られたのです！」


//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0350e167">
「我々は皆殺しにされるのですッ！
　も、もう駄目です。我々は餌にされます！
あの<RUBY text="アリジゴク">蟻地獄</RUBY>のような女が満足する為の餌にィ
――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃。殺害
//◆将校倒れる
	SetVolume("@ｅｔｃ／大鳥将校Ａ", 300, 0, null);
	OnSE("se戦闘_攻撃_刀刺さる03", 1000);

	CreateTextureEX("刀", 16000, @0, @0, "cg/ef/ef014_汎用横軌道.jpg");
	Fade("刀", 300, 1000, null, true);
	DeleteStL(0,true);

	CreateTextureEX("血", 15000, @0, @0, "cg/ef/ef006_汎用血しぶき.jpg");
	Fade("血", 300, 1000, null, true);
	FadeDelete("刀",300,true);
	OnSE("se人体_衝撃_転倒02", 1000);

	StR(1000, @0, @0,"cg/st/st獅子吼_戦闘_制服.png");
	FadeStR(0,true);

	Wait(600);
	FadeDelete("血",700,true);

	SetFwC("cg/fw/fw獅子吼_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0360a06">
「…………」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0370e173">
「か、閣下!?」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0380a06">
「騒ぐな。
　花枝様の御前である」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0390e173">
「で、でで、ですが。
　香奈枝様が戻られたと――」


//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0400e173">
「あの……<RUBY text="・・">あの</RUBY>香奈枝様が……
　非常に、その、途轍もなく危険なのでは!?」


//◆チャキ
{	OnSE("se戦闘_動作_刀構え01", 1000);
	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0410a06">
「……何度言わせる気だ？」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0420e173">
「――――」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0430a06">
「別に何程の事でもない。
　襲撃者の正体がわかったというだけだ」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0440e173">
「は……はッ」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0450a06">
「迎撃に出る」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0460e173">
「……閣下が御自ら!?」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0470a06">
「鳥羽さえこの始末ではな。俺が指揮を執ら
ねばどうにもなるまい。
　貴様らは花枝様を奥へお移ししろ」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0480a06">
「それと、表の武者どもを館内に呼び戻して
おけ」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0490e173">
「りょ、了解いたしましたッ！」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/005vs0500b18">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc04_006.nss"