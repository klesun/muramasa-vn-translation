
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_018vsa.nss_MAIN
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
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mc01_019vs.nss";

}

scene mc01_018vsa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_018vs.nss"

//◆前半戦で奇襲は上には来ないと見切っている場合
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 30000);
	CreateWindow("絵窓上", 19000, 0, 0, 1024, 288, false);
	SetAlias("絵窓上","絵窓上");
	CreateColorSP("絵窓上/絵演色", 19010, "#CC0000");
	CreateTextureSPmul("絵窓上/絵演背景", 19020, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	CreateTextureSP("絵窓上/絵演立絵装甲", 19100, Center, Middle, "cg/st/3d村正標準_騎航_陰義b.png");
	Move("絵窓上/絵演立絵装甲", 0, @308, @-80, null, true);

	CreateWindow("絵窓下", 19000, 0, 288, 1024, 288, false);
	SetAlias("絵窓下","絵窓下");
	CreateColorSP("絵窓下/絵演色", 19010, "#336600");
	CreateTextureSPmul("絵窓下/絵演背景", 19020, Center, Middle, "cg/ef/ef001_汎用移動.jpg");

	CreateTextureSP("絵窓下/絵演立絵装甲", 19100, Center, Middle, "cg/st/3dガッタイダー_騎航_戦闘a.png");
	Move("絵窓下/絵演立絵装甲", 0, @-390, @200, null, true);

	Request("絵窓*", Smoothing);

	Move("絵窓上/絵演立絵装甲", 0, @-60, @0, Dxl2, false);
	Move("絵窓下/絵演立絵装甲", 0, @60, @0, Dxl2, false);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　あの不可解な奇襲にしても、正体を見抜くところ迄
は至っていないものの、上側――つまり己の背面方向
へは行使できないらしい事を掴んでいる。
　攻撃を受けたのは敵の下側、腹へ潜った時だけだ。

　欠陥を見切ってしまえば、霧中の技とて最早恐れる
には及ばない。
　太刀打で勝を制するのは容易であった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"mc01_019vs.nss"