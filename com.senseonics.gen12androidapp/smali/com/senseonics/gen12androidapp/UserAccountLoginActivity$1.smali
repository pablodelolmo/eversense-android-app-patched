.class Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1;
.super Ljava/lang/Object;
.source "UserAccountLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 60
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->access$000(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->access$100(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 63
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 64
    new-instance p2, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1$1;

    invoke-direct {p2, p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1$1;-><init>(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
