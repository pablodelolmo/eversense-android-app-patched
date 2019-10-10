.class public Ljcifs/dcerpc/ndr/NdrBuffer;
.super Ljava/lang/Object;
.source "NdrBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/dcerpc/ndr/NdrBuffer$Entry;
    }
.end annotation


# instance fields
.field public buf:[B

.field public deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

.field public index:I

.field public length:I

.field referent:I

.field referents:Ljava/util/HashMap;

.field public start:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    .line 43
    iput p2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    iput p2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    .line 45
    iput-object p0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    return-void
.end method

.method private getDceReferent(Ljava/lang/Object;)I
    .locals 3

    .line 197
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 199
    iput v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referent:I

    .line 202
    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;

    if-nez v0, :cond_1

    .line 203
    new-instance v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;

    invoke-direct {v0}, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;-><init>()V

    .line 204
    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referent:I

    iput v1, v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;->referent:I

    .line 205
    iput-object p1, v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;->obj:Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->referents:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_1
    iget p1, v0, Ljcifs/dcerpc/ndr/NdrBuffer$Entry;->referent:I

    return p1
.end method


# virtual methods
.method public advance(I)V
    .locals 2

    .line 103
    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 104
    iget p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget v0, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    if-le p1, v0, :cond_0

    .line 105
    iget-object p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    sub-int/2addr v0, v1

    iput v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    :cond_0
    return-void
.end method

.method public align(I)I
    .locals 2

    add-int/lit8 p1, p1, -0x1

    .line 110
    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    sub-int/2addr v0, v1

    add-int v1, v0, p1

    not-int p1, p1

    and-int/2addr p1, v1

    sub-int/2addr p1, v0

    .line 112
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return p1
.end method

.method public align(IB)I
    .locals 3

    .line 78
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    move-result p1

    move v0, p1

    :goto_0
    if-lez v0, :cond_0

    .line 81
    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    sub-int/2addr v2, v0

    aput-byte p2, v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public dec_ndr_hyper()J
    .locals 3

    const/16 v0, 0x8

    .line 152
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 153
    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {v1, v2}, Ljcifs/util/Encdec;->dec_uint64le([BI)J

    move-result-wide v1

    .line 154
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-wide v1
.end method

.method public dec_ndr_long()I
    .locals 3

    const/4 v0, 0x4

    .line 141
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 142
    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {v1, v2}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v1

    .line 143
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return v1
.end method

.method public dec_ndr_short()I
    .locals 3

    const/4 v0, 0x2

    .line 130
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 131
    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {v1, v2}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v1

    .line 132
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return v1
.end method

.method public dec_ndr_small()I
    .locals 2

    .line 120
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    .line 121
    invoke-virtual {p0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return v0
.end method

.method public dec_ndr_string()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 176
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 177
    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 179
    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    invoke-static {v1, v0}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0xc

    if-eqz v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x2

    if-ltz v1, :cond_1

    const v2, 0xffff

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    const-string v4, "UTF-16LE"

    invoke-direct {v2, v3, v0, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_1

    .line 185
    :cond_1
    :goto_0
    new-instance v1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v2, "invalid array conformance"

    invoke-direct {v1, v2}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    const/4 v2, 0x0

    .line 191
    :goto_1
    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-object v2
.end method

.method public derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;
    .locals 3

    .line 49
    new-instance v0, Ljcifs/dcerpc/ndr/NdrBuffer;

    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    invoke-direct {v0, v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    .line 50
    iput p1, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 51
    iget-object p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iput-object p1, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    return-object v0
.end method

.method public enc_ndr_hyper(J)V
    .locals 3

    const/16 v0, 0x8

    .line 147
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 148
    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {p1, p2, v1, v2}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    .line 149
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public enc_ndr_long(I)V
    .locals 3

    const/4 v0, 0x4

    .line 136
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 137
    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {p1, v1, v2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 138
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public enc_ndr_referent(Ljava/lang/Object;I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 213
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    return-void

    .line 222
    :pswitch_0
    invoke-direct {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->getDceReferent(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void

    .line 219
    :pswitch_1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enc_ndr_short(I)V
    .locals 3

    const/4 v0, 0x2

    .line 125
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    int-to-short p1, p1

    .line 126
    iget-object v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {p1, v1, v2}, Ljcifs/util/Encdec;->enc_uint16le(S[BI)I

    .line 127
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public enc_ndr_small(I)V
    .locals 2

    .line 116
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public enc_ndr_string(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x4

    .line 160
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 161
    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    .line 163
    iget-object v4, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    invoke-static {v3, v4, v1}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    add-int/2addr v1, v0

    .line 164
    iget-object v4, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    const/4 v5, 0x0

    invoke-static {v5, v4, v1}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    add-int/2addr v1, v0

    .line 165
    iget-object v4, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    invoke-static {v3, v4, v1}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    add-int/2addr v1, v0

    :try_start_0
    const-string v0, "UTF-16LE"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    mul-int/lit8 v3, v2, 0x2

    invoke-static {p1, v5, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 171
    iget-object p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    add-int/lit8 v0, v1, 0x1

    aput-byte v5, p1, v1

    .line 172
    iget-object p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    add-int/lit8 v1, v0, 0x1

    aput-byte v5, p1, v0

    .line 173
    iget p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public getBuffer()[B
    .locals 1

    .line 75
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    return-object v0
.end method

.method public getCapacity()I
    .locals 2

    .line 69
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 63
    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 97
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget v0, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    return v0
.end method

.method public getTailSpace()I
    .locals 2

    .line 72
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readOctetArray([BII)V
    .locals 2

    .line 91
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    invoke-virtual {p0, p3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 58
    iget v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    iput v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    .line 60
    iput-object p0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 66
    iput p1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    return-void
.end method

.method public setLength(I)V
    .locals 1

    .line 100
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iput p1, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->length:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljcifs/dcerpc/ndr/NdrBuffer;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeOctetArray([BII)V
    .locals 2

    .line 87
    iget-object v0, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->buf:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    invoke-virtual {p0, p3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method
