//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_005b.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma04_005b.nss","ActionCamera",true);
	Conquest("nss/ma04_005b.nss","ActionCameraProcess",true);
	Conquest("nss/ma04_005b.nss","ActionCameraDelete",true);

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
	if($ma04_005b_routeFlag==true){$ma04_005b_routeFlag=false;}
	else{$Kanae_Flag=$Kanae_Flag+2;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma04_005z.nss";

}

scene ma04_005b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_005.nss"


//●香奈枝
	SoundPlay("@mbgm29",0,1000,true);

	PrintBG("上背景", 30000);

	CreateCamera("カメラ１", Center, Middle, 250);
	SetAlias("カメラ１","カメラ１");

	CreateTextureSP("カメラ１/絵背景100",500, Center, Middle, "cg/ev/resize/ev119_一条と香奈枝海水浴_a_ex04.jpg");
	CreateTextureEX("カメラ１/絵背景200",500, Center, Middle, "cg/ev/resize/ev119_一条と香奈枝海水浴_a_ex03.jpg");
	SetAlias("カメラ１/絵背景100","絵背景100");
	Request("カメラ１/絵背景100", Smoothing);
	Request("カメラ１/絵背景200", Smoothing);
	Zoom("カメラ１/絵背景100", 0, 1200, 1200, null, true);
	Zoom("カメラ１/絵背景200", 0, 1200, 1200, null, true);

	CreateTextureSP("カメラ１/絵１",650, Center, Middle, "cg/ev/resize/ev119_一条と香奈枝海水浴_a_ex01.png");
	CreateTextureEX("カメラ１/絵２",650, Center, Middle, "cg/ev/resize/ev119_一条と香奈枝海水浴_a_ex02.png");
	SetAlias("カメラ１/絵１","絵１");
	SetAlias("カメラ１/絵２","絵２");
	Request("カメラ１/絵１", Smoothing);
	Request("カメラ１/絵２", Smoothing);
	Move("カメラ１/絵１", 0, @+50, @0, null, true);
	Move("カメラ１/絵２", 0, @+50, @0, null, true);


	MoveCamera("@カメラ１", 0, @+200, @-300, @0, Dxl1, true);

	Fade("カメラ１/絵２", 1000, 1000, Dxl1, false);
	Fade("カメラ１/絵１", 1000, 0, Axl1, false);
	MoveCamera("@カメラ１", 2500, @-680, @-290, @+300, Dxl1, false);

	FadeDelete("上背景", 1000, true);

	ActionCamera();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　香奈枝嬢を見る。
　……というより、目のやり場に困る。

　そう思いつつ、結局凝視してしまうような。
　そんな姿だった。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005b0010a03">
「見られてる。見られてましてよ、わたくし。
　……ああっ♪」

{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005b0020a04">
「作戦は成功でございますね！
　なんだか今とても変態チックで他人のフリ
をしたくてたまらない我がお嬢さま」

{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0030a00">
「視線を奪われている事に関しては否定が不
可能です。
　……大胆な水着を選ばれましたね」

{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005b0040a03">
「持参品です」

{	FwR("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005b0050a04">
「このようなこともありましょうかと」

{	FwR("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005b0060a02">
「下着じゃねぇかよコレ……。
　何考えてんだ。恥ずかしくねーのか!?」

{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005b0070a03">
「あらあら、世間知らずのお嬢さん。
　これはれっきとした水着ですのよ？　つい
先頃フランスで開発されたばかりの」

{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005b0080a02">
「適当言うな。
　こんな破廉恥な水着があるわけねーだろ」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0090a00">
「それが事実だから世の中は油断ができない、
一条。
　ビキニというものだそうだ」

{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005b0100a04">
「さすが湊斗さま。博識でございますね。
　むしろなんで知ってんだよと突っ込むべき
所のような気もいたしますが」

{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005b0110a02">
「…………え？
　ほ、ほんとなんですか？」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0120a00">
「俺も実際に目にするのは初めてだが」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005b0130a03">
「大和ではまだ市販されていないと思います」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ100", 5100, Center, -576, "cg/ev/ev119_一条と香奈枝海水浴_a.jpg");
	Move("絵ＥＶ100", 0, @0, -110, Dxl1, true);

	ActionCameraDelete();
	Fade("絵ＥＶ100", 500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　そうだろう。
　でなければここまで周囲の人間――特に男性――の
視線を集めはすまい。

　……いや。
　大して変化はないか。

　生地の少ない<RUBY text="アバンギャルド">前衛的</RUBY>な水着姿は、大鳥大尉の見事と
いうほかない<RUBY text="プロポーション">体型</RUBY>を全くもって完璧に際立たせている。
　いっそ過剰なまでに。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005b0140a03">
「ふふ。如何ですか、景明さま？」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0150a00">
「目の毒です。
　非常に……」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005b0160a03">
「サンオイル、塗ってくださる？」

{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0170a00">
「喜んで」

{	FwR("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005b0180a04">
「喜んでやるのでございますね、湊斗さま」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0190a00">
「はい」

{	FwR("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005b0200a04">
「迷いもない、真っ直ぐな眼差し……
　なにか使いどころを間違っているような気
も激しくいたしますが」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005b0210a03">
「いいえ、それでこそ景明さまですっ。
　ささ、どうぞー」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0220a00">
「では失礼して」

{	FwR("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005b0230a02">
「……湊斗さん……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　一条が上目遣いに俺を見ていた。
　拗ねている。

　多少、冷静になった。
　…………周囲状況に適応し過ぎているか。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0240a00">
「止めておきましょう」

{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005b0250a03">
「あら？」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0260a00">
「己の目的を忘れ去りそうです」

{	FwR("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005b0270a03">
「ちぇっ。惜しい」

{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005b0280a04">
「ま、それが無難でございましょう。
　このまま続けて湊斗さまがエレクチオンな
感じになっても我々、困りますし」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005b0290a00">
「それは自分も深刻に困ります」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　無様過ぎて。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆香奈枝好感度＋
//$Kanae_Flag=$Kanae_Flag++;
	$ma04_005b_routeFlag = true;
	$Kanae_Flag = $Kanae_Flag+2;

	judgment_of_count();

..//ジャンプ指定
//次ファイル　"ma04_005z.nss"

}


function ActionCamera(){

	CreateProcess("動き回るカメラ", 150, 0, 0, "ActionCameraProcess");
	SetAlias("動き回るカメラ","動き回るカメラ");

	Request("動き回るカメラ", Start);

}

function ActionCameraProcess(){


	begin:

	WaitAction("@カメラ１", null);

	MoveCamera("@カメラ１", 5000, @0, @+200, @+50, Dxl1, true);

	MoveCamera("@カメラ１", 4000, @+300, @+300, @+0, AxlDxl, true);
	Wait(2000);
	MoveCamera("@カメラ１", 4000, @-300, @-500, @-50, AxlDxl, true);

}

function ActionCameraDelete(){

	Request("@動き回るカメラ", Stop);
	MoveCamera("@カメラ１", 1000, 0, -600, 250, Dxl1, false);


}


