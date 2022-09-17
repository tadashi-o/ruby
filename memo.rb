require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます
 
puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。

if memo_type == 1
    puts "拡張子を除いたファイル名を入力してください。"
    file_name = gets.chomp
    puts "メモ内容を記載して下さい。"
    puts "記載が終わったらCtrl＋Dで押して下さい。"
    input_memo = STDIN.read #$stdin.gets
    memo = input_memo
    CSV.open("#{file_name}.csv" , "w") do |csv|
    csv.puts ["#{memo}"]
end 
elsif memo_type == 2
    puts "編集したいファイル名を入力してください。"
    file_name = gets.chomp
    puts "編集内容を記載して下さい。"
    puts "記載が終わったらCtrl＋Dで押して下さい。"
    input_memo = STDIN.read #$stdin.gets
    memo = input_memo
    CSV.open("#{file_name}.csv", "a") do |csv|
    csv.puts ["#{memo}"]
end
else
    puts "1もしくは２の数字を入力して下さい。"
end
