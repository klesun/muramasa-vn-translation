//<continuation number="680">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_023.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md01_023.nss","Zansyu_md01_023",true);
	Conquest("nss/md01_023.nss","ZansyuSet_md01_023",true);
	

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
	#bg026_普陀楽山塞a_01=true;
	#bg045_普陀楽城公方の間_01=true;
	#ev214_足利護氏の行列=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_024.nss";

}

scene md01_023.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_022.nss"

//◆時間経過。参拝当日
//◆普陀楽城
//◆適当な一室
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg026_普陀楽山塞a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	OnBG(100,"bg045_普陀楽城公方の間_01.jpg");
	FadeBG(3000,true);
	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230010a05">
「……然らば、舞殿宮殿下。
　これより太刀奉納の儀のため八幡宮へ赴き
ますゆえ」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230020a05">
「普陀楽の留守と奉幣使九条殿の饗応、何卒
宜しくお頼み申します」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230030a10">
「あぁ、うん。
　そっちも宜しゅうにな、<RUBY text="りくふ">六府</RUBY>」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230040a05">
「はっ。
　国家百年の繁栄を祈願して参りましょう」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230050a10">
「そらええことやなァ」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230060a05">
「憚りながらこの六府、神州大和の大黒柱を
自ら任じてござれば……
　国家のためのいかなる務めであろうと怠る
つもりは毛頭ございませぬ」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230070a10">
「……あぁ、ようわかってる。
　六府の赤心忠義は、ようくわかってますえ」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230080a05">
「畏れ入ります」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230090a05">
「されば早速、これより宮殿下の御前を拝借
して、我が務めの一つを果たしましょうぞ。
　楽しからぬ仕儀なれど、是非もなし」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230100a10">
「……なんやて？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230110a05">
「雷蝶」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md01/0230120a08">
「はい、お父様」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ばたんごろごろ。人間を一人投げ込んだ。
	CreateSE("SE01","se戦闘_攻撃_人投げ込む");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreatePlainEX("絵演震", 5000);
	Fade("絵演震", 0, 500, null, true);
	Shake("絵演震", 1000, 0, 4, 0, 0, 1000, Dxl2, false);

	SetNwC("cg/fw/nw縛られた男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／側近金子】
<voice name="ｅｔｃ／側近金子" class="その他男声" src="voice/md01/0230130e148">
「み……宮殿下……」

{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230140a10">
「金子!?
　おまさんがどうしてここに……」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230150a10">
「これはどういうことや、六府！」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230160a05">
「……左様……。
　宮殿下は何もご存知ありますまい」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230170a05">
「この者、宮殿下のお側近くに仕える用人で
ありながら、逆賊岡部の残党どもと結び……
　あろうことか、宮殿下を謀反の企みに引き
入れようとまで図っていた不逞の輩！」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230180a10">
「――――」

{	NwC("cg/fw/nw縛られた男.png");}
//【ｅｔｃ／側近金子】
<voice name="ｅｔｃ／側近金子" class="その他男声" src="voice/md01/0230190e148">
「……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230200a05">
「宮殿下には晴天の霹靂でございましょう。
　しかし、これは既に物証もあがり、事実を
疑う余地は無し――」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230210a05">
「ご心中、お察し申し上げます」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230220a10">
「……」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md01/0230230a08">
「あらぁ？
　舞殿宮殿下、あまり驚いておられませんの
ねぇ」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md01/0230240a08">
「もしかして、とっくにご存知でいらっしゃ
った……とか？」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230250a10">
「い、いや……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230260a05">
「戯けたことを申すな、雷蝶。
　舞殿宮殿下ともあろう御方が、逆賊をそれ
と承知で側へ置いておかれる筈がない」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230270a05">
「……左様でございますな？
　宮殿下」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230280a10">
「…………」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md01/0230290a08">
「ウフ、フフフッ……」

{	NwC("cg/fw/nw縛られた男.png");}
//【ｅｔｃ／側近金子】
<voice name="ｅｔｃ／側近金子" class="その他男声" src="voice/md01/0230300e148">
「宮殿下は無関係だ！　何もご存知ない！
　私は宮殿下に倒幕のご意思がお有りか否か
探っていたが、何の成果もなく、このような
始末となった……！」

//【ｅｔｃ／側近金子】
<voice name="ｅｔｃ／側近金子" class="その他男声" src="voice/md01/0230310e148">
「無念だが、舞殿宮殿下は風聞通りの昼行灯、
潔白であられる！
　さっさと私の首を――」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md01/0230320a08">
「お黙りなさいな」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆ぼく。
	CreateSE("SE01","se戦闘_攻撃_殴る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("絵演震", 1000, 4, 0, 0, 0, 1000, Dxl2, false);

	StL(1000, @0, @0,"cg/st/st雷蝶_通常_制服.png");

	SetNwC("cg/fw/nw縛られた男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／側近金子】
<voice name="ｅｔｃ／側近金子" class="その他男声" src="voice/md01/0230330e148">
「ぐぁっっ」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230340a10">
「金子！」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230350a05">
「宮殿下。如何に」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230360a05">
「もしも、宮殿下がこの者の本性をご存知で
あられたのなら……
　かような者をどうして側へ留め置かれたの
か、仔細をお尋ねせぬわけには参りませぬ」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230370a05">
「この護氏には大和を守る責務がありまする
ゆえ」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230380a10">
「……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230390a05">
「何もご存じなかったのなら……話は簡単に
済みましょうな。
　して、如何に」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230400a10">
「……」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230410a10">
「知らんえ」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230420a05">
「……」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md01/0230430a08">
「……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230440a10">
「なんも知らんかったわ、わし。
　金子がそんな悪党やったなんて……」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230450a10">
「人を巻き込まんといてくれんかなぁ。
　心臓に悪いったらないわ」

{//◆小声で
	NwC("cg/fw/nw縛られた男.png");}
//【ｅｔｃ／側近金子】
<voice name="ｅｔｃ／側近金子" class="その他男声" src="voice/md01/0230460e148">
「……フフ……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230470a05">
「……では、宮殿下。
　この者の処分は当方に一任して頂いて構い
ませぬな」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230480a10">
「あぁ、……かまへん。
　どうとでもしてや」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230490a05">
「承りました。
　雷蝶、連れてゆけ」

{	Delete("絵演震");
	FadeStL(300,false);
	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md01/0230500a08">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//あきゅん「演出：プロセス用の定義まとめ」
	CreateSE("PSE01","se人体_動作_人引きずる_L");
	CreateSE("PSE01a","se戦闘_攻撃_刀刺さる05");
	CreateVOICE("ｅｔｃ／側近金子","md01/0230510e148");
	CreateSE("PSE01b","se人体_衝撃_転倒02");

	Zansyu_md01_023();
	DeleteStA(300,true);

//◆人を引き摺ってく音
//◆斬った音。ずばー。

/*
//◆ボイスのみ。テキスト出さない
{	NwC("cg/fw/nw縛られた男.png");}
//【ｅｔｃ／側近金子】
<voice name="ｅｔｃ／側近金子" class="その他男声" src="voice/md01/0230510e148">
「ガハァッッ!!」
*/

//◆倒れる音。ごろん。

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230520a05">
「……逆賊の末路は常にあのようなもの。
　世の正義が守られてあるは喜ばしきことに
ございます」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230530a10">
「……そやな」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230540a05">
「岡部の死に損ねも近々一網打尽に捕らまえ、
あやつめの後を追わせましょう。
　どうか安んじてお待ちあれ」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230550a10">
「……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230560a05">
「この六府、宮殿下が愚劣なる大逆の企てに
関わりなしと知り、心より安堵致しました。
　宮殿下は物の道理を良くわきまえた御方、
元より疑ってなどおりませなんだが――」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230570a05">
「どうか今後とも、御身を正しく保たれます
よう」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230580a10">
「わかってるよ……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230590a05">
「お陰をもちまして、心置きなく奉刀の儀を
執り行えまする。
　では……これにて」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230600a10">
「……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230610a05">
「宮殿下」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230620a10">
「何やね」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230630a05">
「沙羅双樹の花の色は、盛者必衰の理を表す。
　驕り高ぶる者の世も、春の夜の夢に等しい」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230640a05">
「――とでも念じて、気長に待たれるが宜し
かろうと存ずる。
　六波羅は狭量にあらず、頭の中で夢を楽し
まれている分には咎め立ても致しませぬゆえ」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230650a10">
「…………」

{	FwC("cg/fw/fw護氏_大笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230660a05">
「クククク……
　カハハハハハハハハハハハッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆護氏去る
	DeleteStA(300,true);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230670a10">
「……」

//◆悔しさを噛み殺す風
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230680a10">
「……ッ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＧ有れば。市中をゆく護氏の行列
//あきゅん「演出：ここのＥＶの使い方がよくわからない」
	ClearWaitAll(2000, 1000);

	Delete("@プロセス*");

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev214_足利護氏の行列.jpg");
	CreateSE("SE01","se背景_ガヤ_大名行列_L");
	Delete("上背景");
	MusicStart("SE01",1000,1000,0,1000,null,true);
	FadeDelete("絵暗転", 1000, true);

	WaitKey(3000);

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_024.nss"


.//プロセス用======================================================
..//斬首の後流し
function Zansyu_md01_023()
{
	CreateProcess("プロセス斬首", 5000, 0, 0, "ZansyuSet_md01_023");
	Request("プロセス斬首", Start);
	Request("プロセス斬首", Disused);
}

function ZansyuSet_md01_023()
{
	MusicStart("@PSE01",0,1000,0,1000,null,true);

	Wait(6000);

	SetVolume("@PSE01", 100, 0, null);
	MusicStart("@PSE01a",0,750,0,1000,null,false);

	Wait(300);

	MusicStart("@ｅｔｃ／側近金子",0,750,0,1000,null,false);

	Wait(1000);

	MusicStart("@PSE01b",0,750,0,1000,null,false);

}