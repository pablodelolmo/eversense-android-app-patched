.class Lcom/senseonics/view/SimpleDialogFragment$3;
.super Ljava/lang/Object;
.source "SimpleDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/view/SimpleDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/view/SimpleDialogFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/view/SimpleDialogFragment;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/senseonics/view/SimpleDialogFragment$3;->this$0:Lcom/senseonics/view/SimpleDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/senseonics/view/SimpleDialogFragment$3;->this$0:Lcom/senseonics/view/SimpleDialogFragment;

    sget-object v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->FINISHING:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    invoke-static {p1, v0}, Lcom/senseonics/view/SimpleDialogFragment;->access$002(Lcom/senseonics/view/SimpleDialogFragment;Lcom/senseonics/view/SimpleDialogFragment$DialogState;)Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    .line 92
    iget-object p1, p0, Lcom/senseonics/view/SimpleDialogFragment$3;->this$0:Lcom/senseonics/view/SimpleDialogFragment;

    invoke-virtual {p1}, Lcom/senseonics/view/SimpleDialogFragment;->dismiss()V

    return-void
.end method
