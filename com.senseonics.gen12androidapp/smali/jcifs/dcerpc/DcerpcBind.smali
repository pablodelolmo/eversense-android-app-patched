.class public Ljcifs/dcerpc/DcerpcBind;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "DcerpcBind.java"


# static fields
.field static final result_message:[Ljava/lang/String;


# instance fields
.field binding:Ljcifs/dcerpc/DcerpcBinding;

.field max_recv:I

.field max_xmit:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "0"

    const-string v1, "DCERPC_BIND_ERR_ABSTRACT_SYNTAX_NOT_SUPPORTED"

    const-string v2, "DCERPC_BIND_ERR_PROPOSED_TRANSFER_SYNTAXES_NOT_SUPPORTED"

    const-string v3, "DCERPC_BIND_ERR_LOCAL_LIMIT_EXCEEDED"

    .line 26
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/dcerpc/DcerpcBind;->result_message:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    return-void
.end method

.method constructor <init>(Ljcifs/dcerpc/DcerpcBinding;Ljcifs/dcerpc/DcerpcHandle;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 50
    iput-object p1, p0, Ljcifs/dcerpc/DcerpcBind;->binding:Ljcifs/dcerpc/DcerpcBinding;

    .line 51
    iget p1, p2, Ljcifs/dcerpc/DcerpcHandle;->max_xmit:I

    iput p1, p0, Ljcifs/dcerpc/DcerpcBind;->max_xmit:I

    .line 52
    iget p1, p2, Ljcifs/dcerpc/DcerpcHandle;->max_recv:I

    iput p1, p0, Ljcifs/dcerpc/DcerpcBind;->max_recv:I

    const/16 p1, 0xb

    .line 53
    iput p1, p0, Ljcifs/dcerpc/DcerpcBind;->ptype:I

    const/4 p1, 0x3

    .line 54
    iput p1, p0, Ljcifs/dcerpc/DcerpcBind;->flags:I

    return-void
.end method

.method static getResultMessage(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    .line 34
    sget-object v0, Ljcifs/dcerpc/DcerpcBind;->result_message:[Ljava/lang/String;

    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 78
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 79
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 80
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v0

    .line 81
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    const/4 v0, 0x4

    .line 82
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 83
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 84
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 85
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/DcerpcBind;->result:I

    .line 86
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    const/16 v0, 0x14

    .line 87
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 61
    iget v0, p0, Ljcifs/dcerpc/DcerpcBind;->max_xmit:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 62
    iget v0, p0, Ljcifs/dcerpc/DcerpcBind;->max_recv:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    const/4 v1, 0x1

    .line 64
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 65
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 66
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 67
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 68
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 69
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 70
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBind;->binding:Ljcifs/dcerpc/DcerpcBinding;

    iget-object v0, v0, Ljcifs/dcerpc/DcerpcBinding;->uuid:Ljcifs/dcerpc/UUID;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/UUID;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 71
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBind;->binding:Ljcifs/dcerpc/DcerpcBinding;

    iget v0, v0, Ljcifs/dcerpc/DcerpcBinding;->major:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 72
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBind;->binding:Ljcifs/dcerpc/DcerpcBinding;

    iget v0, v0, Ljcifs/dcerpc/DcerpcBinding;->minor:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 73
    sget-object v0, Ljcifs/dcerpc/DcerpcBind;->DCERPC_UUID_SYNTAX_NDR:Ljcifs/dcerpc/UUID;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/UUID;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    const/4 v0, 0x2

    .line 74
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void
.end method

.method public getOpnum()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getResult()Ljcifs/dcerpc/DcerpcException;
    .locals 2

    .line 39
    iget v0, p0, Ljcifs/dcerpc/DcerpcBind;->result:I

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljcifs/dcerpc/DcerpcException;

    iget v1, p0, Ljcifs/dcerpc/DcerpcBind;->result:I

    invoke-static {v1}, Ljcifs/dcerpc/DcerpcBind;->getResultMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
