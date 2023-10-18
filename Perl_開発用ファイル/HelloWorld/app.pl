#! /usr/bin/perl

# Hello World
print "Hello World!\n"

# スカラ
my $apple = 'apple';
my $apple_ref = \$apple;

# 配列
my @fruit_a = ('banana', 'strawberry', 'grape');
my $fruit_a_ref = \@fruit_a;

# ハッシュ
my %fruit_h = ("m" => "melon", "p" => "peach", "o" => "orange");
my $fruit_h_ref = \%fruit_h;

# if文
my $fruit = 'apple';
if ($fruit eq 'apple') {
    print "appleです\n"; 
} elsif ($fruit eq "middle") {
    print "appleではないです\n"; 
} else {
    print "もはやフルーツではありません\n"; 
}

# unless文
my $fruit = 'banana';
unless ($fruit eq 'apple') {
    print "appleではありません\n"; 
}

# 三項演算子
my $fruit = 'apple';
print $fruit eq 'apple' ? "アップルです\n" : "アップルではありません\n";

# While文
my $cnt = 0;
while ( $cnt < 10 ) {
    print "$cnt\n";
    $cnt++;
}

# until文
my $num = 1;
until ($num > 10) {
    print "$num\n";
    $num++;
}

# for文
for (my $i = 0; $i < 10; $i++) {
    print "$i\n";        
}

# foreach文
my @fruit = ('banana', 'strawberry', 'grape');
foreach my $name (@fruit) {
    print "$name\n";
}

# next文
my $cnt = 0;
while ($cnt <= 5) {
    $cnt++;

    if ($cnt == 2) {
        next;
    }

    print "$cnt¥n";

    #next演算子が実行された場合、この位置に進む
}

# last文
my $cnt = 0;
while ($cnt <= 5) {
    $cnt++;

    if ($cnt == 3) {
        last;
    }

    print "$cnt\n";
}
#last演算子が実行された場合、この位置に進む

# redo文
my $cnt = 0;
while ($cnt <= 5) {
    #redo演算子が実行された場合,この位置に進む
    $cnt++;

    if ($cnt == 6) {
        redo;
    }

    print "$cnt\n";
}

# サブルーチン
&hello();
sub hello {
    my $name = 'アラシダ';
    my $age = 26;

    print "僕の名前は$nameです\n"; # 僕の名前はアラシダです
    print "年齢は$age歳です\n"; # 年齢は26歳です
}

# ファイル新規書き込み
my $fh;
my $file_name = 'fruit.txt';
my $fruit = 'apple';
open $fh, "> $file_name";
print $fh $fruit;
close $fh;

# ファイル追加書き込み
my $fh;
my $file_name = 'fruit.txt';
my $fruit = 'banana';
open $fh, ">> $file_name";
print $fh $fruit,"\n";
close $fh;

# ファイル読みこみ
my $fh;
my $file_name = 'fruit.txt';
open $fh, "< $file_name";
while (my $line = <$fh>) {
    print $line;
}
close $fh;

# 正規表現
my $fruit = 'apple';
if ($fruit =~ /a/) {
    print "aが含まれています\n";
} else {
    print "aが含まれていません\n";
}

# 置換
my $word = '私はappleが好きです';
$word =~ s/apple/banana/;
print "$word\n"; # 私はbananaが好きです
my $text = "改行を削除します\n";
$text =~ s/\n//;
print $text; # 改行を削除します

# chomp
my $text = "行末の改行を削除します\n";
chomp($text);
print "$text\n"; # 行末の改行を削除します

# map
my @num1 = (1, 2, 3);
# $_ に１つ１つの要素が入ってくる
my @num2 = map {$_ * 2} @num1;
print "@num2\n"; # 2 4 6

# grep
my @fruit1 = ('apple', 'banana', 'melon');
my @fruit2 = grep {/a/} @fruit1;
print "@fruit2\n"; # apple banana

# split
my $word1 = "アップル,バナナ,メロン";
my @word2 = split(/,/, $word1);
print "@word2\n"; # アップル バナナ メロン

# join
my $word3 = join(',', @word2);
print "$word3\n"; # アップル,バナナ,メロン