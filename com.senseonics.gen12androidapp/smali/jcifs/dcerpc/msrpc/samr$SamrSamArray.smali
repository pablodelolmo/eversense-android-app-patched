.class public Ljcifs/dcerpc/msrpc/samr$SamrSamArray;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrSamArray"
.end annotation


# instance fields
.field public count:I

.field public entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 198
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

    .line 222
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 223
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->count:I

    .line 224
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 228
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 229
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v2, v0, 0xc

    .line 230
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 232
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    if-nez v2, :cond_2

    if-ltz v0, :cond_1

    const v2, 0xffff

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    new-array v2, v0, [Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    iput-object v2, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    goto :goto_1

    .line 233
    :cond_1
    :goto_0
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "invalid array conformance"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 236
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 238
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    aget-object v2, v2, v1

    if-nez v2, :cond_3

    .line 239
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    new-instance v3, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    invoke-direct {v3}, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;-><init>()V

    aput-object v3, v2, v1

    .line 241
    :cond_3
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

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

    .line 204
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 205
    iget v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->count:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 206
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 208
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    if-eqz v0, :cond_0

    .line 209
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 210
    iget v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->count:I

    .line 211
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 212
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v2, v0, 0xc

    .line 213
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 215
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 217
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
