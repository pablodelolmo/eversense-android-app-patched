.class abstract Ljcifs/netbios/NameServicePacket;
.super Ljava/lang/Object;
.source "NameServicePacket.java"


# static fields
.field static final A:I = 0x1

.field static final ACT_ERR:I = 0x6

.field static final ADDITIONAL_OFFSET:I = 0xa

.field static final ANSWER_OFFSET:I = 0x6

.field static final AUTHORITY_OFFSET:I = 0x8

.field static final CFT_ERR:I = 0x7

.field static final FMT_ERR:I = 0x1

.field static final HEADER_LENGTH:I = 0xc

.field static final IMP_ERR:I = 0x4

.field static final IN:I = 0x1

.field static final NB:I = 0x20

.field static final NBSTAT:I = 0x21

.field static final NBSTAT_IN:I = 0x210001

.field static final NB_IN:I = 0x200001

.field static final NS:I = 0x2

.field static final NULL:I = 0xa

.field static final OPCODE_OFFSET:I = 0x2

.field static final QUERY:I = 0x0

.field static final QUESTION_OFFSET:I = 0x4

.field static final RFS_ERR:I = 0x5

.field static final SRV_ERR:I = 0x2

.field static final WACK:I = 0x7


# instance fields
.field additionalCount:I

.field addr:Ljava/net/InetAddress;

