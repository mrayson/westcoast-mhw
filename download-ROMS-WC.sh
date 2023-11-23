#!/bin/bash --login
#
#SBATCH --account=pawsey0106
#SBATCH --time=12:00:00
##SBATCH --export=PYTHONPATH="/home/mrayson/code:$PYTHONPATH"
##SBATCH --partition=copy
#SBATCH --partition=work
#SBATCH --ntasks=4
##SBATCH --ntasks-per-node=4
##SBATCH --partition=debugq
#SBATCH --output=LOGS/copyjob-%j.out
##SBATCH --nodes=1

##############################
# Download data using pstore:
#
#       https://support.pawsey.org.au/documentation/display/US/pshell+scripting+and+HPC
##############################


module load rclone/1.62.2
#rclone copy -P --transfers 4 westport:/wamsi-westport-project-5/model/ROMS/ --include "*_qck.nc" ~/scratch/WestCoastROMS/
rclone copy -P --transfers 4 westport:/wamsi-westport-project-5/model/ROMS/ --include "*_avg.nc" ~/scratch/WestCoastROMS/
#rclone copy -P --transfers 4 westport:/wamsi-westport-project-5/model/ROMS/ --include "*grid.nc" ~/scratch/WestCoastROMS/



