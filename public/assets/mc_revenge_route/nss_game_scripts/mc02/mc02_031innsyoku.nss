//<continuation number="260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031innsyoku.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg080_飛行船船室Ab_01a=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

//嶋：デバッグフラグ
//	$飲食室一回目_Flag = true;
//	$香奈枝合流_Flag = true;
//	$艦長酒必要_Flag = true;
//	$酒_Flag = true;
//	$艦長泥酔_Flag = true;
//$隠し扉発見_Flag=true;
//$鍵_Flag=true;
//	$擂粉木_Flag=false;
//	$洋梨_Flag=false;
//	$料理酒_Flag=false;
//	$ガスボンベ_Flag=false;


//飲食室既来訪:if01
	if($飲食室一回目_Flag==true){
//香奈枝合流済み:if02
		if($香奈枝合流_Flag==true){
//艦長酒必要確認済み:if03
			if($艦長酒必要_Flag==true){
//艦長酒泥酔済み確認済み:if04
				if($艦長泥酔_Flag==true){
//鍵持っていない+扉確認済み:if05
					if($隠し扉発見_Flag==true&& !$鍵_Flag){
						call_scene @->mc02_031innsyoku_ikkk.nss;
						$innsyoku_i = false;//飲食室既来訪
						$innsyoku_ik = false;//香奈枝合流
						$innsyoku_ikk = false;//艦長お酒必要
						$innsyoku_ikkk = true;//艦長泥酔
						$innsyoku_ikkkt = false;//扉発見済み
						$innsyoku_No = false;//フラグなし
					}else{
						call_scene @->mc02_031innsyoku_ikkk.nss;
						$innsyoku_i = false;//飲食室既来訪
						$innsyoku_ik = false;//香奈枝合流
						$innsyoku_ikk = false;//艦長お酒必要
						$innsyoku_ikkk = true;//艦長泥酔
						$innsyoku_ikkkt = false;//扉発見済み
						$innsyoku_No = false;//フラグなし
					}//if05 end
				}else{
					call_scene @->mc02_031innsyoku_ikk.nss;
					$innsyoku_i = false;//飲食室既来訪
					$innsyoku_ik = false;//香奈枝合流
					$innsyoku_ikk = true;//艦長お酒必要
					$innsyoku_ikkk = false;//艦長泥酔
					$innsyoku_ikkkt = false;//扉発見済み
					$innsyoku_No = false;//フラグなし
				}//if04 end
			}else{
				call_scene @->mc02_031innsyoku_ik.nss;
				$innsyoku_i = false;//飲食室既来訪
				$innsyoku_ik = true;//香奈枝合流
				$innsyoku_ikk = false;//艦長お酒必要
				$innsyoku_ikkk = false;//艦長泥酔
				$innsyoku_ikkkt = false;//扉発見済み
				$innsyoku_No = false;//フラグなし
			}//if03 end
		}else{
			call_scene @->mc02_031innsyoku_i.nss;
			$innsyoku_i = true;//飲食室既来訪
			$innsyoku_ik = false;//香奈枝合流
			$innsyoku_ikk = false;//艦長お酒必要
			$innsyoku_ikkk = false;//艦長泥酔
			$innsyoku_ikkkt = false;//扉発見済み
			$innsyoku_No = false;//フラグなし
		}//if02 end
	}else{
		call_scene @->mc02_031innsyoku_No.nss;
		$innsyoku_i = false;//飲食室既来訪
		$innsyoku_ik = false;//香奈枝合流
		$innsyoku_ikk = false;//艦長お酒必要
		$innsyoku_ikkk = false;//艦長泥酔
		$innsyoku_ikkkt = false;//扉発見済み
		$innsyoku_No = true;//フラグなし
	}//if01 end