.field addrEntry:[Ljcifs/netbios/NbtAddress;

.field addrIndex:I

.field answerCount:I

.field authorityCount:I

.field isAuthAnswer:Z

.field isBroadcast:Z

.field isRecurAvailable:Z

.field isRecurDesired:Z

.field isResponse:Z

.field isTruncated:Z

.field nameTrnId:I

.field opCode:I

.field questionClass:I

.field questionCount:I

.field questionName:Ljcifs/netbios/Name;

.field questionType:I

.field rDataLength:I

.field received:Z

.field recordClass:I

.field recordName:Ljcifs/netbios/Name;

.field recordType:I

.field resultCode:I

.field ttl:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    .line 115
    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 116
    iput v0, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    .line 117
    iput v0, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    return-void
.end method

.method static readInt2([BI)I
    .locals 1

    .line 68
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method static readInt4([BI)I
    .locals 2

    .line 72
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method static readNameTrnId([BI)I
    .locals 0

    .line 79
    invoke-static {p0, p1}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result p0

    return p0
.end method

.method static writeInt2(I[BI)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 58
    aput-byte v1, p1, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 59
    aput-byte p0, p1, v0

    return-void
.end method

.method static writeInt4(I[BI)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 62
    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 63
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 64
    aput-byte v1, p1, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 65
    aput-byte p0, p1, v0

    return-void
.end method


# virtual methods
.method abstract readBodyWireFormat([BI)I
.end method

.method readHeaderWireFormat([BI)I
    .locals 4

    .line 151
    invoke-static {p1, p2}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    add-int/lit8 v0, p2, 0x2

    .line 152
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isResponse:Z

    .line 153
    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, 0x78

    shr-int/lit8 v1, v1, 0x3

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    .line 154
    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isAuthAnswer:Z

    .line 155
    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isTruncated:Z

    .line 156
    aget-byte v1, p1, v0

    and-int/2addr v1, v3

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    add-int/2addr v0, v3

    .line 157
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isRecurAvailable:Z

    .line 159
    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x1

    :goto_5
    iput-boolean v2, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 160
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    add-int/lit8 v0, p2, 0x4

    .line 161
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    add-int/lit8 v0, p2, 0x6

    .line 162
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->answerCount:I

    add-int/lit8 v0, p2, 0x8

    .line 163
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->authorityCount:I

    add-int/lit8 p2, p2, 0xa

    .line 164
    invoke-static {p1, p2}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result p1

    iput p1, p0, Ljcifs/netbios/NameServicePacket;->additionalCount:I

    const/16 p1, 0xc

    return p1
.end method

.method readQuestionSectionWireFormat([BI)I
    .locals 2

    .line 178
    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->readWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    .line 179
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    add-int/lit8 v0, v0, 0x2

    .line 181
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result p1

    iput p1, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method abstract readRDataWireFormat([BI)I
.end method

.method readResourceRecordWireFormat([BI)I
    .locals 3

    .line 208
    aget-byte v0, p1, p2

    const/16 v1, 0xc0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    iput-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    add-int/lit8 v0, p2, 0x2

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->readWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    .line 214
    :goto_0
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    add-int/lit8 v0, v0, 0x2

    .line 216
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    add-int/lit8 v0, v0, 0x2

    .line 218
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->ttl:I

    add-int/lit8 v0, v0, 0x4

    .line 220
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    add-int/lit8 v0, v0, 0x2

    .line 223
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    div-int/lit8 v1, v1, 0x6

    new-array v1, v1, [Ljcifs/netbios/NbtAddress;

    iput-object v1, p0, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    .line 224
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    .line 225
    :goto_1
    iput v2, p0, Ljcifs/netbios/NameServicePacket;->addrIndex:I

    if-ge v0, v1, :cond_1

    .line 226
    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/NameServicePacket;->readRDataWireFormat([BI)I

    move-result v2

    add-int/2addr v0, v2

    .line 225
    iget v2, p0, Ljcifs/netbios/NameServicePacket;->addrIndex:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method

.method readWireFormat([BI)I
    .locals 1

    .line 128
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameServicePacket;->readHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    .line 129
    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/NameServicePacket;->readBodyWireFormat([BI)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 245
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 253
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "WACK"

    goto :goto_0

    :cond_1
    const-string v0, "QUERY"

    .line 256
    :goto_0
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 276
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    invoke-static {v3, v2}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    :pswitch_1
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    const/4 v3, 0x4

    packed-switch v1, :pswitch_data_1

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    invoke-static {v4, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    const-string v1, "NBSTAT"

    goto :goto_1

    :pswitch_3
    const-string v1, "NB"

    .line 290
    :goto_1
    iget v4, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    sparse-switch v4, :sswitch_data_0

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    invoke-static {v5, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :sswitch_0
    const-string v4, "NBSTAT"

    goto :goto_2

    :sswitch_1
    const-string v4, "NB"

    goto :goto_2

    :sswitch_2
    const-string v4, "NULL"

    goto :goto_2

    :sswitch_3
    const-string v4, "NS"

    goto :goto_2

    :sswitch_4
    const-string v4, "A"

    .line 311
    :goto_2
    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nameTrnId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",isResponse="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Ljcifs/netbios/NameServicePacket;->isResponse:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",opCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isAuthAnswer="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isAuthAnswer:Z

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isTruncated="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isTruncated:Z

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isRecurAvailable="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isRecurAvailable:Z

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isRecurDesired="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isBroadcast="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",resultCode="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",questionCount="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",answerCount="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->answerCount:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",authorityCount="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->authorityCount:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",additionalCount="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->additionalCount:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",questionName="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",questionType="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",questionClass="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    if-ne v0, v2, :cond_2

    const-string v0, "IN"

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    invoke-static {v1, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",recordName="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",recordType="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",recordClass="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    if-ne v0, v2, :cond_3

    const-string v0, "IN"

    goto :goto_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    invoke-static {v1, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",ttl="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->ttl:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",rDataLength="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0xa -> :sswitch_2
        0x20 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method abstract writeBodyWireFormat([BI)I
.end method

.method writeHeaderWireFormat([BI)I
    .locals 5

    .line 135
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    invoke-static {v0, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    add-int/lit8 v0, p2, 0x2

    .line 136
    iget-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isResponse:Z

    const/16 v2, 0x80

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    shl-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0x78

    add-int/2addr v1, v4

    iget-boolean v4, p0, Ljcifs/netbios/NameServicePacket;->isAuthAnswer:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    add-int/2addr v1, v4

    iget-boolean v4, p0, Ljcifs/netbios/NameServicePacket;->isTruncated:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    add-int/2addr v1, v4

    iget-boolean v4, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    add-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 141
    iget-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isRecurAvailable:Z

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iget-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    if-eqz v1, :cond_4

    const/16 v3, 0x10

    :cond_4
    add-int/2addr v2, v3

    iget v1, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    and-int/lit8 v1, v1, 0xf

    add-int/2addr v2, v1

    int-to-byte v1, v2

    aput-byte v1, p1, v0

    .line 144
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 145
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->answerCount:I

    add-int/lit8 v1, p2, 0x6

    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 146
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->authorityCount:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 147
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->additionalCount:I

    add-int/lit8 p2, p2, 0xa

    invoke-static {v0, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    const/16 p1, 0xc

    return p1
.end method

.method writeQuestionSectionWireFormat([BI)I
    .locals 2

    .line 169
    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->writeWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    .line 170
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    invoke-static {v1, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    add-int/lit8 v0, v0, 0x2

    .line 172
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    invoke-static {v1, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method abstract writeRDataWireFormat([BI)I
.end method

.method writeResourceRecordWireFormat([BI)I
    .locals 3

    .line 187
    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    iget-object v1, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    const/16 v1, -0x40

    .line 188
    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xc

    .line 189
    aput-byte v2, p1, v0

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->writeWireFormat([BI)I

    move-result v0

    add-int v1, p2, v0

    .line 193
    :goto_0
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    add-int/lit8 v1, v1, 0x2

    .line 195
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    add-int/lit8 v1, v1, 0x2

    .line 197
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->ttl:I

    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt4(I[BI)V

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v1, 0x2

    .line 199
    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeRDataWireFormat([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    .line 200
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 201
    iget p1, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    add-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    sub-int/2addr v1, p2

    return v1
.end method

.method writeWireFormat([BI)I
    .locals 1

    .line 122
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    .line 123
    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeBodyWireFormat([BI)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method
