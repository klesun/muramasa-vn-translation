//<continuation number="480">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_030.nss_MAIN
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
	#bg069_普陀楽城内広間_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

//	#飛行船探索終了 = true;

	if(#飛行船探索終了){
			$SelectGameName="@->"+$GameName+"_SELECT";
			call_scene $SelectGameName;
	}else{
		$GameName = "mc02_031start.nss";
	}


}

scene mc02_030.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_029.nss"


//◆広間？
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm12",0,1000,true);
	CreateColorSP("黒幕１", 15000, "BLACK");
	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg069_普陀楽城内広間_01a.jpg");

	Delete("上背景");
	DrawDelete("黒幕１", 300, 1000, "slide_03_00_0", true);

	StR(1000, @0, @0, "cg/st/st雷蝶_通常_制服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw雷蝶_焦り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300010a08">
「童心様！
　獅子吼はいったい何をしているのです!?」


{	StL(1000, @0, @0, "cg/st/st童心_通常_私服b.png");
	FadeStL(300, false);
	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300020a09">
「さぁて。それがしにもわかり申さぬ。
　質問の使者を送っても、梨の礫……」


//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300030a09">
「我らが出向かねば、埒が明かぬやも」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300040a08">
「勝手に軍を動かして……
　まさか――謀叛を!?」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300050a09">
「それにしても妙でござろう。
　不穏の挙動を露骨に晒しながら、さて、何
を置いても制すべき我らに矛先の伸びる気配
は依然なし」


//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300060a09">
「この不手際は合点がゆかぬ。
　以前、大鳥家において獅子吼殿が成し遂げ
た謀叛は電光石火、まことに鮮やかな始末で
あったと聞き及んでござるぞ」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300070a08">
「……なら……
　あの戯け者、どういうつもりで」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300080a09">
「さぁて……」


{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300090a08">
「まったく、馬鹿は茶々丸だけで充分だって
のに！
　そういえばあいつも何やってんのよ！」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300100a09">
「今日はお姿を見ませぬな。
　雷蝶殿は……？」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300110a08">
「見ておりません。
　こんなややこしい状況の時に、どこで油を
売ってるんだか」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300120a09">
「……ふぅむ」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300130a08">
「誰か！」


{	OnSE("se日常_建物_スライド開く02", 1000);
	NwC("cg/fw/nw近習.png");}
//【ｅｔｃ／近習】
<voice name="ｅｔｃ／近習" class="その他男声" src="voice/mc02/0300140e054">
「はッ！」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300150a08">
「四郎の――邦氏殿下の安否を確かめに行か
せた連中はまだ戻らないの!?
　もう随分経つじゃない！」


{	NwC("cg/fw/nw近習.png");}
//【ｅｔｃ／近習】
<voice name="ｅｔｃ／近習" class="その他男声" src="voice/mc02/0300160e054">
「はっ、は……いまだ……」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300170a08">
「おまえも行って来なさいっ！」


{	NwC("cg/fw/nw近習.png");}
//【ｅｔｃ／近習】
<voice name="ｅｔｃ／近習" class="その他男声" src="voice/mc02/0300180e054">
「ははッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆走り去る


	CreateSE("ハシッテイキマス", "se人体_足音_走る07");
	MusicStart("ハシッテイキマス",0,1000,0,1000,null,true);
	WaitKey(1500);
	SetVolume("ハシッテイキマス", 1500, 0, Axl3);


	SetFwC("cg/fw/fw雷蝶_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300190a08">
「ああもう、どいつもこいつも……！」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300200a09">
「…………」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300210a09">
「……古傷が……痛んできよったなァ……」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300220a08">
「？
　童心様、なにか？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300230a09">
「雷蝶殿。
　我らの手元に残っている兵に、戦闘配置を
命ずるべきと存ずる」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300240a08">
「えっ？
　で……でも。別に敵が攻め入ってきている
わけでは」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300250a09">
「攻められてからでは遅うござる。
　……遅うござるぞ、雷蝶殿」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300260a08">
「…………」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300270a09">
「直ちに武者どもを空へ上げ、防空陣を張ら
せるべし。
　命令は――不審な航空騎あらばこれを退去
せしむ事」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300280a09">
「退去の勧告に従わずば、これを撃墜すべき
事。たとえそれが……
　幕軍であろうと、進駐軍であろうと」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300290a08">
「そ、それは――あまりな暴挙！」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300300a09">
「暴挙でござる。
　暴挙には暴挙をもってしか抗えぬ」

//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300310a09">
「戸を蹴破って押し込んできた強盗に、説法
をくれてやって何となろうや？
　白刃の一閃にて切り伏せてから、骸に念仏
を聴かせてやるべきでござろうよ」

//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300320a09">
「其奴が本当に強盗であったならそれで良し。
　無実であったとしても構いはせぬ。強盗で
あったことにしてしまえば良い――」

//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300330a09">
「法理を執るは常に力有る者ゆえ。
　<RUBY text="・・・">勝てば</RUBY>どうとでもなりましょうぞ！」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300340a08">
「…………。
　……童心様……」


{	FwC("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300350a08">
「もう、ここは<RUBY text="いくさば">戦場</RUBY>と……
　そうお考えなのですね？」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300360a09">
「何者が仕掛けた如何なる戦なのかは、まだ
わかり申さぬが」


{	FwC("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300370a08">
「承知致しました。
　ならば麿も今より戦と心得ましょう」


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300380a08">
「侍大将を呼び集めます！」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300390a09">
「お急ぎ下され」


{	FwC("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300400a08">
「は――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵、駆け込んで来る
	CreateSE("ハシッテキマス", "se人体_足音_鎧_複数駆け寄る01");
	MusicStart("ハシッテキマス",0,1000,0,1150,null,true);
	WaitKey(3000);
	SetVolume("ハシッテキマス", 0, 0, Axl3);

	OnSE("se日常_建物_スライド開く02", 1000);

	SetNwC("cg/fw/nw竜騎兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／急報の武者】
<voice name="ｅｔｃ／急報の武者" class="その他男声" src="voice/mc02/0300410e048">
「も、もっ――申し上げます!!」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300420a09">
「何事！」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／急報の武者】
<voice name="ｅｔｃ／急報の武者" class="その他男声" src="voice/mc02/0300430e048">
「あ――あ……ッ」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300440a08">
「どうしたの!?
　早く報告なさい！」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／急報の武者】
<voice name="ｅｔｃ／急報の武者" class="その他男声" src="voice/mc02/0300450e048">
「……ぎっ……
　――――ぎ――――」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／急報の武者】
<voice name="ｅｔｃ／急報の武者" class="その他男声" src="voice/mc02/0300460e048">
「銀星号がッッ!!
　こ――この御城に!!　突如ッ!!」


{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300470a09">
「――――――」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300480a08">
「な……
　何ですって……!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc02_031start.nss"

//スキップ用
scene mc02_030.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	CreateColorSP("黒", 100, "BLACK");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("飛行艦探索をスキップする","飛行艦探索をスキップしない");
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
//五階層方陣をスキップする
			$GameName = "mc02_031end.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//五階層方陣をスキップしない
			$GameName = "mc02_031start.nss";
		}
	}
}