//次ポイント確認用
	if($innsyoku_No){
		$SelectGameName="@->"+$GameName+"_SELECT01";
		call_scene $SelectGameName;
		$飲食室一回目_Flag = true;
//嶋：フラグ初期化
		$innsyoku_i = false;//飲食室既来訪
		$innsyoku_ik = false;//香奈枝合流
		$innsyoku_ikk = false;//艦長お酒必要
		$innsyoku_ikkk = false;//艦長泥酔
		$innsyoku_ikkkt = false;//扉発見済み
		$innsyoku_No = false;//フラグなし
		$Next_GameName = $GameName;
		$GameName = "mc02_031time.nss";
	}else if($innsyoku_i){

//=============================================================//
..//嶋：持っているもの確認用　Start
//=============================================================//

//選択肢の数の決定
		$選択肢カウント=0;
//選択肢の名前
		$選択肢名前1 = "　";
		$選択肢名前2 = "　";
		$選択肢名前3 = "　";
		$選択肢名前4 = "　";
		$選択肢名前5 = "　";

//選択肢の名前
		$選択肢分岐1 = "　";
		$選択肢分岐2 = "　";
		$選択肢分岐3 = "　";
		$選択肢分岐4 = "　";
		$選択肢分岐5 = "　";


//回数カウント
		if($擂粉木_Flag==true){$選択肢カウント=$選択肢カウント+1;}
		if($洋梨_Flag==true){$選択肢カウント=$選択肢カウント+1;}
		if($料理酒_Flag==true){$選択肢カウント=$選択肢カウント+1;}
		if($ガスボンベ_Flag==true){$選択肢カウント=$選択肢カウント+1;}

//持ち物確認
		if($擂粉木_Flag==true){
			if($洋梨_Flag==true){
				if($料理酒_Flag==true){
//擂粉木,洋梨,料理酒,ガスボンベ
//擂粉木,洋梨,料理酒
					if($ガスボンベ_Flag==true){$選択肢名前1 = "擂粉木を渡す";$選択肢名前2 = "洋梨を渡す";$選択肢名前3 = "料理酒を渡す";$選択肢名前4 = "ガスボンベを渡す";$選択肢名前5 = "何も渡さない";}
					else{$選択肢名前1 = "擂粉木を渡す";$選択肢名前2 = "洋梨を渡す";$選択肢名前3 = "料理酒を渡す";$選択肢名前4 = "何も渡さない";}
				}else{
//擂粉木,洋梨,ガスボンベ
//擂粉木,洋梨
					if($ガスボンベ_Flag==true){$選択肢名前1 = "擂粉木を渡す";$選択肢名前2 = "洋梨を渡す";$選択肢名前3 = "ガスボンベを渡す";$選択肢名前4 = "何も渡さない";}
					else{$選択肢名前1 = "擂粉木を渡す";$選択肢名前2 = "洋梨を渡す";$選択肢名前3 = "何も渡さない";}
				}
			}else{
				if($料理酒_Flag==true){
//擂粉木,料理酒,ガスボンベ
//擂粉木,料理酒
					if($ガスボンベ_Flag==true){$選択肢名前1 = "擂粉木を渡す";$選択肢名前2 = "料理酒を渡す";$選択肢名前3 = "ガスボンベを渡す";$選択肢名前4 = "何も渡さない";}
					else{$選択肢名前1 = "擂粉木を渡す";$選択肢名前2 = "料理酒を渡す";$選択肢名前3 = "何も渡さない";}
				}else{
//擂粉木,ガスボンベ
//擂粉木
					if($ガスボンベ_Flag==true){$選択肢名前1 = "擂粉木を渡す";$選択肢名前2 = "ガスボンベを渡す";$選択肢名前3 = "何も渡さない";}
					else{$選択肢名前1 = "擂粉木を渡す";$選択肢名前2 = "何も渡さない";}
				}
			}
		}else if($洋梨_Flag==true){
			if($料理酒_Flag==true){
//洋梨,料理酒,ガスボンベ
//洋梨,料理酒
				if($ガスボンベ_Flag==true){$選択肢名前1 = "洋梨を渡す";$選択肢名前2 = "料理酒を渡す";$選択肢名前3 = "ガスボンベを渡す";$選択肢名前4 = "何も渡さない";}
				else{$選択肢名前1 = "洋梨を渡す";$選択肢名前2 = "料理酒を渡す";$選択肢名前3 = "何も渡さない";}
			}else{
//洋梨,ガスボンベ
//洋梨
				if($ガスボンベ_Flag==true){$選択肢名前1 = "洋梨を渡す";$選択肢名前2 = "ガスボンベを渡す";$選択肢名前3 = "何も渡さない";}
				else{$選択肢名前1 = "洋梨を渡す";$選択肢名前2 = "何も渡さない";}
			}
		}else if($料理酒_Flag==true){
//料理酒,ガスボンベ
//料理酒
			if($ガスボンベ_Flag==true){$選択肢名前1 = "料理酒を渡す";$選択肢名前2 = "ガスボンベを渡す";$選択肢名前3 = "何も渡さない";}
			else{$選択肢名前1 = "料理酒を渡す";$選択肢名前2 = "何も渡さない";}
		}else{
//ガスボンベ
			if($ガスボンベ_Flag==true){$選択肢名前1 = "ガスボンベを渡す";$選択肢名前2 = "何も渡さない";}
		}


//選択肢先の確定
	if($選択肢名前1=="擂粉木を渡す"){$選択肢分岐1="mc02_031innsyokua.nss";}
	else if($選択肢名前1=="洋梨を渡す"){$選択肢分岐1="mc02_031innsyokub.nss";}
	else if($選択肢名前1=="料理酒を渡す"){$選択肢分岐1="mc02_031innsyokuc.nss";}
	else if($選択肢名前1=="ガスボンベを渡す"){$選択肢分岐1="mc02_031innsyokud.nss";}
	else{}

	if($選択肢名前2=="擂粉木を渡す"){$選択肢分岐2="mc02_031innsyokua.nss";}
	else if($選択肢名前2=="洋梨を渡す"){$選択肢分岐2="mc02_031innsyokub.nss";}
	else if($選択肢名前2=="料理酒を渡す"){$選択肢分岐2="mc02_031innsyokuc.nss";}
	else if($選択肢名前2=="ガスボンベを渡す"){$選択肢分岐2="mc02_031innsyokud.nss";}
	else{$選択肢分岐2="mc02_031innsyokuz.nss";}

	if($選択肢名前3=="擂粉木を渡す"){$選択肢分岐3="mc02_031innsyokua.nss";}
	else if($選択肢名前3=="洋梨を渡す"){$選択肢分岐3="mc02_031innsyokub.nss";}
	else if($選択肢名前3=="料理酒を渡す"){$選択肢分岐3="mc02_031innsyokuc.nss";}
	else if($選択肢名前3=="ガスボンベを渡す"){$選択肢分岐3="mc02_031innsyokud.nss";}
	else{$選択肢分岐3="mc02_031innsyokuz.nss";}

	if($選択肢名前4=="擂粉木を渡す"){$選択肢分岐4="mc02_031innsyokua.nss";}
	else if($選択肢名前4=="洋梨を渡す"){$選択肢分岐4="mc02_031innsyokub.nss";}
	else if($選択肢名前4=="料理酒を渡す"){$選択肢分岐4="mc02_031innsyokuc.nss";}
	else if($選択肢名前4=="ガスボンベを渡す"){$選択肢分岐4="mc02_031innsyokud.nss";}
	else{$選択肢分岐4="mc02_031innsyokuz.nss";}

	if($選択肢名前5=="擂粉木を渡す"){$選択肢分岐5="mc02_031innsyokua.nss";}
	else if($選択肢名前5=="洋梨を渡す"){$選択肢分岐5="mc02_031innsyokub.nss";}
	else if($選択肢名前5=="料理酒を渡す"){$選択肢分岐5="mc02_031innsyokuc.nss";}
	else if($選択肢名前5=="ガスボンベを渡す"){$選択肢分岐5="mc02_031innsyokud.nss";}
	else{$選択肢分岐5="mc02_031innsyokuz.nss";}


//嶋：もしカウントがゼロだった場合は強制的に何も渡さない
		if($選択肢カウント==1){$SelectGameName="@->"+$GameName+"_SELECT02ex";call_scene $SelectGameName;}
		else if($選択肢カウント==2){$SelectGameName="@->"+$GameName+"_SELECT02ex";call_scene $SelectGameName;}
		else if($選択肢カウント==3){$SelectGameName="@->"+$GameName+"_SELECT02ex";call_scene $SelectGameName;}
		else if($選択肢カウント==4){$SelectGameName="@->"+$GameName+"_SELECT02ex";call_scene $SelectGameName;}
		else{$GameName = "mc02_031innsyokuz.nss";}
//嶋：フラグ初期化
		$innsyoku_i = false;//飲食室既来訪
		$innsyoku_ik = false;//香奈枝合流
		$innsyoku_ikk = false;//艦長お酒必要
		$innsyoku_ikkk = false;//艦長泥酔
		$innsyoku_ikkkt = false;//扉発見済み
		$innsyoku_No = false;//フラグなし
//=============================================================//
..//嶋：持っているもの確認用　End
//=============================================================//

	}else if($innsyoku_ik){
		$SelectGameName="@->"+$GameName+"_SELECT03";
		call_scene $SelectGameName;
		$艦長酒必要_Flag = true;
//嶋：フラグ初期化
		$innsyoku_i = false;//飲食室既来訪
		$innsyoku_ik = false;//香奈枝合流
		$innsyoku_ikk = false;//艦長お酒必要
		$innsyoku_ikkk = false;//艦長泥酔
		$innsyoku_ikkkt = false;//扉発見済み
		$innsyoku_No = false;//フラグなし
		$Next_GameName = $GameName;
		$GameName = "mc02_031time.nss";
	}else if($innsyoku_ikk){
		$SelectGameName="@->"+$GameName+"_SELECT04";
		call_scene $SelectGameName;
..//嶋：要調整
//嶋：フラグ初期化
		if($酒_Flag==true){$艦長泥酔_Flag=true;$酒_Flag=false;}
		$innsyoku_i = false;//飲食室既来訪
		$innsyoku_ik = false;//香奈枝合流
		$innsyoku_ikk = false;//艦長お酒必要
		$innsyoku_ikkk = false;//艦長泥酔
		$innsyoku_ikkkt = false;//扉発見済み
		$innsyoku_No = false;//フラグなし
		$Next_GameName = $GameName;
		$GameName = "mc02_031time.nss";
	}else if($innsyoku_ikkk){
		$SelectGameName="@->"+$GameName+"_SELECT05";
		call_scene $SelectGameName;
		if($隠し扉発見_Flag==true && $鍵_Flag==false){$鍵_Flag = true;}
//嶋：フラグ初期化
		$innsyoku_i = false;//飲食室既来訪
		$innsyoku_ik = false;//香奈枝合流
		$innsyoku_ikk = false;//艦長お酒必要
		$innsyoku_ikkk = false;//艦長泥酔
		$innsyoku_ikkkt = false;//扉発見済み
		$innsyoku_No = false;//フラグなし
		$Next_GameName = $GameName;
		$GameName = "mc02_031time.nss";
	}else if($innsyoku_ikkkt){
		$SelectGameName="@->"+$GameName+"_SELECT06";
		call_scene $SelectGameName;
//嶋：フラグ初期化
		$innsyoku_i = false;//飲食室既来訪
		$innsyoku_ik = false;//香奈枝合流
		$innsyoku_ikk = false;//艦長お酒必要
		$innsyoku_ikkk = false;//艦長泥酔
		$innsyoku_ikkkt = false;//扉発見済み
		$innsyoku_No = false;//フラグなし
		$Next_GameName = $GameName;
		$GameName = "mc02_031time.nss";
	}

	//◆フラグ分岐：デバッグのため選択肢にしてあります
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

}

