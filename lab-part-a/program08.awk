BEGIN{print "record\t characters \t words"}
{
    len=length($0)
    total_len+=len
    print(NR,":\t",len,":\t",NF,$0)
    words+=NF
}
END{
    print("\ntotal:\t")
    print("\twords:\t" words)
    print("\tcharacters :\t" total_len)
    print("\tlines :\t" NR)
}
