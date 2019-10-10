.class public Ljcifs/dcerpc/rpc$policy_handle;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "rpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/rpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "policy_handle"
.end annotation


# instance fields
.field public type:I

.field public uuid:Ljcifs/dcerpc/rpc$uuid_t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 77
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 78
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/rpc$policy_handle;->type:I

    .line 79
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 80
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljcifs/dcerpc/rpc$uuid_t;

    invoke-direct {v0}, Ljcifs/dcerpc/rpc$uuid_t;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 83
    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    .line 84
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    .line 85
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    .line 86
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    .line 87
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    .line 89
    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    const/4 v1, 0x6

    .line 90
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 92
    iget-object v2, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-object v2, v2, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    if-nez v2, :cond_1

    .line 94
    iget-object v2, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    new-array v3, v1, [B

    iput-object v3, v2, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 96
    :cond_1
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 98
    iget-object v2, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-object v2, v2, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 60
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 61
    iget v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->type:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 62
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 63
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-short v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 64
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-short v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 65
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-byte v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 66
    iget-object v0, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-byte v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 68
    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    const/4 v1, 0x6

    .line 69
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 71
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 73
    iget-object v2, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-object v2, v2, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    aget-byte v2, v2, v0

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