.//mc02_031innsyoku.nss
scene mc02_031innsyoku.nss
{

..//ジャンプ指定
//前ファイル　"mc02_031rouka3.nss"
//前ファイル　"mc02_031daidokoroz.nss"
//●飲食室
//◆訪れる回数と所持アイテムフラグによって色々分岐

}

//――――――――――――――――――――――――――――――
.//◆※初回
.//mc02_031innsyoku_No.nss
scene mc02_031innsyoku_No.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ab_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se日常_建物_扉開く01", 1000);
	WaitKey(500);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　テーブルを囲んで、椅子が幾つか並べられている。
　食堂か、談話室といった趣だが……

　そんな事より、部屋の隅の男に注意を向けねばなら
なかった。
　着崩した軍服は連盟軍のもの――<k>ここが敵地である
からにはいない筈のない存在、敵兵と遭遇したのだ！

　即座に身構え、敵意の具象化に備える。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0010a00">
「――――」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0020a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　男は銃を抜きもしなければ、仲間を呼ぶ様子もない。
　そもそも、俺をまともに認識しているとも見えない。

　<RUBY text="ありてい">有体</RUBY>に言えば、酔っ払っていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆ボイス「エクスキューズミー？」
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0030a00">
「……失礼？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　意を決して声を掛けてみても、酔漢の様相はまるで
変わらなかった。
　安酒の瓶を呷り、があがあと何事かを喚いている。

