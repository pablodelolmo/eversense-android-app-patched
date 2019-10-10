.class Lcom/senseonics/fragments/ShareMyDataFragment$1;
.super Ljava/lang/Object;
.source "ShareMyDataFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/ShareMyDataFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/ShareMyDataFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/ShareMyDataFragment;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/senseonics/fragments/ShareMyDataFragment$1;->this$0:Lcom/senseonics/fragments/ShareMyDataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 41
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/senseonics/fragments/ShareMyDataFragment$1;->this$0:Lcom/senseonics/fragments/ShareMyDataFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/ShareMyDataFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    iget-object v0, p0, Lcom/senseonics/fragments/ShareMyDataFragment$1;->this$0:Lcom/senseonics/fragments/ShareMyDataFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/ShareMyDataFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
