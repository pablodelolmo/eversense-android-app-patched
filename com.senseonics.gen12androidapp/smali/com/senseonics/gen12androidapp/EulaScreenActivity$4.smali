.class Lcom/senseonics/gen12androidapp/EulaScreenActivity$4;
.super Ljava/lang/Object;
.source "EulaScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/EulaScreenActivity;->showEULAConfirmation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/EulaScreenActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$4;->this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 102
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$4;->this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->access$100(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V

    return-void
.end method