　早口の上に<RUBY text="ろれつ">呂律</RUBY>が回っていないため、俺の英語能力
では半分も理解できない。
　罵詈雑言と、何かを持って来いという要求とが入り
乱れているようなのだが……？

　ひとまず、捨て置く以外にどうしようもなかった。
　何故キャノン中佐の極秘作戦にこんな人物が同行し
ているのか気には掛かったが、今は戦闘せずに済んだ
幸運のみを認めておくことにする。

　見渡すと、船首方向の壁に扉があった。
　そちらへ行くか、それとも通路へ戻るかだが。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラグ調整
//◆$飲食室一回目_Flag = true;

//◆選択：船首方向の扉へ／通路に戻る
//●扉→●台所
//●通路→●廊下３

..//ジャンプ指定
//●扉→●台所　"mc02_031daidokoro.nss"
//●通路→●廊下３　"mc02_031rouka3.nss"

}

//――――――――――――――――――――――――――――――
.//◆※二回目以降
//◆飲食室一回目_Flagがある場合
.//mc02_031innsyoku_i.nss
scene mc02_031innsyoku_i.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ab_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se日常_建物_扉開く01", 1000);
	WaitKey(500);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　相変わらず、酔った男が騒いでいる。
　何か訴えているらしいが、俺には<RUBY text="ちんぷんかんぷん">珍糞漢糞</RUBY>だ。

