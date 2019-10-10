.class public abstract Ljcifs/dcerpc/DcerpcMessage;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "DcerpcMessage.java"

# interfaces
.implements Ljcifs/dcerpc/DcerpcConstants;


# instance fields
.field protected alloc_hint:I

.field protected call_id:I

.field protected flags:I

.field protected length:I

.field protected ptype:I

.field protected result:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 29
    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->length:I

    .line 30
    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->call_id:I

    .line 31
    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    .line 32
    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->result:I

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/DcerpcMessage;->decode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 100
    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    const/16 v1, 0xd

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/16 v4, 0xc

    if-eq v0, v4, :cond_0

    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    if-eq v0, v1, :cond_0

    .line 101
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected ptype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_0
    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    if-ne v0, v3, :cond_2

    .line 104
    :cond_1
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    .line 105
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 106
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 108
    :cond_2
    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/DcerpcMessage;->decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    goto :goto_1

    .line 109
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->result:I

    :goto_1
    return-void
.end method

.method decode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 64
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 65
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 66
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "Data representation not supported"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->length:I

    .line 68
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "DCERPC authentication not supported"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_2
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->call_id:I

    return-void

    .line 62
    :cond_3
    :goto_0
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "DCERPC version not supported"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->getIndex()I

    move-result v0

    const/16 v1, 0x10

    .line 76
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 77
    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->getIndex()I

    move-result v1

    .line 79
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 80
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 81
    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcMessage;->getOpnum()I

    move-result v2

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 84
    :goto_0
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/DcerpcMessage;->encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 85
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->getIndex()I

    move-result v2

    sub-int/2addr v2, v0

    iput v2, p0, Ljcifs/dcerpc/DcerpcMessage;->length:I

    .line 87
    iget v2, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    if-nez v2, :cond_1

    .line 88
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 89
    iget v2, p0, Ljcifs/dcerpc/DcerpcMessage;->length:I

    sub-int/2addr v2, v1

    iput v2, p0, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    .line 90
    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 93
    :cond_1
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 94
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/DcerpcMessage;->encode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 95
    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->length:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    return-void
.end method

.method encode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2

    const/4 v0, 0x5

    .line 50
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 52
    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 53
    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    const/16 v1, 0x10

    .line 54
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 55
    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->length:I

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 56
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 57
    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->call_id:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void
.end method

.method public abstract encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation
.end method

.method public abstract getOpnum()I
.end method

.method public getResult()Ljcifs/dcerpc/DcerpcException;
    .locals 2

    .line 44
    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->result:I

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljcifs/dcerpc/DcerpcException;

    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->result:I

    invoke-direct {v0, v1}, Ljcifs/dcerpc/DcerpcException;-><init>(I)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFlagSet(I)Z
    .locals 1

    .line 35
    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setFlag(I)V
    .locals 1

    .line 41
    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    return-void
.end method

.method public unsetFlag(I)V
    .locals 1

    .line 38
    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    return-void
.end method
