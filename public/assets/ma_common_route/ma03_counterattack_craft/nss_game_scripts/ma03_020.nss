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

scene ma03_020.nss_MAIN
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

//	$魔王編解放 = true;

	//▼ルートフラグ、選択肢、次のGameName

	if(#魔王編解放){
		$SelectGameName="@->"+$GameName+"_SELECT";
		call_scene $SelectGameName;
	}else{
		$PreGameName = $GameName;
		$GameName = "ma03_020b.nss";
	}

}

scene ma03_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_019.nss"

//◆通路
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　金物を積んだ小型の<RUBY text="リヤカー">手引車</RUBY>は、控えめに批評しても
騒音公害に違いない。
　進むたび、がらがらがちゃがちゃと音が鳴り、それ
が廊下に反響するとなれば耳障りもここに極まる。

　だがレース中のパドックには夜もなければ安息の時
もない。
　メカニックは徹夜で鎚を振るって騎体調整に最善を
尽くし、騎手は彼の鎚音を子守唄にして眠る。

　この指揮者不在の鉄琴演奏会とでも云うべき状況下
で、手引車の立てる騒音ごときは、所詮響きの一つに
過ぎなかった。
　誰にも迷惑を掛けずに済むのは幸いなことだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0200010a02">
「色々集まりましたね」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200020a00">
「上位のチームほど気前が良かったせいだな。
　彼らは資金力があるだけに資材も豊富だ」

{	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStR(300,false);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0200030a03">
「それでも、敵に塩を送るような余裕は何処
も持ち合わせていないでしょうけれど。
　ポリスチームが彼らから<RUBY text="・">敵</RUBY>と看做されてい
ないのが幸いでした」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0200040a04">
「ホットボルトをどう改造しても所詮ホット
ボルト。スーパーボルト仕様にするくらいが
関の山でございますからな。
　加えて<RUBY text="クラッシュ">事故</RUBY>済となれば尚のこと、警戒など」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　するはずもない。
　至極当然、反駁の語彙もないポリスチームに対する
軽視が、俺の目算の一方だけは成就させてくれた。

　重要度でいえば比較にもならない、肝心のもう一方
は何の収穫もあげられていないが。
　……いや、それはそれでひとつの収穫とみることは
できる。全く喜ばしくはないにせよ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0200050a01">
《…………》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200060a00">
（無言で、不満そうな思念だけ寄越すな。
　鬱陶しい）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0200070a01">
《不満なのよ》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200080a00">
（我ながら、悪くない案だと思うが。
　クラッシュした騎体の修理に必要、という
名目で各チームのガレージを訪ね余剰の部品
を買い集めて回る）

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200090a00">
（その際に、荷台に潜んだお前がガレージ内
を探査。サーキットに現れなかった予備騎の
識別を行う……。
　特に問題点はない。実際、調査は進んだ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　そして結局、寄生体は発見できていないのだが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0200100a01">
《そうね。素晴らしい作戦よ。私もそう思う。
　……そこまではね。ええ、そこまでは》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200110a00">
（この先に何の問題がある。
　集めた部品をお前の改装に有効活用すると
いうだけだ）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0200120a01">
《そこが不満なのっ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　村正の<RUBY text="メタルエコー">金打声</RUBY>が大脳を殴打する。
　……視界が揺れた。意識が眩む。耳を介さない金打
声の<RUBY text="・・">音程</RUBY>を外した一撃は、ほとんど攻撃も同然だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0200130a03">
「どうされましたの？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200140a00">
「いえ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200150a00">
（……一石二鳥だろう？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0200160a01">
《その前に、どうして私が紛い物の格好して
駆け比べなんかに出なくちゃいけないのよ！
　片方だけでも勘弁して欲しいっていうのに、
両方なの!?》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200170a00">
（他に方法がない）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	#av_ホットボルト=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　明日の決勝に俺が出るとすれば、それは決勝に参加
する競技用劔冑の中におそらくは潜むのであろう寄生
体に張り付き、孵化の瞬間を制するため。
　村正を装甲していなくては話にならない。

　だが、どこからどう見ようが真打劔冑である村正を
そのまま競技に出せるはずもなかった。警察が独自に
武者を抱えていると公言することになる。
　そこで、改装だ。

　幸い村正の色彩と造形はホットボルトに似ていなく
もない。それなりに改造を加えれば、ホットボルトの
アレンジモデルに見せかける事も可能と思える。
　であれば、この手に<RUBY text="し">如</RUBY>くはなし。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200180a00">
（――違うか？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0200190a01">
《………決勝とやらに参加する連中は、もう
私が全部見ているのでしょう？
　その中に寄生体はいなかった》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200200a00">
（だが予備騎まで調査して標的を発見できず
となれば、お前の眼が幻惑されているとでも
考えるほかに解釈の術がない）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0200210a01">
《何処かに隠されている劔冑があるのかも》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200220a00">
（可能性としては否定しない。
　だが銀星号が力を求める者を選んで〝卵〟
を与えていると言ったのはお前だ）

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200230a00">
（どんな理由があるにせよ、サーキット場で
何もせず隠れているような武者が選ばれると
は考え難い。
　参加選手の方が可能性はある）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0200240a01">
《……うぅ……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　あくまで不服げな呻き。
　理屈で納得しても感情がそこに同行しないらしい。
劔冑に感情を云々するのも笑止な話だが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200250a00">
（聞き分けろ）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0200260a01">
《……子供を躾けるみたいに言わないで。
　貴方を唆した誰かは<RUBY text="マガイモノ">競技用</RUBY>を用意するって
言ったんでしょう？　なら、それを借りれば
いいじゃないの……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　とうとうそんな事まで村正は言い出した。
　どうやら余程に、競技に使われる自分という想像が
愉快ならぬらしい。

　……必ずしも理解が及ばないわけではないが。
　言うなれば、刀を木枠で包んで野球のバットに使う
ようなものだからだ。

　しかし――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


}

//◆選択：頼み込む／黙らせる
//◆奈：090323変更。頼み込む選択肢は２ルートクリア後のみ


..//ジャンプ指定
//◆フラグ分岐、フラグ成立時のみ選択肢出現？
//◆頼み込む　"ma03_020a.nss"
//◆黙らせる　"ma03_020b.nss"



//★選択肢シーン
scene ma03_020.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	SoundPlay("@mbgm30",0,1000,true);
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,0,null,true);

	PrintGO("背景０", 30000);


	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 1000, true);

//■選択肢
	SetChoice02("頼み込む","黙らせる");
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
//頼み込む　"ma03_020a.nss"
				$GameName = "ma03_020a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//黙らせる　"ma03_020b.nss"
				$GameName = "ma03_020b.nss";
		}
	}
}

