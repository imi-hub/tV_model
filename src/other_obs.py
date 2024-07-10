from netket import experimental as nkx
import numpy as np


def dens_dens_corr(graph, Nf, r,):    
    n_sites = graph.n_nodes
    nbar = Nf/n_sites
    
    hi = nkx.hilbert.SpinOrbitalFermions(n_sites,n_fermions=(Nf))
    
    def nc(site):
        return nkx.operator.fermion.number(hi, site)
    
    C_r = 0.0
    N_r = 0
    
    site_dist = graph.distances()
    for i in range(n_sites):
        S_r = set(a for a, d in enumerate(site_dist[i]) if d == r)
        
        for j in S_r:
            C_r += (nc(i) - nbar) * (nc(j) - nbar) 
    return C_r* (1/(n_sites*len(S_r)))



def structure_factor(k, Nf, rjl,):

    # k: the wave vector
    # Nf: number of fermions
    # Ns: number of sites on the lattice
    # rij: the distance between site i and site j (you can get the distances by calling graph.positions)
    
    n_sites = rjl.shape[0]
    nbar = Nf/n_sites
    hi = nkx.hilbert.SpinOrbitalFermions(n_sites,n_fermions=(Nf))
    
    
    
    def nc(site):
        return nkx.operator.fermion.number(hi, site)
    Sk = 0.0
    for j in range(rjl.shape[0]):
        for l in range(rjl.shape[1]):
            phase = np.exp(1j * np.dot(k, rjl[j,l]))
            C_rjl = (nc(j) - nbar) * (nc(l) - nbar) 
            Sk += phase * C_rjl            
    
    return 1/(n_sites) *Sk

   

