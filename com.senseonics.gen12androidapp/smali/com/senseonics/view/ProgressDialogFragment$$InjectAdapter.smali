.class public final Lcom/senseonics/view/ProgressDialogFragment$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "ProgressDialogFragment$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/view/ProgressDialogFragment;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/view/ProgressDialogFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.view.ProgressDialogFragment"

    const-string v1, "members/com.senseonics.view.ProgressDialogFragment"

    .line 18
    const-class v2, Lcom/senseonics/view/ProgressDialogFragment;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/view/ProgressDialogFragment;
    .locals 1

    .line 27
    new-instance v0, Lcom/senseonics/view/ProgressDialogFragment;

    invoke-direct {v0}, Lcom/senseonics/view/ProgressDialogFragment;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/senseonics/view/ProgressDialogFragment$$InjectAdapter;->get()Lcom/senseonics/view/ProgressDialogFragment;

    move-result-object v0

    return-object v0
.end method
