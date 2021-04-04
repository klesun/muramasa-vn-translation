//<continuation number="530">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_017.nss_MAIN
{


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//$Ichizyou_Dead = true;
//$Kanae_Dead = true;

	//▼イベントＣＧ
	#イベントファイル名=true;
	if($Ichizyou_Dead == true){
	#ev909_荒覇吐 = true;
	#ev912_荒覇吐竜気砲アップ_a = true;
	#bg022_山林a_03 = true;
	}else if($Kanae_Dead == true){
	}else{
	#bg022_山林a_03 = true;
	#ev909_荒覇吐 = true;
	#ev120_文庫本を読む香奈枝_a = true;
	#ev120_文庫本を読む香奈枝_b = true;
	#ev120_文庫本を読む香奈枝_c = true;
	#ev121_両手を突き出すさよ_a = true;
	#ev121_両手を突き出すさよ_b = true;
	#ev122_擱坐した荒覇吐 = true;
	}

	//$Kanae_Dead = true;

	//▼ルートフラグ、選択肢、次のGameName
	if($Ichizyou_Dead == true){

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_allk";
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

	}else if($Kanae_Dead == true){

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ic";
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

	}else{

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_allk";
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

	$GameName = "ma04_018vs.nss";

}

scene ma04_017.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_016vs.nss"

//◆分岐。
//◆ヒロイン全員生存or香奈枝のみ生存の場合は１６Ａ
//◆一条のみ生存の場合は１６Ｂ

}



