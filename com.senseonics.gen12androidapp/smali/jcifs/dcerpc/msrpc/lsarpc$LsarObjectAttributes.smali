.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarObjectAttributes"
.end annotation


# instance fields
.field public attributes:I

.field public length:I

.field public object_name:Ljcifs/dcerpc/rpc$unicode_string;

.field public root_directory:Ljcifs/dcerpc/ndr/NdrSmall;

.field public security_descriptor:I

.field public security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 71
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 72
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->length:I

    .line 73
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 74
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    .line 75
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    iput v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->attributes:I

    .line 76
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    iput v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_descriptor:I

    .line 77
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    if-eqz v0, :cond_0

    .line 80
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 81
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->root_directory:Ljcifs/dcerpc/ndr/NdrSmall;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrSmall;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_0
    if-eqz v1, :cond_2

    .line 85
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Ljcifs/dcerpc/rpc$unicode_string;

    if-nez v0, :cond_1

    .line 86
    new-instance v0, Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v0}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 88
    :cond_1
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 89
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$unicode_string;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_2
    if-eqz v2, :cond_4

    .line 93
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    if-nez v0, :cond_3

    .line 94
    new-instance v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    .line 96
    :cond_3
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 97
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_4
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 46
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 47
    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->length:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 48
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->root_directory:Ljcifs/dcerpc/ndr/NdrSmall;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 49
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 50
    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->attributes:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 51
    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_descriptor:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 52
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 54
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->root_directory:Ljcifs/dcerpc/ndr/NdrSmall;

    if-eqz v0, :cond_0

    .line 55
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 56
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->root_directory:Ljcifs/dcerpc/ndr/NdrSmall;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrSmall;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 59
    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Ljcifs/dcerpc/rpc$unicode_string;

    if-eqz v0, :cond_1

    .line 60
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 61
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$unicode_string;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 64
    :cond_1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    if-eqz v0, :cond_2

    .line 65
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 66
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_2
    return-void
.end method
