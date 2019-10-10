.class public Lcom/senseonics/fragments/SettingsFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/fragments/SettingsFragment$SettingsManager;
    }
.end annotation


# instance fields
.field private content:Landroid/widget/LinearLayout;

.field private inflater:Landroid/view/LayoutInflater;

.field private manager:Lcom/senseonics/fragments/SettingsFragment$SettingsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method private hideDailyCalibration()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addView(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/senseonics/fragments/SettingsFragment;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b00cf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016b

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090168

    .line 156
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 157
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    invoke-virtual {v1, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901ca

    .line 159
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 160
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 162
    iget-object p1, p0, Lcom/senseonics/fragments/SettingsFragment;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected createDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 166
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/senseonics/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1000b8

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 169
    invoke-virtual {p0}, Lcom/senseonics/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0058

    const/4 v3, 0x0

    .line 170
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09029c

    .line 172
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 173
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0902b6

    .line 175
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 176
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090091

    .line 179
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0f0186

    .line 180
    invoke-virtual {p0, p2}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    new-instance p2, Lcom/senseonics/fragments/SettingsFragment$8;

    invoke-direct {p2, p0, v0}, Lcom/senseonics/fragments/SettingsFragment$8;-><init>(Lcom/senseonics/fragments/SettingsFragment;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901f1

    .line 189
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0f029a

    .line 190
    invoke-virtual {p0, p2}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    new-instance p2, Lcom/senseonics/fragments/SettingsFragment$9;

    invoke-direct {p2, p0, v0}, Lcom/senseonics/fragments/SettingsFragment$9;-><init>(Lcom/senseonics/fragments/SettingsFragment;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 212
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p2, 0x7f0b0089

    const/4 p3, 0x0

    .line 48
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0900a6

    .line 50
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/senseonics/fragments/SettingsFragment;->content:Landroid/widget/LinearLayout;

    .line 51
    iput-object p1, p0, Lcom/senseonics/fragments/SettingsFragment;->inflater:Landroid/view/LayoutInflater;

    const p1, 0x7f0f0105

    .line 53
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/senseonics/fragments/SettingsFragment$1;

    invoke-direct {p3, p0}, Lcom/senseonics/fragments/SettingsFragment$1;-><init>(Lcom/senseonics/fragments/SettingsFragment;)V

    const v0, 0x7f080123

    invoke-virtual {p0, p1, v0, p3}, Lcom/senseonics/fragments/SettingsFragment;->addView(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 64
    invoke-direct {p0}, Lcom/senseonics/fragments/SettingsFragment;->hideDailyCalibration()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0f0098

    .line 65
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f08008c

    new-instance v0, Lcom/senseonics/fragments/SettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/SettingsFragment$2;-><init>(Lcom/senseonics/fragments/SettingsFragment;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/senseonics/fragments/SettingsFragment;->addView(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    :cond_0
    const p1, 0x7f0f0247

    .line 77
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f080157

    new-instance v0, Lcom/senseonics/fragments/SettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/SettingsFragment$3;-><init>(Lcom/senseonics/fragments/SettingsFragment;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/senseonics/fragments/SettingsFragment;->addView(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    const p1, 0x7f0f0163

    .line 90
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f080171

    new-instance v0, Lcom/senseonics/fragments/SettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/SettingsFragment$4;-><init>(Lcom/senseonics/fragments/SettingsFragment;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/senseonics/fragments/SettingsFragment;->addView(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    const p1, 0x7f0f0238

    .line 103
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f0800f9

    new-instance v0, Lcom/senseonics/fragments/SettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/SettingsFragment$5;-><init>(Lcom/senseonics/fragments/SettingsFragment;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/senseonics/fragments/SettingsFragment;->addView(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    const p1, 0x7f0f024e

    .line 116
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f0800fa

    new-instance v0, Lcom/senseonics/fragments/SettingsFragment$6;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/SettingsFragment$6;-><init>(Lcom/senseonics/fragments/SettingsFragment;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/senseonics/fragments/SettingsFragment;->addView(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    const p1, 0x7f0f014b

    .line 128
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f0800f8

    new-instance v0, Lcom/senseonics/fragments/SettingsFragment$7;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/SettingsFragment$7;-><init>(Lcom/senseonics/fragments/SettingsFragment;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/senseonics/fragments/SettingsFragment;->addView(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onResume()V
    .locals 1

    .line 144
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 147
    invoke-virtual {p0}, Lcom/senseonics/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/senseonics/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    :cond_0
    return-void
.end method

.method public setManager(Lcom/senseonics/fragments/SettingsFragment$SettingsManager;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/senseonics/fragments/SettingsFragment;->manager:Lcom/senseonics/fragments/SettingsFragment$SettingsManager;

    return-void
.end method
