
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031daidokoroa.nss_MAIN
{

//嶋：デバッグフラグ
//	$香奈枝合流_Flag=true;
//	$料理酒_Flag=true;

//嶋：材料決定ランダム
	$材料決定 = Random(101)+1;
	$材料名前 = "　";

	if($材料決定 <= 8){$豚肉_Flag=true;$材料名前="豚肉";}
	else if($材料決定 <= 16){$牛肉_Flag=true;$材料名前="牛肉";}
	else if($材料決定 <= 24){$羊肉_Flag=true;$材料名前="羊肉";}
	else if($材料決定 <= 32){$鹿肉_Flag=true;$材料名前="鹿肉";}
	else if($材料決定 <= 40){$兎肉_Flag=true;$材料名前="兎肉";}
	else if($材料決定 <= 48){$馬肉_Flag=true;$材料名前="馬肉";}
	else if($材料決定 <= 56){$魚肉_Flag=true;$材料名前="魚肉";}
	else if($材料決定 <= 64){$カニ_Flag=true;$材料名前="カニ肉";}
	else if($材料決定 <= 72){$果物_Flag=true;$材料名前="果物";}
	else if($材料決定 <= 80){$野菜_Flag=true;$材料名前="野菜";}
	else if($材料決定 <= 88){$熊肉_Flag=true;$材料名前="熊肉";}
	else if($材料決定 <= 94){$二足羊肉_Flag=true;$材料名前="二足羊肉";}
	else if($材料決定 <= 98){$ウジ虫とダチョウ_Flag=true;$材料名前="ウジ虫とダチョウ肉";}
	else if($材料決定 <= 102){$ビヤーキー_Flag=true;$材料名前="ビヤーキー";}

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	if($香奈枝合流_Flag==true && $料理酒_Flag==true){
//◆フラグ分岐：デバッグのため選択肢にしてあります
		$SelectGameName="@->"+$GameName+"_SELECT";
		call_scene $SelectGameName;
	}else{
		$GameName = "mc02_031daidokoroab.nss";
	}

}

scene mc02_031daidokoroa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	CreateSE("SE01","se日常_建物_扉開く01");
	MusicStart("SE01",0,1000,0,700,null,false);
	WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　新鮮な<VALUE name=$材料名前>がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


..//ジャンプ指定
//前ファイル　"mc02_031daidokoro.nss"


//●冷蔵庫
//◆ランダム要素で分岐

//◆ランダム

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ac_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	Delete("上背景");


.//◆※料理酒ある＋香奈枝いる
//◆香奈枝合流_Flagと料理酒_Flagが共にある場合

if($香奈枝合流_Flag==true && $料理酒_Flag==true){

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0010a03">
「何だかおなかが空いてしまいますね」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0020a04">
「そういえば、忙しさにかまけて朝食を忘れ
ておりましたなァ。
　このさよとしたことが」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0030a00">
「では、軽く何か作りましょうか」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0040a03">
「あら、景明さまは料理がおできになるの？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0050a00">
「簡単なものであれば」

{	FwC("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0060a04">
「男の手料理とは魅力的でございます。
　お嬢さま、お言葉に甘えては？」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0070a03">
「そうねぇ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

}

//◆選択：料理する／料理しない
//◆フラグが足りない場合は料理しないへ

..//ジャンプ指定
//◆料理する　"mc02_031daidokoroaa.nss"
//◆料理しない　"mc02_031daidokoroab.nss"


}



//★選択肢シーン
scene mc02_031daidokoroa.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_飛行船船室Ac_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("料理する","料理しない");
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
//◆料理する　"mc02_031daidokoroaa.nss"
				$GameName = "mc02_031daidokoroaa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆料理しない　"mc02_031daidokoroab.nss"
				$GameName = "mc02_031daidokoroab.nss";
		}
	}
}




//嶋：変数にて退避
/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆豚肉_Flag
　新鮮な豚肉がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆牛肉_Flag
　新鮮な牛肉がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆羊肉_Flag
　新鮮な羊肉がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆鹿肉_Flag
　新鮮な鹿肉がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//◆兎肉_Flag
　新鮮な兎肉がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆馬肉_Flag
　新鮮な馬肉がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆魚肉_Flag
　新鮮な魚肉がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆カニ_Flag
　新鮮なカニ肉がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆果物_Flag
　新鮮な果物がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//◆野菜_Flag
　新鮮な野菜がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//◆熊肉_Flag
　新鮮な熊肉がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆二足羊肉_Flag
　新鮮な二足羊肉がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//◆蛆虫とダチョウ_Flag
　新鮮なウジ虫とダチョウ肉がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆ビヤーキー_Flag
　新鮮なビヤーキーがある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

*/
