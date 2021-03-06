// modified version of rasch_simple.stan from the edstan package
data {
  int<lower=1> I;               // # stimuli
  int<lower=1> J;               // # persons
  int<lower=1> N;               // # observations
  int<lower=1, upper=I> ii[N];  // stimuli for k
  int<lower=1, upper=J> jj[N];  // person for k
  int<lower=1> nn[N]; // num trials for k
  int<lower=0> y[N];   // num correct for k
}

parameters {
  vector<lower=0>[I] beta;
  vector[I] alpha;
  vector[J] theta;
}

transformed parameters{
  vector<lower=0, upper=1>[N] prob;
  for(k in 1:N){
    prob[k] = .5+.5*(1 - exp(-fmax((theta[jj[k]] - alpha[ii[k]])/beta[ii[k]], .001))); // note many "divergent transitions" if set exactly to 0
  }
}

model {
  alpha ~ normal(-1.5, 5); // parameterized as SD
  beta ~ inv_gamma(3, 8);
  theta ~ normal(0, 1);
y ~  binomial(nn, prob);}


