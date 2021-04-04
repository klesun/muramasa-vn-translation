//<continuation number="1640">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_003_1.nss_MAIN
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
	#ev168_新聞=true;

	//▼ルートフラグ、選択肢、次のGameName
//	$PreGameName = $GameName;

//	◆フラグ分岐：デバッグのため選択肢にしてあります
//	◆香奈枝が生存していた場合　"mb01_003a.nss"
//	◆香奈枝が死亡していた場合　"mb01_003b.nss"
//	$GameName = "mb01_003b.nss";
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;


if($PreGameName == "mc01_004.nss"){
	$PreGameName = $GameName;
	$GameName = "mc01_005.nss";
}else{
		$PreGameName = $GameName;
		$GameName = "mb01_003_2.nss";
}



}

scene mb01_003_1.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_002.nss"
//前ファイル　"mb01_002a.nss"

//香奈枝ルートより
//前ファイル　"mc01_004.nss"


.//〔英雄編〕と〔復讐編"mc01_005.nss"〕での共有エリア１：ココから
//◆シーンで分けて、対応

//◆ＣＧ：新聞紙面
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ", 1000, Center, Middle, "cg/ev/ev168_新聞.jpg");
	Delete("上背景");
	CreateSE("SE01","se日常_物_紙を置く");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵暗転", 500, true);
	SoundPlay("@mbgm24",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　
　　　　　　　　　〝元帥、薨去〟

〝本日六時、幕府申次衆より、正三位六衛大将領足利
護氏殿下の薨去が発表された〟

〝薨去の日時、また死因等について、説明は一切ない。
　普陀楽城本丸には護氏殿下の御嫡孫であらせられる
四郎邦氏殿下が入られ、政務を代行される予定である
との伝達があったのみである〟

〝混乱の渦中にある各界では、京都の陰謀、進駐軍の
暗躍、岡部の残党による復仇等々、様々な風説が飛び
交い、また先日の奉刀参拝以来の八幡宮封鎖との関連
も取り沙汰されているが〟

〝どの説も根拠というほどのものはなく、憶測の域を
出ていない〟

〝ただ消息筋の情報によれば大将領殿下の健常は全く
疑うべくもなかったとのことであり、これが正しいと
すると病死とは考えられず、薨去にはやはり人為的な
何事かが関与したものとみられる〟

〝また、この発表を受けた進駐軍総司令部では――〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1000);

..//ジャンプ指定
//一条ルート分岐
//次ファイル　"mb01_003_2.nss"

//香奈枝ルート分岐
//次ファイル　"mc01_005.nss"


}



