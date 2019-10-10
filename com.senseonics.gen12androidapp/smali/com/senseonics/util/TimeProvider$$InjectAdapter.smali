.class public final Lcom/senseonics/util/TimeProvider$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "TimeProvider$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/util/TimeProvider;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/util/TimeProvider;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.util.TimeProvider"

    const-string v1, "members/com.senseonics.util.TimeProvider"

    .line 18
    const-class v2, Lcom/senseonics/util/TimeProvider;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/util/TimeProvider;
    .locals 1

    .line 27
    new-instance v0, Lcom/senseonics/util/TimeProvider;

    invoke-direct {v0}, Lcom/senseonics/util/TimeProvider;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/senseonics/util/TimeProvider$$InjectAdapter;->get()Lcom/senseonics/util/TimeProvider;

    move-result-object v0

    return-object v0
.end method
