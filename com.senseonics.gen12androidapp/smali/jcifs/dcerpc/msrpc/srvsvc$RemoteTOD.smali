.class public Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteTOD"
.end annotation


# instance fields
.field public info:Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;

.field public retval:I

.field public servername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;)V
    .locals 0

    .line 558
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 559
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->servername:Ljava/lang/String;

    .line 560
    iput-object p2, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->info:Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;

    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 571
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->info:Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;

    if-nez v0, :cond_0

    .line 574
    new-instance v0, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->info:Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;

    .line 576
    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->info:Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 579
    :cond_1
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->retval:I

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 564
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->servername:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 565
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->servername:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;->servername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getOpnum()I
    .locals 1

    const/16 v0, 0x1c

    return v0
.end method