　試しに何かを渡してみるか？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆所持アイテムの選択肢のみ出現する
//◆擂粉木_Flag、洋梨_Flag、料理酒_Flag、ガスボンベ_Flagの対応した選択肢を表示

//◆選択：擂粉木を渡す／洋梨を渡す／料理酒を渡す／ガスボンベを渡す／何も渡さない

..//ジャンプ指定
//◆擂粉木を渡す　"mc02_031innsyokua.nss"
//◆洋梨を渡す　"mc02_031innsyokub.nss"
//◆料理酒を渡す　"mc02_031innsyokuc.nss"
//◆ガスボンベを渡す　"mc02_031innsyokud.nss"
//◆何も渡さない　"mc02_031innsyokuz.nss"


}


//――――――――――――――――――――――――――――――
.//mc02_031innsyoku_ik.nss
.//◆※香奈枝いる・初回
//◆香奈枝合流_Flagがある場合
scene mc02_031innsyoku_ik.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ab_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se日常_建物_扉開く01", 1000);
	WaitKey(500);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　相変わらず、酔った男が騒いでいる。
　何かを訴えているが、俺にはまるで意味が取れない。

　しかし――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031in0040a03">
「……はあ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0050a00">
「大尉殿、彼は何を？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031in0060a03">
「それが。
　……この方は、飛行艦の本来の<RUBY text="キャプテン">艦長</RUBY>なのだ
そうです」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　艦長？
　そんな人物がどうして、かくも重要な作戦中に<RUBY text="ブリッジ">艦橋</RUBY>
を離れてこんな場所で酔い潰れているのか……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031in0070a03">
「キャノン中佐が作戦のために船だけを接収
しようとしたのに抵抗して、強引に乗艦した
ものの、結局作戦には加えてもらえず。
　仕方なく、ここで管を巻いているようです」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0080a00">
「……は。成程」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031in0090a04">
「キャノン中佐も酷な真似をなさる。
　飛行艦の艦長が船を愛すること、海の同業
者にも劣りますまいに」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031in0100a03">
「ほんとね」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0110a00">
「中佐にしてみれば、機密保持の為の当然の
措置なのでしょうが。
　しかし……すると彼が何やら要求している
のは」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031in0120a03">
「お酒です。
　こんな水臭い<RUBY text="エール">麦酒</RUBY>もどきで酔えるか、本土
の<RUBY text="ジン">蒸留酒</RUBY>を持って来い……とのお言葉」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0130a00">
「……」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031in0140a04">
「そう申されましてもねぇ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　どうしようもない。
　こちらにそんな持ち合わせがある筈もなかった。

