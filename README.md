# `mcbette`

[![peer-review](https://badges.ropensci.org/360_status.svg)](https://github.com/ropensci/software-review/issues/360)

Branch   |[![Travis CI logo](man/figures/TravisCI.png)](https://travis-ci.org)                                                                 |[![Codecov logo](man/figures/Codecov.png)](https://www.codecov.io)
---------|-------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------
`master` |[![Build Status](https://travis-ci.org/richelbilderbeek/mcbette.svg?branch=master)](https://travis-ci.org/richelbilderbeek/mcbette)  | [![codecov.io](https://codecov.io/github/richelbilderbeek/mcbette/coverage.svg?branch=master)](https://codecov.io/github/richelbilderbeek/mcbette?branch=master)
`develop`|[![Build Status](https://travis-ci.org/richelbilderbeek/mcbette.svg?branch=develop)](https://travis-ci.org/richelbilderbeek/mcbette) | [![codecov.io](https://codecov.io/github/richelbilderbeek/mcbette/coverage.svg?branch=develop)](https://codecov.io/github/richelbilderbeek/mcbette?branch=develop)

![](man/figures/mcbette_logo.png)

Model Comparison using `babette` [Bilderbeek & Etienne, 2018]
using the BEAST2 [Bouckaert et al., 2019] nested sampling package
as described in [Russell et al., 2019].

### Installation

:warning: `mcbette` only works on Linux and Mac

```r
remotes::install_github("richelbilderbeek/mcbette")
beastier::install_beast2()
mauricer::install_beast2_pkg("NS")
```

## References

 * Bilderbeek, Richel JC, and Rampal S. Etienne. "babette: BEAUti 2, BEAST 2 and Tracer for R." Methods in Ecology and Evolution (2018). https://doi.org/10.1111/2041-210X.13032
 * Bouckaert R., Vaughan T.G., Barido-Sottani J., Duchêne S., Fourment M., Gavryushkina A., et al. (2019) BEAST 2.5: An advanced software platform for Bayesian evolutionary analysis. PLoS computational biology, 15(4), e1006650.
 * Russel, Patricio Maturana, et al. "Model selection and parameter inference in phylogenetics using nested sampling." Systematic biology 68.2 (2019): 219-233.

