//<continuation number="2880">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
//嶋：デバッグ用
		$GameDebugSelect = 1;
		Reset();
	}

}

scene ma03_025.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma03_025.nss","ma03_SB2",true);
	Conquest("nss/ma03_025.nss","ma03_SB3",true);
	Conquest("nss/ma03_025.nss","ma03_SB",true);
	Conquest("nss/ma03_025.nss","ma_03_SBProcess",true);
	Conquest("nss/ma03_025.nss","ma_03_SBProcess2",true);
	Conquest("nss/ma03_025.nss","ma_03_SBDelete",true);
	Conquest("nss/ma03_025.nss","ma03_025_runs",true);
	Conquest("nss/ma03_025.nss","ma03_025_runsProcess",true);
	Conquest("nss/ma03_025.nss","ma03_025_runsDelete",true);
	Conquest("nss/ma03_025.nss","ma03_025_shakeloop",true);
	Conquest("nss/ma03_025.nss","ma03_025_shakeloopProcess",true);
	Conquest("nss/ma03_025.nss","ma03_025_shakeloopDelete",true);
	Conquest("nss/ma03_025.nss","ma03_025_GC",true);
	Conquest("nss/ma03_025.nss","ma03_025_GCP1",true);
	Conquest("nss/ma03_025.nss","ma03_025_GCPC",true);
	Conquest("nss/ma03_025.nss","ma03_025_GCP2",true);
	Conquest("nss/ma03_025.nss","ma03_025_GCPDelete",true);
	Conquest("nss/ma03_025.nss","ma03_025_GCF",true);
	Conquest("nss/ma03_025.nss","ma03_025_GCFP",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto01",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto01Process",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto02",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto02Process",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto03",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto03Process",true);
	Conquest("nss/ma03_025.nss","ma03_moveAutoDelete",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto04",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto04Process",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto05",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto05Process",true);

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
	#bg038_サーキットカーブb_01 = true;
	#bg038_サーキットカーブb_03 = true;
	#bg038_サーキット走行中_01a = true;
	#bg038_サーキット走行中_03a = true;
	#bg038_サーキット走行中_01 = true;
	#bg038_サーキット走行中_03 = true;
	#bg039_競技場客席a_01 = true;
	#bg039_競技場客席b_01 = true;
	#bg037_競技場ガレージb_01 = true;


	#ev906_アベンジ走行_a=true;
	#ev906_アベンジ走行_b=true;
	#ev907_ウルティマ走行=true;

	#ev117_レースの情景_b=true;
	#ev117_レースの情景_c=true;
	#ev117_レースの情景_d=true;

//嶋：EV指定：ev117_レースの情景_b

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "ma03_026.nss";

	CP_AllDelete();


}

scene ma03_025.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	if($GameDebugSelect==1){CP_AllSet("村正");}

..//ジャンプ指定
//前ファイル　"ma03_024.nss"

//◆レース進行


