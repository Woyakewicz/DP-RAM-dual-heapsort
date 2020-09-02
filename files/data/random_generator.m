% criador de amostras randomicas para teste
LEVEL = 10
lenght = 2^(LEVEL + 1)
r = randperm(2048)

write_file(r, 32, 'rand_lvl_10.hex');