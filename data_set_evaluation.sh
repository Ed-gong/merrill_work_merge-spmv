#!/bin/bash
prefix=/mnt/huge_26TB/data/
prefix2=old_results/
postfix=/saved_graph/
postfix2=_result.txt
dsets=(amazon as_skitter ca_astroPh cit_patent com_dblp email_euall k21 ogb_product roadNet_CA soc_livejournal1 sx_stackoverflow web_berkstand wiki_talk ca_hollywood09 orkut reddit) 

numv=(400727 1696415 18772 3774768 317080 265214 2097152 2449029 1965206 4847571 2601977 52579682 685230 2394385)
# twitter dataset is not included, it does not have a saved_graph
for i in `seq 0 15`
do
    #echo "${prefix}${dsets[i]}${postfix}"
    echo "./gpu_spmv --mtx="${prefix}${dsets[i]}${postfix}" --fp32 &> ${prefix2}${dsets[i]}${postfix2}"
    #./gpu_spmv --mtx="${prefix}${dsets[i]}${postfix}" --fp32 > ${prefix2}${dsets[i]}${postfix2}
done


