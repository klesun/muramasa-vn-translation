//<continuation number="1600">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_015.nss_MAIN
{


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}


//	$Ichizyou_Flag = 0;
//	$Kanae_Flag = 0;
//	$Muramasa_Flag = 0;

	RouteChicker2();

//アナザー
	if($RC_N["アナザー"] < $RC_N["一条"] && $RC_N["アナザー"] < $RC_N["香奈枝"] && $RC_N["アナザー"] < $RC_N["村正"]){

//一条
	}else if($RC_N["一条"] < $RC_N["アナザー"] && $RC_N["一条"] < $RC_N["香奈枝"] && $RC_N["一条"] < $RC_N["村正"]){
		//▼一条ルートのみ
		#bg039_競技場客席a_01=true;
		#ev115_一条の髪に触れる景明_a=true;
		#ev115_一条の髪に触れる景明_b=true;
		//▼後の回想シーンmb04_023で使用します
		$Fla_ev115pass=true;

//香奈枝
	}else if($RC_N["香奈枝"] < $RC_N["アナザー"] && $RC_N["香奈枝"] < $RC_N["一条"] && $RC_N["香奈枝"] < $RC_N["村正"]){
		//▼香奈枝ルートのみ
		#bg039_競技場客席a_01=true;
		#bg035_鎌倉サーキット俯瞰a_01=true;
		#ev116_湯上り香奈枝=true;

//村正
	}else if($RC_N["村正"] < $RC_N["アナザー"] && $RC_N["村正"] < $RC_N["一条"] && $RC_N["村正"] < $RC_N["香奈枝"]){
		#bg039_競技場客席a_01=true;
		#bg035_鎌倉サーキット俯瞰a_01=true;
		#bg002_空a_01=true;
		#bg035_鎌倉サーキット俯瞰b_01=true;
	}else{
//その他

	}

	//▼ルートフラグ、選択肢、次のGameName
	if($Others_Flag  == 0 && $Kanae_Flag == 0 && $Ichizyou_Flag == 0 && $Muramasa_Flag == 0){
//嶋：※こちらこの時点でフラグなしというパターンがないので、間違いなくここには来ません【090923】
//アナザー
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_4";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else if($RC_N["アナザー"] < $RC_N["一条"] && $RC_N["アナザー"] < $RC_N["香奈枝"] && $RC_N["アナザー"] < $RC_N["村正"]){
//アナザー
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_4";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

//一条
	}else if($RC_N["一条"] < $RC_N["アナザー"] && $RC_N["一条"] < $RC_N["香奈枝"] && $RC_N["一条"] < $RC_N["村正"]){
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_1";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

//香奈枝
	}else if($RC_N["香奈枝"] < $RC_N["アナザー"] && $RC_N["香奈枝"] < $RC_N["一条"] && $RC_N["香奈枝"] < $RC_N["村正"]){
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_2";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

//村正
	}else if($RC_N["村正"] < $RC_N["アナザー"] && $RC_N["村正"] < $RC_N["一条"] && $RC_N["村正"] < $RC_N["香奈枝"]){
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_3";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	if($ma03_015_routeFlag == true){$ma03_015_routeFlag = false;}
	else{$Muramasa_Flag++;SetHex();}
//その他
	}else{
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_4";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
	}

	$PreGameName = $GameName;

	$GameName = "ma03_016.nss";

}

scene ma03_015.nss
{

}



scene ma03_015.nss_1
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_014.nss"

	SoundPlay("@mbgm30",0,1000,true);

	PrintBG("上背景", 30000);

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStA(0,true);

	Delete("上背景");



//――――――――――――――――――――――――――――――
.//●一条
//●一条

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　一条の頷きから視線を外し、注意をレースに戻す。
　特に動きはない。開始直後と同様――熾烈な争いが
繰り広げられている。

　俺は暫し、その模様に見入った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	ClearWaitAll(1000, 2000);

