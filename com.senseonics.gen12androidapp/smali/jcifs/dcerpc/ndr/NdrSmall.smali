.class public Ljcifs/dcerpc/ndr/NdrSmall;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "NdrSmall.java"


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    and-int/lit16 p1, p1, 0xff

    .line 27
    iput p1, p0, Ljcifs/dcerpc/ndr/NdrSmall;->value:I

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/ndr/NdrSmall;->value:I

    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 31
    iget v0, p0, Ljcifs/dcerpc/ndr/NdrSmall;->value:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    return-void
.end method