//――――――――――――――――――――――――――――――
.//●１６Ａ
scene ma04_017.nss_allk
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//◆荒覇吐
//◆ぶれすとふぁいあー。ずががん。
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ", 10, -270, -130, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	OnSE("se戦闘_破壊_爆発07",1000);

	CreateTextureEX("絵振", 1000, -270, -130, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	CreatePlainEXadd("絵振２", 1010);
	SetBlur("絵振２", true, 3, 600, 30, false);
	CreateColorEXadd("絵フラ", 2000, "#FFFFFF");

	Fade("絵振２", 0, 700, null, false);

	Zoom("絵振２", 200, 1200, 1200, null, false);
	Fade("絵フラ", 200, 1000, null, true);

	Delete("絵振２");

	Fade("絵フラ", 300, 0, null, false);
	DrawDelete("絵フラ", 300, 100, "effect_01_00_0", false);

	Shake("絵ＥＶ", 1000, 10, 60, 0, 0, 1000, Dxl2, false);
	FadeFR4("絵振",0,500,1000,0,0,30,Dxl2,true);
	Delete("絵振*");

//◆ＥＶ：木を背にして腰をおろし、文庫本を読む香奈枝
//◆やや遠い銃声
	PrintGO("上背景", 30000);
	CreateSE("SEL01","se戦闘_銃器_機関銃乱射02");
	CreateTextureSP("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev120_文庫本を読む香奈枝_b.jpg");
	MusicStart("SEL01",3000,200,0,1000,null,false);
	FadeDelete("上背景", 1000, true);

	SetFwR("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170010a03">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//◆ページめくり音。ぱらり。
	CreateSE("SE01","se日常_物_紙をめくる02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SoundPlay("@mbgm27",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
〝……この死ぬような間の山節を、死ぬような心地で
聞いていたものが、五人づれの客と、それを取巻くこ
この一座のほかに、まだ一人はあったのであります。〟

〝中庭から向うへ張り出した中二階の一間が、<RUBY text="まごと">間毎</RUBY>間
毎の明るいのと違って、いやに陰気で薄暗い。それも
そのはず、こには病気に悩む女、間夫狂いをする女、〟

〝それらを保養と監禁と両方の意味に使用されるとこ
ろですから、ここで血を吐いて死んだ女があるとか、
幽霊が出るとか、そんな噂のしょっちゅう絶えたこと
のない一間であります。〟

〝間の山節が始まる前に、この一間で墨をすり流して、
巻紙をもうかなり長く使って、文を<RUBY text="したた">認</RUBY>めていた女。〟

〝古市の遊女は、勝山髷に<RUBY text="しかけ">裲襠</RUBY>というような派手なこ
とをしなかった、素人風の地味な扮装でいたから、女
によっては、それのうつりが非常によく、〟

〝白ゆもじの年増に、年下の男が命を打込むまでに恋
をしたというような話も往々あることでした。〟

〝ここにいま文を書いている女も、病に悩む女であり
ましたが、素人風がこうしているとまでに取れないほ
ど、それほど女の人柄をよく見せるのでありました。〟

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆銃撃。段々近くなる
	CreateSE("SEL01","se戦闘_銃器_機関銃乱射02");
	MusicStart("SEL01",3000,500,0,1000,null,false);

	SetFwR("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170020a03">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//◆ページめくり音。ぱらり。
	CreateSE("SE01","se日常_物_紙をめくる02");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
〝朱塗りの角行燈の下で、筆を走らせては、また引止
め、そうして時々は泣いている。そこへ前の、〟

　　　　　　〝夕べあしたの鐘の声
　　　　　　　<RUBY text="じゃくめついらく">寂滅為楽</RUBY>と響けども
　　　　　　　聞いて驚く人もなし〟

〝書きさしていた筆をハラリと落して、じっと耳を澄
ましていると、お玉の弾きなす合の手が綾になって流
れ散る。〟

　　　　　　〝花は散りても春は咲く
　　　　　　　鳥は古巣へ帰れども
　　　　　　　行きて帰らぬ死出の旅〟

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170030a03">
「……ふふっ……」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170040a03">
「夕べあしたの鐘の声……
　寂滅為楽と響けども……
　聞いて驚く人もなし……」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170050a03">
「……夕べあしたの鐘の声……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＥＶ全景。香奈枝、足を撃たれている。酷い出血。
	CreateTextureSP("絵ＥＶ10", 50, Center, Middle, "cg/ev/ev120_文庫本を読む香奈枝_a.jpg");
	CreateTextureSP("絵ＥＶ50", 50, Center, Middle, "cg/ev/ev120_文庫本を読む香奈枝_a.jpg");
	FadeDelete("絵ＥＶ100", 1000, true);

//◆銃撃
//◆すぐ隣の木が吹っ飛ぶ
	CreateTextureEX("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev120_文庫本を読む香奈枝_c.jpg");
	CreateTextureEXadd("絵ＥＶ200", 100, Center, Middle, "cg/ev/ev120_文庫本を読む香奈枝_c.jpg");
	SetBlur("絵ＥＶ200", true, 3, 300, 100, false);

	CreateMovie("ムービー１", 150, InLeft, 0, true, true, "dx/mvk100.ngs");
	Fade("ムービー１", 0, 0, null, true);
	Rotate("ムービー１", 0, 180, 180, 45, null,true);
	Zoom("ムービー１", 0, 6000, 8000, null, true);
	Move("ムービー１", 0, @-200, @+50, null, true);
	SetAlias("ムービー１","ムービー１");

	CreateColorEXadd("絵色100", 1500, "White");

	OnSE("se自然_森_木々倒れる01",1000);
	OnSE("se戦闘_破壊_建物02",1000);
	Fade("絵色100", 0, 1000, null, false);
	DrawTransition("絵色100", 300, 0, 1000, 100, Dxl1, "cg/data/circle_15_00_0.png", true);

	Fade("ムービー１", 0, 1000, null, true);
	Shake("絵ＥＶ200", 1000, 5, 10, 0, 0, 1000, null, false);
	Zoom("絵ＥＶ200", 500, 2000, 2000, null, false);
	Fade("絵ＥＶ200", 300, 300, null, false);
	Fade("絵ＥＶ100", 300, 1000, null, false);
	Zoom("ムービー１", 6000, 40000, 10000, Axl1, false);
	FadeDelete("ムービー１", 5000, false);
	Fade("絵色100", 300, 0, null, true);
	FadeDelete("絵ＥＶ200", 300, false);

	SetFwR("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170060a03">
「……あらあら、どうしましょう」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170070a03">
「<RUBY text="あい">間</RUBY>の<RUBY text="やまぶし">山節</RUBY>が聞こえてきてしまいました。
　いっそ死んでしまおうかしら♪」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1500, 0, null);

//◆ブラックアウト
	CreateColorEX("絵暗転", 5500, "#000000");
	Fade("絵暗転", 200, 1000, null, true);

	WaitPlay("@mbgm*", null);

//◆以下台詞、顔グラなし
	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170080a04">
　　　　　「……そうは参りませぬ」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170090a04">
「侘しい年金暮らしはまだまだ御免蒙りたく。
　お嬢さまには、ご健在でいて頂かなくては
困りまする」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばあやの両手アップ。純白の手袋
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateTextureSP("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev121_両手を突き出すさよ_a.jpg");
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//嶋：ボイスなしにつきタグなし（確認済み）
//◆横書き斜体表示。ＣＧ処理か。
　
　「<I>鋼の人形は裸体で、肉色で、化粧されている</FONT></I>」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆吸血装甲バートリー発動
//◆白い手袋が真っ赤に
	CreateSE("SE01a","se特殊_鎧_バートリィ発動");
	MusicStart("SE01a",0,1000,0,500,null,false);
	CreateTextureSP("絵ＥＶ90", 90, Center, Middle, "cg/ev/ev121_両手を突き出すさよ_b.jpg");
	DrawDelete("絵ＥＶ100", 1000, 1000, "effect_01_00_0", true);

	SetVolume("SEL01", 200, 0, null);
//◆荒覇吐
//◆レッドアウトレッドイン。なんか妙な攻撃食らった風
	CreateSE("SE01b","se戦闘_攻撃_殴る05");
	CreateSE("SE01b","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreateColorEXmul("絵ダメ", 500, "#CC0000");
	Fade("絵ダメ", 0, 800, null, true);
	CreateTextureSP("絵ＥＶ200", 200, -450, -100, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	CreateTextureSP("絵ＥＶ振", 200, -450, -100, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	Wait(10);
	FadeDelete("絵ダメ", 400, false);
	Shake("絵ＥＶ振", 400, 10, 0, 0, 0, 1000, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　――――!?

　その刹那。
　小癪な敵を追い詰め、遂に仕留める筈であった彼は、
この日二度目の驚愕のため意図を挫かれなくてはなら
なかった。

　全身を襲う失調感。
　身体から何かが<RUBY text="・・・・・・・・">搾り取られてゆく</RUBY>ような。

　――何が起こった!?

　俺は、何をされている!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ゆっくり落ちる荒覇吐。
//◆ずずーん。
	PrintGO("上背景", 15000);
	CreateTextureSP("絵ＥＶ100", 100, 0, 0, "cg/ev/ev122_擱坐した荒覇吐.jpg");

	CreateSE("SE01a","se戦闘_荒覇吐_転倒01");
	CreateSE("SE01b","se戦闘_破壊_建物02");

	Move("絵ＥＶ100", 500, @0, -366, Dxl1, false);
	FadeDelete("上背景", 300, true);


	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Shake("絵ＥＶ100", 600, 0, 20, 0, 0, 1000, null, true);

//◆香奈枝
	OnBG(90,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	FadeDelete("絵ＥＶ100", 1000, true);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170100a03">
「…………」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170110a03">
「ばあや？
　<RUBY text="・・">それ</RUBY>、捨ててから出てきてくださいましね」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170120a03">
「心臓に悪いんですもの」


//◆さよだが、顔グラもボイスも無し
{	NwC("cg/fw/nwさよ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170121z00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆少しウェイト
	WaitKey(2000);

	SoundPlay("@mbgm26",0,1000,true);

	StL(1000, @-30, @0,"cg/st/stさよ_通常_私服.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fwさよ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170130a04">
「お待たせいたしました」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170140a03">
「御苦労さま。
　お茶をくださる？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170150a04">
「は」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆とぽとぽとぽ
	DeleteStA(300,true);
	CreateSE("SE01","se日常_水_注ぐ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170160a04">
「どうぞ、お嬢さま」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170170a03">
「ありがとう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆少しウェイト
	WaitKey(500);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170180a03">
「ふゥ」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170190a04">
「足のお怪我はいかがでございますか」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170200a03">
「ちょっと動かせませんが、大丈夫です。
　骨や筋はやられていませんから」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170210a04">
「それはようございました……。
　失礼いたします」

//◆治療を始めたよーな音
{	CreateSE("SE01","se日常_動作_治療中_L");
	MusicStart("SE01",0,1000,0,1000,null,true);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170220a03">
「……ばあや？
　手当てなら後でも良くてよ」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170230a03">
「まだ終わっていませんし」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170240a04">
「いえ、どうやら<RUBY text="クローズ">終幕</RUBY>でございます。
　遅れに遅れた騎兵隊がようやっといらして
くださったようで」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170250a03">
「あら。
　残念、おいしいところだけ持っていかれて
しまいましたね」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170260a04">
「それも<RUBY text="ヒロイン">恋人</RUBY>の役回りでございます。
　我々は退避しておくことにいたしましょう」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170270a04">
「あるいは<RUBY text="アンコール">追加</RUBY>があるかもしれませぬ。
　遺憾ながら今の状態で巻き込まれては足手
まといになるばかり」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170280a03">
「それはそれでヒロインチックですけれど。
　そうね。後は騎士様にお任せしましょうか」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170290a04">
「はい。
　騎士殿に……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170300a03">
「……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170310a04">
「……」

{	SetVolume("SE*", 2000, 0, null);
	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170320a03">
「<RUBY text="・・・・">聞いてた</RUBY>？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170330a04">
「距離がありましたので、断片的にですが。
　しかし、要点は確と」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170340a04">
「こんなこともあろうかと、<RUBY text="・・">端末</RUBY>を忍ばせて
おいて正解でございましたな。
　雪車町どのには感謝せねばなりません」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170350a03">
「ええ。
　お陰で、だいぶ見えてきました……」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0170360a03">
「<RUBY text="・・・・・・・・・・・・・・・">彼がどうして死んでしまったのか</RUBY>。
　ねぇ？　ばあや」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0170370a04">
「……は」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

..//ジャンプ指定？
//次ファイル　"ma04_018vs.nss"　シナリオ連結要奈良原確認

}




//――――――――――――――――――――――――――――――
.//●１６Ｂ
scene ma04_017.nss_ic
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//◆銃撃
//◆かきんかきん
//◆ぱきーん。割れる音
	PrintBG("上背景", 30000);
	CreateColorSPadd("絵光", 15000, "#FFFFFF");
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	CreateSE("SE01a","se戦闘_銃器_跳弾02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Delete("上背景");
	FadeDelete("絵光", 1000, false);
	WaitKey(500);
	CreateSE("SE01b","se特殊_鎧_装着03");
	MusicStart("SE01b",0,1000,0,1300,null,false);
	SoundPlay("@mbgm13",0,1000,true);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170380a02">
「あっ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆生身一条
	StL(1000, @0, @0,"cg/st/st一条_通常_制服b.png");
	FadeStL(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　幾度目か。幾十度目か。
　殺傷力に満ちる銃弾を受け止めた赤い甲鉄は、遂に
<RUBY text="・・・・">ほどけた</RUBY>。

　鋼糸に戻り、瞬く間に錆び、崩れて。
　地面に散る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170390a02">
「……そっか。
　御苦労さん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160a]
　随分と助けてもらった。
　感謝を込めて、一条は呟く。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ100", 5100, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Fade("絵ＥＶ100", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160b]
　そして見上げる。
　次こそは己を殺すであろう敵を。

　まさしく――
　物の数ならぬ小敵に溜め込まされた憤懣を、すべて
ぶち撒ける意思に満ちて、砲口が狙点を定める。

　ここまでか。
　一条は思った。

　悔いはない。
　悔しさはある――願わくばもっと戦いたかった。

　<RUBY text="・・・">あの人</RUBY>と共に。
　しかしその願いは、一度だけだが叶えられたのだ。

　何も為し得ない己に悶々として長い生涯を過ごすの
に比べ、短い闘争の末に果てるこの今は、間違いなく
幸福に違いないと。
　綾弥一条はそう思った。

　死を受容し――
　そして彼女は拳を握る。

　最後まで戦うために。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//――――――――――――――――――――――――

//◆砲門。今にも撃ちそー。
//◆荒覇吐、急浮上
//◆進路転換
	CreateTextureSP("絵ＥＶ90", 5090, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	CreateSE("SE01","se戦闘_銃器_砲門構え01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FadeDelete("絵ＥＶ10*", 1000, true);


	WaitKey(1000);
	OnSE("se特殊_鎧_駆動音01",1000);

	CreateTextureEX("絵ＥＶ100", 5100, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Fade("絵ＥＶ100", 300, 1000, null, true);
	Delete("絵ＥＶ90");

	CreateSE("SEL01","se戦闘_動作_空走行01_L");
	MusicStart("SEL01",0,1000,0,500,null,true);

	SetFwR("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170400a02">
「……え？」

{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170410a02">
「おい」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);
	FadeDelete("絵ＥＶ*", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　去っていく。
　巨兵が――彼女を置き捨てて。

　殺すまでもないと、情けを掛けた……いや、そんな
様子ではない。
　<RUBY text="・・・・・">慌てている</RUBY>。

　甲鉄を軋ませながら、急速に回頭。
　そちらへと向かう。

　<RUBY text="・・・">そちら</RUBY>――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170420a02">
「……あっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　一条は理解した。
　何が起きたのかを知った。

　つまり――
　自分はまた救われたのだ。

　あの人に。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//あきゅん「演出：18だと香奈枝臭かったので調整しました」
	SoundPlay("@mbgm33",0,1000,true);

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170430a02">
（…………）

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170440a02">
（また……助けられちゃった）

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170450a02">
（死んでたはずの命を、助けてもらったって
ことは……
　この命はもう、あの人のものだってことだ
よ、な……）

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170460a02">
（うん。
　しかも二度だ）

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170470a02">
（この命はあの人のために使う）

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170480a02">
（あの人の戦いのために使う。
　沢山の人を救う、戦いのために使う）

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170490a02">
（あの人に救ってもらった命で……
　あたしも誰かを救う）

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170500a02">
（……うん……）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆林の中
	SetVolume("@mbgm*", 300, 0, null);

	SetFwC("cg/fw/fw一条_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170510a02">
「――って。
　呆けてる場合じゃねぇ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　まだ、終わっていない。
　戦いは続いている。

　この命で、戦うと誓ったのなら――
　今すぐにでもそうしなくては。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170520a02">
「よし」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

	CreateSE("SEL01","se人体_足音_走る01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　戦響の方角――島の中央方向だ――を見極めて。
　綾弥一条は駆け出した。

　戦うために！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
//◆海岸
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	SetVolume("SE*", 1000, 0, null);
	DrawDelete("上背景", 500, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 500, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　そして辿り着く。
　――海岸へ。

　完全に逆方向の。
　目の前には、島へ来る際の目印にした灯台が。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0170530a02">
「なんでだーーー!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　彼女は天性の方向音痴だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_018vs.nss"

}


