DenseGraph.n=20
DenseGraph.maxdegree=17
DenseGraph.k=2

Cylinder.n_rows=5
Cylinder.n_columns=7
Cylinder.k=1

Torus.n_rows=4
Torus.n_columns=6
Torus.k=2

default: DenseGraph.out CylinderGraph.out TorusGraph.out
	@echo All job done
DenseGraph.out: AntiResolvingModel.mos DenseGraph.mos Distances.mos Print.mos makefile
	echo $(DenseGraph.n)\\n$(DenseGraph.maxdegree)\\n$(DenseGraph.k) | mosel DenseGraph.mos | tee DenseGraph.out
CylinderGraph.out: AntiResolvingModel.mos CylinderGraph.mos Print.mos
	echo $(Cylinder.n_rows)\\n$(Cylinder.n_columns)\\n$(Cylinder.k) | mosel CylinderGraph.mos | tee CylinderGraph.out
TorusGraph.out: AntiResolvingModel.mos TorusGraph.mos Print.mos
	echo $(Torus.n_rows)\\n$(Torus.n_columns)\\n$(Torus.k) | mosel TorusGraph.mos | tee TorusGraph.out
