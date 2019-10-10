.class Lcom/senseonics/authentication/UserLoginActivity$2;
.super Ljava/lang/Object;
.source "UserLoginActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/authentication/UserLoginActivity;->setupViews(Ljava/lang/String;Landroid/text/TextWatcher;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnFocusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/authentication/UserLoginActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/authentication/UserLoginActivity;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity$2;->this$0:Lcom/senseonics/authentication/UserLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity$2;->this$0:Lcom/senseonics/authentication/UserLoginActivity;

    iget-object p1, p1, Lcom/senseonics/authentication/UserLoginActivity;->loginButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
