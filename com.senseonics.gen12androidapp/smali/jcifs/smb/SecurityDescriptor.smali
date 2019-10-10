.class public Ljcifs/smb/SecurityDescriptor;
.super Ljava/lang/Object;
.source "SecurityDescriptor.java"


# instance fields
.field public aces:[Ljcifs/smb/ACE;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Ljcifs/smb/SecurityDescriptor;->decode([BII)I

    return-void
.end method


# virtual methods
.method public decode([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p3, p2, 0x1

    add-int/lit8 p3, p3, 0x1

    .line 38
    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SecurityDescriptor;->type:I

    add-int/lit8 p3, p3, 0x2

    .line 40
    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    add-int/lit8 p3, p3, 0x4

    .line 42
    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    add-int/lit8 p3, p3, 0x4

    .line 44
    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    add-int/lit8 p3, p3, 0x4

    .line 46
    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result p3

    add-int v0, p2, p3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 52
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    add-int/lit8 v0, v0, 0x2

    .line 54
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    const/16 v2, 0x1000

    if-le v1, v2, :cond_0

    .line 58
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid SecurityDescriptor"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-eqz p3, :cond_1

    .line 61
    new-array p3, v1, [Ljcifs/smb/ACE;

    iput-object p3, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, v1, :cond_2

    .line 63
    iget-object v2, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    new-instance v3, Ljcifs/smb/ACE;

    invoke-direct {v3}, Ljcifs/smb/ACE;-><init>()V

    aput-object v3, v2, p3

    .line 64
    iget-object v2, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    aget-object v2, v2, p3

    invoke-virtual {v2, p1, v0}, Ljcifs/smb/ACE;->decode([BI)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    :cond_2
    sub-int/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "SecurityDescriptor:\n"

    .line 74
    iget-object v1, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 75
    :goto_0
    iget-object v2, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljcifs/smb/ACE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "NULL"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
