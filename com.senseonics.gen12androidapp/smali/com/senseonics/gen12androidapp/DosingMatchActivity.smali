.class public Lcom/senseonics/gen12androidapp/DosingMatchActivity;
.super Lcom/senseonics/gen12androidapp/DosingBaseActivity;
.source "DosingMatchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/DosingBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 10
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/DosingBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001d

    .line 12
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/DosingMatchActivity;->initializeLayout(I)Landroid/view/View;

    const p1, 0x7f0f0182

    .line 13
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/DosingMatchActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/gen12androidapp/DosingMatchActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DosingMatchActivity;->pager:Landroid/support/v4/view/ViewPager;

    sget-object v0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;->MATCH:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DOSING_PAGES;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 16
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DosingMatchActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/senseonics/gen12androidapp/DosingMatchActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/DosingMatchActivity$1;-><init>(Lcom/senseonics/gen12androidapp/DosingMatchActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
