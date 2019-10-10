.class public Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MyCirclePeerDetailsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected target:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;Landroid/view/View;)V
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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity_ViewBinding;->target:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;

    const-string v0, "field \'user_display_name\'"

    .line 25
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902e4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->user_display_name:Landroid/widget/TextView;

    const-string v0, "field \'nickname_label\'"

    .line 26
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0901d9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->nickname_label:Landroid/widget/TextView;

    const-string v0, "field \'email_label\'"

    .line 27
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0900fc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->email_label:Landroid/widget/TextView;

    const-string v0, "field \'shareMyData_label\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090249

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->shareMyData_label:Landroid/widget/TextView;

    const-string v0, "field \'invitations_sent_label\'"

    .line 29
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090164

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->invitations_sent_label:Landroid/widget/TextView;

    const-string v0, "field \'nicknameValue\'"

    .line 30
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0901d8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->nicknameValue:Landroid/widget/TextView;

    const-string v0, "field \'email\'"

    .line 31
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0900fb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->email:Landroid/widget/TextView;

    const-string v0, "field \'invitationDate\'"

    .line 32
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090163

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->invitationDate:Landroid/widget/TextView;

    const-string v0, "field \'shareMyData\'"

    .line 33
    const-class v1, Landroid/widget/Switch;

    const v2, 0x7f090248

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->shareMyData:Landroid/widget/Switch;

    const-string v0, "field \'image_name_container\'"

    .line 34
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0902e6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->image_name_container:Landroid/widget/RelativeLayout;

    const-string v0, "field \'switchContainer\'"

    .line 35
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090278

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->switchContainer:Landroid/widget/RelativeLayout;

    const-string v0, "field \'removeButton\'"

    .line 36
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09021d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->removeButton:Landroid/widget/Button;

    const-string v0, "field \'userImage\'"

    .line 37
    const-class v1, Lde/hdodenhof/circleimageview/CircleImageView;

    const v2, 0x7f0902e5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p2, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->userImage:Lde/hdodenhof/circleimageview/CircleImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity_ViewBinding;->target:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 46
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->user_display_name:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->nickname_label:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->email_label:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->shareMyData_label:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->invitations_sent_label:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->nicknameValue:Landroid/widget/TextView;

    .line 52
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->email:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->invitationDate:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->shareMyData:Landroid/widget/Switch;

    .line 55
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->image_name_container:Landroid/widget/RelativeLayout;

    .line 56
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->switchContainer:Landroid/widget/RelativeLayout;

    .line 57
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->removeButton:Landroid/widget/Button;

    .line 58
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->userImage:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 60
    iput-object v1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity_ViewBinding;->target:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;

    return-void
.end method
