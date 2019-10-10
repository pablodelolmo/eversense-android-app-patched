.class public Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrEnumerateAliasesInDomain"
.end annotation


# instance fields
.field public acct_flags:I

.field public domain_handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public num_entries:I

.field public resume_handle:I

.field public retval:I

.field public sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/rpc$policy_handle;IILjcifs/dcerpc/msrpc/samr$SamrSamArray;I)V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 262
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->domain_handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 263
    iput p2, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->resume_handle:I

    .line 264
    iput p3, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->acct_flags:I

    .line 265
    iput-object p4, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    .line 266
    iput p5, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->num_entries:I

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

    .line 275
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->resume_handle:I

    .line 276
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    .line 281
    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 284
    :cond_1
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->num_entries:I

    .line 285
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->retval:I

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->domain_handle:Ljcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 271
    iget v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->resume_handle:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 272
    iget v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->acct_flags:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void
.end method

.method public getOpnum()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method
