## to create a matrix whose inverse can be cached

makeCacheMatrix <- function(x = numeric()) {
lov1=length(x)
bob<<-matrix(x,nrow=sqrt(lov1),ncol=sqrt(lov1))

set_matrix=function(z)
{
  x<<-z
  lov2=length(x)
  bob<<-matrix(x,nrow=sqrt(lov2),ncol=sqrt(lov2))
  lee<<-NULL
}
  
  get_matrix=function()
  {
    bob
  }
  set_inverse=function(y)
  {
    lov3=length(y)
    lee<<-matrix(y,nrow=sqrt(lov3),ncol=sqrt(lov3))
  }
  get_inverse=function()
  {
    lee
  }
  list(set_matrix=set_matrix,get_matrix=get_matrix,set_inverse=set_inverse,get_inverse=get_inverse)
}


## to compute the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(!is.null(lee))
  {
    message("Getting cached Inverse")
  }
  else
  {
    message("Creating new Inverse")
    lee<<-solve(bob)
  }
  lee
}