　彼がキャノン中佐とこの作戦に不満を抱いているの
なら協力者に引き込む目もありそうなのだが……この
様子では無理だろう。
　香奈枝嬢が英語で話し掛けても、聞く様子がない。

　移動しよう。
　船首方向の扉を開けるか、右側の扉から廊下へ戻る
かだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラグ調整
//◆$艦長酒必要_Flag = true;


//◆選択：船首方向の扉へ／廊下に戻る
//●船首→●台所
//●廊下→●廊下３


..//ジャンプ指定
//●船首→●台所　"mc02_031daidokoro.nss"
//●廊下→●廊下３　"mc02_031rouka3.nss"

}

.//mc02_031innsyoku_ikk.nss
//――――――――――――――――――――――――――――――
.//◆※香奈枝いる・二回目以降
//◆艦長酒必要_Flagがある場合
scene mc02_031innsyoku_ikk.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ab_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se日常_建物_扉開く01", 1000);
	WaitKey(500);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　飛行艦の本来の艦長が、独り鯨飲しつつ騒ぎ立てて
いる。
　酒が欲しいようだが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆酒有りの場合のみ以下シーン――――――――――――――――
//お酒フラグ
//$酒_Flag = true

..//嶋：if文発生
	if($酒_Flag==true){

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　先刻、士官室で入手したジンがある。
　持っていても仕方ないので、俺は彼に渡してみた。

　瓶を一目見て中身がわかったのだろう。彼は歓喜の
声を上げて飛びつくと、栓を抜いて一息に<RUBY text="あお">呷</RUBY>った。
　……度数の高いアルコールが<RUBY text="たちま">忽</RUBY>ち消えて無くなる。

{	CreateSE("SE01","se人体_動作_抱く02");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　酒が尽きると同時、彼は横転した。
　そのまま、いかにも心地良さそうな<RUBY text="いびき">鼾</RUBY>を立て始める。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0150a00">
「…………」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031in0160a03">
「一日一善？」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031in0170a04">
「そんなところでございましょうか。
　しかし我々、この状況でえらい余裕ですな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　本当に。
　
　……艦長は幸福な夢を手に入れたが、俺達の状況は
特に好転していないように思えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆船長泥酔フラグ？
//◆フラグ調整
//◆$艦長泥酔_Flag = true;

//◆ここまで――――――――――――――――――――――――――

}


//◆酒無しなら直通でここ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　移動しよう。
　船首方向の扉を開けるか、右側の扉から廊下へ戻る
かだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆選択：船首方向の扉へ／廊下に戻る
//●船首→●台所
//●廊下→●廊下３


..//ジャンプ指定
//●船首→●台所　"mc02_031daidokoro.nss"
//●廊下→●廊下３　"mc02_031rouka3.nss"

}


