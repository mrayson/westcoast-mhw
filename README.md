# West Coast Marine Heatwave intro

Run a jupyter notebook on setonix and inspect the ROMS data

[https://github.com/mrayson/pawsey-containers/tree/master/hpc-python/jupyter-sfoda](https://github.com/mrayson/pawsey-containers/tree/master/hpc-python/jupyter-sfoda)

- Git clone `pawsey-containers` repo
- Navigate to `mhw` project folder on `software`
- Start container `sbatch ~/code/pawsey-containers/hpc-python/jupyter-sfoda/start_jupyter.slm ../`
- `watch tail jupyer-*`...
- copy `start_worker.slm` to your notebook directory (this needs to be visible by the container) e.g. `cp ~/code/pawsey-containers/hpc-python/jupyter-sfoda/start_worker.slm ../` 


