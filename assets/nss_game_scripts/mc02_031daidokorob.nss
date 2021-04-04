
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031daidokorob.nss_MAIN
{


		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

//嶋：デバッグフラグ
//	$香奈枝合流_Flag=true;
//	$ガスボンベ_Flag=true;

	//▼ルートフラグ、選択肢、次のGameName
	if($香奈枝合流_Flag==true){
		call_scene @->mc02_031daidokorob_gk.nss;
		$daidokorob_gk = true;//香奈枝合流あり
		$daidokorob_g = false;//ガスボンベあり
		$daidokorob_No = false;//フラグなし
	}else if($ガスボンベ_Flag == true){
		call_scene @->mc02_031daidokorob_g.nss;
		$daidokorob_gk = false;//香奈枝合流あり
		$daidokorob_g = true;//ガスボンベあり
		$daidokorob_No = false;//フラグなし
//フラグ発生
		$ガスボンベ_Flag = false;
		$香奈枝合流_Flag = true;
	}else{
		call_scene @->mc02_031daidokorob_No.nss;
		$daidokorob_gk = false;//香奈枝合流あり
		$daidokorob_g = false;//ガスボンベあり
		$daidokorob_No = true;//フラグなし
	}



	$PreGameName = $GameName;

	$GameName = "mc02_031daidokoroz.nss";
//嶋：フラグ初期化
	$daidokorob_gk = false;//香奈枝合流あり
	$daidokorob_g = false;//ガスボンベあり
	$daidokorob_No = false;//フラグなし

}


scene mc02_031daidokorob.nss
{

//嶋：回数判定？
..//ジャンプ指定
//前ファイル　"mc02_031daidokoro.nss"


//●コンロ
//◆ガスボンベ、香奈枝合流フラグで分岐


}

//――――――――――――――――――――――――――――――
.//◆※ガスボンベを持っていない場合
//◆ガスボンベ_Flagが無い場合
..//mc02_031daidokorob_No
scene mc02_031daidokorob_No.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ac_01a.jpg");

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……暖かい。
　俺は少しの間そこで暖を取り、晩秋早朝の肌寒さに
かじかんだ指をほぐしてから、消火した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆→●移動

..//ジャンプ指定
//次ファイル　"mc02_031daidokoroz.nss"

}


