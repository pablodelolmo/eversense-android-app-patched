.class public Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrOpenDomain"
.end annotation


# instance fields
.field public access_mask:I

.field public domain_handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public retval:I

.field public sid:Ljcifs/dcerpc/rpc$sid_t;


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/rpc$policy_handle;ILjcifs/dcerpc/rpc$sid_t;Ljcifs/dcerpc/rpc$policy_handle;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 124
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 125
    iput p2, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->access_mask:I

    .line 126
    iput-object p3, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 127
    iput-object p4, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->domain_handle:Ljcifs/dcerpc/rpc$policy_handle;

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

    .line 136
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->domain_handle:Ljcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 137
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->retval:I

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 132
    iget v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->access_mask:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 133
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->sid:Ljcifs/dcerpc/rpc$sid_t;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$sid_t;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    return-void
.end method

.method public getOpnum()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method
