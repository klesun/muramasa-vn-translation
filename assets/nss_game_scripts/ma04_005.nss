//<continuation number="1500">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_005.nss_MAIN
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
	if($Ichizyou_Dead == true){
		#ev119_一条と香奈枝海水浴_c = true;
	}else if($Kanae_Dead == true){
		#ev119_一条と香奈枝海水浴_b = true;
	}else{
		#ev119_一条と香奈枝海水浴_a = true;
	}

//	$Ichizyou_Dead=true;
//	$Kanae_Dead=true;
//	#復讐編終了 = true;

	//▼ルートフラグ、選択肢、次のGameName
	if($Ichizyou_Dead == true){

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ka";
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

		if($ma04_005_routeFlag==true){$ma04_005_routeFlag=false;}
		else{$Kanae_Flag++;SetHex();}

	}else if($Kanae_Dead == true){
		//■未読既読判定３
		$BasGameName = $GameName;
		$GameName = $GameName + "_ic";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定３
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		if($ma04_005_routeFlag==true){$ma04_005_routeFlag=false;}
		else{$Ichizyou_Flag++;SetHex();}

	}else{
		//■未読既読判定４
		$BasGameName = $GameName;
		$GameName = $GameName + "_all";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定４
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		if(#復讐編終了 == true){call_scene @->ma04_005_select02.nss;}
		else{call_scene @->ma04_005_select01.nss;}

	}

	$PreGameName = $GameName;

	if($Ichizyou_Dead == true){

		$GameName = "ma04_006.nss";

	}else if($Kanae_Dead == true){

		$GameName = "ma04_006.nss";

	}else{

		if($ma04_005_Ichizyou == true){
			$GameName = "ma04_005a.nss";
			$ma04_005_Ichizyou = false;
		}else if($ma04_005_Kanae == true){
			$GameName = "ma04_005b.nss";
			$ma04_005_Kanae = false;
		}else if($ma04_005_Sayo == true){
			$GameName = "ma04_005c.nss";
			$ma04_005_Sayo = false;
		}


	}


}

scene ma04_005.nss
{

..//ジャンプ指定
//前ファイル　"ma04_004.nss"

}


