.class public Lcom/senseonics/authentication/UserLoginActivity_ViewBinding;
.super Ljava/lang/Object;
.source "UserLoginActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/senseonics/authentication/UserLoginActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected target:Lcom/senseonics/authentication/UserLoginActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/senseonics/authentication/UserLoginActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity_ViewBinding;->target:Lcom/senseonics/authentication/UserLoginActivity;

    const-string v0, "field \'createAccountHyperlink\'"

    .line 23
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0900af

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/authentication/UserLoginActivity;->createAccountHyperlink:Landroid/widget/TextView;

    const-string v0, "field \'forgotPasswordHyperlink\'"

    .line 24
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09011b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/authentication/UserLoginActivity;->forgotPasswordHyperlink:Landroid/widget/TextView;

    const-string v0, "field \'username\'"

    .line 25
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0902e8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/senseonics/authentication/UserLoginActivity;->username:Landroid/widget/EditText;

    const-string v0, "field \'password\'"

    .line 26
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0901fe

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/senseonics/authentication/UserLoginActivity;->password:Landroid/widget/EditText;

    const-string v0, "field \'loginButton\'"

    .line 27
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090188

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/senseonics/authentication/UserLoginActivity;->loginButton:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity_ViewBinding;->target:Lcom/senseonics/authentication/UserLoginActivity;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 36
    iput-object v1, v0, Lcom/senseonics/authentication/UserLoginActivity;->createAccountHyperlink:Landroid/widget/TextView;

    .line 37
    iput-object v1, v0, Lcom/senseonics/authentication/UserLoginActivity;->forgotPasswordHyperlink:Landroid/widget/TextView;

    .line 38
    iput-object v1, v0, Lcom/senseonics/authentication/UserLoginActivity;->username:Landroid/widget/EditText;

    .line 39
    iput-object v1, v0, Lcom/senseonics/authentication/UserLoginActivity;->password:Landroid/widget/EditText;

    .line 40
    iput-object v1, v0, Lcom/senseonics/authentication/UserLoginActivity;->loginButton:Landroid/widget/Button;

    .line 42
    iput-object v1, p0, Lcom/senseonics/authentication/UserLoginActivity_ViewBinding;->target:Lcom/senseonics/authentication/UserLoginActivity;

    return-void
.end method