//――――――――――――――――――――――――――――――
.//◆※ガスボンベを持っている場合
//◆ガスボンベ_Flagがある場合
..//mc02_031daidokorob_g
scene mc02_031daidokorob_g.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ac_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……ちょっと待て。
　俺は今、見るからに安全性の低い古びたガスボンベ
を携帯していなかったか……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆爆発。ぼーん。
	CreateTextureSP("絵背景120", 120, Center, Middle, "cg/bg/bg080_飛行船船室Ac_01a.jpg");
	OnSE("se擬音_ギャグ_すっとび",1000);
	WaitKey(1300);
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Shake("絵背景120", 2000, 15, 25, 0, 0, 1000, DxlAuto, false);
	OnSE("se擬音_コミカル_爆発01",1000);
	WaitKey(100);
	Fade("フラッシュ白",200,900,null,true);
	WaitKey(1300);
	OnSE("se擬音_雰囲気_ガラガラと崩れる02",1000);
	Fade("フラッシュ白",3000,0,null,false);
	WaitKey(2700);
	Shake("絵背景120", 1000, 3, 10, 0, 0, 300, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　寸でのところで、俺はボンベを天井に放り投げた。
　お陰で火傷はない。

　但し、天井には穴が開いた。
　そしてその穴から、何かが降ってきた。

{
	
	StL(1100, @-100, @15,"cg/st/stさよ_通常_私服.png");
	StC(1000, @-200, @15,"cg/st/st香奈枝_通常_制服a.png");

	FadeStC(1200,false);
	FadeStL(1500,false);
	Shake("@StL*", 1500, 2, 4, 0, 0, 500, AxlAuto, false);
	Shake("@StC*", 1500, 3, 3, 0, 0, 500, DxlAuto, false);
	Move("@StL*", 1700, @0, @-10, DxlAuto, false);
	Move("@StC*", 1200, @0, @-10, AxlAuto, false);
}
　その何かはあたかも煤けた人間のような様相をして
おり、数は二つだった。
　大鳥大尉と永倉侍従に良く似ていた。

　当人だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Delete("絵背景120");
	SetFwC("cg/fw/fw香奈枝_怒笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0410a03">
「ふ、ふ、ふ……。
　景明さま、ごきげんよう」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0420a04">
「ほっほっほっ。
　いやー何とも熱烈な歓迎でございますなー
湊斗さま」


{	FwC("cg/fw/fwさよ_怒り.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0430a04">
「このさよ、貴方さまのことを少々甘く見て
いたのやもしれませぬ。
　まさかこういう、うちのお嬢さまに通じる
酷烈なギャグセンスをお持ちであったとは」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0440a00">
「…………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0450a00">
「<RUBY text="なにゆえ">何故</RUBY>に？」


{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0460a03">
「うふふ……
　気嚢の内側に潜んで待っていたところに、
景明さまの襲撃と思しき轟音が聞こえたので
わたくしたちも動き始めたのですが……」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0470a04">
「潜入に使用した経路が施錠されてしまって
おりましてなァ。
　どうにか船体の天井裏までは降りて、さて
これから如何にと悩んでいましたところ……」


{	FwC("cg/fw/fw香奈枝_驚き.png");}

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0480a03">
「突然、足元で爆発が起きて」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0490a00">
「ほう」


{	FwC("cg/fw/fwさよ_怒り.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0500a04">
「有難いことに天井板に大穴が開き、嬉しい
ことに三メートルも落下して床に激突しつつ
脱出を果たせ、感動的なことにそこには湊斗
さまと火のついたコンロと異様なガス臭が！」


{	FwC("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0510a03">
「人生最大級のスーパーハッピータイムよね！
　まるで仏滅と<RUBY text="ワルプルギス">悪魔祝祭</RUBY>が一緒に来たみたい」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0520a00">
「そうですか。
　お役に立てたようで何よりです」


{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0530a03">
「ええ、本当に♪」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　微妙に焦げた大鳥大尉が頷いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0540a04">
「ほっほっほっ。
　よきかなよきかな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　微妙に焦げた永倉侍従が笑った。

　……さて。
　物理的波動と化しつつある殺意の渦が俺の足を縛る
せいで非常に歩き辛いのだが、今は急いで場所を移る
べきだろう。

　爆音を聞きつけた敵兵がここに殺到して来ないとも
限らない。
　何はともあれ合流を果たせたからには、大鳥主従の
技能を恃んで改めて探索を行うべきでもある。

　新たな発見があるかもしれない。
　とりあえず、今この場で射殺されなければの話では
あるが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――




//◆ガスボンベ失い、香奈枝と合流

//◆フラグ調整
//◆$香奈枝合流_Flag = true;
//◆$ガスボンベ_Flag = false;


//◆→●移動

//次ファイル　"mc02_031daidokoroz.nss"

}

//――――――――――――――――――――――――――――――
.//◆※香奈枝と合流済み
//◆香奈枝合流_Flagがある場合、たぶん最優先処理
..//mc02_031daidokorob_gk
scene mc02_031daidokorob_gk.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ac_01a.jpg");

	Delete("上背景");

	CreateTextureSP("絵背景120", 120, Center, Middle, "cg/bg/bg080_飛行船船室Ac_01a.jpg");

//◆ガスッ。大撲殺

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	OnSE("se戦闘_攻撃_殴る03",1000);
	WaitKey(550);
	Fade("フラッシュ白",0,1000,null,true);
	Shake("絵背景120", 300, 15, 15, 0, 0, 1000, Dxl3, false);
	Fade("フラッシュ白",300,0,null,true);

	Delete("絵背景120");


	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0550a03">
「もう、景明さまったらー♪
　愛の炎でわたくしを焦がしてくださるのも
結構ですけれど、今はほかにやることがある
のではなくって？」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0560a04">
「そうですよ湊斗さま。
　それほど焼身自殺に興味がおありなら後で
ガソリンでも火炎瓶でもご用意致しますゆえ、
ひとまず爆弾探しに専念してくださいませ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0570a00">
「……はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　俺はよろめきながら立ち上がった。
　大鳥主従の言う通りにした方が良いだろう。確かに
火遊びなどしている場合ではない。

　何より、冷蔵庫で殴られ続けては命に関わる。
　劒冑の防御力とて絶対ではないのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆→●移動

..//ジャンプ指定
//次ファイル　"mc02_031daidokoroz.nss"

}


