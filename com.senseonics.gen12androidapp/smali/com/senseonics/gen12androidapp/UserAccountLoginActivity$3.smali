.class Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$3;
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

    .line 89
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$3;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$3;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->btnSync:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
