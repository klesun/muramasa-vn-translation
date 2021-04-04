//<continuation number="30">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_018vs.nss_MAIN
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

	//◆フラグ分岐：デバッグのため選択肢にしてあります
	//◆"mc01_010vscb.nss"にて見切りフラグがある場合　"mc01_018vsa.nss"
	//次ファイル　"mc01_019vs.nss"
	//$GameName = "mc00_001.nss";

//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;


	if($mc01_010vscb_奇襲見切り==true){
		$GameName = "mc01_018vsa.nss";
	}else{
		$GameName = "mc01_019vs.nss";
	}


}

scene mc01_018vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_017vs.nss"

//◆景明サイド
//◆ＶＳガッタイダー後半

//あきゅん「演出：ここ序盤は適当に戦闘演出入れたいなぁ、希望」

	PrintBG("上背景", 30000);
	CreateSE("SE01","se戦闘_攻撃_剣戟弾く02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#FFFFFF");
	CreateTextureSP("絵演", 3000, Center, -90, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	CreateSE("SEL01","se戦闘_特殊_空中戦風景_L");
	MusicStart("SEL01",3000,1000,0,1250,null,true);
	Delete("上背景");
	FadeDelete("絵色黒", 1000, true);

	SoundPlay("@mbgm10",0,1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/018vs0010a00">
「……やはり素人だな」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/018vs0020a01">
《十中八九、そうでしょうね》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　数合を打ち合っての結論として、俺は呟いた。
　村正もほぼ同意のようだ。

　その妖気とも呼ぶべき気迫、熱量配分の異常に起因
する暴風の如き突進、いずれも尋常ならざる猛威では
あったが。一歩後退して冷静に窺えば、それらを統御
する武術はごくごく拙いものだった。

　斧の扱いは力任せに上から下へ叩きつける他に何も
知らぬらしい。
　比較すれば騎航術は幾分ましだったが、それも武者
として一人前とは到底言い難い域に留まる。

　総じて見て、素人なのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 300, 0, null);

//◆正面相撃
	PrintGO("上背景", 30000);
	CreateSE("SE01","se戦闘_動作_空突進02");

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

	MusicStart("SE01",0,750,0,1000,null,false);

	Move("絵窓上/絵演立絵装甲", 450, @-60, @0, Dxl2, false);
	Move("絵窓下/絵演立絵装甲", 450, @60, @0, Dxl2, false);
	FadeDelete("上背景", 300, true);

	SetFwC("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/018vs0030b33">
《あなたにはママが必要なのねぇーーー!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　風を巻いて立ち向かってくる鬼相の敵騎。
　その姿と向き合うのは既に数度目にして、しかし尚
たじろぎの念を禁じ得ないのは事実だが。

　得物とする戦斧の捌きようにはやはり何らの工夫も
見えない。
　右肩上へ一撃必断の力を蓄えて構えはすれど、そこ
に<RUBY text="わざ">術技</RUBY>と称すべきものは皆無だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆小分岐

}

..//ジャンプ指定
//◆"mc01_010vscb.nss"にて見切りフラグがある場合　"mc01_018vsa.nss"
//次ファイル　"mc01_019vs.nss"

//★選択肢シーン
scene mc01_018vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg006_雄飛の部屋_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("見切りフラグあり","通常");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆"mc01_010vscb.nss"にて見切りフラグがある場合　"mc01_018vsa.nss"
				$GameName = "mc01_018vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//次ファイル　"mc01_019vs.nss"
				$GameName = "mc01_019vs.nss";
		}
	}
}