scene ma04_005.nss_all
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


	SoundPlay("@mbgm29",0,1000,true);
	PrintBG("上背景", 30000);
	OnBG(100,"bg041_片瀬海岸_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

//◆分岐。一条、香奈枝共に生存なら０５Ａ、香奈枝死亡なら０５Ｂ、一条死亡なら０５Ｃ


//――――――――――――――――――――――――――――――
.//●０５Ａ
//●０５Ａ
	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050010a00">
「夏だ……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050020a03">
「ええ……」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050030a04">
「今年も情熱の季節がやって参りましたな」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050040a02">
「いや、違うだろ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明一行。海水浴風景
//◆ばーさんはアロハシャツとか。
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, Axl2, true);
	CreateTextureEX("絵ＥＶ100", 5100, Center, -576, "cg/ev/ev119_一条と香奈枝海水浴_a.jpg");
	Fade("絵ＥＶ100", 0, 1000, null, true);
	Move("絵ＥＶ100", 2500, @0, -110, Dxl1, false);

	FadeDelete("絵フラ", 2000, true);

	SetFwR("cg/fw/fw一条_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050050a02">
「なんであたしらごくふつーに海水浴してん
だよ!?」

{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050060a03">
「そう言われましても」

{	FwR("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050070a04">
「来てみたら、皆様ふつーに真夏を謳歌して
おりましたからねぇ」

{	FwR("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050080a02">
「だからってなんであたしらまで混ざる!?」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050090a00">
「情報収集の基本は状況に溶け込む事だ。
　その場の異分子であってはならない」

{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050100a04">
「含蓄ある台詞でございます。
　常に黒っぽい服と黒っぽいオーラを纏って
周囲から浮き上がりまくっている、どこぞの
どなたかにも聞かせて差し上げたいもの」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050110a00">
「は。全くです」

{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050120a03">
「自覚症状あるのかしらこの人……」

{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050130a02">
「そ、それにしたって！
　何も水着まで着なくたって」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050140a00">
「付近の店で販売している衣料品が水着しか
なかった。仕方がない。
　この海岸を平装で歩き回るのは無謀だ」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050150a03">
「汗みずくになってしまいます」

{	FwR("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050160a04">
「脱水症状までの所要時間は約九十分という
ところでございましょう」

{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050170a02">
「うう……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　唸る一条。
　言いたいことは有り過ぎるほどあるのだが何をどう
言ったものやら。そんな様子だ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050180a00">
「不満か」

{	FwR("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050190a02">
「い……いえっ。
　不満は無いですけど」

{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050200a02">
「ただ……その……」

{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050210a03">
「ご安心なさいまし。
　よく似合っていましてよ？」

{	FwR("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050220a02">
「そ、そ、そんなこと心配してねー！
　してねぇーーーっ!!」

{	FwR("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050230a04">
「と言いつつも、先刻より綾弥さまの視線は
ご自身と湊斗さまの間を行ったり来たり。
　まこと目は口程に物申す次第でございます」

{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050240a02">
「水葬にして欲しいらしいなババァ……」

{	FwR("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050250a04">
「魚介類の方々の滋養という最期は勘弁して
頂きとうございますねぇ……。
　それはさておき湊斗さま」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050260a00">
「は。何か」

{	FwR("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050270a04">
「――殿方の義務というものをお忘れでは？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　含みのある視線でこちらの頬を撫でてくる永倉侍従。
　…………成程。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050280a02">
「……」

{	FwR("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050290a03">
「わくわく、はらはら」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　俺は――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


..//選択：一条を見る／香奈枝を見る／ばあや殿を見る
//◆選択：一条を見る／香奈枝を見る／ばあや殿を見る
//◆※ばあや選択肢は第二編でばあやフラグ立てている場合のみ出現


//◆一条を見る　"ma04_005a.nss"
//◆香奈枝を見る　"ma04_005b.nss"
//◆ばあや殿を見る　"ma04_005c.nss"

}


scene ma04_005.nss_ic
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	SoundPlay("@mbgm29",0,1000,true);
	PrintBG("上背景", 30000);
	OnBG(100,"bg041_片瀬海岸_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――
.//●０５Ｂ
	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050300a00">
「夏だ……」

{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050310a02">
「違いますよっ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明一行。海水浴風景
//◆景明と一条のみ。
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, Axl2, true);
	CreateTextureEX("絵ＥＶ100", 5100, Center, Middle, "cg/ev/ev119_一条と香奈枝海水浴_b.jpg");
	Fade("絵ＥＶ100", 0, 1000, null, true);
	FadeDelete("絵フラ", 2000, true);

	SetFwL("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050320a02">
「なにがどうして、いきなりこうして海水浴
なんですかっ!?」

{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050330a00">
「状況に溶け込むのは情報収集の基本だ」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　来てみたら、そこが海水浴場だったのだから仕方が
ない。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050340a02">
「そういうことではなくてっ！
　…………」

{	FwL("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050350a02">
「いえ……それもあるんですけど。
　…………どうして水着に……」

{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050360a00">
「この暑さの中、平服で歩くつもりか？」

{	FwL("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050370a02">
「……」

{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050380a00">
「それは無謀だ」

{	FwL("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050390a02">
「うう……そうですけど……」

{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050400a00">
「水着が嫌なのか」

{	FwL("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050410a02">
「嫌、っていうか……」

{	FwL("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050420a02">
「その」

{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050430a00">
「主観的意見としては。
　お前のその姿は良い」

{	FwL("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050440a02">
「……えっ？」

{	FwL("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050450a00">
「実に魅力的だ」

{	FwL("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050460a02">
「……」

{	FwL("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050470a02">
「……なっ、なっ……」

{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050480a00">
「……」

{	FwL("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050490a02">
「……からかわないでください」

{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050500a00">
「本心だ」

{	FwL("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050510a02">
「〜〜っ！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆一条好感度＋
//$Ichizyou_Flag = $Ichizyou_Flag++;
	$ma04_005_routeFlag = true;
	$Ichizyou_Flag++;

	judgment_of_count();

	SetFwL("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0129]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050520a02">
「と……とにかく！
　話を元に戻しますけどっ」

{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050530a00">
「うむ」

{	FwL("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050540a02">
「目的地は江ノ島なんでしょう？
　は、早く行きましょう！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	FadeDelete("絵ＥＶ*", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　……そう。
　ここは江ノ島ではない。

　江ノ島の対岸、片瀬だった。
　ここに留まっていても埒は明かない。早く島へ渡り
たいという一条の意思は理解できる。

　が。
　それでも留まっているからには理由があるのだった。

　俺はそのうち、最も直接的なものから口にした。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050550a00">
「渡れない」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050560a02">
「……え？
　どうしてですか？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050570a00">
「ここへ来るまでに調べておいた。
　今、江ノ島全域は立ち入り禁止区画に指定
されている」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050580a00">
「無論、発令したのは幕府だ。
　理由は不明」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050590a02">
「……兵器研究とやらをしてるからですか？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050600a00">
「可能性はある」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050610a02">
「どうします？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050620a00">
「公然と渡るのが不可能であるなら、非公然
に渡る。それだけの事だ。
　その方策を探るのが、ここに留まっている
理由の第二」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050630a00">
「第三は情報収集。
　本来なら目的地の手前で聞き込みなどと、
迂遠なやり方は好まないのだが」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050640a00">
「今回ばかりは別だ」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050650a02">
「……そうですね。
　島へ行く前に、せめて<RUBY text="・・・・">この状況</RUBY>がどういう
ことなのか多少でも知っておかないと……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050660a00">
「ああ。
　なかなかもって足を踏み入れる気にはなれ
ない」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050670a02">
「夏ですもんね……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050680a00">
「夏だ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　季節は夏。
　暦は霜月。そろそろ年の瀬も近いこの頃。

　夏である筈がなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050690a00">
「異常気象にも程がある」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050700a02">
「しかも江ノ島周辺だけ……。
　どうしてこんな露骨におかしい事件が全然
ニュースにもなってないんでしょう？　新聞
で読んだ覚えがないんですけど……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050710a00">
「六波羅が絡んでいるとして、だが。
　……報道機関に緘口令を布く程度のことは
造作もないのだろう」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050720a02">
「怪しい、ってことですね」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050730a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　八幡宮で話を聞いた時点では――そしてその後一条
に説明する傍ら情報を反芻した時も、六波羅の危険な
研究という点については半信半疑、むしろ首を傾げる
気持ちの方が強かった位なのだが。

　現時点では逆転している。
　幕府はあの島で何かを行っているのだ――おそらく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050740a00">
「では、行動を開始する。
　手分けして情報収集。主眼は島内への潜入
方法、及びこの異常な熱気について」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050750a00">
「何か質問、提案などは」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050760a02">
「ありません！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　応えつつ、一条は既に動き出していた。
　辺りを見回すや、客で賑わう海の家――ではなく、
その隣で小船を囲んで暗い顔をしている漁師の一団に
目をつける。迅速、かつ的確な行動だった。

　そうして、歩き始めようとして。
　ふと、一条は振り返った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050770a02">
「そういえば……湊斗さん」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050780a00">
「何か」

{	SetVolume("@mbgm*", 300, 1, null);
	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050790a02">
「あの大尉と婆さんはどうしたんです？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　――――。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(2000);

	SetVolume("@mbgm*", 2000, 1000, null);
	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050800a02">
「あ……すいません。やっぱりいいです。
　そりゃ、色々ありますよね……あんなんで
も軍人だったんだし」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0050810a02">
「じゃ、行ってきます」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050820a00">
「……ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　――何も、答えられなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);



//◆０６へ

..//ジャンプ指定
//次ファイル　"ma04_006.nss"

}


scene ma04_005.nss_ka
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	SoundPlay("@mbgm29",0,1000,true);
	PrintBG("上背景", 30000);
	OnBG(100,"bg041_片瀬海岸_01.jpg");
	FadeBG(0,true);
	Delete("上背景");


//――――――――――――――――――――――――――――――
.//●０５Ｃ
//◆０５Ｃ
	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050830a00">
「夏だ……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050840a03">
「ええ……」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050850a04">
「今年も情熱の季節がやって参りましたな」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明一行。海水浴風景
//◆一条不在。
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, Axl2, true);
	CreateTextureEX("絵ＥＶ100", 5100, Center, Middle, "cg/ev/ev119_一条と香奈枝海水浴_c.jpg");
	Fade("絵ＥＶ100", 0, 1000, null, true);
	FadeDelete("絵フラ", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　渚で戯れる男女。
　砂浜を駆ける子供。

　夏の――
　海水浴場の光景だった。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050860a03">
「開放的です……」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050870a00">
「ええ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
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
[text0280]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050880a03">
「見られてる。見られてましてよ、わたくし。
　……ああっ♪」

{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050890a04">
「作戦は成功でございますね！
　なんだか今とても変態チックで他人のフリ
をしたくてたまらない我がお嬢さま」

{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050900a00">
「視線を奪われている事に関しては否定が不
可能です。
　……大胆な水着を選ばれましたね」

{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050910a03">
「持参品です」

{	FwR("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050920a04">
「このようなこともありましょうかと」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050930a00">
「ビキニといえば……
　フランスで開発されたばかりのものでは」

{	FwR("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0050940a04">
「良くご存知ですね湊斗さま。
　本当に、なぜそんなことに詳しいのか問い
詰めたい気持ちで一杯なのでございますが」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050950a00">
「海外で購入されたのですか」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050960a03">
「ええ。
　大和ではまだ市販されていないと思います」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
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
[text0300]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050970a03">
「ふふ。如何ですか、景明さま？」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0050980a00">
「目の毒です。
　非常に……」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0050990a03">
「サンオイル、塗ってくださる？」

{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051000a00">
「喜んで」

{	FwR("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051010a04">
「喜んでやるのでございますね、湊斗さま」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051020a00">
「はい」

{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051030a04">
「迷いもない、真っ直ぐな眼差し……
　なにか使いどころを間違っているような気
も激しくいたしますが」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051040a03">
「いいえ、それでこそ景明さまですっ。
　ささ、どうぞー」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051050a00">
「では失礼して」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0051060a01">
《…………》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　――何処からか。
　無言、無音の非難を感じる。

　いくぶん冷静さを取り戻した。
　状況適応は情報収集の基本とはいえ、適応し過ぎか。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051070a00">
「止めておきましょう」

{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051080a03">
「あら？」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051090a00">
「己の目的を忘れ去りそうです」

{	FwR("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051100a03">
「ちぇっ。惜しい」

{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051110a04">
「ま、それが無難でございましょう。
　このまま続けて湊斗さまがエレクチオンな
感じになっても我々、困りますし」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051120a00">
「それは自分も深刻に困ります」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　無様過ぎて。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆香奈枝好感度＋
//$Kanae_Flag = $Kanae_Flag++;
	$ma04_005_routeFlag = true;
	$Kanae_Flag++;

	judgment_of_count();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　思考の方向を変える。
　状況整理。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	FadeDelete("絵ＥＶ*", 1000, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051130a00">
「我々の目的地は江ノ島です」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051140a03">
「そうですね」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051150a04">
「さっさと渡りたいところではございますが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　……そう。
　ここは江ノ島ではない。

　江ノ島の対岸、片瀬だった。
　ここに留まっていても埒は明かない。早く渡りたい
というのは、俺とても全く同感だった。

　が。
　それでも留まっているからには理由がある。

　俺はそのうち、最も直接的なものから口にした。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051160a00">
「渡れないという点が問題です。
　幕府が島への渡航を禁じている以上」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051170a03">
「何かがある、と言っているようなものです
ね。正直、少し意外です」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051180a04">
「六波羅の兵器研究とやらは眉唾物と思って
おりましたからねぇ……。
　しかしこうなって参りますと油断は禁物」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051190a04">
「して、湊斗さま。
　如何なされるおつもりですか？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051200a00">
「渡航が許可されていないのですから」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051210a03">
「はい」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051220a00">
「無許可で渡るまでの事」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051230a04">
「で、ございましょうとも」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　その方策を探るのが、ここ片瀬に留まっている理由
の二番目。

　三番目は――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051240a00">
「ですが、その前に情報収集を行いましょう。
　島で何事が起きているのか、できれば多少
なりと知ってから臨みたいものです」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051250a03">
「確かに……
　夏、ですものね？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051260a00">
「夏ですので」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051270a04">
「夏でございますからなぁ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　季節は夏。
　暦は霜月。そろそろ年の瀬も近いこの頃。

　夏である筈がなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051280a00">
「異常気象にも程があるというもの」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051290a04">
「しかも江ノ島周辺だけときては……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051300a03">
「こんな事件が、新聞の一面を飾っていない
ところをみると……やっぱり、六波羅さんが
緘口令を布いてらっしゃると考えるべきなの
かしら」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051310a04">
「疑惑濃度更に上昇でございますね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　確かに。
　八幡宮で話を聞いた時点では、六波羅の秘匿研究と
いう点については半信半疑、むしろ首を傾げる気持ち
の方が強かった位なのだが。

　現時点では逆転している。
　幕府はあの島で何かを行っているのだ――おそらく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051320a00">
「ではそろそろ行動を開始しましょう。
　手分けして情報収集を。主眼とすべきは島
への潜入方法、及びこの異常な熱気について」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051330a00">
「何かご質問、ご提案などは」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051340a03">
「……ひとつ、よろしいでしょうか？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051350a00">
「はい。大尉殿」

{	SetVolume("@mbgm*", 300, 1, null);
	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051360a03">
「一条さんはどうなさいましたの？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　――――。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(2000);
	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051370a03">
「……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051380a00">
「……自分は」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051390a00">
「存じません」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051400a03">
「……苦しげなお顔をなさいますのね？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051410a00">
「そうでしょうか」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051420a03">
「何が……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051430a00">
「……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051440a03">
「あったのでしょう？
　ねぇ、ばあや」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051450a04">
「さて……
　思春期の少女の事でございます」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0051460a04">
「色々と、あったのでは」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051470a03">
「……そうね……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051480a00">
「…………」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0051490a03">
「……では、参ります。
　景明さま、また後ほど」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0051500a00">
「……は」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);

//◆０６へ

..//ジャンプ指定
//次ファイル　"ma04_006.nss"


}


scene ma04_005_select01.nss
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	SoundPlay("@mbgm29",0,1000,true);

	PrintGO("背景０", 30000);

	CreateTextureEX("絵ＥＶ100", 5100, Center, -576, "cg/ev/ev119_一条と香奈枝海水浴_a.jpg");
	Move("絵ＥＶ100", 0, @0, -110, Dxl1, true);
	Fade("絵ＥＶ100", 0, 1000, null, true);

	FadeDelete("背景０", 1000, true);

//■選択肢
	SetChoice02("一条を見る","香奈枝を見る");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA03();
			$ma04_005_Ichizyou = true;
		}
		case @選択肢２
		{
			ChoiceB03();
			$ma04_005_Kanae = true;
		}
	}
}


//==========================================================//
//★選択肢シーン
scene ma04_005_select02.nss
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	SoundPlay("@mbgm29",0,1000,true);

	PrintGO("背景０", 30000);

	CreateTextureEX("絵ＥＶ100", 5100, Center, -576, "cg/ev/ev119_一条と香奈枝海水浴_a.jpg");
	Move("絵ＥＶ100", 0, @0, -110, Dxl1, true);
	Fade("絵ＥＶ100", 0, 1000, null, true);

	FadeDelete("背景０", 1000, true);

//■選択肢
	SetChoice03("一条を見る","香奈枝を見る","ばあや殿を見る");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA03();
			$ma04_005_Ichizyou = true;
		}
		case @選択肢２
		{
			ChoiceB03();
			$ma04_005_Kanae = true;
		}
		case @選択肢３
		{
			ChoiceC03();
			$ma04_005_Sayo = true;
		}

	}
}


