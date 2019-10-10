.class Ljcifs/UniAddress$Sem;
.super Ljava/lang/Object;
.source "UniAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/UniAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Sem"
.end annotation


# instance fields
.field count:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Ljcifs/UniAddress$Sem;->count:I

    return-void
.end method
