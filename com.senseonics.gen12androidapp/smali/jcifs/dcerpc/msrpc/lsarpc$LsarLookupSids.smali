.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarLookupSids"
.end annotation


# instance fields
.field public count:I

.field public domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

.field public handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public level:S

.field public names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

.field public retval:I

.field public sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/rpc$policy_handle;Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;SI)V
    .locals 0

    .line 821
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 822
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 823
    iput-object p2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    .line 824
    iput-object p3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    .line 825
    iput-object p4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    .line 826
    iput-short p5, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->level:S

    .line 827
    iput p6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->count:I

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

    .line 838
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_1

    .line 840
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    if-nez v0, :cond_0

    .line 841
    new-instance v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    .line 843
    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 846
    :cond_1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 847
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->count:I

    .line 848
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->retval:I

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 831
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->handle:Ljcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 832
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 833
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 834
    iget-short v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->level:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 835
    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->count:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void
.end method

.method public getOpnum()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method
