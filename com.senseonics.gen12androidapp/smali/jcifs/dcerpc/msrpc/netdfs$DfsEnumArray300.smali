.class public Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsEnumArray300"
.end annotation


# instance fields
.field public count:I

.field public s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 381
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 382
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->count:I

    .line 383
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_4

    .line 386
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 387
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 388
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v2, v0, 0x8

    .line 389
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 391
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    if-nez v2, :cond_2

    if-ltz v0, :cond_1

    const v2, 0xffff

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    new-array v2, v0, [Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    iput-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    goto :goto_1

    .line 392
    :cond_1
    :goto_0
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "invalid array conformance"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 395
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 397
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    aget-object v2, v2, v1

    if-nez v2, :cond_3

    .line 398
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    new-instance v3, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    invoke-direct {v3}, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;-><init>()V

    aput-object v3, v2, v1

    .line 400
    :cond_3
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 363
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 364
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->count:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 365
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 367
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    if-eqz v0, :cond_0

    .line 368
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 369
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->count:I

    .line 370
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 371
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v2, v0, 0x8

    .line 372
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 374
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 376
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
