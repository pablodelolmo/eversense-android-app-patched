.class public Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareGetInfo"
.end annotation


# instance fields
.field public info:Ljcifs/dcerpc/ndr/NdrObject;

.field public level:I

.field public retval:I

.field public servername:Ljava/lang/String;

.field public sharename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjcifs/dcerpc/ndr/NdrObject;)V
    .locals 0

    .line 407
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 408
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->servername:Ljava/lang/String;

    .line 409
    iput-object p2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->sharename:Ljava/lang/String;

    .line 410
    iput p3, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->level:I

    .line 411
    iput-object p4, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

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

    .line 424
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 425
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo0;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 430
    :cond_0
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 431
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrObject;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 434
    :cond_1
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->retval:I

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->servername:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 416
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->servername:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->servername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 420
    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->sharename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 421
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->level:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void
.end method

.method public getOpnum()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method
