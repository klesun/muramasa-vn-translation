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

scene mc04_016vs.nss_MAIN
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
	#ev188_血浴の貴婦人_a=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_017vs.nss";

}

scene mc04_016vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_015vs.nss"


//◆さよサイド
//◆竜騎兵隊襲来
//◆さよ
//◆両手アップ。白い手袋。

//竜騎兵視点という演出で inc櫻井

	PrintBG("上背景", 30000);

	CreateColorSP("黒", 15000, "BLACK");

	OnBG(100, "bg087_大鳥邸玄関前a_01.jpg");
	FadeBG(0, true);

	CreateSE("走る", "se人体_足音_鎧_複数駆け去る01");
	MusicStart("走る", 0, 1000, 0, 1000, null,false);

	CreateTextureSP("さよ", 1000, Center, InBottom, "cg/st/stさよ_戦闘_私服.png");

//	StC(1000, @0, @0, "cg/st/stさよ_戦闘_私服.png");
//	FadeStC(0, true);
	Request("さよ", Smoothing);

	Delete("上背景");
	FadeDelete("黒", 1500, true);

	SoundPlay("@mbgm12", 0, 1000, true);


	OnSE("se戦闘_攻撃_振る04", 1000);


	SetBlur("さよ", true, 3, 500, 50,false);
	SetBlur("@OnBG*", true, 3, 500, 50,false);
	Zoom("さよ", 300, 1800, 1800, Dxl3, false);
	Zoom("@OnBG*", 300, 1800, 1800, Dxl3, false);


	CreateTextureEX("バートリィ", 3000, @0, @0, "cg/ev/ev121_両手を突き出すさよ_a.jpg");

	Fade("バートリィ", 500, 1000, null, true);
	Delete("さよ");

	SetFwC("cg/fw/fwさよ_老兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆ジ
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/016vs0010a04">
「<RUBY text="ＴＨＥ">鋼の人形は</RUBY>」


//◆アイアン
{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/016vs0020a04">
「<RUBY text="ＩＲＯＮ">裸体で</RUBY>
　肉色で」


//◆メイデン
{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/016vs0030a04">
「<RUBY text="ＭＡＩＤＥＮ">化粧されている</RUBY>」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆吸血装甲バートリィ発動
//◆闇色のイバラが幾条も伸びるとか？
//◆囚われる竜騎兵ら
//	CreateColorSP("白", 5000, "WHITE");
//	DrawTransition("白", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	OnSE("se特殊_鎧_バートリィ発動", 1000);

	CreateTextureSP("バートリィ01EX", 3100, @0, @0, "cg/ef/ef032_バートリィa.jpg");
	DrawTransition("バートリィ01EX", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("バートリィ下敷き", 3000, @0, @0, "cg/ef/ef032_バートリィb.jpg");

	SetBlur("バートリィ01EX", true, 3, 500, 50,false);


//	FadeDelete("白", 300, true);


	SetNwC("cg/fw/nw竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/016vs0040e195">
「おぉっ……!?」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/mc04/016vs0050e196">
「何だ!?」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/016vs0060a04">
「……むかし、むかし……。
　<RUBY text="トランシルバニア">森のかなたの国</RUBY>にひとりの美しい貴婦人が
おられましてな」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/016vs0070a04">
「貴婦人は、無慈悲な老いによって己の美貌
が失われることを、ひどく恐れていたそうに
ございます。
　それを見かねたドゥルコなる鍛冶師が――」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/016vs0080a04">
「貴婦人への崇敬、賛嘆、狂恋、想いの全て
を込めて一領の劒冑を打ち上げました。
　……その劒冑こそ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン。脈動。
//◆レッドマスク？

	OnSE("se人体_体_心臓の音02", 1000);
	CreateColorSPadd("赤", 15000, "#990000");
	Zoom("バートリィ01EX", 1000, 1500, 1500, AxlAuto, false);
	FadeDelete("バートリィ01EX", 1000, false);
	FadeDelete("赤", 1000, true);


	SetNwC("cg/fw/nw竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/016vs0090e195">
「ガ――」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/mc04/016vs0100e196">
「ギャヒィィィィィィィ!?」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/016vs0110a04">
「これなる〝<RUBY text="バートリィ">吸血装甲</RUBY>〟でございます」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆両手。白手袋
//◆ドクン。脈動
//◆手袋が赤く染まる

	FadeDelete("バートリィ下敷き", 1000, true);

	OnSE("se人体_体_心臓の音02", 1000);
	CreateColorSP("赤", 15000, "#990000");

	CreatePlainEX("絵板写", 5000);
	Request("絵板写", Smoothing);
	SetBlur("絵板写", true, 2, 500, 200, false);

	Fade("絵板写", 0, 500, null, true);
	Zoom("絵板写", 1300, 1500, 1500, Dxl2, false);
	FadeDelete("赤", 1000, false);

	Wait(1000);

	Fade("絵板写", 300, 0, null, true);
	Delete("絵板写");

	CreateSE("SE01","se戦闘_正宗_投擲腸管");
	CreateTextureSP("バートリィ02", 2900, @0, @0, "cg/ev/ev121_両手を突き出すさよ_b.jpg");

	MusicStart("SE01",0,1000,0,300,null,false);
	SetFrequency("SE01", 400, 1200, Axl3);
	DrawDelete("バートリィ", 1000, 100, "effect_01_00_0", false);

	SetNwC("cg/fw/nw竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/016vs0120e195">
「ゴア――ア、ウゥ」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/mc04/016vs0130e196">
「ゲグッ、ヒッ、ア――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆レッドアウト？
	CreateSE("SE01","se特殊_雰囲気_発光03");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateColorEX("レッドアウト", 15000, RED);
	Fade("レッドアウト", 200, 1000, null, true);
	Delete("バートリィ02");

	OnBG(100, "bg087_大鳥邸玄関前a_01.jpg");
	FadeBG(0, true);

	Wait(1000);
	FadeDelete("レッドアウト", 1000, true);

//◆ずがーんずがーん。竜騎兵、次々墜落
	CreatePlainEX("絵板写", 110);
	Fade("絵板写", 0, 500, null, true);

	OnSE("se戦闘_衝撃_鎧転倒02", 1000);
	Shake("絵板写", 500, 0, 30, 0, 0, 1000, DxlAuto, true);


	CreateSE("SE02a","se戦闘_衝撃_鎧転倒01");
	MusicStart("SE02a",0,1000,0,1200,null,false);
	Shake("絵板写", 500, 0, 30, 0, 0, 1000, DxlAuto, true);


	CreateSE("SE02b","se戦闘_衝撃_鎧転倒01");
	MusicStart("SE02b",0,1000,0,800,null,false);
	Shake("絵板写", 1000, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

	StL(1000, @0, @0, "cg/st/st六波羅兵士_抜刀_制服.png");
	FadeStL(300, true);

	SetNwC("cg/fw/nw大鳥軍兵士Ｎ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/016vs0140e184">
「………………」


//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/016vs0150e184">
「う……嘘、だろ？
　竜騎兵隊が……全滅？」


//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/016vs0160e184">
「たった一人に……」


//◆ここから演技変更・顔グラなし
{	NwC("cg/fw/nwその他.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/016vs0170a04">
「あら。
　そういえば……貴方が残っていましたね？
兵士さん」


{	NwC("cg/fw/nw大鳥軍兵士Ｎ.png");}
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/016vs0180e184">
「ひィ!?」


//◆顔グラなし
{	NwC("cg/fw/nwその他.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/016vs0190a04">
「ふふ、ご心配なく。
　今日はもう<RUBY text="・・">満腹</RUBY>です」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＧ：さよ吸血後。超美人。
//◆無駄に演出入れて表示
	CreateTextureEX("絵演", 4100, InLeft, InBottom, "cg/ev/resize/ev188_血浴の貴婦人_am.jpg");

	CreateMask("絵覆", 6000, 0, 0, "cg/data/slide_08_00_0.png", false);
	SetAlias("絵覆","絵覆");

	CreateTextureEX("絵覆/絵演", 4110, -416, InBottom, "cg/ev/resize/ev188_血浴の貴婦人_al.jpg");

	Move("絵演", 3000, @0, 0, DxlAuto, false);
	Fade("絵演", 1000, 1000, null, false);

	Move("絵覆/絵演", 3000, @0, -90, DxlAuto, false);
	Fade("絵覆/絵演", 1000, 1000, null, true);

	WaitAction("絵演", null);

	PrintGO("上背景", 19000);

	CreateTextureSP("絵演", 4100, Center, Middle, "cg/ev/ev188_血浴の貴婦人_a.jpg");
	OnBG(100,"bg087_大鳥邸玄関前a_01.jpg");
	FadeBG(0,true);
	StC(1000, @0, @0,"cg/st/stさよ吸血_通常_私服.png");
	FadeStC(0,true);

	SetNwR("cg/fw/nw大鳥軍兵士Ｎ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/016vs0200e184">
「―――――――――――――――――――
――――――――――――――――――――
――――――――――――――――――――
――――――――――――――――――――」


{	FadeDelete("上背景", 1000, false);
	FwR("cg/fw/fwさよ吸血_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/016vs0210a04">
「この<RUBY text="バートリィ">手袋</RUBY>は貴婦人のための劒冑。
　武骨無粋の<RUBY text="フルプレート">全身装甲</RUBY>にするわけにはいかず、
このような仕立てになっています」


//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/016vs0220a04">
「当然ながら、劒冑としての能力はほぼ皆無。
　騎航はできず、体機能の強化もしてくれず、
防御力さえろくろく有りません」


{	FwR("cg/fw/fwさよ吸血_沈静.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/016vs0230a04">
「けれどただひとつ、<RUBY text="アウトロウ">陰義</RUBY>の性能だけは卓抜
するものがありまして。
　相手が武者であろうとお構いなく、甲鉄の
護りも突破して、<RUBY text="・・・・">吸血する</RUBY>――」


{	FwR("cg/fw/fwさよ吸血_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/016vs0240a04">
「生命力を剥奪し、<RUBY text="ユーザー">仕手</RUBY>のものとする。
　その結果、まぁ、このようになってしまう
わけなのです」


//◆一人称「わたくし」
{	FwR("cg/fw/fwさよ吸血_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/016vs0250a04">
「あぁ私ったら、年甲斐もない姿をお見せし
て、あぁ本当にもうお恥ずかしい……」


{	NwR("cg/fw/nw大鳥軍兵士Ｎ.png");}
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/016vs0260e184">
「――――」


//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/016vs0270e184">
「……は……はわわぁ……」

{//◆がく。失神
	OnSE("se人体_衝撃_転倒01", 1000);
	SetVolume("@mbgm*", 2000, 0, null);
	FwR("cg/fw/fwさよ吸血_沈静.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/016vs0280a04">
「…………。
　お若い方には、きっと刺激が強過ぎたので
しょうねぇ。悪いことをしてしまいました」


{	FadeDelete("絵演", 1000, false);
	FwR("cg/fw/fwさよ吸血_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/016vs0290a04">
「ま、それはさておいて。
　……<RUBY text="こちら">玄関前</RUBY>は片付いたようですね」


{	FwR("cg/fw/fwさよ吸血_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/016vs0300a04">
「あとは、お嬢さま――
　どうかご存分に、おやりなさいませ」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc04_017vs.nss"