.class public Lcom/senseonics/mycircle/invite/InvitePeerActivity_ViewBinding;
.super Ljava/lang/Object;
.source "InvitePeerActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/senseonics/mycircle/invite/InvitePeerActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected target:Lcom/senseonics/mycircle/invite/InvitePeerActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/senseonics/mycircle/invite/InvitePeerActivity;Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerActivity_ViewBinding;->target:Lcom/senseonics/mycircle/invite/InvitePeerActivity;

    const-string v0, "field \'nicknameEditText\'"

    .line 23
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0901d8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->nicknameEditText:Landroid/widget/EditText;

    const-string v0, "field \'emailEditText\'"

    .line 24
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900f9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->emailEditText:Landroid/widget/EditText;

    const-string v0, "field \'btnAddEmail\'"

    .line 25
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f090088

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->btnAddEmail:Landroid/widget/ImageButton;

    const-string v0, "field \'sendButton\'"

    .line 26
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09023f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->sendButton:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerActivity_ViewBinding;->target:Lcom/senseonics/mycircle/invite/InvitePeerActivity;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 35
    iput-object v1, v0, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->nicknameEditText:Landroid/widget/EditText;

    .line 36
    iput-object v1, v0, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->emailEditText:Landroid/widget/EditText;

    .line 37
    iput-object v1, v0, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->btnAddEmail:Landroid/widget/ImageButton;

    .line 38
    iput-object v1, v0, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->sendButton:Landroid/widget/Button;

    .line 40
    iput-object v1, p0, Lcom/senseonics/mycircle/invite/InvitePeerActivity_ViewBinding;->target:Lcom/senseonics/mycircle/invite/InvitePeerActivity;

    return-void
.end method
