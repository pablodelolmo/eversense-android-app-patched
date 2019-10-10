.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarQueryInformationPolicy"
.end annotation


# instance fields
.field public handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public info:Ljcifs/dcerpc/ndr/NdrObject;

.field public level:S

.field public retval:I


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/rpc$policy_handle;SLjcifs/dcerpc/ndr/NdrObject;)V
    .locals 0

    .line 784
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 785
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 786
    iput-short p2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->level:S

    .line 787
    iput-object p3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->info:Ljcifs/dcerpc/ndr/NdrObject;

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

    .line 795
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 798
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->info:Ljcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrObject;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 801
    :cond_0
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->retval:I

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 791
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 792
    iget-short v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->level:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    return-void
.end method

.method public getOpnum()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method
