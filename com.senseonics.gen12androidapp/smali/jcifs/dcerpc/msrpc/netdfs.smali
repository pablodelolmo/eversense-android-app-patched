.class public Ljcifs/dcerpc/msrpc/netdfs;
.super Ljava/lang/Object;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;,
        Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;,
        Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;,
        Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;,
        Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;,
        Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;,
        Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;,
        Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;,
        Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;,
        Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;,
        Ljcifs/dcerpc/msrpc/netdfs$DfsInfo1;
    }
.end annotation


# static fields
.field public static final DFS_STORAGE_STATE_ACTIVE:I = 0x4

.field public static final DFS_STORAGE_STATE_OFFLINE:I = 0x1

.field public static final DFS_STORAGE_STATE_ONLINE:I = 0x2

.field public static final DFS_VOLUME_FLAVOR_AD_BLOB:I = 0x200

.field public static final DFS_VOLUME_FLAVOR_STANDALONE:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyntax()Ljava/lang/String;
    .locals 1

    const-string v0, "4fc742e0-4a10-11cf-8273-00aa004ae673:3.0"

    return-object v0
.end method