//◆俯瞰視点
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	ma03_SB2(1000,3,700,0);
	ma03_SB3(2000,250);

	CreateTextureEX("絵st100", 2100, 1024, Middle, "cg/st/resize/3dウルティマ_騎航_通常l.png");
	Fade("絵st100", 0, 1000, null, true);

	OnSE("se特殊_鎧_レース_加速02",1000);

	Move("絵st100", 500, -314, -776, Dxl1, false);
	FadeDelete("絵暗転", 1000, true);

	BGMoveAuto("@絵st100",1);

	SoundPlay("@mbgm36",0,1000,true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250010a07">
《――翔京ウルティマ、ライン通過！
　一二周目に入りました！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	BGMoveDelete();

	SetBlur("絵st100", true, 3, 500, 50, false);

	OnSE("se特殊_鎧_レース_加速02",1000);
	Move("絵st100", 800, -4000, @-50, Dxl1, true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵st100");
	ma_03_SBDelete();

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250020a07">
《上位陣は相変わらず不動！
　一〇周前後で各チームとも<RUBY text="アフターバーナー">補助推進器</RUBY>交換
のためにピットインしましたが、ピットクルー
の奮闘に優劣なし。結局順位はほぼ変わらず》

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250030a07">
《見てる側としてはそろそろ動きが欲しい！
　だが、難しいかッ!?》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250040a08">
《そうね……。
　今、レースは完全にあのウルティマに支配
されていると言っていいわ》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250050a08">
《彼がペースを作っている。
　ほかの騎手はそのペースに沿って<RUBY text="はし">騎航</RUBY>って
いるだけ……》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250060a08">
《為す術もなくね。
　どうにかしたい、とは思ってるんでしょう
けれど。やっぱりウルティマの力は頭ひとつ
抜きん出ているわ》

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250070a07">
《このまま翔京の勝利で幕を閉じてしまうの
かッ!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正視点
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 20000, "#000000");

	FadeDelete("上背景", 300, true);
	Wait(200);
	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("絵暗転", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……一二周目。
　残り八周。

　ピットインは丁度半分、一〇周目で済ませた。
　……今、背中に付いているレーサークルス用の補助
推進器は飾りに過ぎない。ピットに戻る必要など無い
のだが、しかし戻らねばこちらの正体が露見する。

　戦闘状況と比べれば熱量の消耗は大幅に抑えられる
レース競技、このサーキットを二〇周程度であれば、
俺と村正は強いて休憩を取る必要もない。
　が、それは競技用劔冑ではまず有り得ない話だ。

　そうして後半戦に入っている現在。
　順位は中盤と下位の境目というところ。

　レースの勝ちを狙うなら、そろそろ強引にでも前へ
出てゆくべき頃合だが。俺の目的においてはこの位置
がほぼ理想的である。
　無理をする必要はなかった。先刻の如きは特に。

　騎手達の様子に目を配る。
　誰も彼も、空気の流れと付近の敵の動きを把握する
ことに腐心している様子だ。特に異奇な行動を示して
いる者はいない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0250080a00">
「全員を疑わねばならないという事だ。
　未だ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0250090a01">
《……そうね》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　肯定の言葉に不同意の調子を乗せて、村正。
〝卵〟寄生体の存在をこの眼で確認できていないかも
しれないという仮説を、事ここに及んでもやはり受け
入れる気にはなれないようだ。沽券に関わるのだろう。

　そういう部分で村正が酷く頑固、強情であることは
既に知っている。
　……仮に知らなかったとしても、先の一幕があれば
充分だが。

　最も遠い先頭集団に目を凝らす。
　前の周回で確認した時と何も変わらなかった。順位
も、様子も。

　首位は最初から今まで一貫してウルティマ。
　スーパーハウンド、ＲＧ-一〇、アベンジがその後
に続く。

　……さて。
　いつまでおとなしくしているつもりだろう？

　彼女は――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE02", 600, 0, null);

//◆ピット
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	OnBG(100,"bg037_競技場ガレージb_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 600, true);
	FadeDelete("絵暗転", 600, true);

	SetFwC("cg/fw/fw皇路_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0250100b24">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガチャ。無線
	CreateSE("SE01","se日常_機械_無線通信01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//◆アベンジ
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	CreateTextureEX("絵st100", 2100, 1024, Middle, "cg/st/resize/3dアベンジ_騎航_通常_m.png");
	Fade("絵st100", 0, 1000, null, true);

	FadeDelete("上背景", 600, true);

	ma03_SB2(1000,1,700,0);
	ma03_SB3(2000,250);

	OnSE("se特殊_鎧_レース_加速02",1000);
	Move("絵st100", 500, -164, -450, Dxl1, false);
	FadeDelete("絵暗転", 600, true);

	BGMoveAuto("@絵st100",1);

	SetFwC("cg/fw/fw皇路_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0250110b24">
《そろそろ温まったか？
　操》

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0250120b42">
《……うん。
　いつでも、いける》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆俯瞰視点
	CreateColorEX("絵暗転", 15000, "#000000");

	Fade("絵暗転", 500, 1000, null, true);

	BGMoveDelete();
	ma_03_SBDelete();

	ma03_SB2(700,1,1000,0);
	ma03_SB3(2000,300);

	CreateTextureEX("絵st100", 2100, 1024, Middle, "cg/st/3dウルティマ_騎航_通常.png");
	Fade("絵st100", 0, 1000, null, true);

	OnSE("se特殊_鎧_レース_加速02",1000);

//	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
//	FadeBG(0,true);
	CreateTextureSP("絵st001", 1300, 1024, Middle, "cg/st/3dＳハウンド_騎航_通常.png");
	Request("絵st001", Smoothing);
	CreateTextureSP("絵st002", 1100, 1024, -50, "cg/st/3dＲＧ−１０_騎航_通常.png");
	Zoom("絵st002", 0, 500, 500, null, true);
	Request("絵st002", Smoothing);


	Move("絵st100", 700, -2014, @0, Dxl1, false);
	FadeDelete("絵暗転", 600, true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250130a07">
《立体交差を越える！
　ウルティマ、ミスを犯しません！》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250140a08">
《危なげないわね。
　むしろ続く連中の方が怪しくなってきたわ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se特殊_鎧_レース_旋回01",1000);
	Zoom("絵st001", 500, 500, 500, Dxl1, false);
	Move("絵st001", 500, -300, @0, Dxl2, false);
	Move("絵st002", 500, 0, @0, null, true);

	OnSE("se特殊_鎧_レース_旋回02",1000);
	Zoom("絵st001", 500, 1000, 1000, Dxl1, false);
	Move("絵st001", 500,@-100, @-50, Dxl2, false);
	Shake("絵st001", 500, 0, 5, 0, 0, 1000, null, false);
	Shake("絵st002", 300, 5, 10, 0, 0, 1000, null, false);
	Move("絵st002", 500, @+200, @+200, Dxl1, true);

	Move("絵st001", 500,@-2000, @0, Dxl2, false);

	Wait(100);

	Move("絵st002", 500,@-1500, @-100, Dxl2, true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ma_03_SBDelete();
	Delete("絵st*");

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);


	DrawDelete("黒幕１", 200, 100, "blind_01_00_1", true);


	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250150a07">
《おおっ!?　本当だ！
　スーパーハウンドとＲＧ-一〇がいま接触
しかけた！》

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250160a07">
《アソシが抜きに掛かってヨコタンが防いだ
ようだが……
　今のはどちらもタイミングを外していた！
危険です！》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250170a08">
《無様ねえ。
　ウルティマに支配されるレースに耐え切れ
なくなってきたんでしょう》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250180a08">
《<RUBY text="レーサー">騎手</RUBY>なんて人種はプライドの塊……
　完全に頭を押さえられたこの状況はきっと、
屈辱的でたまらないはずよ。ほほほほほっ》

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250190a07">
《なるほど！
　誰しも他人のことはよくわかるようです！》

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250200a08">
《どういう意味かっ！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250210a07">
《さぁ、バックストレート！
　ここで態勢を立て直したいところ――お？》

{	FwC("cg/fw/fw茶々丸変装_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250220a07">
《アベンジが……
　速度を落としています！》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250230a08">
《……本当。
　危なっかしい二騎から離れるつもり？》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250240a08">
《間違った判断ではないけれど……
　消極的ね》

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250250a07">
《……いや。
　こいつは、多分……あの》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//◆アベンジ
//嶋：EV指定：ev906_アベンジ走行_a

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/resize/ev906_アベンジ走行_am.jpg");
	CreateTextureEX("絵背景200", 1000, Center, Middle, "cg/ev/resize/ev906_アベンジ走行_bm.jpg");

	Zoom("絵背景100", 0, 800, 800, null, true);
	Zoom("絵背景200", 0, 800, 800, null, true);
	Request("絵背景100", Smoothing);
	Request("絵背景200", Smoothing);

	Shake("絵背景100", 500000, 1, 2, 0, 0, 1000, null, false);


	FadeDelete("上背景", 300, true);

	OnSE("se戦闘_動作_空突進08",1000);

	FadeDelete("絵暗転", 300, true);

	Wait(500);

	CreateColorEX("絵暗転", 10000, "#000000");
	Fade("絵暗転", 500, 1000, null,true);

	Delete("絵背景100");

	SetFwC("cg/fw/fw操_真面目.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【操】
<voice name="操" class="操" src="voice/ma03/0250260b42">
「翼をください。
　私は空を駆けたいのです」

//【操】
<voice name="操" class="操" src="voice/ma03/0250270b42">
「翼をください。
　私は風と戯れたいのです」

//【操】
<voice name="操" class="操" src="voice/ma03/0250280b42">
「翼をください。
　私は鳥になりたいのです」

//【操】
<voice name="操" class="操" src="voice/ma03/0250290b42">
「翼をください。
　私は空も風も鳥も裏切りたいのです」

//【操】
<voice name="操" class="操" src="voice/ma03/0250300b42">
「私の翼は全てを裏切る。
　全てを捨て去り忘れ去り、なかったものに
してしまう」

//【操】
<voice name="操" class="操" src="voice/ma03/0250310b42">
「なぜならこれは恋ではないから。
　なぜならこれは逆襲なのだから」

//【操】
<voice name="操" class="操" src="voice/ma03/0250320b42">
「空は私を厭い風は私を憎み鳥は私を妬め。
　慟哭をかき鳴らしてこの名を唄え」

　
//【操】
<voice name="操" class="操" src="voice/ma03/0250330b42">
　　　　　　　　「<RUBY text="アベンジ・ザ・ブルー">〝逆襲騎〟</RUBY>」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//【操】
//<voice name="操" class="操" src="voice/ma03/0250330b42">
//　
//　　　　　　　　「<RUBY text="アベンジ・ザ・ブルー">〝逆襲騎〟</RUBY>」

//◆アベンジ爆走
//嶋：EV指定：ev906_アベンジ走行_b

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev906_アベンジ走行_a.jpg");
	CreateTextureEX("絵背景200", 1000, Center, Middle, "cg/ev/resize/ev906_アベンジ走行_bm.jpg");
	CreateTextureEX("絵背景300", 1200, Center, Middle, "cg/ev/resize/ev906_アベンジ走行_bm.jpg");

	FadeDelete("絵暗転",300,true);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	OnSE("se特殊_鎧_アベンジ加速01",1000);
	Fade("絵フラ", 600, 400, null, true);
	WaitKey(100);
	Fade("絵フラ", 300, 1000, null, true);

	Fade("絵背景200", 0, 1000, null, true);
	Fade("絵背景300", 0, 1000, null, false);

	SetBlur("絵背景300", true, 3, 400, 50, false);
	Fade("絵背景300", 0, 500, null, true);

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);
	Shake("絵背景200", 10000, 10, 5, 0, 0, 1000, null, false);
	Zoom("絵背景300", 1000, 2000, 2000, Dxl1, false);
	Zoom("絵背景200", 100, 800, 800, null, false);
	Fade("絵フラ", 300, 0, null, true);
	Fade("絵背景300", 500, 0, null, true);
	Zoom("絵背景300", 0, 1000, 1000, Dxl1, true);

	Fade("絵フラ", 300, 1000, null, true);

	WaitKey(2000);

//◆村正視点
	PrintGO("上背景", 25000);
	CreateColorSPadd("絵白", 10000, "#FFFFFF");

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	Delete("上背景");
	DrawDelete("絵白", 200, 100, "circle_01_00_1", false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0250340a01">
《え？　なに!?》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0250350a00">
「始まったか」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE02", 600, 0, null);

//◆俯瞰視点
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 150, 100, "slide_02_01_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_02_01_1", true);

	CreateSE("SE01","se背景_ガヤ_歓声02");
	MusicStart("SE01",300,1000,0,1000,null,true);

	SoundPlay("@mbgm03",0,1000,true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250360a07">
《来たーーーーーーーーッ！》

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250370a08">
《こ、この加速は……ッ！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	ma03_SB2(1000,1,400,0);
	ma03_SB3(2000,250);

	CreateTextureEX("絵st100", 2100, 1024, Middle, "cg/st/resize/3dアベンジ_騎航_通常_m.png");
	Fade("絵st100", 0, 1000, null, true);
	Request("絵st100", Smoothing);

	SetBlur("絵st100", true, 3, 500, 50, false);

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);
	Move("絵st100", 300, -164, -450, Dxl1, false);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_0", true);

	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",500,600,0,1000,null,true);

	BGMoveAuto("@絵st100",1);

	SetFwC("cg/fw/fw茶々丸変装_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250380a07">
《タムラ・アベンジ、本性を見せたッ！
　<RUBY text="スコーチ">爆走</RUBY><RUBY text="スコーチ">爆走</RUBY><RUBY text="スコーチ">爆走</RUBY>ィィィーーーーーーーーー!!》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250390a07">
《やはり昨日のあれはマグレではなかったッ！
　サーキット場の熱が見せた幻でもなかった！
　この爆走はリアルな現実だぁッ!!》

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250400a08">
《凄い……！
　さっきポリスチームが見せた魔術のような
理解し難い暴走とは全く違う》

{	FwC("cg/fw/fw雷蝶_笑い.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250410a08">
《完成された機構による統制された爆走よ！
　美しい！　美しいわぁ！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	BGMoveDelete();

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);
	Zoom("絵st100", 1500, 500, 500, Dxl1, false);
	BezierMove("絵st100", 1500, (@0,@0){@+100,@+50}{@+100,@+100}(@+200,@+50){@+200,@+50}{@+200,@+50}(@-4000,@-300), Dxl1, true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("絵st*");

	CreateTextureEX("絵st100", 2100, 1024, Middle, "cg/st/3dアベンジ_騎航_通常_b.png");
	Fade("絵st100", 0, 1000, null, true);

	CreateTextureEX("絵st200", 2100, Center, Middle, "cg/st/3dＲＧ−１０_騎航_通常.png");
	Fade("絵st200", 0, 1000, null, true);

	BGMoveAuto("@絵st200",1);

	SetBlur("絵st100", true, 3, 500, 50, false);

	DrawDelete("黒幕１", 200, 100, "blind_01_00_1", true);

	OnSE("se特殊_鎧_レース_加速02",1000);
	Move("絵st100", 300, -2040, @0, Dxl1, false);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250420a07">
《抜いたッ！　ＲＧ-一〇！
　アソシエイブル社の誇る傑作騎、防ぐとか
どーとか以前に反応できませんでしたッ！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	BGMoveDelete();
	ma03_SB2(1000,3,700,0);
	ma03_SB3(2000,250);

	Delete("絵st*");

	CreateTextureEX("絵st100", 2200, 1024, Middle, "cg/st/3dアベンジ_騎航_通常_b.png");
	Fade("絵st100", 0, 1000, null, true);

	CreateTextureEX("絵st200", 2100, 0, 0, "cg/st/3dＳハウンド_騎航_通常.png");
	Fade("絵st200", 0, 1000, null, true);
	Zoom("絵st200", 0, 750, 750, null, true);

	BGMoveAuto("@絵st200",1);

	SetBlur("絵st100", true, 3, 500, 50, false);

	DrawDelete("黒幕１", 200, 100, "blind_01_00_1", true);

	OnSE("se特殊_鎧_レース_加速02",1000);
	Move("絵st100", 300, -2040, @0, Dxl1, false);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250430a07">
《ヨコタン、スーパーハウンドも後塵を拝す！
　いつの間にか後姿を見せ付けられているッ！
騎手の愕然とした顔が見えるようです！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250440a07">
《タムラ・アベンジ、皇路操ッ、一躍二位へ
急浮上ぉーーーーーッ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE01", 500, 0, null);

//◆観客席
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	BGMoveDelete();
	ma_03_SBDelete();
	Delete("絵st*");

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	FadeStA(0,true);

	DrawDelete("黒幕１", 200, 100, "blind_01_00_1", true);


	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0250450a02">
「…………すげぇ」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0250460a03">
「まるで青い光……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0250470a04">
「さしずめ<RUBY text="ブルーライトニング">青い稲妻</RUBY>といったところでござい
ますね。
　いやはや……これはなんとも」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆村正視点
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 20000, "#000000");

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);


	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0250480a00">
「これでレースが荒れてくる。
　状況はどう転ぶかわからなくなってきた。
俺たちにとっても」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0250490a01">
《……あ、ええ。
　そうね……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0250500a00">
「どうした」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　しばし、村正はアベンジの疾走に気を取られていた
様子だった。
　確かにあれは瞠目に値する。が、昨日も同じものを
見ている筈だ……いや。

　装甲競技を好かない村正のことだ。
　寄生体の確認だけして、後は無視を決め込んでいた
のかもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0250510a01">
《……少し、思ったのよ。
　少しだけだけど》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0250520a01">
《………理解はできないし、したいとも思わ
ないけれど。
　今の鍛冶師にも彼らなりの魂はあるのね》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0250530a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0250540a01">
《ちょっと、そう思ったの。
　それだけよ……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジＶＳウルティマ
//◆直線でアベンジ、コーナーでウルティマ。
//嶋：EV指定：ev907_ウルティマ走行
//嶋：EV指定：ev906_アベンジ走行_b

	SetVolume("SE02", 1000, 0, null);

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 150, 100, "slide_01_01_0", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_01_0", true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250550a07">
《これはっ……
　凄まじい勝負になってきたァーーーッ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆観客席？
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateSE("SE01","se特殊_鎧_アベンジ_爆走01");

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureEX("絵背景200", 200, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");

	SetBlur("絵背景200", true, 3, 500, 100, false);

	FadeDelete("上背景", 300, true);
	Fade("絵背景100", 0, 1000, null, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵背景200", 600, 2000, 2000, Dxl1, false);
	Move("絵背景200", 600, @+200, @0, Dxl1, false);
	Fade("絵背景200", 300, 1000, null, false);
	DrawDelete("絵暗転", 200, 100, "slide_01_01_1", true);
	FadeDelete("絵背景200", 300, false);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250560a07">
《直線ではタムラ・アベンジ！
　爆発的な速力で首位を強奪するッ！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateSE("SE01","se戦闘_動作_空突進08");

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev907_ウルティマ走行.jpg");
	CreateTextureEX("絵背景200", 200, Center, Middle, "cg/ev/ev907_ウルティマ走行.jpg");

	SetBlur("絵背景200", true, 3, 500, 100, false);

	FadeDelete("上背景", 300, true);
	Fade("絵背景100", 0, 1000, null, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵背景200", 600, 2000, 2000, Dxl1, false);
	Move("絵背景200", 600, @-200, @0, Dxl1, false);
	Fade("絵背景200", 300, 1000, null, false);
	DrawDelete("絵暗転", 200, 100, "slide_01_01_1", true);
	FadeDelete("絵背景200", 300, false);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250570a07">
《しかし、コーナーでは翔京・ウルティマ！
　大きくリアを振りながら回るアベンジの懐
を容易く破って引き離す！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250580a07">
《それでもアベンジ、完全に振り切られはし
ない！　粘るッ！　そしてストレートで逆転
する！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆観客席？
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateMask("マスク", 2000, 0, 0, "cg/mask/ciスラッシュ_01_00.png", false);

	CreateTextureEX("マスク/絵背景100", 2100, -289, -238, "cg/ev/resize/ev906_アベンジ走行_am.jpg");
	CreateTextureEX("絵背景100", 100, -343, -71, "cg/ev/resize/ev907_ウルティマ走行_m.jpg");

	Move("マスク/絵背景100", 0, @-50, @0, null, true);
	Move("絵背景100", 0, @+50, @0, null, true);
	Fade("マスク/絵背景100", 0, 1000, null, false);
	Fade("絵背景100", 0, 1000, null, true);

	FadeDelete("上背景", 300, true);
	Move("マスク/絵背景100", 300, @+50, @0, Dxl1, false);
	Move("絵背景100", 300, @-50, @0, Dxl1, false);
	FadeDelete("絵暗転", 300, true);

	SetFwC("cg/fw/fw茶々丸変装_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0153]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250590a07">
《両者一歩も譲らず！
　まさに頂上決戦だぁーーーーーっっ!!》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250600a08">
《す――素晴らしい……ッ！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250610a07">
《只今の周回のタイムが出ました。
　……これはすごい！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250620a07">
《翔京ウルティマ、一分二五秒八七！
　タムラアベンジ、一分二五秒八八！
　どちらも大和人騎手のコースレコードッ！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250630a07">
《百分の一秒の争い！
　どちらに軍配が上がるのか、まるで見えま
せん！》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250640a08">
《力のアベンジ。技のウルティマ……
　いいわ！　どちらも最高よ！》

{	FwC("cg/fw/fw雷蝶_笑い.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250650a08">
《荒々しい野性の美と、精緻を極める技巧の
美……どちらがより美しいのか。
　答えを教えて頂戴！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250660a07">
《さあどちらだっ！　主催者の求める答えは
果たして両者のいずれが与えるのかっ！
　もっともワタクシは、別の答えが出されて
しまうよーな気がしなくもありません！》

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250670a08">
《え？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆観客席？
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	Delete("マスク/*");
	Delete("マスク");

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 600, true);
	FadeDelete("絵暗転", 600, true);

	SetNwC("cg/fw/nw高級士官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0250680e284">
「……くっ、こうなってしまったか。
　馬鹿どもが失敗したばかりに……」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0250690e284">
「かくなる上は……」


//◆ぴっ。
{	CreateSE("SE01","se日常_機械_無線通信02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0250700e284">
「……私だ」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0250710e284">
「ああ。手筈通りやらせろ。
　……嫌がっている？　そんなことは承知の
上だ。中将閣下のお言葉ではないが、奴らは
自尊心の塊だからな」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0250720e284">
「だが言ってやれ！　そのプライドを買って
やるとな……どうせ勝ち目はない今日の勝負
での意地を売り、明日の勝負での勝ちを買え、
と」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0250730e284">
「資金援助に技術提供、やつらが喉から手が
出るほど欲しがっているものを約束してやれ。
　そうすれば動くだろう」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0250740e284">
「……案ずるな。後でどうにでも誤魔化せる。
　とにかく我々には今日の勝利が必要なのだ。
そうだろう？　そのためには詐術のひとつや
ふたつ、こなさねばなるまい……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆コース上
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateTextureSP("絵背景100", 100, -800, Middle, "cg/ev/resize/ev117_レースの情景_al.jpg");

	Move("絵背景100", 2000, -550, @0, null, false);
	Shake("絵背景100", 100000, 0, 1, 0, 0, 1000, null, false);
	FadeDelete("上背景", 300, true);
	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",500,400,0,1000,null,true);
	FadeDelete("絵暗転", 300, true);

	SetNwC("cg/fw/nw騎手Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ｅｔｃ／騎手Ａ】
<voice name="ｅｔｃ／騎手Ａ" class="その他男声" src="voice/ma03/0250750e044">
「…………」

{	NwC("cg/fw/nw騎手Ｂ.png");}
//【ｅｔｃ／騎手Ｂ】
<voice name="ｅｔｃ／騎手Ｂ" class="その他男声" src="voice/ma03/0250760e045">
「………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 500, 0, null);

//◆村正視点
	CreateColorEX("絵暗転", 20000, "#000000");

	Fade("絵暗転", 300, 1000, null, true);

	PrintGO("上背景", 25000);

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	FadeDelete("絵暗転", 0, true);

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("上背景", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　――――？

　周囲で、状況が動いた。
　下位を争っていた数騎が姿を消す。

　俺は孤立した格好になった。
　急に辺りの風通しが良くなる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250770a07">
《おっと。後方で異変です。
　いくつかの騎体がタイミングを同じくして
減速っ》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250780a07">
《後退していきます》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250790a08">
《接触でもしたの？
　まあどうでもいいわ。終盤が近いのにあの
調子じゃ、どうせ勝ち目はないでしょう。
　邪魔にならないようにどいていなさい》

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250800a07">
《邪魔にならなきゃ、いいけどねー？》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250810a08">
《……さっきから何よ、あんたは》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　…………そうか。
　放送席のライガー女史が示唆しているのは、事前に
予測されていた可能性。

　つまり、<RUBY text="・・・・">始まった</RUBY>というわけだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウルティマＶＳアベンジ
//◆そこへ割り込むザコレーサー
//◆妨害されるアベンジ
	SetVolume("SE02", 1000, 0, null);

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	ma03_SB2(1000,1,500,0);
	ma03_SB3(2000,300);

	CreateTextureSP("絵st001", 1500, 1024, Middle, "cg/st/3dウルティマ_騎航_通常.png");
	CreateTextureSP("絵st002", 1500, 1024, Middle, "cg/st/3dアベンジ_騎航_通常_b.png");
	CreateTextureSP("絵st003", 1400, 3, -146, "cg/st/3dＧダッシュ_騎航_通常.png");
	CreateTextureSP("絵st004", 2000, -373, 25, "cg/st/3dセクシー_騎航_通常.png");
	Request("絵st003", Smoothing);
	Request("絵st004", Smoothing);

	SetBlur("絵st001", true, 2, 500, 50, false);
	SetBlur("絵st001", true, 2, 500, 50, false);

	Zoom("絵st001", 0, 750, 750, null, true);
	Zoom("絵st002", 0, 750, 750, null, true);
	Zoom("絵st003", 0, 300, 300, null, true);
	Zoom("絵st004", 0, 750, 750, null, true);

	CreateSE("SE01","se特殊_鎧_レース_加速01");

	DrawDelete("上背景", 150, 100, "slide_01_01_0", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_01_0", true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵st001", 500, -1024, @0, Dxl1, false);

	Move("絵st003", 1000, @+15, @-12, Dxl1, false);
	Move("絵st004", 1000, @+14, @+13, Dxl1, false);

	Wait(400);

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);

	Move("絵st003", 800, -261, -179, Dxl1, false);
	Move("絵st004", 800, -347, 71, Dxl1, false);
	Zoom("絵st003", 800, 500, 500, Dxl1, false);
	Zoom("絵st004", 800, 750, 750, Dxl1, false);
	Shake("絵st002", 1200, 0, 0, 0, 5, 1000, Axl1, false);
	BezierMove("絵st002", 1000, (1024,-212){-100,@0}{-100,@0}(100,-162), Dxl1, true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ma_03_SBDelete();
	Delete("絵st*");

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/ev/ev117_レースの情景_b.jpg");

	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",300,400,0,1000,null,true);


	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw雷蝶_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250820a08">
《……え？
　ちょっと、ちょっと！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250830a07">
《おおーっと、これはアクシデント！
　中盤の争いから脱落した騎手らが周回遅れ
になってトップ二騎に近接》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250840a07">
《アベンジ、進路を塞がれた格好になった！》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250850a08">
《青旗は出ないの!?
　どうせ騎体にトラブルを起こして落ちてき
た連中でしょう！　さっさと脇へどかせなさ
いよ！》

{	FwC("cg/fw/fw茶々丸変装_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250860a07">
《いやいやところがあのお歴々、周回遅れに
なった途端に調子が回復したようでーす。
　決勝参戦騎にふさわしい<RUBY text="はしり">騎航</RUBY>を取り戻して
いるー。わー。がんばれー》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250870a08">
《………なんでそっぽ向いて耳ほじりながら
言うのよ？》

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250880a07">
《別にィ？》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250890a08">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウルティマ、独走へ
//◆アベンジ、追いたいが周りが邪魔

		SetVolume("SE01", 500, 0, null);

//◆ピット
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg037_競技場ガレージb_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 600, true);
	FadeDelete("絵暗転", 600, true);

	SetFwC("cg/fw/fw皇路_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0250900b24">
「……くそ！
　こういう手できたか」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0250910b24">
（……どうする……）

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0250920b24">
（いざとなれば……）

{FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0250930b24">
（……<RUBY text="・・">いざ</RUBY>となれば……）

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0250940b24">
（いや、だが、数が多すぎる。
　くっ……どうすればいい）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆突破を図るアベンジ
//嶋：EV指定：ev117_レースの情景_b

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateTextureSP("絵st003", 1400, 3, -146, "cg/st/3dＧダッシュ_騎航_通常.png");
	CreateTextureSP("絵st004", 2000, -373, 25, "cg/st/3dセクシー_騎航_通常.png");
	Request("絵st003", Smoothing);
	Request("絵st004", Smoothing);

	Move("絵st003", 0, -261, -179, Dxl1, false);
	Move("絵st004", 0, -347, 71, Dxl1, false);
	Zoom("絵st003", 0, 500, 500, Dxl1, false);
	Zoom("絵st004", 0, 750, 750, Dxl1, true);

	ma03_moveAuto01("@絵st003");
	ma03_moveAuto02("@絵st004");

	ma03_SB2(1000,1,300,0);
	ma03_SB3(2000,100);

	CreateTextureSP("絵st002", 1500, 0, Middle, "cg/st/3dアベンジ_騎航_通常_b.png");
	Request("絵st002", Smoothing);
	Zoom("絵st002", 0, 750, 750, Dxl1, true);

	ma03_moveAuto03("@絵st002");

	FadeDelete("上背景", 200, true);
	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",300,500,0,1000,null,true);

	FadeDelete("絵暗転", 200, true);

	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【操】
<voice name="操" class="操" src="voice/ma03/0250950b42">
「……っ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆妨害される。軽く接触。
//◆致命的っぽい音。ビキ。弱点、サスアームのひび割れ

	ma03_moveAutoDelete();


	OnSE("se戦闘_動作_空突進01",1000);

	Move("@絵st003", 500, -297, -152, null, false);
	Move("@絵st004", 500, -211, 25, null, false);
	Move("@絵st002", 300, -241, -239, null, true);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	OnSE("se戦闘_攻撃_鎧かする01",500);
	Shake("@絵st002", 500, 0, 15, 0, 0, 1000, null, false);
	Fade("フラッシュ白",0,1000,null,true);
	Move("@絵st003", 500, -261, -179, null, false);
	Move("@絵st004", 500, -347, 71, null, false);
	Move("@絵st002", 500, 0, -212, null, false);
	ma03_moveAuto01("@絵st003");
	ma03_moveAuto02("@絵st004");
	ma03_moveAuto03("@絵st002");
	OnSE("se特殊_鎧_アベンジ_ひび割れ",1000);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");


	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【操】
<voice name="操" class="操" src="voice/ma03/0250960b42">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE01", 500, 0, null);


	CreateColorEX("黒幕１", 25000, "BLACK");
	Fade("黒幕１", 300, 1000, null, true);

	ma03_moveAutoDelete();
	ma_03_SBDelete();
	Delete("絵st*");

//◆俯瞰視点
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	FadeDelete("黒幕１", 300, true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250970a07">
《ウルティマ、再び単独トップに立った！
　アベンジは追えないッ！　周回遅れ集団に
捕まってしまっている！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250980a07">
《皇路操、振り切ろうと悪戦苦闘しているが
……だめだっ！　完全に囲まれた格好！》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250990a08">
《…………》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251000a07">
《この状況をどー思われますかサボテンさん》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251010a08">
《誰がサボテンよ。
　……これもレース。そうとしか言いようが
ないわ》

{	FwC("cg/fw/fw茶々丸変装_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251020a07">
《およ？　意外にクールな回答》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251030a08">
《ただ速いだけでは勝てない。そういうもの
でしょう？　<RUBY text="アーマーレース">装甲競技</RUBY>は。
　優秀な騎体、騎手の技術、熟練のスタッフ、
充分な資金……それだけでも足りない》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251040a08">
《他者を自分のために利用する能力。これは
絶対に必要な力よ。
　競技が一対一で行われるものではない以上
は、ね》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251050a08">
《タムラにそれが無いのなら仕方ないわ。
　敗れなさい。それだけのことよ》

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251060a07">
《……なるほど。
　ごもっともであります》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251070a07">
《確かにタムラにその力はないだろーね。
　けどもしかしたら、別の力があるかもしれ
ない》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251080a08">
《なによ？》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251090a07">
《幸運。
　どっかの<RUBY text="・・">他者</RUBY>が、たまたまタムラのために
動いてくれるとか》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251100a08">
《……は？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正視点
//嶋：EV指定：ev117_レースの情景_c

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 20000, "#000000");

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);


	FadeDelete("上背景", 150, true);
	FadeDelete("絵暗転", 150, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　放送席の声は、歓声と爆音の渦をついてコース上に
も届く。
　耳を傾けているのは俺だけであろうけれど。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251110a00">
「……背中を押されているようだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251120a01">
《やるの？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251130a00">
「やらざるを得ない。
　この形勢は俺にとっても不都合極まる」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　今、周囲に併走する騎体はない。
　俺が遅れたわけではないから、順位は繰り上がって
いる。が――それは俺にとって何の意味も持たない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251140a00">
「より多くの騎体に近接し、危機に備えるの
が俺の責務。
　それは偶々、アベンジの利害と一致する。
確かに彼女は幸運なのかもしれない」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251150a01">
《素直じゃないのね。
　助けたいんでしょう？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251160a00">
「俺を決勝に参加させたライガー女史の期待
には応えておかねば、筋が立たぬ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251170a01">
《本当にそれだけならいいけれど。
　御堂。私達が誰かに好意を示すという事は》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251180a00">
「――説明無用。
　承知している」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251190a01">
《ええ。
　……けどそれでも、人の心はままならない
ものだから》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　諦観のような呟きを聞き捨てて、母衣の制御に集中
する。焦りさえしなければ急減速は難しくない。
　つまりは焦りを誘う状況で求められる事が多いから
こそ危険なのだが。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm03",0,1000,true);

//◆村正、減速
	CreateSE("SE01a","se特殊_鎧_レース_減速01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	SetVolume("SE02", 1000, 0, null);

	$ma03_024_runs01 = 400;
	$ma03_024_runs02 = 500;

	CP_SpeedChange(1200,153,null,false);

	WaitKey(1000);

//◆観客席
	CreateColorEX("絵暗転", 25000, "#000000");
	SetVolume("SE01a", 1000, 0, null);
	Fade("絵暗転", 500, 1000, null, true);

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	FadeStA(0,true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0251200a02">
「あ……！」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0251210a03">
「<RUBY text="・・">やる</RUBY>みたいね？　どうやら」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0251220a04">
「はい。<RUBY text="みもの">見物</RUBY>でございます」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0251230a02">
「けど、数の差があり過ぎないか？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0251240a04">
「問題ではありませんよ、綾弥さま。
　装甲競技において真打は数打の敵たり得ず。
しかし、ま、それもまっとうに足を競い合う
ならの話で」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0251250a03">
「アベンジを囲んで固まっているあの方々は
ボウリングのピンも同然ですの。
　すぐにわかります」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0251260a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正視点
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 20000, "#000000");
	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,184,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("上背景", 150, true);
	FadeDelete("絵暗転", 150, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　低速騎航を続行。
　何秒も待たされはしない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウルティマ、傍らを行き過ぎる
	CreateTextureEX("絵st1000", 5000, Center, Middle, "cg/st/resize/3dウルティマ_騎航_通常3l.png");


	Move("絵st1000", 0, @+1000, @+1000, null, true);

	Fade("絵st1000", 0, 1000, null, true);

	OnSE("se特殊_鎧_レース_旋回02",1000);

	Zoom("絵st1000", 500, 250, 250, null, false);
	Move("絵st1000", 250, @-1100, @-1100, null, false);
	Rotate("絵st1000", 250, @0, @0, -45, null,true);

	Move("絵st1000", 1000, @+100, @+200, null, false);
	Zoom("絵st1000", 1000, 0, 0, null, false);
	Rotate("絵st1000", 300, @0, @0, 15, Dxl1,true);
	Rotate("絵st1000", 300, @0, @0, 0, Dxl1,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251270a01">
《後方から青いのが恋人の群れを引き連れて
接近。
　どうするの？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251280a00">
「加速準備。
　集団に併走しつつ、機を見て割り込む」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251290a01">
《何処？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251300a00">
「先頭が良いだろう。
　村正、力加減を誤るな。<RUBY text="・・・">撫でる</RUBY>程度で充分
だ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251310a01">
《それは比喩よね？》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251320a00">
「違う。
　優しく、優しく撫でろ……子供をからかう
ように」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251330a01">
《……諒解……？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジとザコ集団
//◆村正併走
//◆横から先頭のザコに軽く体当たり。
//◆あっさり弾かれて後方へ流れるザコ。破片が飛ぶ。

	SetVolume("SE01a", 1000, 0, null);
	SetVolume("SE02", 1000, 0, null);

	CreateColorEXadd("絵暗転", 25000, "#FFFFFF");

	OnSE("se特殊_鎧_レース_機体接触",1000);

	Fade("絵暗転", 100, 1000, null, true);

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	CreateTextureEX("絵ＥＶ10", 5000, Center, Middle, "cg/ev/ev117_レースの情景_d.jpg");
	Fade("絵ＥＶ10", 0, 1000, null, true);
	CreateTextureEX("絵ＥＶ100", 5000, Center, Middle, "cg/ev/ev117_レースの情景_d.jpg");


	Fade("絵ＥＶ100", 0, 1000, null, true);

	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",500,800,0,1000,null,true);

	Shake("絵ＥＶ100", 500000, 1, 1, 0, 0, 1000, null, false);

	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251340a07">
《おおーー!?　これはどうしたことだ！
　大きく後退したポリスチームがアベンジを
囲む周回遅れ集団に接触！　ゼッケン一五番
を吹っ飛ばしたぁっ！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251350a07">
《ゼッケン一五、後退！　包囲集団から離れ
ます！
　慌てて追うも速度が伸びない！　今の痛烈
な当たりでどこかやられたか!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 500, 0, null);

	CreateColorEX("絵暗転", 25000, "#000000");

	Fade("絵暗転", 300, 1000, null, true);

	Delete("絵ＥＶ*");

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,184,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("絵暗転", 300, true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0351]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251360a00">
「良し。まずまずだ。
　打撃は与え、破壊はせず。ほぼこの力加減
で問題ない」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251370a01">
《……なに？　えっ？
　今のが打撃になったの？　冗談でしょう？》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251380a01">
《肩で軽く<RUBY text="・・・・">つついた</RUBY>だけじゃない！》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251390a00">
「お前が言ったことだろう。
　あいつらは<RUBY text="・">紙</RUBY>細工だと」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251400a01">
《…………。
　そ、そんな甲鉄で……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251410a01">
《こんな速度を<RUBY text="かけ">騎航</RUBY>ているの!?》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251420a00">
「そうだ。
　故に、レーサーの引退理由の一割は事故死
であり」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251430a00">
「二割は再起不能の負傷。
　レーサー一〇人のうち三人までが、競技場
で人生を失うのだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251440a01">
《……狂ってる》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251450a00">
「ああ。狂ってしまったのだろう。
　世界の先端に<RUBY text="・・・・・">一人でいる</RUBY>という夢に狂って
しまったのだ」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251460a00">
「彼らは……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251470a01">
《……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251480a00">
「アベンジに進路を開けるぞ、村正。
　我々はレースの勝敗を放棄している。にも
拘わらず他の騎体の進路を妨げるならばそれ
は競技への妨害であると言わざるを得ない」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251490a00">
「アベンジの脱出後、周囲の騎体が追おうと
するかもしれないが、それは阻止する。何故
なら彼らも勝敗を捨てているからだ。
　以上、方針を達する。村正？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251500a01">
《……諒解。
　子供をからかう力加減で……ね》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆道を開ける村正
//◆アベンジの前が開く
	CreateColorEXadd("絵暗転", 25000, "#FFFFFF");

	SetVolume("SE02", 300, 0, null);

	Fade("絵暗転", 100, 1000, null, true);

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	CreateTextureEX("絵ＥＶ10", 5000, Center, Middle, "cg/ev/ev117_レースの情景_d.jpg");
	Fade("絵ＥＶ10", 0, 1000, null, true);
	CreateTextureEX("絵ＥＶ100", 5000, Center, Middle, "cg/ev/ev117_レースの情景_d.jpg");


	Fade("絵ＥＶ100", 0, 1000, null, true);

	CreateSE("SEL01","se特殊_鎧_レース_巡航音");
	MusicStart("SEL01",300,400,0,1000,null,true);

	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【操】
<voice name="操" class="操" src="voice/ma03/0251510b42">
「――――!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジダッシュ。突破。
	CreateSE("SE01","se特殊_鎧_アベンジ加速01");
	MusicStart("SE01",0,1000,0,1500,null,false);


	SetBlur("絵ＥＶ100", true, 3, 500, 100, false);
	Zoom("絵ＥＶ100", 600, 3000, 3000, Dxl1, false);
	Move("絵ＥＶ100", 600, @0, @-200, Dxl1, false);

	Wait(300);

	CreateColorEXadd("絵フラ", 10000, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);

	Delete("絵ＥＶ*");

	CreateTextureEX("絵ＥＶ100", 5000, Center, Middle, "cg/ev/ev117_レースの情景_c.jpg");

	Fade("絵ＥＶ100", 0, 1000, null, true);

	FadeDelete("絵フラ", 600, true);

	SetVolume("SEL01", 500, 0, null);

//◆観客席
	PrintGO("上背景", 25000);
	CreateColorSPadd("絵フラ", 10000, "#FFFFFF");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵フラ", 600, true);

	SetNwC("cg/fw/nw高級士官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0251520e284">
「な――何ぃ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆俯瞰視点
	PrintGO("上背景", 25000);
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 600, false);

	CreateSE("SEL01","se背景_ガヤ_サーキット01_L");
	MusicStart("SEL01",600,1000,0,1000,null,true);


	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251530a07">
《破ったッ！　囲みを破ったッ！
　ポリスチームの乱入で出来た隙に、タムラ・
アベンジが食いついた！　突破ッ！　包囲陣
からの脱出に成功しましたッ！》

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251540a08">
《…………》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251550a07">
《あまりと言えばあまりな展開！　あまりな
幸運！
　大会主催者今川中将が思わずパープリンに
なってしまうのも無理はありません！》

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251560a07">
《写真に撮って後ほど公開しようと思います》

//◆じー、かしゃ。古い時間の掛かるカメラっぽい音
{	CreateSE("SE01","se日常_機械_カメラシャッター01");
	MusicStart("SE01",0,1000,0,1300,null,false);
	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251570a08">
《撮るなっ！
　ていうか、幸運じゃないでしょ！　あれ、
あんたが押し込んだ奴じゃない！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251580a07">
《さぁっ、アベンジが追う！
　ウルティマを追う！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251590a07">
《勝負は再びこの両者の一騎打ちとなるか!?》

{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251600a08">
《聞きなさいよっ！》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251610a08">
《…………まあ、いいけどね。
　この方が麿の好みでもあるし》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正視点
//◆村正を躱して前へ出ようとするザコ
//◆村正軽く体当たり。がちーん。ザコ、後方へ
//◆その隙をついてもう一騎が逆から。
//◆でも結果同じ。

	SetVolume("SEL01", 1000, 0, null);


	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateTextureSP("絵st003", 1400, 1024, -146, "cg/st/3dＧダッシュ_騎航_通常.png");
	CreateTextureSP("絵st004", 1600, 1024, 25, "cg/st/3dセクシー_騎航_通常.png");
	Request("絵st003", Smoothing);
	Request("絵st004", Smoothing);
	Zoom("絵st003", 0, 500, 500, Dxl1, false);
	Zoom("絵st004", 0, 750, 750, Dxl1, true);

	ma03_SB2(1000,1,300,0);
	ma03_SB3(2000,100);

	CreateTextureSP("絵st002", 1500, -356, -219, "cg/st/3d村正競技_騎航_通常.png");
	Request("絵st002", Smoothing);
	Zoom("絵st002", 0, 750, 750, Dxl1, true);

	FadeDelete("上背景", 600, true);
	FadeDelete("絵暗転", 600, true);

	OnSE("se特殊_鎧_レース_加速02",1000);
	Move("絵st003", 300, -158, -142, Dxl1, false);
	Zoom("絵st002", 300, 500, 500, null, true);

	OnSE("se特殊_鎧_レース_機体接触",1000);
	Zoom("絵st002", 400, 600, 600, null, false);
	Shake("絵st003", 500, 0, 10, 0, 0, 1000, null, false);
	Move("絵st003", 400, 100, -142, Dxl1, true);

	OnSE("se戦闘_動作_空突進08",1000);
	Move("絵st003", 1000, 1000, -142, Dxl1, false);
	Move("絵st004", 300, -158, 25, Dxl1, false);
	Zoom("絵st002", 300, 750, 750, null, true);

	OnSE("se特殊_鎧_レース_機体接触",1000);
	Zoom("絵st002", 400, 500, 500, null, false);
	Move("絵st002", 400, @+10, -142, Dxl1, false);
	Shake("絵st004", 500, 0, 10, 0, 0, 1000, null, false);
	Move("絵st004", 400, 100, 100, Dxl1, true);

	Move("絵st004", 400, 1024, 100, Dxl1, true);


	CreateColorEX("フラッシュ黒", 20000, "Black");
	Fade("フラッシュ黒",300,1000,null,true);

	ma_03_SBDelete();
	Delete("絵st*");

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	FadeDelete("絵暗転", 0, true);

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);


	Fade("フラッシュ黒",300,0,null,true);
	Delete("フラッシュ黒");


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251620a00">
「――良し。
　このまま彼らと戯れ続ける」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251630a00">
「俺の目的にも、競技の公正な進行にもそれ
が最善だ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251640a01">
《ではあるけれど。
　そうもいかない様子ね》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251650a00">
「何？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ザコ団、減速
//◆距離が離れる

	SetVolume("SE02", 500, 0, null);


	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	CreateTextureSP("絵st003", 1400, 3, -146, "cg/st/3dＧダッシュ_騎航_通常.png");
	CreateTextureSP("絵st004", 2000, -373, 25, "cg/st/3dセクシー_騎航_通常.png");
	Request("絵st003", Smoothing);
	Request("絵st004", Smoothing);

	Move("絵st003", 0, -261, -179, Dxl1, false);
	Move("絵st004", 0, -347, 71, Dxl1, false);
	Zoom("絵st003", 0, 500, 500, Dxl1, false);
	Zoom("絵st004", 0, 750, 750, Dxl1, true);

	ma03_moveAuto01("@絵st003");
	ma03_moveAuto02("@絵st004");

	ma03_SB2(1000,1,300,0);
	ma03_SB3(2000,100);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);


	ma03_moveAutoDelete();

	CreateSE("SE01a","se特殊_鎧_レース_減速01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Move("@絵st003", 1500, 1024, -179, Axl1, false);
	Move("@絵st004", 1500, 1024, 71, Axl1, true);

	CreateColorEX("フラッシュ黒", 20000, "Black");
	Fade("フラッシュ黒",300,1000,null,true);

	ma_03_SBDelete();
	Delete("絵st*");

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	FadeDelete("絵暗転", 0, true);

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);


	Fade("フラッシュ黒",300,0,null,true);
	Delete("フラッシュ黒");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　周囲の騎群が離れてゆく。
　減速して――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251660a00">
「もう一度やる気か！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251670a01">
《周回遅れになって妨害ね。
　どうするの？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251680a00">
「させぬ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正、減速
//◆ザコ集団に接触
//◆一、二騎跳ね飛ばす

	SetVolume("SE*", 500, 0, null);

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	CreateTextureSP("絵st002", 1500, -356, -219, "cg/st/3d村正競技_騎航_通常.png");
	Request("絵st002", Smoothing);
	Zoom("絵st002", 0, 750, 750, Dxl1, true);

	ma03_moveAuto02("@絵st002");

	ma03_SB2(1000,1,500,0);
	ma03_SB3(2000,100);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	ma03_moveAutoDelete();

	CreateSE("SE01a","se特殊_鎧_レース_減速01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Move("@絵st002", 300, -400, -219, Axl1, true);
	Move("@絵st002", 1500, 1024, -179, Axl1, true);

	CreateColorEX("フラッシュ黒", 20000, "Black");
	Fade("フラッシュ黒",300,1000,null,true);

	ma_03_SBDelete();
	Delete("絵st*");

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	FadeDelete("フラッシュ黒", 300, true);

	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251690a07">
《ポリスのホットドッグ、逃がしません！
　徹底的にこの下位集団と遊ぶことに決めた
模様！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251700a07">
《重装甲恃みの体当たりを武器に威嚇します。
迂闊に前へ出ようとすると餌食！　下位集団、
彼から離れられません。
　さすがホットボルトベース。乱闘に強い！》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251710a08">
《ちょっと強過ぎるような気もするけれど。
　いくらホットボルトの甲鉄が厚いったって
所詮はレーサークルスでしょう？》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251720a08">
《あんな扱いに耐えるものなのかしら？》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251730a07">
《まあそれはそれとしてトップ争いへ視線を
戻しましょう。
　アベンジがウルティマを再び射程にとらえ
ようとしています！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251740a07">
《一六周目のバックストレート！
　アベンジ、ウルティマに並ぶかぁッ!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	SoundPlay("@mbgm25",0,1000,true);

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateSE("SE01","se特殊_鎧_アベンジ_爆走01");

	CreateTextureSP("絵背景10", 999, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureEX("絵背景200", 2000, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	SetBlur("絵背景200", true, 3, 500, 100, false);

	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景200", 600, 2000, 2000, Dxl1, false);
	Move("絵背景200", 600, @+200, @0, Dxl1, false);
	Fade("絵背景200", 300, 1000, null, false);
	Shake("絵背景100", 500000, 0, 1, 0, 0, 1000, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);
	Fade("絵背景200", 500, 0, null, true);


	OnSE("se特殊_鎧_アベンジ_ひび割れ",1000);


//◆アベンジダッシュ
//◆致命的な音。ビキ。
	SetFwC("cg/fw/fw操_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【操】
<voice name="操" class="操" src="voice/ma03/0251750b42">
「……っっ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウルティマに追いつきかけるが届かず。距離が開く

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵*");

	ma03_SB2(1000,4,500,-4000);
	ma03_SB3(2000,100);

	CreateTextureSP("絵st003", 1400, -1124, -400, "cg/st/3dウルティマ_騎航_通常b.png");
	CreateTextureSP("絵st004", 1600, -1124, -105, "cg/st/3dアベンジ_騎航_通常_b2.png");
	SetBlur("絵st003", true, 3, 200, 100, false);
	SetBlur("絵st004", true, 3, 200, 50, false);

	CreateSE("SE01","se特殊_鎧_アベンジ_爆走01");
	CreateSE("SE02","se特殊_鎧_レース_加速01");
	CreateSE("SE03","se特殊_鎧_アベンジ_爆走01");
	CreateSE("SE04","se特殊_鎧_レース_加速01");

	CreateSE("SEL01","se背景_ガヤ_サーキット01_L");
	MusicStart("SEL01",500,800,0,1000,null,true);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(100);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("絵st003", 1000, 50, @0, Dxl1, false);
	Move("絵st004", 1000, -336, -96, Dxl1, true);

	ma03_moveAuto05("@絵st003");
	ma03_moveAuto04("@絵st004");

	WaitKey(3000);

	ma03_moveAutoDelete();

	MusicStart("SE03",0,1000,0,1000,null,false);
	Wait(100);
	MusicStart("SE04",0,1000,0,1000,null,false);
	Move("絵st003", 700, 2700, @0, Dxl1, false);
	Move("絵st004", 700, 1800, @0, Dxl1, true);

	SetVolume("SEL01", 500, 0, null);

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ma_03_SBDelete();
	Delete("絵st*");

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251760a07">
《――――届かない！
　アベンジ、ストレートでウルティマを追い
きれず！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251770a07">
《コーナーで引き離されていきます！》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251780a08">
《……伸びが足りないわ。
　どこかを痛めたようね？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピット
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg037_競技場ガレージb_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_01_03_0", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_0", true);

	SetFwC("cg/fw/fw皇路_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0251790b24">
「いかん！
　フロントサスアームをやられている！」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0251800e010">
「さっきの乱戦の時ですか!?」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0251810b24">
「くっ……！」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0251820e010">
「どうします？
　ピットインさせて、交換を……」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0251830b24">
「そんな暇はない！
　あと残り三周なんだぞ！」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0251840e010">
「じゃあ……！」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0251850b24">
「……ッ……」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0251860b24">
「……」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0251870e010">
「皇ちゃん……」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0251880b24">
「……通信機をくれ」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0251890e010">
「え？」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0251900b24">
「早く！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆俯瞰視点
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 600, true);
	FadeDelete("絵暗転", 600, true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251910a07">
《ウルティマ、一八周目！
　……アベンジもコントロールライン通過！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251920a07">
《しかし、ウルティマとの差は歴然！》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251930a08">
《自分の戦場である直線で勝ちきれないのだ
から当然よ。
　あなたの言った『幸運』、ほんの少し足り
なかったみたいね？》

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251940a07">
《……だやな。
　まっ、仕方ねーか。勝負ってのはこーいう
もんだし》

{	FwC("cg/fw/fw茶々丸変装_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251950a07">
《……にゃふー》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251960a08">
《何よ？　溜息ついて。
　そこまでタムラに肩入れしてたの？》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251970a07">
《まーね。大久保クンに言っとけよ。
　おめーらの勝ちだ、好きなだけ稼げってな》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251980a08">
《？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正視点
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 21000, "#000000");
	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("上背景", 300, true);
	FadeDelete("絵暗転", 300, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251990a00">
「…………。
　届かぬ、か」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0252000a01">
《どうするの？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0252010a00">
「俺にできる事は何もない。
　このまま結果を見守るだけだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0252020a01">
《それでいいの？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0252030a00">
「正当な勝負の結果であるなら。
　ここへ至る過程には色々あったが、それで
もタムラが勝負から降りず、サーキットでの
決着を望んだのは事実」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0252040a00">
「ならばその結果は厳粛に受け止めねばなら
ない。タムラも、タムラに賭けた者も。
　……まだ勝負はついていないが。ライガー
女史は既に受け入れる覚悟を済ませたようだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0252050a01">
《…………。
　残念、ね》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0252060a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE02", 500, 0, null);


//◆ウルティマＶＳアベンジ
//◆ストレート。追いきれないアベンジ。
	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵*");

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	ma03_SB2(1000,1,300,0);
	ma03_SB3(2000,100);

	CreateTextureSP("絵st001", 2100, -100, -450, "cg/st/resize/3dアベンジ_騎航_通常_m.png");

	ma03_moveAuto01("@絵st001");

	CreateSE("SEL01","se特殊_鎧_アベンジ_爆走02_L");
	MusicStart("SEL01",300,500,0,1000,null,true);


	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【操】
<voice name="操" class="操" src="voice/ma03/0252070b42">
（……届かない……）

//【操】
<voice name="操" class="操" src="voice/ma03/0252080b42">
（届かない、届かない……！）

//【操】
<voice name="操" class="操" src="voice/ma03/0252090b42">
（どうして……！）

{	FwC("cg/fw/fw操_悲痛.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0252100b42">
（このままじゃ負ける……！
　負けてしまう）

//【操】
<voice name="操" class="操" src="voice/ma03/0252110b42">
（お父さんが負ける！
　わたしのせいで、負ける……！）

//【操】
<voice name="操" class="操" src="voice/ma03/0252120b42">
（そんなのだめ…………）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆プッ、ザー。通信音。
	CreateSE("SE01","se日常_機械_無線通信03");
	MusicStart("SE01",0,1000,0,750,null,false);

	Wait(1000);

	SetFwC("cg/fw/fw皇路_通常b.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0501]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252130b24">
《――操》

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0252140b42">
「お父さん……！」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252150b24">
《何をしている。
　やるんだ》

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252160b24">
《<RUBY text="・・・・・・・・・">勝つためにすべてを</RUBY>》

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0252170b42">
「……!!」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252180b24">
《第一コーナーの手前。
　そこで仕掛けろ。そこでしか<RUBY text="・・">効果</RUBY>はない》

{	FwC("cg/fw/fw操_悲痛.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0252190b42">
「……で……でも。
　お父さん……それは……」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252200b24">
《彼らと<RUBY text="・・・・">同じこと</RUBY>をしてやるだけだ。
　そうだろう？》

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0252210b42">
「……」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252220b24">
《操……お前は知っているはずだ。
　僕がかつて未来をむしり取られたことを》

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252230b24">
《騎手としての僕はあれで終わった。
　だが、お前という娘を得て、もう一度ここ
まで帰ってきた》

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252240b24">
《三度目のチャンスはない。
　今日タムラが負ければ、装甲競技は翔京の
守銭奴どもに支配される》

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252250b24">
《僕は負けられないのだ！
　操！》

{	FwC("cg/fw/fw操_悲痛.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0252260b42">
「……っ……！」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252270b24">
《操……
　僕に勝利をくれ！　世界へ行きたいのだ！》

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252280b24">
《世界へ逆襲したいのだ！
　僕の操、お前さえも、わかってはくれない
のか!?》

{	FwC("cg/fw/fw操_真面目.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0252290b42">
「…………いいえ。
　わかる。わかります、お父さん……」

//【操】
<voice name="操" class="操" src="voice/ma03/0252300b42">
「この命をくれたのはお父さん。
　この命のすべてはお父さんのために」

//【操】
<voice name="操" class="操" src="voice/ma03/0252310b42">
「血と肉と力のすべては、お父さんの願いを
叶えるために……！」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252320b24">
《操……》

{	FwC("cg/fw/fw操_真面目.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0252330b42">
「わたしとアベンジはそのためにいる……
　そのためにしか、いない……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL01", 500, 0, null);

//◆観客席
	CreateColorEX("暗転", 15000, "#000000");
	Fade("暗転", 300, 1000, null, true);

	ma03_moveAutoDelete();
	ma_03_SBDelete();
	Delete("絵st*");

	Delete("絵*");

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	FadeStA(0,true);
	FadeDelete("暗転", 300, true);

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0252340a04">
「どうやら決着のようでございますねぇ……」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0252350a02">
「…………」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0252360a03">
「ええ……。
　どうなさいましたの？　一条さん」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0252370a02">
「ん、いや、別に……。
　なんか、少し……」

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0252380a02">
「胃の辺りがむずむずしてきた。
　嫌な感じだ」

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0252390a02">
「……嫌な……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウルティマＶＳアベンジ
//◆アベンジ、じりじり迫るがコーナーで振られる。
	CreateColorEX("絵暗転", 10000, "#000000");

	Fade("絵暗転", 300, 1000, null, true);

	DeleteStA(0,true);

	CreateTextureSP("絵st100", 1000, 0, 0, "cg/st/3dウルティマ_騎航_通常3.png");
	Rotate("絵st100", 0, @0, @0, @-35, null,true);
	Move("絵st100", 0, 1024, 200, null, true);
	Request("絵st100", Smoothing);
	SetBlur("絵st100", true, 3, 300, 30, false);

	CreateTextureSP("絵st200", 1000, 0, 0, "cg/st/3dアベンジ_騎航_通常_b3.png");
	Rotate("絵st200", 0, @0, @0, @-35, null,true);
	Move("絵st200", 0, 1024, 200, null, true);
	Request("絵st200", Smoothing);
	SetBlur("絵st200", true, 3, 300, 30, false);

	CreateTextureEXadd("絵背景200", 1300, -643, -552, "cg/ef/ef044_火花c.png");
	Zoom("絵背景200", 0, 100, 100, null, true);

	CreateTextureEXadd("絵背景100", 1300, -503, -552, "cg/ef/ef044_火花c.png");
	Zoom("絵背景100", 0, 100, 100, null, true);
	CreateTextureSP("Rollbg001", 300, -727, -400, "cg/bg/bg038_サーキットカーブ_01.jpg");
	CreateTextureSP("Rollbg002", 400, -727, -400, "cg/bg/bg038_サーキットカーブ_01 アーチ01.png");
	CreateTextureEX("Rollbg003", 2000, -727, -400, "cg/bg/bg038_サーキットカーブ_01 アーチ01.png");
	Zoom("Rollbg00*", 0, 750, 750, null, true);

	Move("Rollbg00*",0, @-2000, @-400, null, true);

	MusicStart("SE03",1000,1000,0,1000,null,true);

	Move("Rollbg00*",2000, -727, -400, Dxl1, false);
	DrawDelete("絵暗転", 125, 100, "slide_02_01_1", true);

	WaitAction("Rollbg00*",null);

	OnSE("se特殊_鎧_レース_加速01",1000);

	Rotate("絵st100", 400, @0, @0, -45, DxlAuto,false);
	Zoom("絵st100", 400, 800, 800, DxlAuto, false);
	Move("絵st100", 400, -500, -100, DxlAuto, false);

	Wait(350);

	Fade("Rollbg003", 0, 1000, null, true);

	Fade("絵背景100", 25, 800, Dxl1, false);
	Move("絵st100",300, @-30, @0, DxlAuto, false);
	Zoom("絵背景100", 250, 2000, 2000, Dxl1, false);
	Rotate("絵st100", 250, @0, @0, 45, Dxl1,false);
	Wait(100);

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);
	Rotate("絵st200", 450, @0, @0, -45, DxlAuto,false);
	Zoom("絵st200", 450, 800, 800, DxlAuto, false);
	Move("絵st200", 450, -700, -100, DxlAuto, false);

	Fade("絵背景100", 500, 0, Dxl1, false);
	Zoom("絵st100", 400, 350, 350, Dxl1, false);
	Move("絵st100", 500, 1024, -350, Dxl1, true);
	Fade("絵背景100", 200, 0, Dxl1, false);

	Fade("絵背景200", 25, 800, Dxl1, false);
	Move("絵st200",300, @-30, @0, DxlAuto, false);
	Zoom("絵背景200", 250, 2000, 2000, Dxl1, false);
	Rotate("絵st200", 250, @0, @0, 45, Dxl1,false);
	Wait(100);
	Fade("絵背景200", 500, 0, Dxl1, false);
	Zoom("絵st200", 450, 350, 350, Dxl1, false);
	Move("絵st200", 550, 1024, -350, Dxl1, true);
	Fade("絵背景200", 200, 0, Dxl1, false);

	SetVolume("SE03", 1000, 0, null);

	Wait(300);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵*");
	Delete("Roll*");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg035_鎌倉サーキット俯瞰a_01.jpg");

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252400a07">
《アベンジ、粘る！　粘ります！
　しかし届かない！》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252410a08">
《最後まで勝負を諦めない姿勢は立派よ。
　その執念が奇跡を呼ぶかしら……》

{	FwC("cg/fw/fw茶々丸変装_照れ.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252420a07">
《起きないから鬼籍って言うんですよ》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252430a08">
《何が言いたいの、あんた》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252440a07">
《けどま、そーだねぇ……。
　奇跡が起きりゃ話は変わるんだ。<RUBY text="・・">奇跡</RUBY>が》

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252450a07">
《<RUBY text="・・・・">ちゃんと</RUBY>起こせるかなァ？
　奇跡……》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252460a08">
《？？》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252470a07">
《さあホームストレートッ！
　ここを抜ければ一九周目だッ！　ラスト、
二周！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジ爆走
//◆ちょっと無茶っぽく。各所にガタが来る感じで。

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵*");

	ma03_SB2(1000,3,300,0);
	ma03_SB3(2000,100);

	CreateTextureSP("絵st001", 2100, 1024, -100, "cg/st/3dアベンジ_騎航_通常.png");

	SetBlur("絵st001", true, 3, 500, 50, false);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);

	Move("絵st001", 1000, -3000, @0, Dxl1, true);

	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252480a07">
《お――？》

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252490a08">
《あ――？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ma_03_SBDelete();
	Delete("絵st*");

	CreateSE("SE01","se特殊_鎧_アベンジ_爆走01");

	CreateTextureSP("絵背景10", 999, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureEX("絵背景200", 2000, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	SetBlur("絵背景200", true, 3, 500, 100, false);

	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景200", 600, 2000, 2000, Dxl1, false);
	Move("絵背景200", 600, @+200, @0, Dxl1, false);
	Fade("絵背景200", 300, 1000, null, false);
	Shake("絵背景100", 5000000, 2, 3, 0, 0, 1000, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);
	Fade("絵背景200", 500, 0, null, true);


//◆無茶爆走
	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252500a07">
《アベンジ、ラストスパートか!?
　速い！　速いが――》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252510a07">
《こりゃちょっと無茶じゃねえ？》

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252520a08">
《無茶よ。翼が割れかけてるわ。
　あんなの何秒ももたない》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252530a07">
《んで、そのあとはツケが回ってガタガタに
なるな。
　ヤケになっちまったか？》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252540a08">
《このまま負けるよりは……と思ったのかも
しれないわね。
　けど残念ながら、同じことよ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵*");

	ma03_SB2(1000,3,300,0);
	ma03_SB3(1100,100);

	CreateTextureSP("絵st001", 2000, 1024, -200, "cg/st/3dアベンジ_騎航_通常.png");

	Zoom("絵st001", 0, 750, 750, null, true);

	CreateTextureSP("絵st003", 2100, -100, -346, "cg/st/3dウルティマ_騎航_通常.png");

	ma03_moveAuto02("@絵st003");

	SetBlur("絵st001", true, 3, 500, 100, false);

	CreateSE("SEL01","se特殊_鎧_レース_巡航音");
	MusicStart("SEL01",200,500,0,1000,null,true);


	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);
	Move("絵st001", 1000, -2500, @0, Dxl1, true);

	SetVolume("SEL01", 500, 0, null);

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ma_03_SBDelete();
	ma03_moveAutoDelete();

	Delete("絵st*");

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

//◆アベンジ爆走
//◆ウルティマを抜く
	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252550a07">
《アベンジ、ウルティマを抜いた！
　抜いたが――限界だッ！》

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252560a08">
《翼が折れるわよ！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252570a07">
《アベンジ……速度が落ちます！
　限界に達しているっ！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252580a07">
《ウルティマ、その背後を容易く取る！
　スリップについた！》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252590a08">
《……やっぱり、無駄に終わったわね》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252600a07">
《さぁ、第一コーナーが近い！
　ウルティマ、その前に抜きに掛かる――》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジ
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵*");

	CreateSE("SE01","se特殊_鎧_アベンジ_爆走01");

	CreateTextureSP("絵背景10", 999, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureEX("絵背景200", 2000, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	SetBlur("絵背景200", true, 3, 500, 100, false);

	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景200", 600, 2000, 2000, Dxl1, false);
	Move("絵背景200", 600, @+200, @0, Dxl1, false);
	Fade("絵背景200", 300, 1000, null, false);
	Shake("絵背景100", 5000000, 2, 3, 0, 0, 1000, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);
	Fade("絵背景200", 500, 0, null, true);

	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【操】
<voice name="操" class="操" src="voice/ma03/0252610b42">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆カチャッ
	CreateSE("SE01","se日常_機械_スイッチON");

//◆コース上
//◆キラッ。一瞬激しくフラッシュ

	CreateColorEX("フラッシュ白", 20000, "Black");
	Fade("フラッシュ白",300,1000,null,true);

	CreateTextureEXadd("絵背景100", 21000, Center, Middle, "cg/ef/ef036_無我の境地.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景100", 0, 0, 0, DxlAxl, true);
	SetBlur("絵背景100", true, 3, 500, 10, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Rotate("絵背景100", 300, @0, @0, @270, DxlAxl,false);
	Zoom("絵背景100", 25, 1200, 1200, DxlAxl, true);
	Zoom("絵背景100", 25, 0, 0, DxlAxl, true);

//◆村正視点
	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	Delete("絵*");

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	FadeDelete("絵暗転", 0, true);

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);


	FadeDelete("フラッシュ白",300,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0252620a01">
《！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0252630a00">
「――――!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 500, 0, null);

//◆観客席
	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵*");

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	FadeStA(0,true);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);;

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0252640a03">
「ッ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆俯瞰視点
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 600, true);
	FadeDelete("絵暗転", 600, true);

	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252650a07">
《――――あっ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウルティマ、コースアウト
//◆激突
//◆爆発

//爆発まとめ
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ma03_SB2(1000,3,300,0);
	ma03_SB3(1100,100);

	CreateTextureSP("絵st003", 2100, -100, -346, "cg/st/3dウルティマ_騎航_通常.png");
	Zoom("絵st003", 0, 750, 750, null, true);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	OnSE("se戦闘_動作_空突進08",1000);
	Move("絵st003", 3000, 0, -100, Dxl1, false);
	Shake("絵st003", 2000, 3, 5, 0, 0, 500, null, false);
	Rotate("絵st003", 100, @0, @0, -5, null,true);
	Rotate("絵st003", 100, @0, @0, 5, null,true);

	OnSE("se特殊_鎧_レース_加速02",1000);
	Move("絵st003", 300, -2000, -700, Dxl1, false);
	Rotate("絵st003", 700, @0, @0, -50, null,true);


	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	OnSE("se特殊_鎧_レース_クラッシュ",1000);
	Fade("フラッシュ白",300,1000,null,true);
	ma_03_SBDelete();
	Delete("絵st*");

	CreateTextureSP("絵ef10", 2000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵ef100", 2100, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵ef200", 2200, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetBlur("絵ef200", true, 3, 500, 50, false);

	Fade("絵ef200", 0, 700, null, true);

	Zoom("絵ef200", 1500, 2000, 2000, Dxl1, false);
	Shake("絵ef100", 50000, 2, 3, 0, 0, 1000, Dxl1, false);

	OnSE("se戦闘_破壊_爆発05",1000);
	Fade("フラッシュ白",1000,0,null,true);
	Fade("絵ef200", 500, 0, null, false);

	Fade("フラッシュ白",1000,1000,null,true);

	Delete("絵ef*");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg039_競技場客席b_01.jpg");

	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");


//◆俯瞰視点
	SetFwC("cg/fw/fw雷蝶_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252660a08">
《……激突ッ!?
　ウルティマが……コースアウトしてサンド
トラップに突っ込んだわ!!》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252670a08">
《それどころじゃない……
　客席まで突っ込んで、爆発してる……》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252680a08">
《丁度抜きに掛かろうと速度を上げたところ
で、事故を起こしたのね……！
　なんてこと……》

{	FwC("cg/fw/fw茶々丸変装_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252690a07">
《…………》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252700a08">
《ちょっとあんた、ぼーっとしてないで解説
しなさいよ！　こんなのレースでは良くある
ことでしょ!?
　アベンジは……無事ね！　<RUBY text="はし">騎航</RUBY>ってる……》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252710a08">
《まさかこんなことになるなんて……
　これは奇跡と言っていいのかしら……》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252720a08">
《とにかくアベンジがトップに立ったわ。
　神はあの青い騎体を選んだのね……！》

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252730a07">
「…………」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252740a07">
「……<RUBY text="・・・">その手</RUBY>使うのかよ。
　馬鹿が……それじゃなんにも面白くねえ」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252750a07">
「レーサーの癖に……
　アベンジなんて怪物創ってみせた癖に……
　どうして、速く<RUBY text="はし">騎航</RUBY>る<RUBY text="・・">以外</RUBY>の事を考える？」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252760a07">
「神話が出来たかもしれないのに。
　最後の最後で三文芝居に<RUBY text="おと">堕</RUBY>しやがった」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252770a07">
「……っ……」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252780a07">
「おい。
　雷蝶」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252790a08">
《ん？》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252800a07">
「あて、帰るわ。
　あとよろしく」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252810a08">
《え？　……え？　ちょっと！
　どうしたのよいきなり》

{	FwC("cg/fw/fw茶々丸変装_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252820a07">
「興味なくした。
　もーいい、どうでも」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252830a07">
「……あー。くそ。
　つまんねえ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正視点
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 20000, "#000000");

	Cockpit_AllFade2();

	CP_HighChange2(0,0,null,false);
	CP_SpeedChange2(0,0,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("上背景", 600, true);
	FadeDelete("絵暗転", 600, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0252840a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0252850a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0252860a01">
《……御堂。
　あれは……この競技で認められていること
なの？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0252870a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0252880a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　――――――――汚された。

　汚されて、しまった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE02", 2000, 0, null);

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_026.nss"

..//◆1.ma03_SB2
function ma03_SB2($サーキット真横_BG,$ma03_BGNum,$ma03_BGTime,$ma03_BGpoint){

	//昼間
	if($ma03_BGNum==1){
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
	//夜
	}else if($ma03_BGNum==2){
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
	}else if($ma03_BGNum==3){
//レーススタート直後
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_04.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_04.jpg");

	}else if($ma03_BGNum==4){
//レーススタート直後
		CreateTextureSP("Circuit01", $サーキット真横_BG, InLeft, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InLeft, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");

	}else{
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
	}

	CreateSCR1("@Circuit01","@Circuit02",$ma03_BGTime,$ma03_BGpoint, @0);

}

..//◆2.ma03_SB3
function ma03_SB3($サーキット真横_BG01,$ma03_SBtime){

	if($ma03_BGNum==1){
		CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_01.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else if($ma03_BGNum==2){
		CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_03.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else if($ma03_BGNum==3){
		CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_03.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else if($ma03_BGNum==4){
		CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, 1124, Middle, "cg/bg/bg038_サーキット真横b_01.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}

if($ma03_BGNum==4){
	CreateProcess("柱プロセス", 15000, 0, 0, "ma_03_SBProcess2");
	Request("柱プロセス", Start);
	SetAlias("柱プロセス","柱プロセス");
}else{
	CreateProcess("柱プロセス", 15000, 0, 0, "ma_03_SBProcess");
	Request("柱プロセス", Start);
	SetAlias("柱プロセス","柱プロセス");
}

}

..//◆3.ma03_SB
function ma03_SB($サーキット真横_BG01,$ma03_SBtime){


	CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_03.png");
	SetBlur("Circuit_Bar", true, 3, 300, 2, false);

	CreateProcess("柱プロセス", 15000, 0, 0, "ma_03_SBProcess");
	Request("柱プロセス", Start);
	SetAlias("柱プロセス","柱プロセス");

}

..//◆4.ma_03_SBProcess
function ma_03_SBProcess(){

	begin:

	while(1){
		Fade("@Circuit_Bar", 0, 1000, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, 1074, @0, null, true);
		Fade("@Circuit_Bar", 0, 0, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, -100, @0, null, true);
	}

}

..//◆4.5.ma_03_SBProcess2
function ma_03_SBProcess2(){

	while(1){
		Fade("@Circuit_Bar", 0, 1000, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, -100, @0, null, true);
		Fade("@Circuit_Bar", 0, 0, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, 1124, @0, null, true);
	}

}

..//◆5.ma_03_SBDelete
function ma_03_SBDelete(){

	Fade("@Circuit_Bar", 0, 0, null, true);
	Delete("@柱プロセス");
	Delete("@Circuit_Bar");
	SCR1stop();
	Delete("@Circuit*");

}

..//◆6.ma03_025_runs
function ma03_025_runs($md03_025_既存ファイル,優先度,$md03_025_ファイル名){

	CreateTextureEX("絵runs01", 優先度, Center, Middle, $md03_025_ファイル名);
	CreateTextureEX("絵runs02", 優先度, Center, Middle, $md03_025_ファイル名);
	SetBlur("絵runs01", true, 3, 400, 20, false);
	SetBlur("絵runs02", true, 3, 400, 20, false);

	SetVertex("絵runs01", 518, 389);
	SetVertex("絵runs02", 518, 389);
	SetVertex($md03_025_既存ファイル, 518, 389);

	CreateProcess("疾走", 1500, 0, 0, "ma03_025_runsProcess");
	SetAlias("疾走","疾走");
	Request("疾走", Start);

	$ma03_025_runs01 = 125;
	$ma03_025_runs02 = 250;

}

..//◆7.ma03_025_runsProcess
function ma03_025_runsProcess(){

	begin:

		Zoom($md03_025_既存ファイル, 50000, 2000, 2000, AxlAuto, false);
		Shake($md03_025_既存ファイル, 50000, 1, 1, 0, 0, 500, null, false);
		Fade($md03_025_既存ファイル, 500, 0, null, false);

		Fade("@絵runs01", $ma03_025_runs01, 500, null, false);
		Zoom("@絵runs01", $ma03_025_runs02, 3000, 3000, AxlAuto, false);

		Wait($ma03_025_runs01);

	while(1){

		Shake($md03_025_既存ファイル, 50000, 1, 1, 0, 0, 500, null, false);

		Zoom("@絵runs02", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs01", $ma03_025_runs01, 0, Axl1, false);
		Zoom("@絵runs02", $ma03_025_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs02", $ma03_025_runs01, 700, Dxl1, false);
		Wait($ma03_025_runs01);
		Zoom("@絵runs01", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs02", $ma03_025_runs01, 0, Axl1, false);
		Zoom("@絵runs01", $ma03_025_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs01", $ma03_025_runs01, 700, Dxl1, false);
		Wait($ma03_025_runs01);
		Zoom("@絵runs02", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs01", $ma03_025_runs01, 0, Axl1, false);
		Zoom("@絵runs02", $ma03_025_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs02", $ma03_025_runs01, 700, Dxl1, false);
		Wait($ma03_025_runs01);
		Zoom("@絵runs01", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs02", $ma03_025_runs01, 0, Axl1, false);
		Zoom("@絵runs01", $ma03_025_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs01", $ma03_025_runs01, 700, Dxl1, false);
		Wait($ma03_025_runs01);

	}


}

..//◆8.ma03_025_runsDelete
function ma03_025_runsDelete(){

	Request("@疾走", Stop);
	Delete("@疾走");
	Delete("@絵runs*");

}

..//◆9.ma03_025_shakeloop
function ma03_025_shakeloop($024SLP,$024揺れ幅x,$024揺れ幅y){

	CreateProcess("揺れ揺れ", 15000, 0, 0, "ma03_025_shakeloopProcess");
	SetAlias("揺れ揺れ","揺れ揺れ");
	Request("揺れ揺れ", Start);

}

..//◆10.ma03_025_shakeloopProcess
function ma03_025_shakeloopProcess(){

	begin:

	while(1){Shake($024SLP, 500000, $024揺れ幅x,$024揺れ幅y, 0, 0, 1000, null, true);}

}

..//◆11.ma03_025_shakeloopDelete
function ma03_025_shakeloopDelete(){

	Request($024SLP, Stop);
	Shake($024SLP, 0, 0, 0, 0, 0, 1000, null, true);
	Delete($024SLP);
	Delete("@揺れ揺れ");

}

..//◆12.ma03_025_GC
function ma03_025_GC(){

	$GCPC_time = 300;
	$GCPC_time2 = 1000;
	$GCPC_time3 = 5000;

	CreateTextureEXmul("絵GC001", 2000, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_d.jpg");
	CreateTextureEXover("絵GC002", 1999, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_d.jpg");

	CreateProcess("辰気1", 15000, 0, 0, "ma03_025_GCP1");
	SetAlias("辰気1","辰気1");

	CreateProcess("辰気2", 15000, 0, 0, "ma03_025_GCP2");
	SetAlias("辰気2","辰気2");


	Request("辰気1", Start);
	Request("辰気2", Start);

}

..//◆13.ma03_025_GCP1
function ma03_025_GCP1(){

	begin:

	while(1){
		Zoom("@絵GC001", $GCPC_time3, 1300, 1300, AxlDxl, false);
		Fade("@絵GC001",$GCPC_time2, $GCPC_time, null, true);
		Fade("@絵GC001",$GCPC_time2, 0, null, true);
		Zoom("@絵GC001", 0, 1000, 1000, AxlDxl, true);
	}

}

..//◆14.ma03_025_GCPC
function ma03_025_GCPC($GCPC_time,$GCPC_time2,$GCPC_time3){}

..//◆15.ma03_025_GCP2
function ma03_025_GCP2(){

	begin:

	while(1){
		Fade("@絵GC002",5000, 300, null, true);
		Fade("@絵GC002",5000, 0, null, true);
	}

}

..//◆16.ma03_025_GCPDelete
function ma03_025_GCPDelete(){

	Request("@辰気1",Stop);
	Request("@辰気2",Stop);

	Delete("@辰気*");

	SetBlur("@絵GC001", true, 3, 400, 100, false);
	Fade("@絵GC002",500, 0, null, false);
	Zoom("@絵GC001", 1000, 2000, 2000, AxlDxl, false);
	Fade("@絵GC001",500, 700, null, true);
	FadeDelete("@絵GC001",500, true);

	Delete("@絵GC*");

}


..//◆17.ma03_025_GCF
function ma03_025_GCF(){

	CreateColorEXmul("絵25co", 2500, "#330033");

	CreateTextureEXover("絵24ef", 2000, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星a.jpg");
	Zoom("絵24ef", 0, 4000, 4000, null, true);
	Request("絵24ef", Smoothing);

	CreateProcess("辰気色", 15000, 0, 0, "ma03_025_GCFP");
	SetAlias("辰気色","辰気色");

	Request("辰気色", Start);

}

..//◆18.ma03_025_GCFP
function ma03_025_GCFP(){

	begin:

	Fade("@絵25ef",0, 800, null, false);
	DrawTransition("@絵25ef", 0, 0, 200, 200, DxlAxl, "cg/data/circle_02_00_1.png", true);
	Shake("@絵25ef", 500000, 20, 10, 0, 0, 1000, null, false);
//	Rotate("@絵25ef", 500000, @0, @0, 18000, null,false);
	Fade("@絵25co",0, 300, null, false);

while(1){

	Shake("@絵25ef", 500000, 20, 10, 0, 0, 1000, null, true);

}

/*
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 100, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 300, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 100, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 300, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 100, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
*/

}

..//◆19.ma03_moveAuto01(ナット名指定)
function ma03_moveAuto01($ma03STnat01){

	CreateProcess("絵自動01", 150, 0, 0, "ma03_moveAuto01Process");
	SetAlias("絵自動01","絵自動01");
	Request("絵自動01", Start);


}

..//◆20.ma03_moveAuto01Process
function ma03_moveAuto01Process(){


	begin:
	WaitAction($ma03STnat01, null);

	while(1){

	$ma03_MA01PPRoll = Random(5)+1;//1〜6
	$ma03_MA01PPTime = Random(5)+1;//1〜6
	$ma0301PPT = $ma03_MA01PPTime*1000;//1000〜6000
	$ma0301PPT = $ma0301PPT+2000;

	if($ma03_MA01PPRoll>=3){
		BezierMove($ma03STnat01, $ma0301PPT, (@0,@0){@-10,@-10}{@-20,@-20}(@-30,@-30){@-40,@-20}{@-50,@-10}(@-60,@0){@-50,@+10}{@-40,@+20}(@-30,@+30){@-20,@+20}{@-10,@+10}(@0,@0), DxlAxl, true);
	}else if($ma03_MA01PPRoll==2){
		BezierMove($ma03STnat01, $ma0301PPT, (@0,@0){@-5,@-5}{@-15,@-15}(@-25,@+10){@-30,@+6}{@-40,@+2}(@-50,@+0){@-40,@+10}{@-30,@+20}(@-20,@+30){@-30,@+20}{@-40,@+10}(@-50,@0){@-20,@+10}{@-40,@+10}(@0,@0), DxlAxl, true);
	}else{
		BezierMove($ma03STnat01, $ma0301PPT, (@0,@0){@+10,@+10}{@+20,@+20}(@+30,@+30){@+40,@+20}{@+50,@+10}(@+60,@0){@+50,@-10}{@+40,@-20}(@+30,@-30){@+20,@-20}{@+10,@-10}(@0,@0), DxlAxl, true);
	}

	}



}

..//◆21.ma03_moveAuto02(ナット名指定)
function ma03_moveAuto02($ma03STnat02){

	CreateProcess("絵自動02", 150, 0, 0, "ma03_moveAuto02Process");
	SetAlias("絵自動02","絵自動02");
	Request("絵自動02", Start);


}

..//◆22.ma03_moveAuto02Process
function ma03_moveAuto02Process(){


	begin:
	WaitAction($ma03STnat02, null);

	while(1){

	$ma03_MA02PPRoll = Random(5)+1;//1〜6
	$ma03_MA02PPTime = Random(5)+1;//1〜6
	$ma0302PPT = $ma03_MA02PPTime*1000;//1000〜6000
	$ma0302PPT = $ma0302PPT+2000;

	if($ma03_MA02PPRoll>=3){
		BezierMove($ma03STnat02, $ma0302PPT, (@0,@0){@-10,@-10}{@-20,@-20}(@-30,@-30){@-40,@-20}{@-50,@-10}(@-60,@0){@-50,@+10}{@-40,@+20}(@-30,@+30){@-20,@+20}{@-10,@+10}(@0,@0), DxlAxl, true);
	}else if($ma03_MA02PPRoll==2){
		BezierMove($ma03STnat02, $ma0302PPT, (@0,@0){@-5,@-5}{@-15,@-15}(@-25,@+10){@-30,@+6}{@-40,@+2}(@-50,@+0){@-40,@+10}{@-30,@+20}(@-20,@+30){@-30,@+20}{@-40,@+10}(@-50,@0){@-20,@+10}{@-40,@+10}(@0,@0), DxlAxl, true);
	}else{
		BezierMove($ma03STnat02, $ma0302PPT, (@0,@0){@+10,@+10}{@+20,@+20}(@+30,@+30){@+40,@+20}{@+50,@+10}(@+60,@0){@+50,@-10}{@+40,@-20}(@+30,@-30){@+20,@-20}{@+10,@-10}(@0,@0), DxlAxl, true);
	}

	}

}


..//◆23.ma03_moveAuto03(ナット名指定)
function ma03_moveAuto03($ma03STnat03){

	CreateProcess("絵自動03", 150, 0, 0, "ma03_moveAuto03Process");
	SetAlias("絵自動03","絵自動03");
	Request("絵自動03", Start);


}

..//◆24.ma03_moveAuto03Process
function ma03_moveAuto03Process(){


	begin:
	WaitAction($ma03STnat03, null);

	while(1){

	$ma03_MA03PPRoll = Random(5)+1;//1〜6
	$ma03_MA03PPTime = Random(5)+1;//1〜6
	$ma0303PPT = $ma03_MA03PPTime*1000;//1000〜6000
	$ma0303PPT = $ma0303PPT+5000;

		if($ma03_MA03PPRoll>=3){
			BezierMove($ma03STnat03, $ma0303PPT, (@0,@0){@-50,@0}{@-60,@0}(@-100,@0){@-50,@+10}{@-40,@+15}(@0,@+20){@-30,@+10}{@-60,@+20}(@-80,@+30){@-80,@-10}{@-75,@-15}(@0,@0), DxlAxl, true);
		}else if($ma03_MA03PPRoll==2){
			BezierMove($ma03STnat03, $ma0303PPT, (@0,@0){@-50,@0}{@-60,@0}(@-100,@0){@-50,@+10}{@-40,@+15}(@0,@+20){@-30,@+10}{@-60,@+20}(@-80,@+30){@-80,@-10}{@-75,@-15}(@0,@0), DxlAxl, true);
		}else{
			BezierMove($ma03STnat03, $ma0303PPT, (@0,@0){@-50,@0}{@-60,@0}(@-100,@0){@-50,@+10}{@-40,@+15}(@0,@+20){@-30,@+10}{@-60,@+20}(@-80,@+30){@-80,@-10}{@-40,@-15}(@0,@0), DxlAxl, true);
		}

	}

}


..//◆25.ma03_moveAutoDelete
function ma03_moveAutoDelete(){

	Delete("@絵自動01");
	Delete("@絵自動02");
	Delete("@絵自動03");
	Delete("@絵自動04");
	Delete("@絵自動05");


}

..//◆26.ma03_moveAuto04(ナット名指定)
function ma03_moveAuto04($ma03STnat04){

	CreateProcess("絵自動04", 150, 0, 0, "ma03_moveAuto04Process");
	SetAlias("絵自動04","絵自動04");
	Request("絵自動04", Start);


}

..//◆27.ma03_moveAuto04Process
function ma03_moveAuto04Process(){


	begin:
	WaitAction($ma03STnat04, null);

	while(1){

	$ma03_MA04PPRoll = Random(5)+1;//1〜6
	$ma03_MA04PPTime = Random(5)+1;//1〜6
	$ma0304PPT = $ma03_MA04PPTime*1000;//1000〜6000
	$ma0304PPT = $ma0304PPT+500;

	if($ma03_MA04PPRoll>=3){
		BezierMove($ma03STnat04, $ma0304PPT, (@0,@0){@+5,@-5}{@+8,@-8}(@+10,@-10){@+5,@-5}{@+0,@0}(@-5,@+5){@+5,@+3}{@+15,@+2}(@+20,@0){@+10,@0}{@+5,@0}(@0,@0), DxlAxl, true);
	}else if($ma03_MA04PPRoll==2){
		BezierMove($ma03STnat04, $ma0304PPT, (@0,@0){@+5,@-5}{@+8,@-8}(@+10,@-10){@+5,@-5}{@+0,@0}(@-5,@+5){@+5,@+3}{@+15,@+2}(@+20,@0){@+10,@0}{@+5,@0}(@0,@0), DxlAxl, true);
	}else{
		BezierMove($ma03STnat04, $ma0304PPT, (@0,@0){@+5,@-5}{@+8,@-8}(@+10,@-10){@+5,@-5}{@+0,@0}(@-5,@+5){@+5,@+3}{@+15,@+2}(@+20,@0){@+10,@0}{@+5,@0}(@0,@0), DxlAxl, true);
	}

	}



}

..//◆29.ma03_moveAuto05(ナット名指定)
function ma03_moveAuto05($ma03STnat05){

	CreateProcess("絵自動05", 150, 0, 0, "ma03_moveAuto05Process");
	SetAlias("絵自動05","絵自動05");
	Request("絵自動05", Start);


}

..//◆30.ma03_moveAuto05Process
function ma03_moveAuto05Process(){


	begin:
	WaitAction($ma03STnat05, null);

	while(1){

	$ma03_MA05PPRoll = Random(5)+1;//1〜6
	$ma03_MA05PPTime = Random(5)+1;//1〜6
	$ma0305PPT = $ma03_MA05PPTime*1000;//1000〜6000
	$ma0305PPT = $ma0305PPT+2000;

	if($ma03_MA05PPRoll>=3){
		BezierMove($ma03STnat05, $ma0305PPT, (@0,@0){@+5,@-5}{@+8,@-8}(@+10,@-10){@+5,@-5}{@+0,@0}(@-5,@+5){@+5,@+3}{@+15,@+2}(@+20,@0){@+10,@0}{@+5,@0}(@0,@0), DxlAxl, true);
	}else if($ma03_MA05PPRoll==2){
		BezierMove($ma03STnat05, $ma0305PPT, (@0,@0){@+3,@+2}{@+6,@+4}(@+10,@+8){@+8,@+5}{@+6,@+2}(@+5,@0){@+8,@-2}{@+10,@-5}(@+15,@-8){@+10,@-6}{@+5,@-3}(@0,@0), DxlAxl, true);
	}else{
		BezierMove($ma03STnat05, $ma0305PPT, (@0,@0){@+5,@+2}{@+8,@+4}(@+10,@+8){@+3,@-5}{@-4,@0}(@-11,@+5){@-12,@+3}{@-13,@+2}(@-14,@0){@-7,@0}{@-4,@0}(@0,@0), DxlAxl, true);
	}

	}



}


