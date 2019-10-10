.class Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1$1;
.super Ljava/lang/Object;
.source "UserAccountLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1$1;->this$1:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1$1;->this$1:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->access$000(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 68
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1$1;->this$1:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 69
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1$1;->this$1:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1;

    iget-object v1, v1, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-static {v1}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->access$000(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
