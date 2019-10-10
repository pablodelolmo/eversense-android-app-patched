.class public Lcom/senseonics/mycircle/home/MyCircleActivity;
.super Lcom/senseonics/gen12androidapp/BaseMVPActivity;
.source "MyCircleActivity.java"

# interfaces
.implements Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;


# instance fields
.field invitationsSentLabel:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090164
    .end annotation
.end field

.field inviteButton:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09016d
    .end annotation
.end field

.field inviteDivider:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090166
    .end annotation
.end field

.field inviteList:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090165
    .end annotation
.end field

.field membersDivider:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901a3
    .end annotation
.end field

.field membersLabel:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901a1
    .end annotation
.end field

.field membersList:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901a2
    .end annotation
.end field

.field presenter:Lcom/senseonics/mycircle/home/MyCirclePresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090276
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;-><init>()V

    return-void
.end method

.method private initializeRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 72
    new-instance v0, Landroid/support/v7/widget/DividerItemDecoration;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f080182

    .line 74
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 77
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private updateRecyclerView(Ljava/util/List;Landroid/support/v7/widget/RecyclerView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Landroid/widget/TextView;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/senseonics/mycircle/home/MyCircleAdapter;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/senseonics/mycircle/home/MyCircleAdapter;

    invoke-direct {v0, p1}, Lcom/senseonics/mycircle/home/MyCircleAdapter;-><init>(Ljava/util/List;)V

    .line 112
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v0, p1}, Lcom/senseonics/mycircle/home/MyCircleAdapter;->resetPeersList(Ljava/util/List;)V

    .line 116
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const/16 v0, 0x8

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    .line 117
    :goto_2
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/16 p2, 0x8

    .line 118
    :goto_3
    invoke-virtual {p4, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected attachToPresenter()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleActivity;->presenter:Lcom/senseonics/mycircle/home/MyCirclePresenter;

    invoke-virtual {v0, p0}, Lcom/senseonics/mycircle/home/MyCirclePresenter;->attach(Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;)V

    return-void
.end method

.method protected detachFromPresenter()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleActivity;->presenter:Lcom/senseonics/mycircle/home/MyCirclePresenter;

    invoke-virtual {v0}, Lcom/senseonics/mycircle/home/MyCirclePresenter;->detach()V

    return-void
.end method

.method public hideProgress()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleActivity;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public initViews(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleActivity;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 68
    iget-object p1, p0, Lcom/senseonics/mycircle/home/MyCircleActivity;->inviteButton:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b002b

    .line 56
    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/home/MyCircleActivity;->initializeLayout(I)Landroid/view/View;

    .line 58
    invoke-virtual {p0}, Lcom/senseonics/mycircle/home/MyCircleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0179

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/mycircle/home/MyCircleActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 61
    iget-object p1, p0, Lcom/senseonics/mycircle/home/MyCircleActivity;->membersList:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/senseonics/mycircle/home/MyCircleActivity;->initializeRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 62
    iget-object p1, p0, Lcom/senseonics/mycircle/home/MyCircleActivity;->inviteList:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/senseonics/mycircle/home/MyCircleActivity;->initializeRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public setInvitationsList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleActivity;->inviteList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/senseonics/mycircle/home/MyCircleActivity;->invitationsSentLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/senseonics/mycircle/home/MyCircleActivity;->inviteDivider:Landroid/view/View;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/senseonics/mycircle/home/MyCircleActivity;->updateRecyclerView(Ljava/util/List;Landroid/support/v7/widget/RecyclerView;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method public setMembersList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleActivity;->membersList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/senseonics/mycircle/home/MyCircleActivity;->membersLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/senseonics/mycircle/home/MyCircleActivity;->membersDivider:Landroid/view/View;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/senseonics/mycircle/home/MyCircleActivity;->updateRecyclerView(Ljava/util/List;Landroid/support/v7/widget/RecyclerView;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method public showProgress()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleActivity;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public startActivity()V
    .locals 3

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/senseonics/mycircle/invite/InvitePeerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/senseonics/mycircle/home/MyCircleActivity;->inviteButton:Landroid/widget/RelativeLayout;

    const-string v2, "EXPAND_FAB_TO_INVITE_PEER"

    .line 104
    invoke-static {p0, v1, v2}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/senseonics/mycircle/home/MyCircleActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
