//<continuation number="300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_012.nss_MAIN
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
	#bg001_空a_01=true;
	#bg001_空a_02=true;
	#bg013_鎌倉俯瞰a_02=true;
	#bg018_知事執務室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_013.nss";

}

scene md04_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_011.nss"


//◆空→夕空

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg002_空a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);

	Delete("上背景");
	OnBG(101, "bg002_空a_02.jpg");
	FadeBG(0, true);
	FadeDelete("黒幕１",2500,true);

	Wait(1000);


//◆鎌倉
//◆進駐軍司令部。bg018a？
//◆テロップ「進駐軍　鎌倉野戦司令部」


	OnBG(102, "bg013_鎌倉俯瞰a_02.jpg");
	FadeBG(1500, true);
	WaitKey(1000);


	OnBG(100, "bg018_知事執務室_01.jpg");
	FadeBG(1500, false);
	Wait(1000);
	TelopStart(15000,1500,center,450,"cg/sys/Telop/tp_司令部.png",null);
	Wait(2000);

	StL(1000, @0, @0, "cg/st/stウィロー_通常_制服.png");
	StR(1000, @0, @0, "cg/st/stキャノン_通常_制服.png");
	Rotate("@StR*", 0, @0, @180, @0, null, true);

	FadeStL(500, false);
	FadeStR(500, true);


	SetFwH("cg/fw/fwウィロー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120010b00">
「日暮れか。
　流石に一日では陥ちんな……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120020b03">
「六波羅は強兵ですよ。
　それにこちらの態勢も完璧ではありません
でしたしね」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120030b03">
「今日のところは、小弓を沈めただけで良し
としておくべきでしょう」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120040b00">
「ああ」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

//◆図？

//↑メモらしいので無視して良いとのこと　inc櫻井


	SetFwH("cg/fw/fwキャノン_通常b.png");

//嶋：修正（現況）【090930】
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120050b03">
「現状を確認します」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120060b03">
「<RUBY text="オーサムクイン">第一軍団</RUBY>は鎌倉市に進駐」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120070b03">
「<RUBY text="ハイオワサ">第二軍団</RUBY>は藤沢方面より普陀楽城を攻撃中。
　<RUBY text="タイエンダネギア">第三軍団</RUBY>は大船方面より普陀楽城を攻撃中」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120080b03">
「<RUBY text="ワウンスナコック">第四軍団</RUBY>は小弓公方府を制圧。
　<RUBY text="サカ・ガェア">第五軍団</RUBY>は古河公方府を攻撃中」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120090b03">
「艦隊は相模湾をほぼ制圧、幕府艦隊を牽制
しつつ物資の輸送を行っています」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120100b00">
「うむ……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120110b03">
「<RUBY text="ハイオワサ、タイエンダネギア">第二、第三軍団</RUBY>に攻撃中止を命じて宜しい
ですか、閣下？
　夜が訪れる前に兵を退かせ、夜営の準備を
整える必要があります」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120120b03">
「艦隊に収容できる限りはしたいですから、
その意味でも急いだ方が良いですね。
　日が落ちてからでは事故の危険が増します」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120130b00">
「……夜間も攻撃を続行する選択はないか？
　中佐」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120140b03">
「それは多くの意味で危険です。
　夜戦を支障なく行えるほど我が軍の兵士は
地理を把握していないのが一つ、大和軍人は
伝統的に夜戦を得意としているのが一つ」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120150b03">
「誤って市街地を攻撃してしまう恐れもある
のが一つ」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120160b00">
「……そうだな」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120170b00">
「わかったよ、キャノン。
　焦らないことにしよう」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120180b03">
「まだ始まったばかりですからね」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120190b00">
「だが、敵が夜襲してくる可能性もある。
　警戒は徹底させておいてくれ」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120200b03">
「はい」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120210b03">
「ただ……ウィロー少将。
　古河方面は別ですよ」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120220b00">
「ああ。
　わかっているとも」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120230b00">
「古河は六波羅の生命線……。
　裏を返せば、我々の勝負所だ」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120240b03">
「古河を奪えば普陀楽を孤立させられます」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120250b00">
「夜間戦闘用装備はあちらへ優先的に回して
いるんだな？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120260b03">
「勿論です。
　それでも相当の被害を覚悟しなくてはなり
ませんが……」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120270b00">
「最終的な帳尻は合うさ。
　古河で支払う犠牲には大いに意味がある」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120280b03">
「ええ」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0120290b00">
「<RUBY text="ワウンスナコック">第四軍団</RUBY>も古河の応援に向かわせてくれ」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0120300b03">
「了解です、閣下」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――


	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_013.nss"