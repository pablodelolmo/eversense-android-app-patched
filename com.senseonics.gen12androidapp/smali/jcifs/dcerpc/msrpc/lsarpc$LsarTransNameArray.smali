.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarTransNameArray"
.end annotation


# instance fields
.field public count:I

.field public names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 708
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

    .line 732
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 733
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->count:I

    .line 734
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_4

    .line 737
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 738
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 739
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v2, v0, 0x10

    .line 740
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 742
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    if-nez v2, :cond_2

    if-ltz v0, :cond_1

    const v2, 0xffff

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 744
    :cond_0
    new-array v2, v0, [Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    iput-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    goto :goto_1

    .line 743
    :cond_1
    :goto_0
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "invalid array conformance"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 746
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 748
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v2, v2, v1

    if-nez v2, :cond_3

    .line 749
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    new-instance v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    invoke-direct {v3}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;-><init>()V

    aput-object v3, v2, v1

    .line 751
    :cond_3
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

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

    .line 714
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 715
    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->count:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 716
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 718
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    if-eqz v0, :cond_0

    .line 719
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 720
    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->count:I

    .line 721
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 722
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v2, v0, 0x10

    .line 723
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 725
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 727
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
