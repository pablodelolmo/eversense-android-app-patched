.class public Ljcifs/smb/ACE;
.super Ljava/lang/Object;
.source "ACE.java"


# static fields
.field public static final DELETE:I = 0x10000

.field public static final FILE_APPEND_DATA:I = 0x4

.field public static final FILE_DELETE:I = 0x40

.field public static final FILE_EXECUTE:I = 0x20

.field public static final FILE_READ_ATTRIBUTES:I = 0x80

.field public static final FILE_READ_DATA:I = 0x1

.field public static final FILE_READ_EA:I = 0x8

.field public static final FILE_WRITE_ATTRIBUTES:I = 0x100

.field public static final FILE_WRITE_DATA:I = 0x2

.field public static final FILE_WRITE_EA:I = 0x10

.field public static final FLAGS_CONTAINER_INHERIT:I = 0x2

.field public static final FLAGS_INHERITED:I = 0x10

.field public static final FLAGS_INHERIT_ONLY:I = 0x8

.field public static final FLAGS_NO_PROPAGATE:I = 0x4

.field public static final FLAGS_OBJECT_INHERIT:I = 0x1

.field public static final GENERIC_ALL:I = 0x10000000

.field public static final GENERIC_EXECUTE:I = 0x20000000

.field public static final GENERIC_READ:I = -0x80000000

.field public static final GENERIC_WRITE:I = 0x40000000

.field public static final READ_CONTROL:I = 0x20000

.field public static final SYNCHRONIZE:I = 0x100000

.field public static final WRITE_DAC:I = 0x40000

.field public static final WRITE_OWNER:I = 0x80000


# instance fields
.field access:I

.field allow:Z

.field flags:I

.field sid:Ljcifs/smb/SID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method appendCol(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 1

    .line 157
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p3, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    const/16 v0, 0x20

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method decode([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    .line 146
    aget-byte p2, p1, p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Ljcifs/smb/ACE;->allow:Z

    add-int/lit8 p2, v0, 0x1

    .line 147
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Ljcifs/smb/ACE;->flags:I

    .line 148
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    add-int/lit8 p2, p2, 0x2

    .line 150
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ACE;->access:I

    add-int/lit8 p2, p2, 0x4

    .line 152
    new-instance v1, Ljcifs/smb/SID;

    invoke-direct {v1, p1, p2}, Ljcifs/smb/SID;-><init>([BI)V

    iput-object v1, p0, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    return v0
.end method

.method public getAccessMask()I
    .locals 1

    .line 135
    iget v0, p0, Ljcifs/smb/ACE;->access:I

    return v0
.end method

.method public getApplyToText()Ljava/lang/String;
    .locals 1

    .line 110
    iget v0, p0, Ljcifs/smb/ACE;->flags:I

    and-int/lit8 v0, v0, 0xb

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const-string v0, "Invalid"

    return-object v0

    :pswitch_0
    const-string v0, "Subfolders and files only"

    return-object v0

    :pswitch_1
    const-string v0, "Subfolders only"

    return-object v0

    :pswitch_2
    const-string v0, "Files only"

    return-object v0

    :pswitch_3
    const-string v0, "This folder, subfolders and files"

    return-object v0

    :pswitch_4
    const-string v0, "This folder and subfolders"

    return-object v0

    :pswitch_5
    const-string v0, "This folder and files"

    return-object v0

    :pswitch_6
    const-string v0, "This folder only"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFlags()I
    .locals 1

    .line 102
    iget v0, p0, Ljcifs/smb/ACE;->flags:I

    return v0
.end method

.method public getSID()Ljcifs/smb/SID;
    .locals 1

    .line 142
    iget-object v0, p0, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    return-object v0
.end method

.method public isAllow()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Ljcifs/smb/ACE;->allow:Z

    return v0
.end method

.method public isInherited()Z
    .locals 1

    .line 95
    iget v0, p0, Ljcifs/smb/ACE;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 173
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 174
    invoke-virtual {p0}, Ljcifs/smb/ACE;->isAllow()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Allow "

    goto :goto_0

    :cond_0
    const-string v1, "Deny  "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    iget-object v1, p0, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    invoke-virtual {v1}, Ljcifs/smb/SID;->toDisplayString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/ACE;->appendCol(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    const-string v1, " 0x"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Ljcifs/smb/ACE;->access:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {p0}, Ljcifs/smb/ACE;->isInherited()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Inherited "

    goto :goto_1

    :cond_1
    const-string v1, "Direct    "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {p0}, Ljcifs/smb/ACE;->getApplyToText()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/ACE;->appendCol(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
