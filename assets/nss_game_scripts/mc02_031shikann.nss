//<continuation number="70">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031shikann.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();


	//▼イベントＣＧ
	#イベントファイル名=true;

//嶋：デバッグフラグ
//$酒_Flag=false;
//	$香奈枝合流_Flag=true;
//	$振動_Flag=true;

	//▼ルートフラグ、選択肢、次のGameName
	if($酒_Flag==false){
		if($香奈枝合流_Flag==true){
			if($振動_Flag==true){
				if($艦長泥酔_Flag==true){
					call_scene @->mc02_031shikann_No.nss;
					$shikann_k=false;
					$shikann_No=true;
				}else{
					call_scene @->mc02_031shikann_k.nss;
					$shikann_k=true;
					$shikann_No=false;
				}
			}else{
				call_scene @->mc02_031shikann_No.nss;
				$shikann_k=false;
				$shikann_No=true;
			}
		}else{
			call_scene @->mc02_031shikann_No.nss;
			$shikann_k=false;
			$shikann_No=true;
		}
	}else{
		call_scene @->mc02_031shikann_No.nss;
		$shikann_k=false;
		$shikann_No=true;
	}


	if($shikann_k==true){
		$PreGameName = $GameName;
		$GameName = "mc02_031rouka1.nss";
		$酒_Flag = true;
		$shikann_k=false;
		$shikann_No=false;
	}else if($shikann_No==true){
		$PreGameName = $GameName;
		$GameName = "mc02_031rouka1.nss";
		$shikann_k=false;
		$shikann_No=false;
	}

//	$Next_GameName = $GameName;
//	$GameName = "mc02_031time.nss";

}

scene mc02_031shikann.nss
{
..//ジャンプ指定
//前ファイル　"mc02_031rouka1.nss"

//●士官室
//◆香奈枝合流、振動、酒の３つのフラグが絡みます
//◆振動は香奈枝が合流しないと発生しません

}

//――――――――――――――――――――――――――――――
.//◆※振動フラグなし
//嶋：または酒_Flagをすでにとっている場合
//◆振動_Flagがない場合
scene mc02_031shikann_No.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se日常_建物_扉開く01", 1000);


	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Aa_01a.jpg");
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　士官室のようだ。
　狭いが、狭いなりに<RUBY text="ひん">品</RUBY>は悪くない。

　しかし、人の体温がまるで無かった。部屋はモデル
ハウスのように精彩を欠き、調度はどれも冷たい。
　この部屋の主はたまたま座を外しているのではなく、
そもそも作戦に参加していないのだろう。

　目に付くものと言えば、机とベッド……
　そして風景画を収めた額。ふらふら揺れているのは
艦の移動のためなのだろうが、そもそも安定が悪そう
だ。何かの拍子で簡単に落ちてしまうに違いない。

　怪しいもの、爆弾らしきものは見当たらなかった。
　別の場所の探索に向かった方が良いだろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆→●廊下１

..//ジャンプ指定
//次ファイル　"mc02_031rouka1.nss"

}

//――――――――――――――――――――――――――――――
.//◆※振動フラグあり、酒入手前
//◆振動_Flagがあり、かつ酒_Flagが無い場合
scene mc02_031shikann_k.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnSE("se日常_建物_扉開く01", 1000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ad_01a.jpg");
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　士官室のようだ。
　人影はない。不審な箇所も――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031sh0010a03">
「……あら？
　景明さま、あれを」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031sh0020a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　変哲もない風景画を収めた<RUBY text="がく">額</RUBY>が、床に転がっていた。
　部屋は全体として整理整頓が行き届いており、額も
最初からそうであったとは思えない。

　何らかの原因で落ちたのだろう。
　元の配置は――<k>あそこか？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031sh0030a04">
「隠し棚ですかな」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031sh0040a00">
「そのようです」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　壁の一角に、四角く<RUBY text="く">刳</RUBY>り<RUBY text="ぬ">貫</RUBY>かれた収納スペース。額
を掛ける鉤はその上にあった。
　つまり額は本来、そこで棚を隠蔽する役目を果たし
ていたということか。

　俺は隠し棚に歩み寄り、中の物を取り出してみた。
　
　……酒瓶だ。

　ラベルの文字は英語。
　<RUBY text="ヨーメンウォーダーズ">倫敦塔衛兵隊</RUBY>のものらしき衣装を纏った兵士の図柄
も描かれている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031sh0050a03">
「イングリッシュ・ジンですね」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031sh0060a04">
「まぁまぁ悪くない品でございます。
　されど湊斗さま、お飲みになるなら何かで
割られた方がよろしいですぞ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031sh0070a00">
「飲みません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　飲まないが……
　一応、貰っていくことにするか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//◆フラグ調整
//◆$酒_Flag = true;

//◆→●廊下１

..//ジャンプ指定
//次ファイル　"mc02_031rouka1.nss"




}
