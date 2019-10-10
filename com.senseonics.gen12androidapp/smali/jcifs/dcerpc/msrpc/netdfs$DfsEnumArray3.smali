.class public Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsEnumArray3"
.end annotation


# instance fields
.field public count:I

.field public s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 208
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

    .line 232
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 233
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->count:I

    .line 234
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_4

    .line 237
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 238
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 239
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v2, v0, 0x14

    .line 240
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 242
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    if-nez v2, :cond_2

    if-ltz v0, :cond_1

    const v2, 0xffff

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    new-array v2, v0, [Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    iput-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    goto :goto_1

    .line 243
    :cond_1
    :goto_0
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "invalid array conformance"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 246
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 248
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    aget-object v2, v2, v1

    if-nez v2, :cond_3

    .line 249
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    new-instance v3, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    invoke-direct {v3}, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;-><init>()V

    aput-object v3, v2, v1

    .line 251
    :cond_3
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

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

    .line 214
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 215
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->count:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 216
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 218
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    if-eqz v0, :cond_0

    .line 219
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 220
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->count:I

    .line 221
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 222
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v2, v0, 0x14

    .line 223
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 225
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 227
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
