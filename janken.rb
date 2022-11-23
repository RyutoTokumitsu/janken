puts "じゃんけん..."
def janken
  puts puts "0(グー).1(チョキ).2(パー).3(やめる)"

  hands = gets.to_i
  #相手の手は["0(グー)","1(チョキ)","2(パー)"]で考える
  enemy_hands = rand(3)
  if hands > 3
    puts "------------------"
    puts "もう一度選び直してね"
    puts "じゃんけん..."
    return janken
  elsif hands == 3
    exit
  elsif hands == ""
    puts "------------------"
    puts "もう一度選び直してね"
    puts "じゃんけん..."
    return janken
  end

  jankens = ["グー","チョキ","パー"]
  puts "ホイ"
  puts "------------------"
  puts "あなたは#{jankens[hands]}を出しました"
  puts "相手は#{jankens[enemy_hands]}を出しました"
  puts "------------------"

  win_lose = ""

  if hands == enemy_hands
    win_lose = "パターン1"
    puts "あいこで..."

  elsif (hands == 0 && enemy_hands == 1) || (hands == 1 && enemy_hands == 2) || (hands == 2 && enemy_hands == 0)
    win_lose = "パターン2"
    puts "勝ちました！"
    puts "------------------"

  else
    win_lose = "パターン3"
    puts "残念。負けました..."
    puts "------------------"
  end

  case win_lose
  when "パターン1"
    "あいこで..."
    return janken
  when "パターン2"
    puts "あっち向いてホイゲーム"
    puts "あっち向いて..."
    puts "0(上),1(下),2(左),3(右)"
    head = gets.to_i
    enemy_head = rand(4)

    choices = ["上","下","左","右"]

    puts "------------------"
    puts "あなたは#{choices[head]}を向きました"
    puts "相手は#{choices[enemy_head]}を向きました"
    puts "------------------"
    if head == enemy_head
      puts "あなたの勝利です！"
      exit
    else
      puts "じゃんけん..."
      return janken
    end

  when "パターン3"
    puts "あっち向いてホイゲーム"
    puts "あっち向いて..."
    puts "0(上),1(下),2(左),3(右)"
    head = gets.to_i
    enemy_head = rand(4)

    choices = ["上","下","左","右"]

    puts "------------------"
    puts "あなたは#{choices[head]}を向きました"
    puts "相手は#{choices[enemy_head]}を向きました"
    puts "------------------"
    if head == enemy_head
      puts "あなたは負けました..."
      exit
    else
      puts "じゃんけん..."
      return janken
    end
  end
end

puts janken

#下にあるようなメソッドをじゃんけんとあっち向いてホイに分けて作成したらもっと綺麗なコードになる
#メソッドを組み合わせてコーディングする方法を勉強する

# def attimuite
#   puts "あっち向いてホイゲーム"
#   puts "あっち向いて..."
#   puts "0(上),1(下),2(左),3(右)"
#   head = gets.to_i
#   enemy_head = rand(4)

#   choices = ["上","下","左","右"]

#   puts "------------------"
#   puts "あなたはchoices[#{head}]を向きました"
#   puts "相手はchoices[#{enemy_head}]を向きました"
#   puts "------------------"

#   if head == enemy_head
#     puts "あなたの勝利です！"
#   else
#     puts "janken"
#   end
# end

# def enemy_attimuite
#   puts "あっち向いてホイゲーム"
#   puts "あっち向いて..."
#   puts "0(上),1(下),2(左),3(右)"
#   head = gets.to_i
#   enemy_head = rand(4)

#   choices = ["上","下","左","右"]

#   puts "------------------"
#   puts "あなたはchoices[#{head}]を向きました"
#   puts "相手はchoices[#{enemy_head}]を向きました"
#   puts "------------------"
#   if head == enemy_head
#     puts "あなたは負けました..."
#   else
#     puts "janken"
#   end
# end
