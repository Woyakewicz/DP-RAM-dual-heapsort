# DP-RAM-single-heapsort(en-US)
Dual port RAM heapsort implementation in verilog usin a single RAM for a level.
This code was based on the article: Wojciech M Zabołotny "Dual port memory based Heapsort implementation for FPGA" , wich can be acessed in the link: 
https://www.spiedigitallibrary.org/conference-proceedings-of-spie/8008/1/Dual-port-memory-based-Heapsort-implementation-for-FPGA/10.1117/12.905281.full?SSO=1
It was chosen to use the single RAM for level in this implementation instead of the dual RAM per level as described in the article as it drops the number of RAMS by half, although
it nearly doubles the number of clock cylces.
The algoritm is also used to calculate the median of the samples
Soon i will make a dual RAM per level implementation, as well as both compilation reports to compare both implementations.
This code was compiled for the Cyclone IV: EP4CE115F29C7N Altera FPGA for the DE2-115 Development board.

# DP-RAM-single-heapsort(pt-BR)
Implementação de um algoritmo de heapsort em Verilog utilizando RAM's com duas portas por nível
O código foi baseado no artigo: Wojciech M Zabołotny "Dual port memory based Heapsort implementation for FPGA", o qual pode ser acessado no link:
https://www.spiedigitallibrary.org/conference-proceedings-of-spie/8008/1/Dual-port-memory-based-Heapsort-implementation-for-FPGA/10.1117/12.905281.full?SSO=1
Foi escolhido utilizar uma única RAM por nível nesta implementação ao invés de duas RAMs por nível como descrito no artigo por utilizar metade do número de RAMs,
apesar de dobrar o numéro de clocks.
O algoritmo também é usado para obter o valor mediano das amostras.
Em breve irei fazer uma implementação utilizando duas RAMs por nível, junto com os reports de compilação para comparar ambas as implementações.
Esse código foi compilado para o FPGA da Altera Cyclone IV: EP4CE115F29C7N para a palca de desenvolvimento DE2-115

# DP-RAM-single-heapsort(fr-FR)
Implémentation d'un algorithme heapsort en Verilog en utilisant de une mémoire vive avec deux porte par niveau.
Le code était basé sur l'article: Wojciech M Zabołotny "Dual port memory based Heapsort implementation for FPGA", acessible via le lien: 
https://www.spiedigitallibrary.org/conference-proceedings-of-spie/8008/1/Dual-port-memory-based-Heapsort-implementation-for-FPGA/10.1117/12.905281.full?SSO=1
Il a été choisi d'utiliser un seul mémoire vive par niveau por cette implémentation au lieu de deux mémoire vive par niveau par ce que il utilize la moitié
de memoire vive, mais double le nombre de cycles d'horloge.
l'algorithme est également utilisé pour obtenir la valeur médiane des échantillons.
Je vais bientôt faire une implémentation en utilisant deux memoire vive par niveau, avec les rapports de compilation de les deux implémentations.
Ce code a été compilé pour le FPGA de Altera  Cyclone IV: EP4CE115F29C7N pour le tableau de développement DE2-115.

