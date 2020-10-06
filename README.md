
# DP-RAM-dual-heapsort(en-US)
Dual port RAM heapsort implementation in verilog using two dual-por RAM for a level.
This code was based on the article: Wojciech M Zabołotny "Dual port memory based Heapsort implementation for FPGA" , wich can be acessed in the link: 
https://www.spiedigitallibrary.org/conference-proceedings-of-spie/8008/1/Dual-port-memory-based-Heapsort-implementation-for-FPGA/10.1117/12.905281.full?SSO=1
Diferently from Wojciech M Zabołotny's implementation, it was used 4 clock cyles for sample, wich means 2 clock cycles for step so the RAM memory can 
work prooerly. The algoritm is also used to calculate the median of the samples.
This code was compiled for the Cyclone IV: EP4CE115F29C7N Altera FPGA for the DE2-115 Development board.
The max frequency for the Slow 1200mV 85C Model of the EP4CE115F29C7N FPGA was 75.87MHz.

# DP-RAM-dual-heapsort(pt-BR)
Implementação de um algoritmo de heapsort em Verilog utilizando duas RAM's com duas portas por nível
O código foi baseado no artigo: Wojciech M Zabołotny "Dual port memory based Heapsort implementation for FPGA", o qual pode ser acessado no link:
https://www.spiedigitallibrary.org/conference-proceedings-of-spie/8008/1/Dual-port-memory-based-Heapsort-implementation-for-FPGA/10.1117/12.905281.full?SSO=1
Diferentemente da implementação de Wojciech M Zabołotny é utilizado 4 ciclos de clock por amostra, ou seja 2 ciclos de clock por step para o funcionamento
ideal das memórias. O algoritmo também é usado para obter o valor mediano das amostras.
Esse código foi compilado para o FPGA da Altera Cyclone IV: EP4CE115F29C7N para a palca de desenvolvimento DE2-115.
A frequência máxima para o modelo Slow 1200mV 85C do FPGA EP4CE115F29C7N foi 75.87MHz.

# DP-RAM-dual-heapsort(fr-FR)
Implémentation d'un algorithme heapsort en Verilog en utilisant de deux mémoire vives avec deux porte par niveau.
Le code était basé sur l'article: Wojciech M Zabołotny "Dual port memory based Heapsort implementation for FPGA", acessible via le lien: 
https://www.spiedigitallibrary.org/conference-proceedings-of-spie/8008/1/Dual-port-memory-based-Heapsort-implementation-for-FPGA/10.1117/12.905281.full?SSO=1
Il a été choisi d'utiliser un seul mémoire vive par niveau por cette implémentation au lieu de deux mémoire vive par niveau par ce que il utilize la moitié
de memoire vive, mais double le nombre de cycles d'horloge.
Contrairement à l'implémentation de Wojciech M Zabołotny, 4 cycles d'horloge par échantillon sont utilisés, soit 2 cycles d'horloge par pas pour l'opération
idéal des mémoire vives. L'algorithme est également utilisé pour obtenir la valeur médiane des échantillons.
Ce code a été compilé pour le FPGA de Altera  Cyclone IV: EP4CE115F29C7N pour le tableau de développement DE2-115.
La fréquence maximale pour le modèle Slow 1200mV 85C de EP4CE115F29C7N était 75.87MHz.

