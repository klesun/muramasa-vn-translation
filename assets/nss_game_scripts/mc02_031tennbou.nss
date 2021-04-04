//<continuation number="230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031tennbou.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg083_飛行船後部展望室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

//嶋：デバッグフラグ
//	$香奈枝合流_Flag = true;
//	$隠し扉発見_Flag = true;
//	$鍵_Flag = true;


//香奈枝合流済み:if01
	if($香奈枝合流_Flag==true){
//隠し扉発見済み:if02
		if($隠し扉発見_Flag==true){
//鍵取得済み:if03
			if($鍵_Flag==true){
				call_scene @->mc02_031tennbou_kkk.nss;
				$tennbou_k=false;//香奈枝合流フラグのみ
				$tennbou_kk=false;//香奈枝フラグ+扉発見済み
				$tennbou_kkk=true;//香奈枝フラグ+扉発見済み+鍵ゲット
				$tennbou_No=false;//フラグなし
			}else{
				call_scene @->mc02_031tennbou_kk.nss;
				$tennbou_k=false;//香奈枝合流フラグのみ
				$tennbou_kk=true;//香奈枝フラグ+扉発見済み
				$tennbou_kkk=false;//香奈枝フラグ+扉発見済み+鍵ゲット
				$tennbou_No=false;//フラグなし
			}//if03 End
		}else{
			call_scene @->mc02_031tennbou_k.nss;
			$tennbou_k=true;//香奈枝合流フラグのみ
			$tennbou_kk=false;//香奈枝フラグ+扉発見済み
			$tennbou_kkk=false;//香奈枝フラグ+扉発見済み+鍵ゲット
			$tennbou_No=false;//フラグなし
		}//if02 End
//フラグなし
	}else{
		call_scene @->mc02_031tennbou_No.nss;
		$tennbou_k=false;//香奈枝合流フラグのみ
		$tennbou_kk=false;//香奈枝フラグ+扉発見済み
		$tennbou_kkk=false;//香奈枝フラグ+扉発見済み+鍵ゲット
		$tennbou_No=true;//フラグなし
	}//if01 End



//次ポイント確認用
	if($tennbou_k){
	//嶋：フラグ初期化
		$GameName = "mc02_031rouka3.nss";
		$隠し扉発見_Flag=true;
		$tennbou_k=false;//香奈枝合流フラグのみ
		$tennbou_kk=false;//香奈枝フラグ+扉発見済み
		$tennbou_kkk=false;//香奈枝フラグ+扉発見済み+鍵ゲット
		$tennbou_No=false;//フラグなし
//嶋：カウント調整
//		$Next_GameName = $GameName;
//		$GameName = "mc02_031time.nss";
	}else if($tennbou_kk){
		$GameName = "mc02_031rouka3.nss";
	//嶋：フラグ初期化
		$tennbou_k=false;//香奈枝合流フラグのみ
		$tennbou_kk=false;//香奈枝フラグ+扉発見済み
		$tennbou_kkk=false;//香奈枝フラグ+扉発見済み+鍵ゲット
		$tennbou_No=false;//フラグなし
//嶋：カウント調整
//		$Next_GameName = $GameName;
//		$GameName = "mc02_031time.nss";
	}else if($tennbou_kkk){
		$GameName = "mc02_031end.nss";
	//嶋：フラグ初期化
		$tennbou_k=false;//香奈枝合流フラグのみ
		$tennbou_kk=false;//香奈枝フラグ+扉発見済み
		$tennbou_kkk=false;//香奈枝フラグ+扉発見済み+鍵ゲット
		$tennbou_No=false;//フラグなし
	}else if($tennbou_No){
		$GameName = "mc02_031rouka3.nss";
	//嶋：フラグ初期化
		$tennbou_k=false;//香奈枝合流フラグのみ
		$tennbou_kk=false;//香奈枝フラグ+扉発見済み
		$tennbou_kkk=false;//香奈枝フラグ+扉発見済み+鍵ゲット
		$tennbou_No=false;//フラグなし
//嶋：カウント調整
//		$Next_GameName = $GameName;
//		$GameName = "mc02_031time.nss";
	}

	//◆フラグ分岐
//	$GameName = "mc02_031end.nss";



}

//通過用スクリプト
scene mc02_031tennbou.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_031rouka3.nss"

//●展望室
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg083_飛行船後部展望室_01.jpg");
	OnSE("se日常_建物_扉開く01", 1000);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　船体最後尾の展望室だ。
　雄大な眺望が楽しめる。……といってもこれは軍用
船、遊覧船と違って全周ガラス張りにはできないから
いくらかの制限はあった。

