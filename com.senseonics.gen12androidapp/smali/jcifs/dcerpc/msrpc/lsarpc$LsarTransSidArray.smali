.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarTransSidArray"
.end annotation


# instance fields
.field public count:I

.field public sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 477
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

    .line 501
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 502
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->count:I

    .line 503
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_4

    .line 506
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 507
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 508
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v2, v0, 0xc

    .line 509
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 511
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    if-nez v2, :cond_2

    if-ltz v0, :cond_1

    const v2, 0xffff

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    new-array v2, v0, [Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    iput-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    goto :goto_1

    .line 512
    :cond_1
    :goto_0
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "invalid array conformance"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 515
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 517
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    aget-object v2, v2, v1

    if-nez v2, :cond_3

    .line 518
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    new-instance v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    invoke-direct {v3}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;-><init>()V

    aput-object v3, v2, v1

    .line 520
    :cond_3
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

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

    .line 483
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 484
    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->count:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 485
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 487
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    if-eqz v0, :cond_0

    .line 488
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 489
    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->count:I

    .line 490
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 491
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v2, v0, 0xc

    .line 492
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 494
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 496
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
