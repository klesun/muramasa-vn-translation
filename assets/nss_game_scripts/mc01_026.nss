//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_026.nss_MAIN
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
	#bg056_建長寺三門前_02=true;
	#bg076_建朝寺境内_02=true;
	#ev169_署長との出会い=true;
	#ev170_バロウズ署長を射殺_a=true;
	#ev170_バロウズ署長を射殺_b=true;
	#ev170_バロウズ署長を射殺_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_001.nss";

}

scene mc01_026.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_025.nss"

//あきゅん「演出：未完。ＥＶ未着のため」

//◆景明サイド
	PrintBG("上背景", 30000);

	CreateColorSP("黒幕１", 25000, "BLACK");

	CreateTextureEX("絵背景10", 10, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Zoom("絵背景10", 0, 1500, 1500, null, false);
	Move("絵背景10", 10000, @100, @-100, Dxl1, false);
	Shake("絵背景10", 100000, 1, 1, 0, 0, 1000, Axl2, false);
	Fade("絵背景10", 0, 1000, null, true);
	Fade("絵背景20", 0, 1000, null, true);

//■村正バビューンガタガタ inc櫻井

	SoundPlay("@mbgm12",1000,1000,true);
	Delete("上背景");

	DrawDelete("黒幕１", 300, 100, "slide_04_00_0", true);

	StR(1000,@300,@-300,"cg/st/3d村正標準_騎航_通常.png");
	FadeStR(0,true);
	Zoom("@StR*", 0, 500, 500, null, true);
	OnSE("se戦闘_動作_空突進01", 1000);

	Shake("@StR*", 36000, 2, 0, 0, 0, 1000, Dxl2, false);
	Move("@StR*", 500, @-3200, @2800, Dxl1, true);

	OnSE("se戦闘_動作_空走行02_L",1000);
	
	Zoom("@StR*", 0, 1000, 1000, null, false);
	Move("@StR*", 1500, @2800, @-2200, Dxl1, false);

	WaitKey(3000);

	Move("@StR*", 5000, @-2800, @2200, Dxl1, false);

	SetVolume("@OnSE*", 1000, 0, null);
	DeleteStR(300,false);

//◆建朝寺前・夕

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("絵背景10");

	CreateTextureEX("絵背景40", 10, Center, Middle, "cg/bg/bg056_建長寺三門前_02.jpg");
	Fade("絵背景40", 0, 1000, null, true);



//◆村正、危なっかしく着陸

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");

	CreateSE("どかーん", "se戦闘_衝撃_衝突01");
	MusicStart("どかーん", 0, 1000, 0, 2000, true);
	CreatePlainEX("絵板写", 10);
	Fade("絵板写", 0, 800, null, true);
	Shake("絵板写", 500, 0, 30, 0, 0, 1000, DxlAuto, true);

	Delete("絵板写");
	WaitKey(500);

	WaitKey(1000);
	SetVolume("どかーん", 1000, 0, null);


	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260010a00">
「……づ……ぁ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　目的地に着いた時には、最早視界も定まらなかった。
　体内に入り込んだ毒素が領土を着実に広げている。

　村正の抑止効果も限界なのだろう。
　全身麻痺に至るまでもう間が無さそうだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/0260020a01">
《御堂、ここで休止を！
　毒を抜かないとっ――》


{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260030a00">
（そんな暇はない。
　見ろ）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/0260040a01">
《……あっ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	CreateColorEXadd("フラッシュ", 15000, "RED");
	Fade("フラッシュ",0,1000,null,true);
	FadeDelete("絵背景40",0,true);
	CreateTextureSP("絵ＥＦ15", 8, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	FadeDelete("フラッシュ", 500, false);


	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　門前に転がっている、それ。
　――六波羅兵の死骸。

　遅かった。やはり時間を食い過ぎた。
　事態は既に切羽詰っているのだ！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg056_建長寺三門前_02.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	OnSE("se特殊_鎧_駆動音02",1000);
	StR(1000, @0, @50, "cg/st/3d村正標準_立ち_通常.png");
	Move("@StR*", 300, @0, @-50, Dxl1, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_戦闘.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260050a00">
（宮殿下はおそらく奥の院だろう。
　急ぐぞ）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/0260060a01">
《でっ、でも……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆中へ
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete(@OnBG*);
	DeleteStR(0, false);
	CreateTextureSP("絵背景50", 10, Center, Middle, "cg/bg/bg076_建朝寺境内_02.jpg");
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　村正の逡巡を無視して走り出す。
　棒のようになった足ではろくに速度が出なかったが、
それでも一歩に次ぐ一歩を急ぐ。

　道を示すように、兵士の骸が点々と在る。
　パン屑なら童話の一景色であろうが、屍臭濃い肉だ。
典型的な地獄絵図でしかない。

　悪しき予感に苛まれつつ、駆ける。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆仏殿付近
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/0260070a01">
《武者が！》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260080a00">
「――ッ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　屍肉に<RUBY text="いざな">誘</RUBY>われて進んだ先に、鋼の骸が待っていた。

　六波羅正規の竜騎兵、四騎。
　いずれも……一撃で屠られている。

　間違いなく、手練の武者の仕業だ。

　つまり。
　この寺院を襲ったのは、地上の最強軍事力――最大
限度の危険であり、

　それは既に、
　防備の全てを突破して――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆だっ。駆ける

	CreateSE("駆ける", "se戦闘_動作_空突進01");
	MusicStart("駆ける", 0, 1000, 0, 1000, null,false);

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	WaitKey(1000);

	SetVolume("駆ける", 1000, 0, null);
	SetVolume("@mbgm*", 1000, 0, null);

//◆得月楼
	PrintBG("上背景", 30000);
	CreateColorSP("暗転", 1500, "#000000");

	CreateTextureSP("絵背景50", 10, Center, Middle, "cg/bg/bg077_建朝寺得月楼前_02.jpg");
	Delete("黒幕");
	Delete("上背景");
	DrawDelete("暗転", 300, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260090a00">
「―――――――――――――――――――」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/0260100a01">
《……あ……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm31",1000,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　俺はその光景を見た。
　毒にくすむ視界で、しかし確かに見てしまった。

　拒絶する。

　振り払う。

　嫌だ、とかぶりを振る。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想ＥＶ：湊斗明堯


//画像きてないので仮絵 inc櫻井

	EfRecoIn1(18000,600);

	CreateTextureSP("イベ絵10", 13, Center, Middle, "cg/ev/ev169_署長との出会い.jpg");
	EfRecoIn2(300);
	WaitKey(1000);



	SetFwC("cg/fw/fw署長_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0260110a11">
『次郎君。
　君を私の息子として迎えようと思う』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);

	Delete("イベ絵*");

//◆ＥＶ：バロウズに射殺される明堯
//◆↑を、全体像は出さない演出で
	CreateTextureSP("イベ絵10", 12, -20, -20, "cg/ev/resize/ev170_バロウズ署長を射殺_am.jpg");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260120a00">
（嘘だ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　有り得ない。

　こんな事は、あってはならない。

　……やめてくれ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想ＣＧ：湊斗明堯

	EfRecoIn1(18000,600);


	CreateTextureSP("イベ絵10", 13, Center, Middle, "cg/ev/ev169_署長との出会い.jpg");

	EfRecoIn2(300);

	WaitKey(1000);

	SetFwC("cg/fw/fw署長_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0260130a11">
『私の息子としての名を贈ろう』

//【署長】
<voice name="署長" class="署長" src="voice/mc01/0260140a11">
『これまでの名を捨てろというのではない。
　新たにもう一つ、別の名を――』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);


	Delete("イベ絵*");

//◆ＣＧ：バロウズに射殺される明堯
//◆↑の、ボルトが突き立った明堯の胸をアップで
	CreateTextureSPmul("イベ絵10上", 12, -952, -525, "cg/ev/resize/ev170_バロウズ署長を射殺_cl.jpg");
	CreateColorSP("絵色血", 11, "#990000");

	EfRecoOut2(600,true);

	Wait(100);

	CreatePlainSP("絵板写", 5000);
	Delete("絵色血");
	Delete("イベ絵10上");
	CreateTextureSP("イベ絵10", 12, -952, -525, "cg/ev/resize/ev170_バロウズ署長を射殺_cl.jpg");
	FadeDelete("絵板写", 1000, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260150a00">
（明堯様）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　否定する。

　否定する。

　否定する。

　否定――――<k>しているのに！

　どうしてこの光景は消えてなくならない!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想ＣＧ：湊斗明堯

	EfRecoIn1(18000,600);

	CreateTextureSP("イベ絵10", 13, Center, Middle, "cg/ev/ev169_署長との出会い.jpg");

	EfRecoIn2(300);

	WaitKey(1000);

	SetFwC("cg/fw/fw署長_笑顔.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0260160a11">
『湊斗景明。
　……気に入ってくれるか？』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);

	Delete("イベ絵*");

//◆ＥＶ：バロウズに射殺される明堯
	CreateTextureSP("イベ絵10", 12, Center, Middle, "cg/ev/ev170_バロウズ署長を射殺_a.jpg");


	EfRecoOut2(600,true);

	WaitKey(1000);

//◆ＥＶ差分：明堯倒れる
	CreateTextureSP("イベ絵20", 11, Center, Middle, "cg/ev/ev170_バロウズ署長を射殺_b.jpg");
	FadeDelete("イベ絵10", 1500,false);

//◆要タイミング調整 inc櫻井
	WaitKey(300);
	OnSE("se人体_衝撃_転倒01",1000);

//SetFwC("cg/fw/fw景明_通常b.png");
//――――――――――――――――――――――――――――――――――――――
//<PRE @box0>
//[text0180]
//◆テキスト表示せず。ボイスのみ
//◆「舌が麻痺して動かないので声だけ出した」という感じで
//{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260170a00">
//「ああああああァァァーーーーーーーッッ!!」

//</PRE>
//	SetTextEXC();
//	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//あきゅん「演出：音声のみのコマンドを入れておきました」
	CreateVOICE("景明","mc01/0260170a00");
	MusicStart("景明",0,1000,0,1000,null,false);

	WaitKey(3000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　舌を神経毒に縛られた俺は……
　最後に、<RUBY text="ちち">養父</RUBY>の名を呼ぶことすらできなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景50", 10, Center, Middle, "cg/bg/bg077_建朝寺得月楼前_02.jpg");
	FadeDelete("イベ絵20", 1000, true);

	SetVolume("景明", 300, 0, null);

//◆バロウズ
	StL(1000, @0, @0, "cg/st/3dバロウズ_立ち_通常.png");
	FadeStL(300, true);

	SetVolume("景明", 100, 0, null);
	SetFwC("cg/fw/fwバロウズ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0260180a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se特殊_鎧_駆動音02",1000);
	DeleteStL(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　その武者――いや、明らかに西洋の品と知れる劒冑
で身を包んだ<RUBY text="クルセイダー">騎士</RUBY>は、俺に一瞥をくれ。
　用は無いとばかりに踵を返そうとした。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260190a00">
（――待てェ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm04", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　逃がすか……

　逃がすものか。

　貴様が一歩踏み出すことも許さない。

　貴様が一息吸うことも許さない。

　貴様が一秒生存することも許さない。

　――殺してやる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＧ：景明の殺意
//◆白バックに赤文字で一字ずつ「殺してやる」と表示。
//◆但し並べず、乱雑に。
//◆明朝体？　ゴシック体の方がかえって怖いか？

//◆景明の殺意というCGが見当たらなかったため、代理のCGを使用しています。 inc櫻井
	CreateColorSPadd("フラッシュ白", 15000, "WHITE");
	CreateColorSP("絵色白地", 10, "WHITE");
	Fade("フラッシュ白", 10, 0, null, true);

	CreateTextureSP("絵文字殺１", 1000, Center, Middle, "cg/sys/Telop/tp景明の殺意_01殺.png");
	CreateTextureEX("絵文字殺覆", 1010, Center, Middle, "cg/sys/Telop/tp景明の殺意_01殺.png");
	FadeFR2("絵文字殺覆",0,500,150,@0,@0,80,Dxl2, true);

	CreateTextureSP("絵文字殺２", 1000, Center, Middle, "cg/sys/Telop/tp景明の殺意_02し.png");
	CreateTextureEX("絵文字殺覆", 1010, Center, Middle, "cg/sys/Telop/tp景明の殺意_02し.png");
	FadeFR2("絵文字殺覆",0,500,150,@0,@0,40,Dxl2, true);

	Wait(50);

	CreateTextureSP("絵文字殺３", 1000, Center, Middle, "cg/sys/Telop/tp景明の殺意_03て.png");
	CreateTextureEX("絵文字殺覆", 1010, Center, Middle, "cg/sys/Telop/tp景明の殺意_03て.png");
	FadeFR2("絵文字殺覆",0,500,150,@0,@0,60,Dxl2, true);

	CreateTextureSP("絵文字殺４", 1000, Center, Middle, "cg/sys/Telop/tp景明の殺意_04や.png");
	CreateTextureEX("絵文字殺覆", 1010, Center, Middle, "cg/sys/Telop/tp景明の殺意_04や.png");
	FadeFR2("絵文字殺覆",0,500,150,@0,@0,50,Dxl2, true);

	Wait(150);

	CreateTextureSP("絵文字殺５", 1000, Center, Middle, "cg/sys/Telop/tp景明の殺意_05る.png");
	CreateTextureEX("絵文字殺覆", 1010, Center, Middle, "cg/sys/Telop/tp景明の殺意_05る.png");
	FadeFR2("絵文字殺覆",0,500,150,@0,@0,70,Dxl2, true);

	WaitKey(1000);

	Fade("フラッシュ白",0,1000,null,true);

	Wait(10);
	Delete("絵文字*");
	Delete("絵色白地");

	CreatePlainEXadd("絵板写", 14900);
	Zoom("絵板写", 0, 1100, 1100, null, true);
	SetShade("絵板写", MEDIUM);
	MoveFFP1("@絵板写",10000);
	Fade("フラッシュ白",1000,0,null,true);

//◆戻り
//◆眼がくらむ
	CreateSE("SE02","se人体_体_心臓の音02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵板写", 300, 800, null, false);
	Zoom("絵板写", 300, 1200, 1200, null, false);
	Fade("フラッシュ白", 300, 10, null, true);

	WaitKey(1000);

	FadeDelete("絵板写", 500, false);
	FadeDelete("フラッシュ白", 500, true);
	MoveFFP1stop();

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260200a00">
「……ッッ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　肉体が俺の意思を裏切る。
　力尽きたと言い張り、動こうとしない。

　糞。

　こいつはなんて役に立たないのだ。

　奴を捕まえて引き倒し、馬乗りになって顔面を殴り
潰す程度のことがどうしてできない!?

　やれっ！

　やれえっ!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆視界が赤く、そして暗く

	CreateColorSP("絵暗転", 15000, "RED");
	Delete("絵背景50");
	Delete("絵背景60");
	CreateColorSP("絵色黒", 100, "#000000");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0260210a00">
（お――おおおおおお!!）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　全ての意地は虚しく、意識は拡散してゆく。
　防ぎ止める<RUBY text="すべ">術</RUBY>はなかった。

　最後の体力で、両眼を<RUBY text="みは">瞠</RUBY>る。
　敵騎の姿を網膜に焼き付ける。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バロウズ
	StC(1000, @0, @0, "cg/st/3dバロウズ_立ち_通常.png");
	FadeStC(300, false);

	WaitKey(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　――<RUBY text="オリハルコン">輝彩甲鉄</RUBY>の<RUBY text="サジタリウス">弓騎士</RUBY>。

　俺は誓った。
　愛に等しい真情で、胸に刻んだ。

　復讐を。

　この騎士の心臓を抉り出し、養父を殺した罪の<RUBY text="あがな">贖</RUBY>い
とする事を。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆Ａパート完
//◆カットインぽくロゴ
	ClearWaitAll(3000, 1000);

	PrintBG("上背景", 10000);
	cut_in_logo(10010,2);

	ClearWaitAll(3000, 2000);


/*
//あきゅん「演出：外注部分退避」
	SetVolume("@mbgm*", 1000, 0, null);
	PrintBG("上背景");

	CreateColorSP("絵色黒", 1, "#000000");

	FadeDelete("上背景",1500,true);

	WaitKey(1000);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureSP("背景80", 30, Center, Middle, "cg/sys/title/タイトル背景.png");
	Move("背景80", 0, 20, 0, null, false);
	Move("背景80", 200, -20, 0, null, false);

	OnSE("se戦闘_攻撃_剣戟弾く01", 1000);
	CreateTextureEX("背景81", 32, Center, Middle, "cg/sys/title/画像タイトルlogo.png");
	Fade("背景81", 300, 1000, null, false);
	
	CreateTextureSPadd("絵背景500", 31, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");
	Rotate("絵背景500", 0, 180, 0, 180, null, true);
	Move("背景81", 0, 600, 40, null, false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	WaitKey(2000);
	ClearWaitAll(3000, 3000);
*/

//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル　"mc02_001.nss"