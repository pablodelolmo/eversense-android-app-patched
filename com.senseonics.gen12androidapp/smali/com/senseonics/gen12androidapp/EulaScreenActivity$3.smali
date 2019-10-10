.class Lcom/senseonics/gen12androidapp/EulaScreenActivity$3;
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

    .line 89
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$3;->this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
