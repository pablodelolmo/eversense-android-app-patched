.class Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$2;
.super Ljava/lang/Object;
.source "UserAccountLoginActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 77
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$2;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$2;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->access$200(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
