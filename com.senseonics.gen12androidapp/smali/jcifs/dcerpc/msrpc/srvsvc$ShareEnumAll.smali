.class public Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareEnumAll"
.end annotation


# instance fields
.field public info:Ljcifs/dcerpc/ndr/NdrObject;

.field public level:I

.field public prefmaxlen:I

.field public resume_handle:I

.field public retval:I

.field public servername:Ljava/lang/String;

.field public totalentries:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/ndr/NdrObject;III)V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 351
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->servername:Ljava/lang/String;

    .line 352
    iput p2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->level:I

    .line 353
    iput-object p3, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 354
    iput p4, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->prefmaxlen:I

    .line 355
    iput p5, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->totalentries:I

    .line 356
    iput p6, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->resume_handle:I

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

    .line 378
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->level:I

    .line 379
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 380
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    .line 385
    :cond_0
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 386
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrObject;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 389
    :cond_1
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->totalentries:I

    .line 390
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->resume_handle:I

    .line 391
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->retval:I

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->servername:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 361
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->servername:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->servername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 365
    :cond_0
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->level:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 366
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->level:I

    .line 367
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 368
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 369
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    if-eqz v0, :cond_1

    .line 370
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 371
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrObject;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 374
    :cond_1
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->prefmaxlen:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 375
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->resume_handle:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void
.end method

.method public getOpnum()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method
