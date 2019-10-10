.class Lcom/senseonics/view/SimpleDialogFragment$4;
.super Landroid/app/Dialog;
.source "SimpleDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/view/SimpleDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/view/SimpleDialogFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/view/SimpleDialogFragment;Landroid/content/Context;I)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/senseonics/view/SimpleDialogFragment$4;->this$0:Lcom/senseonics/view/SimpleDialogFragment;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/senseonics/view/SimpleDialogFragment$4;->this$0:Lcom/senseonics/view/SimpleDialogFragment;

    invoke-virtual {v0}, Lcom/senseonics/view/SimpleDialogFragment;->dismiss()V

    return-void
.end method