//◆ウェイト、戻り
	WaitKey(1000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm27",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　眼下の状況は推移すれど異変なし。
　隣には一条。

　大鳥主従の姿は欠けている。
　香奈枝嬢の髪に砂が絡んだとの事で、体を洗い流し
に行った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150010a00">
「お前はいいのか。
　オフロードコースから相当の砂塵が飛んで
きているようだが」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150020a02">
「平気です。
　こんなの、別に気になりません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　事もなげにそう云う、一条の頬や髪は所々白い。
　元が整った容貌をしているだけに、些か目立つ。

　女性なのだ。もう少し、身嗜みには気を払った方が
良いと思うが……
　物の考え方は人それぞれ。意見の押し付けは迷惑と
いうもの。

　――だが、気になる。
　他人と思えば見過ごせようが、今この少女は仮にも
自分の部下。

　保護下にある。
　そう考えると、好きにすればいいとは思い切れない
部分があった。

　……余計な世話ではあろうが。
　俺は半ば衝動的に、指を伸ばしていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条の身繕いをする景明
	CreateTextureEX("絵ＥＶ100", 5000, Center, Middle, "cg/ev/ev115_一条の髪に触れる景明_a.jpg");
	Fade("絵ＥＶ100", 1000, 1000, null, true);

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150030a00">
「……」

{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150040a02">
「……」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150050a00">
「……」

{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150060a02">
「あ、あのぉ……
　湊斗さん？」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150070a00">
「何か」

{	FwR("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150080a02">
「その、何を……」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150090a00">
「砂を取っている」

{	FwR("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150100a02">
「……」

{	FwR("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150110a02">
「す、す、すみませんっ！
　お手を煩わせてっ……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　一条は、あわあわした。
　大体、何を考えたのか知れる。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_慌て.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150120a02">
「すぐ、やりますから――」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150130a00">
「違う。
　別に婉曲な催促をしたわけではない」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　手巾を取り出し、未使用の面で頬の砂を拭う。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150140a00">
「お前が気にしないのならそれでいい。
　ただ俺が気になっただけだ」

{	FwR("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150150a02">
「……すみません。
　見苦しい格好ですよね」

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150160a02">
「あの、すぐ洗ってきます」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150170a00">
「催促ではないと言ったろう」

{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150180a02">
「でも……」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150190a00">
「実際、見苦しくはない。
　お前には少し不思議な所がある」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150200a00">
「汚れに外観を損なわれる事がない、とでも
云えば良いのか……
　思えばお前との遭遇は身嗜みを整えてとは
いかぬ状況が多かったが」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　野犬と戦っていたり武者に斬られかかっていたり。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150210a00">
「お前はいつも綺麗に見えた」

{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150220a02">
「…………」

{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150230a02">
「えっ？」

{	FwR("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150240a02">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵ＥＶ900", 4900, Center, Middle, "cg/ev/ev115_一条の髪に触れる景明_b.jpg");
	FadeDelete("絵ＥＶ100", 500, true);

	SetFwR("cg/fw/fw一条_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150250a02">
「……!?　あ、……ぅ……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　一条は再び、あわあわした。
　今度は何を考えたのやら。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150260a00">
「言わば、刀の美貌なのかもしれない。
　血と泥に塗れていようが自然で、美しい」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150270a00">
「お前はそれで良いと思う。一条。
　自分で気にならないなら、そのままでいろ」

{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150280a02">
「…………。
　刀……」

{	FwR("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150290a02">
「あたし、そういう風に見えますか？
　湊斗さんの眼から」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150300a00">
「ああ。
　だから傍らにいる人間としては、<RUBY text="・・・">手入れ</RUBY>も
したくなる」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　もしかするとこれは酷い言い草ではないのかと思い
つつ、手は休めずに繕いを続ける。
　幸い、怒り出す気配は伝わってこなかった。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150310a02">
「……」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150320a00">
「こうされると、生理的不快感等を覚えるか」

{	FwR("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150330a02">
「いいえ……」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150340a00">
「そうか。
　なら続けるが、構わないか」

{	FwR("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150350a02">
「……はい。
　お願いします」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　了承を得て、髪へ指先を向ける。
　やはりかなりの砂粒が絡み付いているようだった。

　一緒に髪を抜いたりせぬよう細心の注意を払いつつ、
砂を一粒一粒取り去ってゆく。
　一条はおとなしく、俺がするに任せた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150360a02">
（かたな……
　そんな風に言われたの、初めてだけど）

{	FwR("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150370a02">
（……なんだろ。
　なんか……すっきりとして、嬉しい）

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150380a02">
（父様がもし、今も生きていたら……
　やっぱり、そう言ってくれたのかな……）

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150390a02">
（そんな気がする……）

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150400a00">
「大体は取れたか」

{	FwR("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150410a02">
「……」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150420a00">
「どうだ？　一条」

{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150430a02">
「……あっ。
　その」

{	FwR("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150440a02">
「ええと……
　前の方にもう少し、付いているような気が
します」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150450a00">
「そうか？
　こちらに頭を向けてくれ」

{	FwR("cg/fw/fw一条_笑顔b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150460a02">
「はいっ」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150470a00">
「……」

{	FwR("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150480a02">
「……」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150490a00">
「見当たらないが……
　奥か？」

{	FwR("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150500a02">
「……」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150510a00">
「一条？」

{	FwR("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150520a02">
「……父様の……匂いがする……」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150530a00">
「？」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwR("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150540a03">
「何してやがりますかそこの二名ーーーッ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆どきゃ。

	OnSE("se戦闘_攻撃_殴る02",1000);

	CreateColorSP("絵フラ", 6000, "#FFFFFF");
	Wait(1);

	PrintGO("上背景", 30000);
	CreateColorSP("絵フラ", 6000, "#FFFFFF");
	CreateTextureSP("絵振動", 200, Center, Middle, "cg/bg/bg039_競技場客席a_01.jpg");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵フラ", 200, false);
	FadeFR4("絵振動",0,1000,300,0,0,20,DxlAuto,true);
	Delete("絵振動");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　唐突な旋撃は。
　俺の首をきっかり九〇度、横方向へ打ち倒した。

　とても痛い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm22",0,1000,true);

	StR(1000, @300, @0,"cg/st/st香奈枝_通常_私服a.png");
	Move("@StR*", 300, @-300, @0, Dxl2, false);
	FadeStR(300,false);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150550a00">
「……大尉殿」

{	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,false);
	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150560a02">
「…………え!?
　じっ、ＧＨＱ！　てめぇいつからそこに！」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150570a03">
「おーおーおー。
　お約束な台詞吐いてくださいますことね！」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150580a03">
「てことはやっぱり状況は見ての通り！
　いちゃいちゃしてましたのねっ！　乳繰り
合ってましたのね！　揉んだり触ったりして
ましたのね！　真っ昼間っから！」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150590a03">
「わたくしがいないのをいいことにっ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　成程。
　そのように見えていたのか。

　一瞬前までの状況を客観的に把握してみる。
　
　…………無理はないのかもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150600a00">
「大尉殿。誤解です」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150610a02">
「そっ、そうっ。誤解！
　ただ砂っ、砂を取ってもらってただけでっ」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150620a03">
「えーい聞こえません聞きたくありません！
　わたくしが知りたいことなどもはやひとつ
きりです！」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150630a03">
「景明さま！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150640a00">
「はい」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150650a03">
「挿れた？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150660a00">
「……」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0150670a04">
「お嬢さま。
　なんつーかあんた最低でございます」

{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150680a03">
「だってだってっ！
　そこが核心なんですもの！　ふたりがもう
抜き差しならない関係になってしまっていた
ら、割り込む余地がないじゃないっ！」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150690a03">
「ちなみに今のは洒落ですのよ！」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0150700a02">
「おまえ<RUBY text="マジ">真</RUBY>最低だ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　無駄に大騒ぎになった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	ClearWaitAll(2000, 500);

//◆復帰
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　何やかやの末、再び四人で競技を見守る。
　そうして、すぐの事だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆終了

..//ジャンプ指定
//次ファイル　"ma03_016.nss"

}

//――――――――――――――――――――――――――――――
.//●香奈枝
scene ma03_015.nss_2
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//●香奈枝

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　一条の頷きから視線を外し、注意をレースに戻す。
　特に動きはない。開始直後と同様――熾烈な争いが
繰り広げられている。

　俺は暫し、その模様に見入った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一度ブラックアウト
	ClearWaitAll(1000, 2000);

//◆ウェイト、戻り
	WaitKey(1000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm27",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　状況の膠着を見て取って、席を立つ。
　小用のためだ。若干の尿意を覚えていた。

{	CreateTextureEX("絵背景110", 110, Center, Middle, "cg/bg/bg035_鎌倉サーキット俯瞰a_01.jpg");
	Fade("絵背景110", 1000, 1000, null, false);}
　サーキットコースに隣接したサービス区画へ向かう。
　大鳥大尉が同行した。髪に砂が絡んだので洗い流し
たいらしい。長く艶のある髪だが、それだけに不便も
多いようだ。

　多大な金が投入される装甲競技は紳士淑女の社交場
という側面も持つため、そうした贅沢といえば贅沢な
需要にも応えられるだけの施設を有する。
　大尉はホテルの一室を借用した。

　用便を済ませた後、その部屋へ向かう。
　……扉を見ただけで、一晩借りるための費用が推量
され<RUBY text="・・">ない</RUBY>ような部屋だった。

　警官の収入でここを宿に選ぶなら、月のうち二九日
は野宿する必要があろう。そこが理解の限度だった。
　髪を洗う為だけにこんな部屋を借りてしまう大尉の
経済感覚は、想像するになかなか恐ろしいものがある。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒幕", 200, "Black");
	Fade("黒幕",300,1000,null,true);

//◆ＳＥ：ノック
	CreateSE("SE01","se人体_動作_ドアノック01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$ma03_15soundSE = RemainTime("SE01");
	WaitKey($ma03_15soundSE);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150710a03">
「景明さま？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150720a00">
「はい」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150730a03">
「どうぞー」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガチャ。
//◆湯上り香奈枝。後ろにタオルを持って控えるさよ？
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	Delete("上背景");

	CreateTextureSP("絵ＥＶ100", 5000, Center, Middle, "cg/ev/ev116_湯上り香奈枝.jpg");

	OnSE("se日常_建物_扉開く01",1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150740a03">
「少々お待ちくださいましね。
　すぐに身を整えますから」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150750a00">
「……は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm22",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　しどけない姿を前に、いささか息を詰める。
　湯を浴びたのか。白磁の肌が今は薄桃色に上気し、
そしてわずか一枚の布だけがその上を覆っている。

　無論そんなものでは柔肌から立ち昇る湯気を隠す事
すらできない。
　蠱惑的な匂いが脳髄を甘く刺激した。

　しかし香奈枝嬢はこれが貴顕の余裕というものか、
まったく<RUBY text="てん">恬</RUBY>としている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0150760a04">
「はしたのうございますよ、お嬢さま」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150770a03">
「あら、どうして？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150780a00">
「失礼致しました。
　自分の方こそ、お迎えに上がるのが少々早
過ぎたようです」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0150790a04">
「良いですかお嬢さま。
　妙齢の<RUBY text="にょしょう">女性</RUBY>たるもの、殿方に肌を見られた
時は直ちに暴力衝動に支配され、攻撃を行わ
なくてはなりませぬ」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0150800a04">
「この際は極めて苛烈に。
　相手の意識を奪うだけの打撃を加える必要
がありますゆえ。また方法は、素手や武器に
よる殴打よりも重量物による投擲が適切です」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0150810a04">
「そこのブロンズ像などがよろしゅうござい
ましょう」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150820a00">
「せめてマグカップ程度にして頂けないもの
でしょうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　奪われるものを意識だけで済ませるために。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150830a03">
「もう、ばあやったら。
　ほかの方ならいざ知らず、景明さまとの間
にそんな他人行儀な振舞いなんていらないで
しょう？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0150840a04">
「これはこれで親愛表現なのでございますよ。
　まぁ、お嬢さまのようなアプローチの仕方
もアリではございますが」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150850a00">
「……」

{	SetComic(@0,@0,4);
	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150860a03">
「ねぇ、景明さま？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteComic();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　細い双眸に、ふと、妖しげな輝きが灯った。
　猫を思わせるなにか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150870a03">
「このバスタオルの下、お知りになりたい？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150880a00">
「はい」

{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150890a03">
「ふふふ、ご無理はなさらないで。
　正直に仰ってくださったら、わたくし――」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0150900a04">
「お嬢さま。
　脳内脚本に準拠して話を進めませぬように」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150910a03">
「…………」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150920a03">
「あら？」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150930a03">
「……えぇと……
　景明さま？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150940a00">
「自分は女性を好みます。
　特に、大尉のようにお美しい方は」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150950a00">
「素肌を見せて頂けるなら、喜んで拝見致し
ますが」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0150960a03">
「…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0150970a04">
「湊斗さま……
　お会いした時よりむっつり助平であろうと
拝察しておりましたが、実はむっつりですら
なく単に助平であられたとは」

{	FwC("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0150980a04">
「侮れぬお方でございます。
　このさよ、感服仕りました」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0150990a00">
「恐縮です」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151000a03">
「えぇと……その……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151010a04">
「景明さま。マナーでございますよ。
　とりあえず、扉はお閉めくださいませ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151020a00">
「これは、失礼致しました。
　気付きませず」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ばたん。
//嶋：開けっ放しだったドアを閉めた
	OnSE("se日常_建物_扉閉める01",1000);
//	CreateColorSP("絵暗転", 15000, "#000000");
//	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151030a03">
「…………」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151040a04">
「さあ、どうぞ。
　お嬢さま」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151050a03">
「ど、どうぞって……」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151060a04">
「ほほほ。如何されましたかお嬢さま。
　先程の勢いで。さっ」

{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151070a03">
「…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151080a04">
「おやおや……
　これはどうしたことでございましょう」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151090a04">
「このさよめの主人は口だけの女では決して
ないはずなのでございますが。
　……湊斗さま、おわかりになられますか？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151100a00">
「は。
　……大体のところは」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151110a04">
「さすがでございます。
　ええ……あのままお嬢さまのペースで話が
進んでいたならば、肌の一つや二つ、笑って
見せられたことでしょうが」

{	FwC("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151120a04">
「しかし何たることか、ここに至って弱点が
露呈。
　お嬢さまは、受けに回るとやたら弱かった
のでございます」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151130a03">
「ばあやーっ！」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151140a04">
「ほっほっほっ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151150a00">
「……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151160a03">
「あ、あの、景明さま？
　なんと言いますかしら、ここは少しばかり
ムードに欠けるというか、乙女のトキメキを
司る第五元素『萌』が適正値以下というか」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151170a03">
「ですのでそのあの……」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151180a04">
「逃げております。
　全力で逃げを打っておりますよ、お嬢さま」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151190a03">
「にに逃げてません！
　わっ、わかりました。少々お待ちください
まし」

{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151200a03">
「だっ、大丈夫……
　別にどってことない。どってことない」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151210a03">
「すーはー、すーはー……
　でっ、では……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151220a00">
「ご無礼」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151230a03">
「――はい？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151240a00">
「戯れが過ぎました。
　外にて待っております。身仕舞いをお続け
下さい」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151250a04">
「は。
　すぐに済ませますゆえ」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151260a00">
「どうかごゆるりと。
　失礼します」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	CreateColorSP("絵暗転", 15000, "Black");

//◆ばたん。
	OnSE("se日常_建物_扉開く01",1000);
	Fade("絵暗転", 0, 1000, null, false);
	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnSE("se日常_建物_扉閉める01",1000);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151270a03">
「……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151280a04">
「さ、お嬢さま。お着替えを」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151290a03">
「…………。何かしら。
　こう、途方もなく敗北感を覚えるのだけど」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0151300a04">
「まぁ負けておりましたし。
　お嬢さまもまだまだ未熟者でございます」

{	FwC("cg/fw/fw香奈枝_凹む.png");}
//◆悔しそうに
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0151310a03">
「……くーっ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	ClearWaitAll(2000, 500);

//◆観客席
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　用を済ませ、客席に戻る。
　……丁度、その時だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆終了

..//ジャンプ指定
//次ファイル　"ma03_016.nss"


}

//――――――――――――――――――――――――――――――
.//●村正
scene ma03_015.nss_3
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//●村正

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　一条の頷きから視線を外し、注意をレースに戻す。
　特に動きはない。開始直後と同様――熾烈な争いが
繰り広げられている。

　俺は暫し、その模様に見入った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一度ブラックアウト
	ClearWaitAll(1000, 2000);

//◆ウェイト、戻り
	WaitKey(1000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　レースの膠着を見て取って、俺は席を立った。
　同行者に断りを入れて、コントロールタワーの方角
へ向かう。

　村正の様子を窺うためだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆競技場俯瞰

	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	SetVolume("@mbgm*", 1500, 0, null);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm14",0,1000,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151320a00">
「……村正」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151330a01">
《御堂。
　どうしたの》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　無論、俺の接近には気付いていただろう。
　毛筋ほどの驚きも見せず、深紅色の蜘蛛は<RUBY text="メタルエコー">金打声</RUBY>を
送ってきた。

　仕手と劔冑は二にして一の武者。
　ひとたび<RUBY text="タテワキ">帯刀</RUBY>の儀礼によって結び付けられたならば、
どれほどの距離もどれほどの壁も両者の繋がりを断つ
ものではない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151340a00">
「大した用があったわけではないが。
　少し様子を見に来た」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151350a01">
《そう。
　異常はなし、よ。寄生体は見当たらない。
もちろん銀星号も》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　淡々と応える村正の、頭はサーキットの方角へ向け
られている。
　だが今は、そちらを見ていない。

　そう思えた。
　別に蜘蛛の多眼を把握したのではなく。ただそんな
気がしたのだった。村正との見えざる繋がりが、俺に
何かを伝えたのかもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151360a00">
「何を見ている？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151370a01">
《……わかった？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151380a00">
「別に責めてはいないがな。
　何となく、お前の気が散っているのは察せ
られた」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151390a01">
《ごめんなさい。
　新しい<RUBY text="の">騎体</RUBY>が出てきたらちゃんと見ておく
から、そこは心配しないで》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151400a00">
「元々心配はしていない」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151410a01">
《そう……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151420a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151430a01">
《……》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151440a01">
《……街を見ていたの》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151450a00">
「鎌倉か」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151460a01">
《ええ。
　変わったなって、思って》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151470a00">
「昔にも、見たことがあるのか」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151480a01">
《……ええ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnBG(100,"bg002_空a_01.jpg");
	FadeBG(1000,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　その頃は、どうだったのか――と。
　問いかけて、俺はやめた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151490a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151500a01">
《聞かないんだ》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151510a00">
「何とはなしにな」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151520a01">
《……ふふ。
　今日はやたらに、<RUBY text="・・・">伝わる</RUBY>みたいね》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151530a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　それきり、口を閉ざす。
　ただ二人、風だけを聴いた。

　――村正が人として生きた時代は、戦乱の渦中。
　その頃の鎌倉の様相は、きっと。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151540a00">
「……そろそろ戻る」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151550a01">
《ええ》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151560a00">
「ところで、だ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151570a01">
《なに？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151580a00">
「俺はどうやって戻るべきなのだろう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆サーキット場遠景
//◆コントロールタワー上に矢印をぴっと

	SetVolume("@mbgm*", 100, 0, null);

	CreateTextureSP("絵Ｅ背景", 3000, Center, Middle, "cg/bg/bg035_鎌倉サーキット俯瞰b_01.jpg");
	Wait(600);
	Fade("絵Ｅ背景", 0, 0, null, true);

	Wait(600);

	Fade("絵Ｅ背景", 0, 1000, null, true);
	Wait(600);
	Fade("絵Ｅ背景", 0, 0, null, true);

	Wait(600);

	Fade("絵Ｅ背景", 0, 1000, null, true);

	Wait(600);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0151590a00">
「ここから」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0151600a01">
《……そもそもどうやって登ってきたの？
　貴方》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	ClearWaitAll(2000, 500);

//◆村正好感度＋
	$ma03_015_routeFlag = true;
	$Muramasa_Flag++;

	judgment_of_count();

//◆観客席
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　結局村正に手伝わせて降り、客席へ戻る。
　……丁度、その時だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆終了


..//ジャンプ指定
//次ファイル　"ma03_016.nss"


}



//――――――――――――――――――――――――――――――
.//●イベント無し
//※嶋：こちらこの時点でフラグなしというパターンがないので、間違いなくここには来ません【090923】
scene ma03_015.nss_4
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//●イベント無し

	SetVolume("@mbgm*", 2000, 0, null);
	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　一条の頷きから視線を外し、注意をレースに戻す。
　……丁度、その時だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆終了

..//ジャンプ指定
//次ファイル　"ma03_016.nss"

}



