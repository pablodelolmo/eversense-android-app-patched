.class final Ljcifs/netbios/NbtAddress$CacheEntry;
.super Ljava/lang/Object;
.source "NbtAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/netbios/NbtAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CacheEntry"
.end annotation


# instance fields
.field address:Ljcifs/netbios/NbtAddress;

.field expiration:J

.field hostName:Ljcifs/netbios/Name;


# direct methods
.method constructor <init>(Ljcifs/netbios/Name;Ljcifs/netbios/NbtAddress;J)V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Ljcifs/netbios/NbtAddress$CacheEntry;->hostName:Ljcifs/netbios/Name;

    .line 164
    iput-object p2, p0, Ljcifs/netbios/NbtAddress$CacheEntry;->address:Ljcifs/netbios/NbtAddress;

    .line 165
    iput-wide p3, p0, Ljcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    return-void
.end method
