.class public Ljcifs/dcerpc/UnicodeString;
.super Ljcifs/dcerpc/rpc$unicode_string;
.source "UnicodeString.java"


# instance fields
.field zterm:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 5

    .line 36
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    .line 37
    iput-boolean p2, p0, Ljcifs/dcerpc/UnicodeString;->zterm:Z

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, v0, p2

    mul-int/lit8 v2, v1, 0x2

    int-to-short v2, v2

    .line 42
    iput-short v2, p0, Ljcifs/dcerpc/UnicodeString;->maximum_length:S

    iput-short v2, p0, Ljcifs/dcerpc/UnicodeString;->length:S

    .line 43
    new-array v1, v1, [S

    iput-object v1, p0, Ljcifs/dcerpc/UnicodeString;->buffer:[S

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 47
    iget-object v3, p0, Ljcifs/dcerpc/UnicodeString;->buffer:[S

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 50
    iget-object p1, p0, Ljcifs/dcerpc/UnicodeString;->buffer:[S

    aput-short v1, p1, v2

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    .line 30
    iget-short v0, p1, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    iput-short v0, p0, Ljcifs/dcerpc/UnicodeString;->length:S

    .line 31
    iget-short v0, p1, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    iput-short v0, p0, Ljcifs/dcerpc/UnicodeString;->maximum_length:S

    .line 32
    iget-object p1, p1, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    iput-object p1, p0, Ljcifs/dcerpc/UnicodeString;->buffer:[S

    .line 33
    iput-boolean p2, p0, Ljcifs/dcerpc/UnicodeString;->zterm:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    .line 27
    iput-boolean p1, p0, Ljcifs/dcerpc/UnicodeString;->zterm:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 55
    iget-short v0, p0, Ljcifs/dcerpc/UnicodeString;->length:S

    div-int/lit8 v0, v0, 0x2

    iget-boolean v1, p0, Ljcifs/dcerpc/UnicodeString;->zterm:Z

    sub-int/2addr v0, v1

    .line 56
    new-array v1, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 58
    iget-object v4, p0, Ljcifs/dcerpc/UnicodeString;->buffer:[S

    aget-short v4, v4, v3

    int-to-char v4, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method
