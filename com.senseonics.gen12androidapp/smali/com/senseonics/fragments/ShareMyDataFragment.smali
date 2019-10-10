.class public Lcom/senseonics/fragments/ShareMyDataFragment;
.super Landroid/app/Fragment;
.source "ShareMyDataFragment.java"


# instance fields
.field private content:Landroid/widget/LinearLayout;

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/senseonics/fragments/ShareMyDataFragment;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b00cf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016b

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090168

    .line 76
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 77
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    invoke-virtual {v1, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901ca

    .line 81
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 82
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    iget-object p1, p0, Lcom/senseonics/fragments/ShareMyDataFragment;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0b0089

    const/4 p3, 0x0

    .line 30
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0900a6

    .line 32
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/senseonics/fragments/ShareMyDataFragment;->content:Landroid/widget/LinearLayout;

    .line 33
    iput-object p1, p0, Lcom/senseonics/fragments/ShareMyDataFragment;->inflater:Landroid/view/LayoutInflater;

    const p1, 0x7f0f0178

    .line 35
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/ShareMyDataFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/senseonics/fragments/ShareMyDataFragment$1;

    invoke-direct {p3, p0}, Lcom/senseonics/fragments/ShareMyDataFragment$1;-><init>(Lcom/senseonics/fragments/ShareMyDataFragment;)V

    const v0, 0x7f0800f6

    invoke-virtual {p0, p1, v0, p3}, Lcom/senseonics/fragments/ShareMyDataFragment;->addView(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onResume()V
    .locals 1

    .line 64
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 67
    invoke-virtual {p0}, Lcom/senseonics/fragments/ShareMyDataFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/senseonics/fragments/ShareMyDataFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    :cond_0
    return-void
.end method
