############################################################
# Dockerfile to build docker image: flowrbio/ultraseq:0.9.8
############################################################

# Source: https://github.com/flow-r/docker_ultraseq/
# Dockerfile: https://github.com/flow-r/docker_ultraseq/blob/c86c252cbfa1b9f06329a067b3fd4cedf9b910c3/Dockerfile
# Docker hub tags: https://hub.docker.com/r/flowrbio/ultraseq/tags/

# Set the base image to flowrbio/ultraseq:0.9.8
FROM flowrbio/ultraseq:0.9.8

## For questions, visit https:
MAINTAINER "Samir B. Amin" <tweet:sbamin; sbamin.com/contact>

LABEL version="0.9.8p1" \
	  mode="in-house beta version" \	
      description="docker image to run GLASS consortium variant calling pipeline" \
      contributor1="flowr and ultraseq pipeline by Sahil Seth, tweet: sethsa" \
      contributor2="variant calling pipeline code by Hoon Kim, tweet: wisekh6" \
      website="http://glass-consortium.org" \
      code="http://odin.mdacc.tmc.edu/~rverhaak/resources" \
      contact="Dr. Roel GW Verhaak http://odin.mdacc.tmc.edu/~rverhaak/contact/ tweet:roelverhaak" \
      NOTICE="Third party license: Use of GATK and Mutect tools are subject to approval by GATK team at the Broad Institute, Cambridge, MA, USA. This docker image can not be deployed in public prior to getting appropriate licenses from the Broad Institute to use GATK and mutect for use with GLASS consortium related analysis pipelines."

## START: Add additional build arguments here ##

## END: additional build arguments ##

# set workdir to flowr volumne mounted directory
# This requires proper volume mount while running docker run -v flag to allow docker container to see flowr directory.
WORKDIR /scratch/docker_mutect/flowr

ENV PATH /opt/miniconda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/samtools/samtools/bin:/opt/samtools/bcftools/bin:/opt/samtools/htslib/bin:/opt/bwa.kit:/opt/bedtools2/bin:/opt/picard/default:/opt/gatk:/opt/mutect

ENTRYPOINT []
CMD []

## END ##
