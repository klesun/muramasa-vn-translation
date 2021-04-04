//<continuation number="90">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_011.nss_MAIN
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
	#bg022_山林a_03=true;
	#bg025_坑道山脈と森a_03=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_012.nss";

}

scene ma02_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_010.nss"

//◆夜の森
	PrintBG("上背景", 30000);
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 2000, true);

	Wait(1000);

	CreatePlainSP("絵板写", 2000);
	StR(1000, @0, @0,"cg/st/st小太郎_通常_私服.png");
	StL(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	FadeStA(0,true);
	FadeDelete("絵板写", 300, true);

	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw小太郎_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0110010b35">
「…………」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0110020b45">
「どうよ。
　小太郎……」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0110030b35">
「足跡が二つあるわ。
　どうやら、誰ぞに拾われたようだの」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0110040b45">
「ほう……」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0110050b35">
「心当たりはあろうかな。
　このような場所を通りがかる者などに……」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0110060b45">
「ある。
　……あやつめが。全くいつまでも煩わしい
男よ」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0110070b35">
「……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0110080b45">
「山に登るぞ。裏手へ回る」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0110090b35">
「おいよ。
　やれやれ……年寄りにはきついのう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

	PrintBG("上背景", 15000);
	OnBG(100,"bg025_坑道山脈と森a_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm26",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　<RUBY text="えみし">蝦夷</RUBY>とは大和の少数民族を指す。

　彼らは小規模の集団を作って全国各地に散在するが、
全般的に見れば東北地方に近付くほど集団の規模・数
ともに増大する。しかし他地方でも鍛冶の名地（美濃
の<RUBY text="せき">関</RUBY>村や備前の<RUBY text="おさふね">長船</RUBY>村など）には集中して住む。

　大和人と比べてやや小柄かつ細身の体格を持ち、肌
は褐色、髪色は黒のほか白、銀、金などがみられる。
　動きは俊敏で特に手先が器用であり、持久力に秀で、
意外なほど筋力もあるが……

　生命力を欠くのか、病には弱く短命である。
　平均寿命は三十数年程度、五〇年以上を生きる者は
珍しい。

　また彼らは特異な不老体質を備え、一五歳頃に成人
を迎えて以後は死ぬまでほとんど容姿が変化しない。

　東大和の先住民族として大和朝廷の歴史書に記述が
現れる当初から劔冑鍛造を始めとする高度な鍛冶技術
を有していたとされ、大和鍛冶の誕生は彼らとの接触
が端緒であると通説は認める。

　中世以降、大和鍛冶と蝦夷鍛冶の間に技術的な格差
はみられないが、種族的な適性の部分で差があるのか、
一般に大和鍛冶の作品は蝦夷鍛冶のそれに及ばない。

　そのため、蝦夷は少数民族の必然として偏見・蔑視
を受けつつも、貴重な職能集団と扱われ、尊重されて、
現在に至っている。

　……一説によれば、彼らの短命と不老は鍛冶種族と
して特化されているからこそだと云う。
　蝦夷は心身と技術の成熟を迎えた時点で己を<RUBY text="ヨロイ">甲鉄</RUBY>と
するのが宿命。老境などという人生は必要ない、と。

　大和国外にも同類と考えられる種族は複数存在し、
西洋人類学はこれを総じて『<RUBY text="ドワーフ">小さい人</RUBY>』と呼称する。
　そのうち特に有名なものは白い肌の一種族であろう。

　彼らは欧州全域に分布し、劔冑を始めとする武器の
販売で巨富を築き、死の商人と、世界の黒幕と呼ばれ
畏怖と嫌悪を集め――それが為に、
　先の世界大戦においては最大の災厄を<RUBY text="こうむ">蒙</RUBY>った。

　彼らを称して<RUBY text="ユーデア">賛美者の末裔</RUBY>。
　大和語では白蝦夷と云う。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



}

..//ジャンプ指定
//次ファイル　"ma02_012.nss"