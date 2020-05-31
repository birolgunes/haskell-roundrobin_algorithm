"# haskell-roundrobin_algorithm" 
main = do
  putStr("Baslangic islem sureleri\n")
  print(i_t)
  let i = head i_t  
  roundrobin i_t 0 i
 
i_t = [7,12,19]
elemanekle a b = b ++ [a]
elemansil a = tail a

roundrobin liste t i = do
  let a = (i-3)
  let guc = 3
  
  if length liste /= 0
    then do 
      putStr("Time:")
      print(t)
      
      if a <= 0
        then do
          let ls = elemansil liste
          print(ls)
          roundrobin ls (t+guc+a) (head ls)
          
      else do
        let ls = elemansil liste
        let le = elemanekle a ls
        print(le)
        roundrobin le (t+guc) (head le)
        
  else do
    putStr("Time:")
    print(t)
    putStrLn("Bitti")
    
