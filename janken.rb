puts "ジャンケン"

def janke
  
  puts "０（グー）１（チョキ）２（パー）３（戦わない）"
  
  janken = ["グー", "チョキ", "パー",]
  player_hand = gets.to_i
  emeny_hand = rand(0..2)
  
  if  player_hand<3 then
    puts "ほい"
    puts"-----------"
    puts "あなたは#{janken[player_hand]}を出しました"
    puts "相手は#{janken[emeny_hand]}を出しました"
    puts "-----------"
    if player_hand == 0 && emeny_hand == 1 ||  player_hand == 1 && emeny_hand == 2 ||  player_hand == 2 && emeny_hand == 0
       puts "あなたの勝ちです"
       puts win
       puts "next"
    elsif  player_hand == emeny_hand 
      puts "あいこで"
      return true
    else
      puts "あなたの負けです"
      puts lose
      puts "next"
    end
    return true
  else
    puts "0か1か2を入れてください"
  end
end

def win
  puts "あっちむいて"
  puts "０（上）１（右）２（下）３（左）"
  
  
  direction = ["上", "右", "下", "左",]
  player_direction = gets.to_i
  emeny_direction = rand(0..3)
  
  puts "ほい"
  puts "-----------"
  puts "あなたは#{direction[player_direction]}を出しました"
  puts "相手は#{direction[emeny_direction]}を出しました"
  puts "-----------"
  if  player_direction == emeny_direction
     puts "あなたの勝ちです"
  else
    puts "あいこ"
  end
end

def lose
  puts "あっちむいて"
  puts "０（上）１（右）２（下）３（左）"
  
  
  direction = ["上", "右", "下", "左",]
  player_direction = gets.to_i
  emeny_direction = rand(0..3)
  
  puts "ほい"
  puts "-----------"
  puts "あなたは#{direction[player_direction]}を出しました"
  puts "相手は#{direction[emeny_direction]}を出しました"
  puts "-----------"
  
  if  player_direction == emeny_direction
     puts "あなたの負けです"
  else
    puts "あいこ"
  end
end

next_game = true

while next_game do
  next_game = janke
end