　目につくものといえば景色だけで、不審な物体など
は何もない。
　出入口も一つだけだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

}


//◆フラグ分岐
.//◆※香奈枝がいない場合―――――――――――
//◆香奈枝合流_Flagが無い場合
..//mc02_031tennbou_No.nss
scene mc02_031tennbou_No.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg083_飛行船後部展望室_01.jpg");
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　俺は通路に引き返した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆→●廊下３

..//ジャンプ指定
//次ファイル　"mc02_031rouka3.nss"


}


.//◆※香奈枝がいる場合―――――――――――
//◆香奈枝合流_Flagがある場合
..//mc02_031tennbou_k.nss
scene mc02_031tennbou_k.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg083_飛行船後部展望室_01.jpg");
	OnSE("se日常_建物_扉開く01", 1000);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0010a03">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　立ち去ろうとした時――
　
　不意に大鳥大尉が足を止めた。

　眉根を寄せ、床の一点を見詰めている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0020a00">
「如何なさいましたか」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0030a03">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　答えず、香奈枝嬢は歩き出した。
　注視していた地点の手前で立ち止まり、そこにしゃ
がみ込む。

　俺は彼女の後を追い、その向かいに回った。
　永倉侍従は心得たもので、戸口の脇に張り付いて外
を警戒している。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0040a03">
「景明さま、これを」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0050a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　彼女の爪が指し示す辺りに目を凝らす。
　
　何か――わずかな<RUBY text="くぼ">窪</RUBY>みがあった。

　爪の先を使い、大尉はその部分を軽く引っ掻く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0060a00">
「――これは」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0070a03">
「鍵穴……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　――だった。
　大尉が指先で剥ぎ取った薄板に隠されていたのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0080a00">
「しかし、何の為の」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0090a03">
「扉かと」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0100a00">
「扉？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0110a03">
「御覧下さいまし。
　床のこの辺りの……五〇センチ四方」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0120a03">
「ぴったりと合わさってはいますが。
　良く見てみると、<RUBY text="・">筋</RUBY>がありません？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　…………本当だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0130a00">
「では、大尉殿」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0140a03">
「この下には<RUBY text="・・">何か</RUBY>があって。
　そしてそれは、こんな方法で隠さなくては
ならないもの――ということになりますね」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0150a00">
「…………」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0160a03">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0170a00">
「斬り破って――
　は、危険が大き過ぎますか」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0180a03">
「そうですね。万一のことを考えますと。
　急がば回れの戒めに従って、ひとまず鍵を
探してみましょう」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0190a00">
「諒解です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　……しかし、何処に？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//◆フラグ調整
//◆$隠し扉発見_Flag = true;

//◆→●廊下３

..//ジャンプ指定
//次ファイル　"mc02_031rouka3.nss"

}

//――――――――――――――――――――――――――――――
.//◆※隠し扉発見済
//◆隠し扉発見_Flagがある場合
..//mc02_031tennbou_kk.nss
scene mc02_031tennbou_kk.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg083_飛行船後部展望室_01.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	OnSE("se日常_建物_扉開く01", 1000);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　いや、床に隠し扉はあるが。
　まず鍵を手に入れなければ、その奥にある物を確か
めることはできない。

　鍵を探すのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆→●廊下３

..//ジャンプ指定
//次ファイル　"mc02_031rouka3.nss"



}


//――――――――――――――――――――――――――――――
.//◆※鍵有り
//◆鍵_Flagがある場合
..//mc02_031tennbou_kkk.nss
scene mc02_031tennbou_kkk.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg083_飛行船後部展望室_01.jpg");
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　いや――床に隠し扉がある。
　そして、船長から拝借した鍵もある。

　俺は何へともなく祈る心地で、それを小さな鍵穴に
差し込んだ。
　もし、違う鍵であったなら……おそらくこれまでだ。
別の鍵を探している時間などない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0200a03">
「……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031te0210a04">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_ロック解除01", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　回す。

//◆カチャリ。

　――――回った！

　床板を引き上げる。
　それは簡単に外れて、下層へ通じる階段を俺達の前
に<RUBY text="さら">曝</RUBY>け出した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0220a00">
「大尉殿」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0230a03">
「ええ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　言葉少なに、意を交し合う。
　
　――この期に及んで、躊躇いはしない。

　まず俺が階段を踏んだ。
　続いて大鳥大尉。最後に老侍従が影よろしく付く。

　足音を殺し、下層へ………………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearWaitAll(2000, 2000);

//◆→●探索終了


..//ジャンプ指定
//次ファイル　"mc02_031end.nss"



}




