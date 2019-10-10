.class public Lcom/senseonics/gen12androidapp/DosingBaseActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "DosingBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;,
        Lcom/senseonics/gen12androidapp/DosingBaseActivity$PagerAdapter;
    }
.end annotation


# instance fields
.field private final NUM_PAGES:I

.field protected pager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    const/4 v0, 0x5

    .line 13
    iput v0, p0, Lcom/senseonics/gen12androidapp/DosingBaseActivity;->NUM_PAGES:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 18
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DosingBaseActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    new-instance p1, Landroid/support/v4/view/ViewPager;

    invoke-direct {p1, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/DosingBaseActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 22
    new-instance p1, Lcom/senseonics/gen12androidapp/DosingBaseActivity$PagerAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/senseonics/gen12androidapp/DosingBaseActivity$PagerAdapter;-><init>(Lcom/senseonics/gen12androidapp/DosingBaseActivity;Landroid/support/v4/app/FragmentManager;)V

    .line 23
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DosingBaseActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const p1, 0x7f0901f6

    .line 25
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/DosingBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/senseonics/view/InkPageIndicator;

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Lcom/senseonics/view/InkPageIndicator;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DosingBaseActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Lcom/senseonics/view/InkPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method