//――――――――――――――――――――――――――――――
.//◆※船長にジンを飲ませ済
//◆艦長泥酔_Flagがある場合
..//mc02_031innsyoku_ikkk.nss
scene mc02_031innsyoku_ikkk.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ab_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se日常_建物_扉開く01", 1000);
	WaitKey(500);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　完全に泥酔した艦長が気持ち良く眠っている。
　……彼は俺達に感謝しているかもしれないが、その
感謝を形にできる状態ではなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆隠し扉を発見済・鍵入手前の場合のみ以下シーン―――――
//◆隠し扉発見_Flagがあり、かつ鍵_Flagが無い場合


..//嶋：if文発生
if($隠し扉発見_Flag==true && $鍵_Flag==false){

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　――いや。待て。
　そう決め込むのは早計だ。

　彼はこの船の艦長。
　ならば、もしかすると……

{
	OnSE("se人体_動作_荷物あさる01", 1000);
}
　俺は彼の衣服を探ってみた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031in0180a03">
「……景明さま。
　もしかしてと思ってはいましたけれど……
本当にそっち系のご趣味でしたの？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031in0190a04">
「ハードコアでございますな。
　しかしお嬢さま、どうやらそれはついでの
事で、主の目的は別にお有りのようですよ」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031in0200a03">
「……あっ。なるほど」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　傍らの二人も理解したらしい。
　……いや、まだ微妙に危険な誤解を維持している気
もするが。それは考えないことにする。

　そうして、程なく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0210a00">
「……有りました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　見つけ出したものを掲げる。
　
　――――小さな鍵。

　大きさは、展望室で大鳥大尉が見つけた扉の鍵穴に
丁度合う。
　本当にこの鍵で正しいのかは試してみるまでわから
ないが……見込みは有りそうだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031in0220a03">
「<RUBY text="グッジョブ">良いお仕事</RUBY>♪」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031in0230a04">
「お手柄でございますな湊斗さま。
　ご褒美に、そのまま続けてどうぞ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0240a00">
「何をですか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆鍵入手
//◆フラグ調整
//◆$鍵_Flag = true;

//◆ここまで―――――――――――――――――――――――――

}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　移動しよう。
　船首方向の扉を開けるか、右側の扉から廊下へ戻る
かだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：船首方向の扉へ／廊下に戻る
//●船首→●台所
//●廊下→●廊下３

..//ジャンプ指定
//●船首→●台所　"mc02_031daidokoro.nss"
//●廊下→●廊下３　"mc02_031rouka3.nss"

}



//★選択肢シーン
.//SELECT01(No)
scene mc02_031innsyoku.nss_SELECT01
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_飛行船船室Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	mc02_SelectIcon(7);

//■選択肢
	SetChoice02("船首方向の扉へ","通路に戻る");
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
			mc02_SelectIcon_Delete();
//●扉→●台所　"mc02_031daidokoro.nss"
				$GameName = "mc02_031daidokoro.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//●通路→●廊下３　"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}


//★選択肢シーン
.//SELECT03(ik)
scene mc02_031innsyoku.nss_SELECT03
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_飛行船船室Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	mc02_SelectIcon(7);

