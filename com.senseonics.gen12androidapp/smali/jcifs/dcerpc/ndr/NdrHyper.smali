.class public Ljcifs/dcerpc/ndr/NdrHyper;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "NdrHyper.java"


# instance fields
.field public value:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    .line 27
    iput-wide p1, p0, Ljcifs/dcerpc/ndr/NdrHyper;->value:J

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_hyper()J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/dcerpc/ndr/NdrHyper;->value:J

    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 31
    iget-wide v0, p0, Ljcifs/dcerpc/ndr/NdrHyper;->value:J

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_hyper(J)V

    return-void
.end method
