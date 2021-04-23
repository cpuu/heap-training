# heap-training

## build
```
$ git clone https://github.com/cpuu/heap-training.git
$ cd heap-training/
```

## Heap Exploitation Techniques

| Name | Description | glibc |
|---|:---|:---|
| `House of force` |  Corrupting the top chunk to return an arbitrary location |glibc_2.28_no-tcache|
| `fastbin_dup` |  Corrupting a fast bin freelist (e.g., by double free or write-after-free) to return an arbitrary location |glibc_2.30_no-tcache|
| `unsafe_unlink` |  Abusing unlinking in a freelist to get arbitrary write |glibc_2.23_unsafe-unlink|

