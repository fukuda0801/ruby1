require "csv"

puts "1(新規でメモを作成する) 2(既存のメモを編集する)3(終了する)"
memoType = gets.to_i

def memoMake(memoType)
    if memoType == 1
        puts "拡張子を除いたファイル名を入力してください"
        fileName = gets.chomp
    
        puts "メモしたい内容を入力して下さい。Ctrl+Dで保存します。"
        memoInput = readlines
    
        CSV.open("#{fileName}","w") do |text|
            text << memoInput
        end
    
    elsif memoType == 2
        puts "拡張子を除いたファイル名を入力してください"
        fileName = gets.chomp
        
        puts "メモを追記して下さい。Ctrl+Dで保存します。"
        memoInput = readlines
    
        CSV.open("#{fileName}","a") do |text|
            text << memoInput
        end

    elsif memoType == 3
        puts "終了します"
        
    else 
        puts "1、2、3のいずれかを選択してください"
    end
    
end

memoMake(memoType)
