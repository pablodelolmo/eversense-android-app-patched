.class public final Lcom/senseonics/gen12androidapp/MessageCoder$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "MessageCoder$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/gen12androidapp/MessageCoder;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/gen12androidapp/MessageCoder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.gen12androidapp.MessageCoder"

    const-string v1, "members/com.senseonics.gen12androidapp.MessageCoder"

    .line 18
    const-class v2, Lcom/senseonics/gen12androidapp/MessageCoder;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/gen12androidapp/MessageCoder;
    .locals 1

    .line 27
    new-instance v0, Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/MessageCoder;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MessageCoder$$InjectAdapter;->get()Lcom/senseonics/gen12androidapp/MessageCoder;

    move-result-object v0

    return-object v0
.end method
