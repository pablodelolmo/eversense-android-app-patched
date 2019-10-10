.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarQueryInformationPolicy2"
.end annotation


# instance fields
.field public handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public info:Ljcifs/dcerpc/ndr/NdrObject;

.field public level:S

.field public retval:I


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/rpc$policy_handle;SLjcifs/dcerpc/ndr/NdrObject;)V
    .locals 0

    .line 894
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 895
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 896
    iput-short p2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->level:S

    .line 897
    iput-object p3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->info:Ljcifs/dcerpc/ndr/NdrObject;

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

    .line 905
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 908
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->info:Ljcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrObject;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 911
    :cond_0
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->retval:I

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 901
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 902
    iget-short v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy2;->level:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    return-void
.end method

.method public getOpnum()I
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method
