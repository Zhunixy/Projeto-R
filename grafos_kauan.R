#Leitura do arquivo .txt

dados<-read.csv(file.choose(),header=TRUE,sep=",")
dados

#matriz de incidencia
matriz_inc<-xtabs(weight~from+to,data=dados)
print(matriz_inc)

#cada linha representa o artista que faz a conexão
#cada coluna representa o artista que recebe a conexão

#matriz de similaridade
s<-matriz_inc %*%t(matriz_inc)
s

diag(s)<-0
s

#Matriz de coocorrência
c<-t(matriz_inc)%*%matriz_inc
c

diag(c)<-0

#visualização dos grafos
install.packages('igraph')
library('igraph')



#matriz_inc: matriz que indica conexões entre dois tipos de vértices.
#directed = TRUE: grafo com arestas direcionadas.
#mode = "out": arestas vão das linhas para as colunas da matriz.
#weighted = TRUE: usa valores da matriz como pesos das arestas.

#Ou seja, cria um grafo bipartido direcionado, com pesos nas arestas, 
#onde as conexões saem dos vértices das linhas para os das colunas.

#grafo de incidência
grafo_inc<-graph_from_incidence_matrix(matriz_inc,directed=T,mode="out",weighted=T)

#visualização grafo de incidência
plot(grafo_inc,edge.width=E(grafo_inc)$weigh,edge.arrow.size=0.1)

#grafo de similaridade
grafo_sim<-graph_from_adjacency_matrix(s,weighted=T,mode="undirected")

#visualização do grado de similaridade
plot(grafo_sim,edge.width=E(grafo_inc)$weight)

#grafo de coocorrência
grafo_co<-graph_from_adjacency_matrix(c,weighted=T,mode="undirected")

#visualização do grafo de coocorrência
plot(grafo_co,edge.width=E(grafo_co)$weight)

#métricas topológicas

#identificar vértices
V(grafo_sim)

#contagem do número de vértices
length(V(grafo_sim))

#contagem do número de arestas
ecount(grafo_sim)

#identificar as ligações
E(grafo_sim)

#graus de vértice
degree(grafo_sim)

#grau medio de conectividade
mean(degree(grafo_sim))

#pesos do grafo
E(grafo_sim)$weight

#densidade
edge_density(grafo_sim,loops=FALSE)

#força de conectividade média
mean(E(grafo_sim)$weight)
