% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NbrPossiblite.R
\name{NbrPossiblite}
\alias{NbrPossiblite}
\title{Le calcule du nombre de possibilité dans une case}
\usage{
NbrPossiblite(A, i, j)
}
\arguments{
\item{A}{: une matrice}

\item{i}{: l'indice du ligne}

\item{j}{: l'indice du colonne}
}
\value{
: Le nombre de possibilté dans la case A[i,j]
}
\description{
Le calcule du nombre de possibilité dans une case
}
\examples{
A = Suduko()
A= genererSoduko(A,50)
NbrPossiblite(A , 3, 2 )
}
\author{
AIT MOULAY ABDERRAHIM
}
