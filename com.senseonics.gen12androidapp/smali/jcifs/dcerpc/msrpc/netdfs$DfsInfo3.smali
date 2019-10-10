.class public Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsInfo3"
.end annotation


# instance fields
.field public comment:Ljava/lang/String;

.field public num_stores:I

.field public path:Ljava/lang/String;

.field public state:I

.field public stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 131
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

    .line 171
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 172
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 173
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    .line 174
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    iput v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->state:I

    .line 175
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    iput v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->num_stores:I

    .line 176
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    if-eqz v0, :cond_0

    .line 179
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 180
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->path:Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    .line 184
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 185
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->comment:Ljava/lang/String;

    :cond_1
    if-eqz v2, :cond_6

    .line 189
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 190
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 191
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v2, v0, 0xc

    .line 192
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 194
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    if-nez v2, :cond_4

    if-ltz v0, :cond_3

    const v2, 0xffff

    if-le v0, v2, :cond_2

    goto :goto_0

    .line 196
    :cond_2
    new-array v2, v0, [Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    iput-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    goto :goto_1

    .line 195
    :cond_3
    :goto_0
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "invalid array conformance"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :cond_4
    :goto_1
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    .line 200
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    aget-object v2, v2, v1

    if-nez v2, :cond_5

    .line 201
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    new-instance v3, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    invoke-direct {v3}, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;-><init>()V

    aput-object v3, v2, v1

    .line 203
    :cond_5
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
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

    .line 140
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 141
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->path:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 142
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 143
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->state:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 144
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->num_stores:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 145
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 147
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 148
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 149
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 152
    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->comment:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 153
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 154
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 157
    :cond_1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    if-eqz v0, :cond_2

    .line 158
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 159
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->num_stores:I

    .line 160
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 161
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v2, v0, 0xc

    .line 162
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 164
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 166
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
