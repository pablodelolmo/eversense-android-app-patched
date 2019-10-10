.class Lcom/senseonics/fragments/AboutFragment$4;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/AboutFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/AboutFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/AboutFragment;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment$4;->this$0:Lcom/senseonics/fragments/AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 110
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment$4;->this$0:Lcom/senseonics/fragments/AboutFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "eula_init"

    const-string v1, "false"

    .line 111
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment$4;->this$0:Lcom/senseonics/fragments/AboutFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
