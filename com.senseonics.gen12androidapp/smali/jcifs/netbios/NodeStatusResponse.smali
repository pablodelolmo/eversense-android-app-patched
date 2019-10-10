.class Ljcifs/netbios/NodeStatusResponse;
.super Ljcifs/netbios/NameServicePacket;
.source "NodeStatusResponse.java"


# instance fields
.field addressArray:[Ljcifs/netbios/NbtAddress;

.field private macAddress:[B

.field private numberOfNames:I

.field private queryAddress:Ljcifs/netbios/NbtAddress;

.field private stats:[B


# direct methods
.method constructor <init>(Ljcifs/netbios/NbtAddress;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljcifs/netbios/NameServicePacket;-><init>()V

    .line 42
    iput-object p1, p0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    .line 43
    new-instance p1, Ljcifs/netbios/Name;

    invoke-direct {p1}, Ljcifs/netbios/Name;-><init>()V

    iput-object p1, p0, Ljcifs/netbios/NodeStatusResponse;->recordName:Ljcifs/netbios/Name;

    const/4 p1, 0x6

    .line 44
    new-array p1, p1, [B

    iput-object p1, p0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    return-void
.end method

.method private readNodeNameArray([BI)I
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 73
    iget v2, v0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    new-array v2, v2, [Ljcifs/netbios/NbtAddress;

    iput-object v2, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    .line 77
    iget-object v2, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v2, v2, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v2, v2, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    move/from16 v5, p2

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 88
    :goto_0
    :try_start_0
    iget v7, v0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    if-ge v4, v7, :cond_9

    add-int/lit8 v7, v5, 0xe

    .line 89
    :goto_1
    aget-byte v8, v1, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 91
    :cond_0
    new-instance v8, Ljava/lang/String;

    sub-int/2addr v7, v5

    const/4 v9, 0x1

    add-int/2addr v7, v9

    sget-object v10, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v8, v1, v5, v7, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v7, v5, 0xf

    .line 92
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v10, v5, 0x10

    .line 93
    aget-byte v11, v1, v10

    const/16 v12, 0x80

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_1

    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    .line 94
    :goto_2
    aget-byte v12, v1, v10

    and-int/lit8 v12, v12, 0x60

    shr-int/lit8 v12, v12, 0x5

    .line 95
    aget-byte v13, v1, v10

    const/16 v14, 0x10

    and-int/2addr v13, v14

    if-ne v13, v14, :cond_2

    const/4 v15, 0x1

    goto :goto_3

    :cond_2
    const/4 v15, 0x0

    .line 96
    :goto_3
    aget-byte v13, v1, v10

    const/16 v14, 0x8

    and-int/2addr v13, v14

    if-ne v13, v14, :cond_3

    const/4 v14, 0x1

    goto :goto_4

    :cond_3
    const/4 v14, 0x0

    .line 97
    :goto_4
    aget-byte v13, v1, v10

    const/4 v3, 0x4

    and-int/2addr v13, v3

    if-ne v13, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    .line 98
    :goto_5
    aget-byte v10, v1, v10

    const/4 v13, 0x2

    and-int/2addr v10, v13

    if-ne v10, v13, :cond_5

    const/4 v10, 0x1

    goto :goto_6

    :cond_5
    const/4 v10, 0x0

    :goto_6
    if-nez v6, :cond_8

    .line 106
    iget-object v13, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v13, v13, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget v13, v13, Ljcifs/netbios/Name;->hexCode:I

    if-ne v13, v7, :cond_8

    iget-object v13, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v13, v13, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    sget-object v9, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    if-eq v13, v9, :cond_6

    iget-object v9, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v9, v9, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v9, v9, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 110
    :cond_6
    iget-object v6, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v6, v6, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    sget-object v9, Ljcifs/netbios/NbtAddress;->UNKNOWN_NAME:Ljcifs/netbios/Name;

    if-ne v6, v9, :cond_7

    .line 111
    iget-object v6, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    new-instance v9, Ljcifs/netbios/Name;

    invoke-direct {v9, v8, v7, v2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v9, v6, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    .line 113
    :cond_7
    iget-object v6, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v11, v6, Ljcifs/netbios/NbtAddress;->groupName:Z

    .line 114
    iget-object v6, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput v12, v6, Ljcifs/netbios/NbtAddress;->nodeType:I

    .line 115
    iget-object v6, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v15, v6, Ljcifs/netbios/NbtAddress;->isBeingDeleted:Z

    .line 116
    iget-object v6, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v14, v6, Ljcifs/netbios/NbtAddress;->isInConflict:Z

    .line 117
    iget-object v6, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v3, v6, Ljcifs/netbios/NbtAddress;->isActive:Z

    .line 118
    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iput-boolean v10, v3, Ljcifs/netbios/NbtAddress;->isPermanent:Z

    .line 119
    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget-object v6, v0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    iput-object v6, v3, Ljcifs/netbios/NbtAddress;->macAddress:[B

    .line 120
    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    const/4 v6, 0x1

    iput-boolean v6, v3, Ljcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    .line 122
    iget-object v3, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    iget-object v7, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    aput-object v7, v3, v4

    goto :goto_7

    .line 124
    :cond_8
    iget-object v9, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    new-instance v23, Ljcifs/netbios/NbtAddress;

    new-instance v13, Ljcifs/netbios/Name;

    invoke-direct {v13, v8, v7, v2}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v7, v0, Ljcifs/netbios/NodeStatusResponse;->queryAddress:Ljcifs/netbios/NbtAddress;

    iget v7, v7, Ljcifs/netbios/NbtAddress;->address:I

    iget-object v8, v0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    move-object/from16 v16, v13

    move-object/from16 v13, v23

    move/from16 v19, v14

    move-object/from16 v14, v16

    move/from16 v18, v15

    move v15, v7

    move/from16 v16, v11

    move/from16 v17, v12

    move/from16 v20, v3

    move/from16 v21, v10

    move-object/from16 v22, v8

    invoke-direct/range {v13 .. v22}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZIZZZZ[B)V

    aput-object v23, v9, v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    add-int/lit8 v5, v5, 0x12

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catch_0
    :cond_9
    sub-int v5, v5, p2

    return v5
.end method


# virtual methods
.method readBodyWireFormat([BI)I
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NodeStatusResponse;->readResourceRecordWireFormat([BI)I

    move-result p1

    return p1
.end method

.method readRDataWireFormat([BI)I
    .locals 6

    .line 58
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    .line 59
    iget v0, p0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    mul-int/lit8 v0, v0, 0x12

    .line 60
    iget v1, p0, Ljcifs/netbios/NodeStatusResponse;->rDataLength:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, p2, 0x1

    .line 61
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Ljcifs/netbios/NodeStatusResponse;->numberOfNames:I

    add-int/2addr v0, v2

    .line 63
    iget-object v3, p0, Ljcifs/netbios/NodeStatusResponse;->macAddress:[B

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {p1, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    invoke-direct {p0, p1, v2}, Ljcifs/netbios/NodeStatusResponse;->readNodeNameArray([BI)I

    move-result v0

    add-int/2addr v2, v0

    .line 65
    new-array v0, v1, [B

    iput-object v0, p0, Ljcifs/netbios/NodeStatusResponse;->stats:[B

    .line 66
    iget-object v0, p0, Ljcifs/netbios/NodeStatusResponse;->stats:[B

    invoke-static {p1, v2, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v1

    sub-int/2addr v2, p2

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 140
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NodeStatusResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/netbios/NameServicePacket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBodyWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method writeRDataWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
