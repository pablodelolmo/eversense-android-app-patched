.class public Ljcifs/dcerpc/msrpc/samr$SamrConnect2;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrConnect2"
.end annotation


# instance fields
.field public access_mask:I

.field public handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public retval:I

.field public system_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/rpc$policy_handle;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 58
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;->system_name:Ljava/lang/String;

    .line 59
    iput p2, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;->access_mask:I

    .line 60
    iput-object p3, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;->handle:Ljcifs/dcerpc/rpc$policy_handle;

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

    .line 72
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 73
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;->retval:I

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;->system_name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 65
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;->system_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;->system_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 69
    :cond_0
    iget v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;->access_mask:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void
.end method

.method public getOpnum()I
    .locals 1

    const/16 v0, 0x39

    return v0
.end method
