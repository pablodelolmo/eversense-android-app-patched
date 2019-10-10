.class Lcom/senseonics/fragments/AboutFragment$2;
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

    .line 93
    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment$2;->this$0:Lcom/senseonics/fragments/AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 96
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment$2;->this$0:Lcom/senseonics/fragments/AboutFragment;

    invoke-virtual {p1}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/senseonics/fragments/AboutFragment$2;->this$0:Lcom/senseonics/fragments/AboutFragment;

    invoke-virtual {v1}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