//■選択肢
	SetChoice02("船首方向の扉へ","廊下に戻る");
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
			mc02_SelectIcon_Delete();
//●船首→●台所　"mc02_031daidokoro.nss"
				$GameName = "mc02_031daidokoro.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//●廊下→●廊下３　"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}

//★選択肢シーン
.//SELECT04(ikk)
scene mc02_031innsyoku.nss_SELECT04
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_飛行船船室Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	mc02_SelectIcon(7);

//■選択肢
	SetChoice02("船首方向の扉へ","廊下に戻る");
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
			mc02_SelectIcon_Delete();
//●船首→●台所　"mc02_031daidokoro.nss"
				$GameName = "mc02_031daidokoro.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//●廊下→●廊下３　"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}


.//SELECT05(ikkk)
//★選択肢シーン
scene mc02_031innsyoku.nss_SELECT05
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_飛行船船室Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	mc02_SelectIcon(7);

//■選択肢
	SetChoice02("船首方向の扉へ","廊下に戻る");
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
			mc02_SelectIcon_Delete();
//●船首→●台所　"mc02_031daidokoro.nss"
				$GameName = "mc02_031daidokoro.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//●廊下→●廊下３　"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}



//★選択肢シーン
.//SELECT06(ikkkt)
scene mc02_031innsyoku.nss_SELECT06
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_飛行船船室Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	mc02_SelectIcon(7);

//■選択肢
	SetChoice02("船首方向の扉へ","廊下に戻る");
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
			mc02_SelectIcon_Delete();
//●船首→●台所　"mc02_031daidokoro.nss"
				$GameName = "mc02_031daidokoro.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//●廊下→●廊下３　"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}


//★選択肢シーン
.//SELECT02ex(i)
scene mc02_031innsyoku.nss_SELECT02ex
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_飛行船船室Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

//	SetChoice02("船首方向の扉へ","廊下に戻る");
//選択肢分岐
//■選択肢
	if($選択肢カウント==1){SetChoice02($選択肢名前1,$選択肢名前2);}
	else if($選択肢カウント==2){SetChoice03($選択肢名前1,$選択肢名前2,$選択肢名前3);}
	else if($選択肢カウント==3){SetChoice04($選択肢名前1,$選択肢名前2,$選択肢名前3,$選択肢名前4);}
	else if($選択肢カウント==4){SetChoice05($選択肢名前1,$選択肢名前2,$選択肢名前3,$選択肢名前4,$選択肢名前5);}
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
		if($選択肢カウント==1){
			case @選択肢１{ChoiceA02();$GameName = $選択肢分岐1;}
			case @選択肢２{ChoiceB02();$GameName = $選択肢分岐2;}
		}else if($選択肢カウント==2){
			case @選択肢１{ChoiceA03();$GameName = $選択肢分岐1;}
			case @選択肢２{ChoiceB03();$GameName = $選択肢分岐2;}
			case @選択肢３{ChoiceC03();$GameName = $選択肢分岐3;}
		}else if($選択肢カウント==3){
			case @選択肢１{ChoiceA04();$GameName = $選択肢分岐1;}
			case @選択肢２{ChoiceB04();$GameName = $選択肢分岐2;}
			case @選択肢３{ChoiceC04();$GameName = $選択肢分岐3;}
			case @選択肢４{ChoiceD04();$GameName = $選択肢分岐4;}
		}else if($選択肢カウント==4){
			case @選択肢１{ChoiceA05();$GameName = $選択肢分岐1;}
			case @選択肢２{ChoiceB05();$GameName = $選択肢分岐2;}
			case @選択肢３{ChoiceC05();$GameName = $選択肢分岐3;}
			case @選択肢４{ChoiceD05();$GameName = $選択肢分岐4;}
			case @選択肢５{ChoiceE05();$GameName = $選択肢分岐5;}
		}
	}//Select_End

}


