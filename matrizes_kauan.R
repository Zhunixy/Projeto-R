#construindo matrizes usando a função matrix
help(matrix) #Acessando a documentação
?matrix #mesma coisa q o help

matriz_l<-matrix(1:10) #1:10 é o intervalo numerico)
matriz_l                 
                 
#estabelecendo linhas e colunas, temos os números de 0 a 9 na matriz

#nrow é as linhas
#ncol é as colunas
#byrow é oq fala pro R como montar a matrix se for FALSE ele vai acoplar por coluna e se for TRUE vai acoplar por linha
#data=c é o vetor de data incluindo listas
matriz_2<-matrix(data=c(0,1,2,3,4,5,6,7,8,9), nrow = 5, ncol=2, byrow = FALSE)
matriz_2<-matrix(data=c(0,1,2,3,4,5,6,7,8,9), nrow = 5, ncol=2, byrow = TRUE)
matriz_2

#Construindo matrizes a partir de vetores
vetor_1<-c(1,3,5,7)
vetor_2<-c(9,11,13,15)

#rbind seria vetores como linhas
matriz_4<-rbind(vetor_1,vetor_2)
matriz_4

#cbind seria vetores como colunas
matriz_5<-cbind(vetor_1,vetor_2)
matriz_5

#transformando vetor em matriz
matriz_6<-as.matrix(vetor_1)
matriz_6

#alterar um elemento de uma matriz
matriz_6[2,1]<-10
matriz_6

#alterar elementos de uma matriz sob uma condição
matriz_6[matriz_6>5]<-0
matriz_6

#OPERAÇÕES COM MATRIZES

#soma (+)
matriz_2
matriz_2 + matriz_2

#subtração (-)
matriz_2 - matriz_2

#multiplicação de matriz por constante/escalar (*)
5*matriz_2

#matriz transposta
matriz_2
t(matriz_2)

#determinante
matriz_7<-matrix(data=c(0,1,2,3), nrow = 2, ncol=2, byrow = FALSE)
matriz_7
det(matriz_7)

#dimensão de uma matriz
dim(matriz_7)

#numero de colunas
ncol(matriz_7)

#número de linhas
nrow(matriz_7)

#elementos da diagonal principal
diag(matriz_2)

#manipulando a diagonal principal
matriz_7
diag(matriz_7)<-0
matriz_7

#unindo matrizes com rbind e cbind
matriz_3<-matrix(data=c(10,3,2,3,8,5,6,7,8,0), nrow = 5, ncol=2, byrow = TRUE)
matriz_3

#unindo com rbind(por linhas)
rbind(matriz_2,matriz_3)

#unindo com cbind(por colunas)
cbind(matriz_2,matriz_3)
