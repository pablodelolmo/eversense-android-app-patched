.class public Lcom/senseonics/util/Destroyer;
.super Ljava/lang/Object;
.source "Destroyer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs destroy([Lcom/senseonics/util/IDestroyable;)V
    .locals 3

    .line 5
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v2}, Lcom/senseonics/util/IDestroyable;->destroy()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
