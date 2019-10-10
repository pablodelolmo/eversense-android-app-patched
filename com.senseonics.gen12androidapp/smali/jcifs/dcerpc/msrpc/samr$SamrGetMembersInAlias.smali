.class public Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrGetMembersInAlias"
.end annotation


# instance fields
.field public alias_handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public retval:I

.field public sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/rpc$policy_handle;Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;)V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 327
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->alias_handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 328
    iput-object p2, p0, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

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

    .line 335
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 336
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->retval:I

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->alias_handle:Ljcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    return-void
.end method

.method public getOpnum()I
    .locals 1

    const/16 v0, 0x21

    return v0
.end method
