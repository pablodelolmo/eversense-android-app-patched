.class abstract Ljcifs/smb/SmbComTransaction;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComTransaction.java"

# interfaces
.implements Ljava/util/Enumeration;


# static fields
.field private static final DEFAULT_MAX_DATA_COUNT:I

.field private static final DISCONNECT_TID:I = 0x1

.field static final NET_SERVER_ENUM2:I = 0x68

.field static final NET_SERVER_ENUM3:I = 0xd7

.field static final NET_SHARE_ENUM:I = 0x0

.field private static final ONE_WAY_TRANSACTION:I = 0x2

.field private static final PADDING_SIZE:I = 0x2

.field private static final PRIMARY_SETUP_OFFSET:I = 0x3d

.field private static final SECONDARY_PARAMETER_OFFSET:I = 0x33

.field static final TRANS2_FIND_FIRST2:B = 0x1t

.field static final TRANS2_FIND_NEXT2:B = 0x2t

.field static final TRANS2_GET_DFS_REFERRAL:B = 0x10t

.field static final TRANS2_QUERY_FS_INFORMATION:B = 0x3t

.field static final TRANS2_QUERY_PATH_INFORMATION:B = 0x5t

.field static final TRANS2_SET_FILE_INFORMATION:B = 0x8t

.field static final TRANSACTION_BUF_SIZE:I = 0xffff

.field static final TRANS_CALL_NAMED_PIPE:B = 0x54t

.field static final TRANS_PEEK_NAMED_PIPE:B = 0x23t

.field static final TRANS_TRANSACT_NAMED_PIPE:B = 0x26t

.field static final TRANS_WAIT_NAMED_PIPE:B = 0x53t


# instance fields
.field private bufDataOffset:I

.field private bufParameterOffset:I

.field protected dataCount:I

.field protected dataDisplacement:I

.field protected dataOffset:I

.field private fid:I

.field private flags:I

.field private hasMore:Z

.field private isPrimary:Z

.field maxBufferSize:I

.field maxDataCount:I

.field maxParameterCount:I

.field maxSetupCount:B

.field name:Ljava/lang/String;

.field private pad:I

.field private pad1:I

.field protected parameterCount:I

.field protected parameterDisplacement:I

.field protected parameterOffset:I

.field protected primarySetupOffset:I

.field protected secondaryParameterOffset:I

.field setupCount:I

.field subCommand:B

.field timeout:I

.field totalDataCount:I

.field totalParameterCount:I

