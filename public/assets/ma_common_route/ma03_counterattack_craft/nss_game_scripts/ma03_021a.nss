//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_021a.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	if($ma03_021a_routeFlag==true){$ma03_021a_routeFlag=false;}
	else{$Ichizyou_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_022.nss";

}

scene ma03_021a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_021.nss"

//●一条
	SoundPlay("@mbgm13",0,1000,true);
	PrintBG("上背景", 30000);
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	OnSE("se人体_衝撃_弾ける01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　…………撲殺していた。

　いや。
　殺してはいないのだろうが。

　捉えた敵の目前で沈み込み、伸び上がりながら肝臓
を抉る鉤打ちがまず初弾。
　続いて左掌での側面張り手――鼓膜潰し。

　奇怪な悲鳴を上げ、耳を押さえてのけぞる男の、胸
に手を当て、同時に足をからめ、そして押し。

　――男が仰向けに倒れる。
　その、転倒の瞬間。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆どが。
	CreateSE("SE01","se戦闘_攻撃_殴る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	OnSE("se擬音_粘着質_ゲル潰れる01",1000);
	CreatePlainSP("絵振", 1000);
	Shake("絵振", 300, 0, 30, 0, 0, 1000, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　胸板へ踵を打ち下ろした。
　背と胸が共に、鈍い音を立てる。

　男の口が最後に零した音声は、水袋を踏み潰す時の
それに酷似していた。

　……殺してはいないのだろうが。
　充分に、殺人的な光景ではあった。

　容赦の<RUBY text="かけら">欠片</RUBY>もない。
　致命打は与えないよう配慮したと<RUBY text="おぼ">思</RUBY>しいが、それは
容赦とは違う。

　といって逆に、憤激に任せて暴力を振り回したのと
も違う。
　彼女は己の暴力を統制している。

　でなければ、あんなにも<RUBY text="・・・">綺麗に</RUBY>人を殴り倒せない。

　……おそらく、一条は……
　
　俺は推測する。

　鉄棒でスタッフらを殴り倒す覆面男を見た瞬間に。
　胸中で裁判を行い、断罪し、与えるべき刑を決定し、
それを執行したのだ。

　ならばそこに容赦も加減も不要。
　厳格なる執行の精神だけが求められる。

　それが一条の戦いであり、戦い方。
　そうではないのか。

　――乱戦の中の一瞬。
　俺は一条の本質に触れたのかもしれない。

　――その一瞬。
　俺は綾弥一条という人間を畏れた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//――――――――――――――――――――――――


//◆一条好感度＋１
//$Ichizyou_Flag = $Ichizyou_Flag++;

	$ma03_021a_routeFlag = true;
	$Ichizyou_Flag++;

	judgment_of_count();


}

..//ジャンプ指定
//次ファイル　"ma03_022.nss"