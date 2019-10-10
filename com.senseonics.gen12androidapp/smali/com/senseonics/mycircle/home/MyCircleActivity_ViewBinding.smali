.class public Lcom/senseonics/mycircle/home/MyCircleActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MyCircleActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/senseonics/mycircle/home/MyCircleActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected target:Lcom/senseonics/mycircle/home/MyCircleActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/senseonics/mycircle/home/MyCircleActivity;Landroid/view/View;)V
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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/senseonics/mycircle/home/MyCircleActivity_ViewBinding;->target:Lcom/senseonics/mycircle/home/MyCircleActivity;

    const-string v0, "field \'membersList\'"

    .line 24
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901a2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/senseonics/mycircle/home/MyCircleActivity;->membersList:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'inviteList\'"

    .line 25
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f090165

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/senseonics/mycircle/home/MyCircleActivity;->inviteList:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'swipeRefreshLayout\'"

    .line 26
    const-class v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    const v2, 0x7f090276

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p1, Lcom/senseonics/mycircle/home/MyCircleActivity;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const-string v0, "field \'inviteButton\'"

    .line 27
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f09016d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/senseonics/mycircle/home/MyCircleActivity;->inviteButton:Landroid/widget/RelativeLayout;

    const-string v0, "field \'membersLabel\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0901a1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/home/MyCircleActivity;->membersLabel:Landroid/widget/TextView;

    const-string v0, "field \'invitationsSentLabel\'"

    .line 29
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090164

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/home/MyCircleActivity;->invitationsSentLabel:Landroid/widget/TextView;

    const-string v0, "field \'membersDivider\'"

    const v1, 0x7f0901a3

    .line 30
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/senseonics/mycircle/home/MyCircleActivity;->membersDivider:Landroid/view/View;

    const-string v0, "field \'inviteDivider\'"

    const v1, 0x7f090166

    .line 31
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/senseonics/mycircle/home/MyCircleActivity;->inviteDivider:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleActivity_ViewBinding;->target:Lcom/senseonics/mycircle/home/MyCircleActivity;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 40
    iput-object v1, v0, Lcom/senseonics/mycircle/home/MyCircleActivity;->membersList:Landroid/support/v7/widget/RecyclerView;

    .line 41
    iput-object v1, v0, Lcom/senseonics/mycircle/home/MyCircleActivity;->inviteList:Landroid/support/v7/widget/RecyclerView;

    .line 42
    iput-object v1, v0, Lcom/senseonics/mycircle/home/MyCircleActivity;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 43
    iput-object v1, v0, Lcom/senseonics/mycircle/home/MyCircleActivity;->inviteButton:Landroid/widget/RelativeLayout;

    .line 44
    iput-object v1, v0, Lcom/senseonics/mycircle/home/MyCircleActivity;->membersLabel:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/senseonics/mycircle/home/MyCircleActivity;->invitationsSentLabel:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/senseonics/mycircle/home/MyCircleActivity;->membersDivider:Landroid/view/View;

    .line 47
    iput-object v1, v0, Lcom/senseonics/mycircle/home/MyCircleActivity;->inviteDivider:Landroid/view/View;

    .line 49
    iput-object v1, p0, Lcom/senseonics/mycircle/home/MyCircleActivity_ViewBinding;->target:Lcom/senseonics/mycircle/home/MyCircleActivity;

    return-void
.end method
