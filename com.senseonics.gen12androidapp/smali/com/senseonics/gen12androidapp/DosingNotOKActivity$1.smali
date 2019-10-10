.class Lcom/senseonics/gen12androidapp/DosingNotOKActivity$1;
.super Ljava/lang/Object;
.source "DosingNotOKActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/DosingNotOKActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/DosingNotOKActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/DosingNotOKActivity;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/DosingNotOKActivity$1;->this$0:Lcom/senseonics/gen12androidapp/DosingNotOKActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 19
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DosingNotOKActivity$1;->this$0:Lcom/senseonics/gen12androidapp/DosingNotOKActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/DosingNotOKActivity$1;->this$0:Lcom/senseonics/gen12androidapp/DosingNotOKActivity;

    const-class v2, Lcom/senseonics/gen12androidapp/DosingSummaryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/DosingNotOKActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
