.class public Ljcifs/dcerpc/msrpc/samr$SamrOpenAlias;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrOpenAlias"
.end annotation


# instance fields
.field public access_mask:I

.field public alias_handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public domain_handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public retval:I

.field public rid:I


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/rpc$policy_handle;IILjcifs/dcerpc/rpc$policy_handle;)V
    .locals 0

    .line 301
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 302
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenAlias;->domain_handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 303
    iput p2, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenAlias;->access_mask:I

    .line 304
    iput p3, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenAlias;->rid:I

    .line 305
    iput-object p4, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenAlias;->alias_handle:Ljcifs/dcerpc/rpc$policy_handle;

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

    .line 314
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenAlias;->alias_handle:Ljcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 315
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenAlias;->retval:I

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenAlias;->domain_handle:Ljcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 310
    iget v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenAlias;->access_mask:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 311
    iget v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenAlias;->rid:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void
.end method

.method public getOpnum()I
    .locals 1

    const/16 v0, 0x1b

    return v0
.end method