.field txn_buf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.smb.client.transaction_buf_size"

    const v1, 0xffff

    .line 27
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit16 v0, v0, -0x200

    sput v0, Ljcifs/smb/SmbComTransaction;->DEFAULT_MAX_DATA_COUNT:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 89
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->flags:I

    .line 42
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    .line 43
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    .line 45
    iput-boolean v1, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    .line 79
    sget v2, Ljcifs/smb/SmbComTransaction;->DEFAULT_MAX_DATA_COUNT:I

    iput v2, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 81
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    .line 82
    iput v1, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    const-string v0, ""

    .line 84
    iput-object v0, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    const/16 v0, 0x400

    .line 90
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    const/16 v0, 0x3d

    .line 91
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->primarySetupOffset:I

    const/16 v0, 0x33

    .line 92
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->secondaryParameterOffset:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 4

    .line 106
    iget-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    const/16 v1, -0x60

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 107
    iput-boolean v2, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    .line 109
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->primarySetupOffset:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 110
    iget-byte v0, p0, Ljcifs/smb/SmbComTransaction;->command:B

    if-eq v0, v1, :cond_0

    .line 111
    iget-byte v0, p0, Ljcifs/smb/SmbComTransaction;->command:B

    const/16 v1, 0x25

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljcifs/smb/SmbComTransaction;->isResponse()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget-object v1, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    invoke-virtual {p0, v1, v3}, Ljcifs/smb/SmbComTransaction;->stringWireLength(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    goto :goto_0

    .line 114
    :cond_0
    iget-byte v0, p0, Ljcifs/smb/SmbComTransaction;->command:B

    if-ne v0, v1, :cond_1

    .line 115
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 117
    :cond_1
    :goto_0
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    .line 118
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    rsub-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    .line 119
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    add-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 121
    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->bufParameterOffset:I

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbComTransaction;->writeParametersWireFormat([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    .line 122
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    .line 124
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->maxBufferSize:I

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    sub-int/2addr v0, v1

    .line 125
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    .line 126
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    sub-int/2addr v0, v1

    .line 128
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v1, v3

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    .line 129
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    rem-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    .line 130
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    rsub-int/lit8 v1, v1, 0x2

    :goto_2
    iput v1, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    .line 131
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    add-int/2addr v1, v3

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    .line 133
    iget-object v1, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    invoke-virtual {p0, v1, v3}, Ljcifs/smb/SmbComTransaction;->writeDataWireFormat([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    .line 135
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    goto/16 :goto_6

    .line 137
    :cond_4
    iget-byte v0, p0, Ljcifs/smb/SmbComTransaction;->command:B

    if-eq v0, v1, :cond_5

    const/16 v0, 0x26

    .line 138
    iput-byte v0, p0, Ljcifs/smb/SmbComTransaction;->command:B

    goto :goto_3

    :cond_5
    const/16 v0, -0x5f

    .line 140
    iput-byte v0, p0, Ljcifs/smb/SmbComTransaction;->command:B

    :goto_3
    const/16 v0, 0x33

    .line 144
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 145
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_7

    .line 146
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    .line 147
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    rsub-int/lit8 v0, v0, 0x2

    :goto_4
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    .line 148
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    add-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 152
    :cond_7
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    .line 154
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->maxBufferSize:I

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    sub-int/2addr v0, v1

    .line 155
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    sub-int/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    .line 156
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    sub-int/2addr v0, v1

    .line 158
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v1, v3

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    .line 159
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    rem-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    .line 160
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_5

    :cond_8
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    rsub-int/lit8 v1, v1, 0x2

    :goto_5
    iput v1, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    .line 161
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    add-int/2addr v1, v3

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    .line 163
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    add-int/2addr v1, v3

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    .line 165
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    sub-int/2addr v0, v1

    .line 166
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    sub-int/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    .line 168
    :goto_6
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v0, v1

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    if-lt v0, v1, :cond_9

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    add-int/2addr v0, v1

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    if-lt v0, v1, :cond_9

    .line 170
    iput-boolean v2, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    :cond_9
    return-object p0
.end method

.method readBytesWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method abstract readDataWireFormat([BII)I
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method abstract readParametersWireFormat([BII)I
.end method

.method abstract readSetupWireFormat([BII)I
.end method

.method reset()V
    .locals 1

    .line 96
    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->reset()V

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    iput-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    return-void
.end method

.method reset(ILjava/lang/String;)V
    .locals 0

    .line 100
    invoke-virtual {p0}, Ljcifs/smb/SmbComTransaction;->reset()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 263
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",totalParameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",totalDataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",maxParameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",maxDataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",maxSetupCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->flags:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",parameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",parameterOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",parameterDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dataOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dataDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",setupCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pad1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBytesWireFormat([BI)I
    .locals 5

    .line 221
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    .line 223
    iget-byte v1, p0, Ljcifs/smb/SmbComTransaction;->command:B

    const/16 v2, 0x25

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SmbComTransaction;->isResponse()Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    iget-object v1, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, p2}, Ljcifs/smb/SmbComTransaction;->writeString(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v1, p2

    goto :goto_0

    :cond_0
    move v1, p2

    .line 227
    :goto_0
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    const/4 v3, 0x0

    if-lez v2, :cond_2

    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    .line 229
    aput-byte v3, p1, v1

    move v1, v0

    move v0, v2

    goto :goto_1

    .line 232
    :cond_1
    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->bufParameterOffset:I

    iget v4, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    invoke-static {v0, v2, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v1, v0

    .line 236
    :cond_2
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    if-lez v0, :cond_4

    .line 237
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    .line 239
    aput-byte v3, p1, v1

    move v1, v0

    move v0, v2

    goto :goto_2

    .line 241
    :cond_3
    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    iget p1, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    add-int/2addr p1, v0

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    .line 243
    iget p1, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    add-int/2addr v1, p1

    :cond_4
    sub-int/2addr v1, p2

    return v1
.end method

.method abstract writeDataWireFormat([BI)I
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 6

    .line 177
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    .line 179
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    .line 181
    iget-byte v1, p0, Ljcifs/smb/SmbComTransaction;->command:B

    const/16 v2, 0x26

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 182
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    .line 184
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x1

    .line 186
    iget-byte v4, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    aput-byte v4, p1, v0

    add-int/lit8 v0, v1, 0x1

    .line 187
    aput-byte v3, p1, v1

    .line 188
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->flags:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    .line 190
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    .line 192
    aput-byte v3, p1, v0

    add-int/lit8 v0, v1, 0x1

    .line 193
    aput-byte v3, p1, v1

    .line 195
    :cond_0
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    .line 198
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    .line 200
    iget-byte v1, p0, Ljcifs/smb/SmbComTransaction;->command:B

    if-ne v1, v2, :cond_1

    .line 201
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    .line 204
    :cond_1
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    .line 206
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    :goto_0
    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    .line 208
    iget-byte v1, p0, Ljcifs/smb/SmbComTransaction;->command:B

    if-ne v1, v2, :cond_3

    .line 209
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v0, 0x1

    .line 212
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    .line 213
    aput-byte v3, p1, v1

    .line 214
    invoke-virtual {p0, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeSetupWireFormat([BI)I

    move-result p1

    add-int/2addr v0, p1

    :goto_1
    sub-int/2addr v0, p2

    return v0
.end method

.method abstract writeParametersWireFormat([BI)I
.end method

.method abstract writeSetupWireFormat([BI)I
.end method
