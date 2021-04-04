//<continuation number="270">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_002.nss_MAIN
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
	#bg028_横浜ＧＨＱ基地_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_ウィロー=true;

	$PreGameName = $GameName;

	$GameName = "mb03_003.nss";

}

scene mb03_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_001.nss"

//◆横浜
//◆ＧＨＱ
//◆テキストボックスは横書き用
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg028_横浜ＧＨＱ基地_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm21",0,1000,true);

	StR(1000, @0, @0,"cg/st/stウィロー_通常_制服.png");
	FadeStR(300,true);

	SetFwH("cg/fw/fwウィロー_通常.png");

	#voice_on_ウィロー=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020010b00">
「キャノン中佐。
　これはどういうことだと思うね？」


{	StL(1000, @0, @0,"cg/st/stキャノン_通常_制服.png");
	FadeStL(300,false);
	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020020b03">
「さて……ね。
　どこかの誰かが、歴史の時計を早回しした
がってるんでしょうか」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020030b00">
「後世の歴史家は事態の整理にさぞ戸惑う事
だろうな。
　しかし差し当たって、我々は自分の心配を
せねばならない」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020040b03">
「ええ。ウィロー少将。
　歴史の観客になる気はありませんからね」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020050b00">
「役者にならねばならないな。歴史を我々に
とって居心地のいいものへ変えるためには。
　苦痛の歴史は我々と、我々の祖先のものだ。
我々の子孫には引き継がせない」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020060b03">
「肯定です。全く肯定です。
　少将閣下」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020070b00">
「本国の連中の反応はどうだ？」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020080b03">
「<RUBY text="・・・・">どちらの</RUBY>本国です？」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020090b00">
「偉大なる女王陛下のお国の方だ。
　あの肥え太り過ぎた。糞食らえの」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020100b03">
「諸手を挙げて喜んでいる連中が大半のよう
ですね。これで奪りやすくなった、と。
　非戦派の中からも、幕府に統治能力が無い
なら強硬手段による占領もやむなしとの声が」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020110b00">
「……お軽い連中だ」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020120b03">
「本当に。
　何のために我々が長い時間を掛けて六波羅
を悪役に仕立て上げ、軍備の増強も容認して
きたのか、ろくろく理解していません」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020130b00">
「……とはいえ、だ。
　我々の当初のプランは、もはや瓦解したと
言わざるを得ない」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020140b03">
「残念ながら。
　六波羅幕府の頽勢はここへ来て決定的です」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwウィロー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020150b00">
「〝<RUBY text="ザ・ガジェット">平和実現装置</RUBY>〟も無駄になったか」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020160b03">
「あれも惜しいですね。
　ようやく使い物になるという所で」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020170b00">
「どう考える？　キャノン中佐」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020180b03">
「決断の時かと」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020190b00">
「……」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020200b03">
「現状で動くことがベストだとは、到底言え
ません……が、ね。
　このままワーストの結末を見守るよりは、
ベターの成果を獲るべきでしょう」


{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020210b00">
「うむ……」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020220b03">
「新たにプランを立て直すことも、決して不
可能ではないのでしょうが……。
　問題は所要時間」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020230b03">
「我らが<RUBY text="ゼネラル">大和進駐軍最高司令官</RUBY>は生粋無欠の
英国騎士にして、ちゃんと<RUBY text="・・・">見える</RUBY>眼も持って
いる御方です。困ったことにね。
　今の所は<RUBY text="バカンス">休暇</RUBY>気分なので救われてますが」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020240b03">
「それでもいつ、こちらの策動に気付くとも
知れません。
　時間を掛ければ掛けるだけ、我々の計画が
<RUBY text="ブリテン">大英連邦</RUBY>側に発覚する危険は高まります」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020250b00">
「なるほど。
　……結論は既に出ているというわけだ」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mb03/0020260b03">
「<RUBY text="アウァ・アメリカ">偉大なる故郷</RUBY>のために。閣下」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mb03/0020270b00">
「ああ。
　<RUBY text="アウァ・アメリカ">偉大なる故郷</RUBY>のために。クライブ」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_003.nss"