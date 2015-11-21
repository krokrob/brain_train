# Big difference between ruby and matlab:
# ruby starts array indexation by 0 whereas matlab starts by 1
def make_seq(nback, lseq)
  ntarget = (lseq.to_f/3).floor
  crit2 = 0
  counter = 0
  while crit2 == 0
    crit1 = 0
    index = []
    while crit1 == 0
      temp = (rand * 12).ceil
      if index.include?(temp) == false
        index << temp
      end
      if index.size == ntarget
        crit1 = 1
      end
    end
    index4 = [index, index, index, index].flatten # index x 4 to long enough to match lseq
    index_perm = index4[0..lseq - 1].shuffle
    sumback = [0, 0, 0]
    # build fake vectors with nil in position 0
    index_perm.insert(0,nil)
    sumback.insert(0, nil)
    index_perm.each_with_index do |number, i|
      unless i == 0 # skip nil
        sumback.each_with_index do |sb, j|
          if j != 0 && i > j && number == index_perm[i-j]
            sumback[j] += 1
          end
        end
      end
    end
    if sumback[nback] == ntarget && sumback[(nback%3)+1] == (ntarget.to_f/3).round && sumback[((nback+1)%3)+1] == (ntarget.to_f/3).round
      crit2 = 1
    end
  end
  index_perm.delete_at(0)
  return index_perm
end
