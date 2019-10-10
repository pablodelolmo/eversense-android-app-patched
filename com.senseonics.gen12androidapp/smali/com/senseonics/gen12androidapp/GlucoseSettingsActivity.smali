.class public Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;
.super Lcom/senseonics/gen12androidapp/BaseMVPActivity;
.source "GlucoseSettingsActivity.java"

# interfaces
.implements Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;


# instance fields
.field protected initialLayoutID:I

.field protected presenter:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private wasDetached:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachToPresenter()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->presenter:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {v0, p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->attach(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;)V

    return-void
.end method

.method protected detachFromPresenter()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->presenter:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->detach()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->wasDetached:Z

    return-void
.end method

.method public getViewVisibilityByID(II)I
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 31
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->presenter:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getLayoutID()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->initializeLayout(I)Landroid/view/View;

    move-result-object p1

    .line 34
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    iput v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->initialLayoutID:I

    .line 35
    iget v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->initialLayoutID:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 37
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0105

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public refreshGlucoseSection(IIIIZILjava/lang/String;)V
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 112
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 113
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 115
    invoke-virtual {p2, p5}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 116
    invoke-virtual {p3, p6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    invoke-virtual {p1, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public refreshHighGlucoseAlarmSection(IIIIIIZZIILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p11

    .line 82
    invoke-virtual/range {v0 .. v7}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->refreshGlucoseSection(IIIIZILjava/lang/String;)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move v1, p2

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move v2, p3

    .line 86
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 87
    invoke-static {v2}, Lcom/senseonics/util/AccountConfigurations;->setSwitchStyle(Landroid/widget/Switch;)V

    move v3, p6

    .line 88
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move/from16 v3, p9

    .line 90
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move v1, p7

    .line 91
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    move/from16 v1, p10

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    .line 93
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move/from16 v0, p12

    .line 94
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    move-object/from16 v0, p13

    .line 95
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public refreshPredictiveRateSection(IIIIIIZZIILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 135
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Switch;

    .line 136
    invoke-static {p3}, Lcom/senseonics/util/AccountConfigurations;->setSwitchStyle(Landroid/widget/Switch;)V

    .line 137
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/RelativeLayout;

    .line 138
    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    .line 139
    invoke-virtual {p1, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 141
    invoke-virtual {p2, p9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    invoke-virtual {p3, p7}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 143
    invoke-virtual {p4, p8}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 144
    invoke-virtual {p5, p9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    invoke-virtual {p1, p10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    invoke-virtual {p1, p11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 148
    invoke-virtual {p3, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 149
    invoke-virtual {p3, p12}, Landroid/widget/Switch;->setChecked(Z)V

    .line 150
    invoke-virtual {p3, p13}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public replaceLayout()V
    .locals 5

    const v0, 0x7f090071

    .line 53
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 54
    iget v1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->initialLayoutID:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 56
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->presenter:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getLayoutID()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 60
    iget v3, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->initialLayoutID:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 61
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public rotateImageViewByDegree(III)V
    .locals 7

    .line 184
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 185
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 187
    new-instance p2, Landroid/view/animation/RotateAnimation;

    int-to-float v2, p3

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v0, 0x12c

    .line 188
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 189
    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 p3, 0x1

    .line 190
    invoke-virtual {p2, p3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 191
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setImageViewWithImage(III)V
    .locals 0

    .line 177
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 178
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 179
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setTextViewWithText(IILjava/lang/String;)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 68
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setViewVisibilityByID(III)V
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setupGlucoseSection(IIIILandroid/view/View$OnClickListener;I)V
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 102
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 104
    invoke-virtual {p2, p5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setupHighGlucoseAlarmSection(IIIIILandroid/view/View$OnClickListener;II)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move v6, p7

    .line 73
    invoke-virtual/range {v0 .. v6}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->setupGlucoseSection(IIIILandroid/view/View$OnClickListener;I)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 77
    invoke-virtual {p1, p8}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setupPredictiveRateSection(IIILandroid/view/View$OnClickListener;I)V
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 125
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 127
    invoke-virtual {p1, p4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setupSectionExpandCollapse(IIIZ)V
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->wasDetached:Z

    if-nez v0, :cond_1

    .line 198
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f06009c

    .line 199
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 200
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 201
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p4, :cond_0

    const p2, 0x7f0800fc

    goto :goto_0

    :cond_0
    const p2, 0x7f0800fd

    .line 202
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 p2, 0x8

    .line 203
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setupTableSectionTapEvent(IILandroid/view/View$OnClickListener;)V
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 156
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    new-instance p2, Landroid/animation/LayoutTransition;

    invoke-direct {p2}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 p3, 0x4

    .line 159
    invoke-virtual {p2, p3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 160
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method
