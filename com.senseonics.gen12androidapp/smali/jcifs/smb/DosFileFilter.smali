.class public Ljcifs/smb/DosFileFilter;
.super Ljava/lang/Object;
.source "DosFileFilter.java"

# interfaces
.implements Ljcifs/smb/SmbFileFilter;


# instance fields
.field protected attributes:I

.field protected wildcard:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Ljcifs/smb/DosFileFilter;->wildcard:Ljava/lang/String;

    .line 33
    iput p2, p0, Ljcifs/smb/DosFileFilter;->attributes:I

    return-void
.end method


# virtual methods
.method public accept(Ljcifs/smb/SmbFile;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getAttributes()I

    move-result p1

    iget v0, p0, Ljcifs/smb/DosFileFilter;->attributes:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
