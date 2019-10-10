.class public Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;
.super Lcom/senseonics/gen12androidapp/BaseMVPActivity;
.source "SoundSettingsSimplifiedActivity.java"

# interfaces
.implements Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;


# instance fields
.field disconnectLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900d9
    .end annotation
.end field

.field disconnectMinutesLeftText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900da
    .end annotation
.end field

.field disconnectMinutesRightText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900db
    .end annotation
.end field

.field disconnectValueLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900dc
    .end annotation
.end field

.field dndSwitch:Landroid/widget/Switch;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900e1
    .end annotation
.end field

.field dndTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900df
    .end annotation
.end field

.field highAlarmLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090134
    .end annotation
.end field

.field highAlarmLeftText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090135
    .end annotation
.end field

.field highAlarmRightText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090136
    .end annotation
.end field

.field highSnoozeLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090140
    .end annotation
.end field

.field highSnoozeLeftText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090141
    .end annotation
.end field

.field highSnoozeRightText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090142
    .end annotation
.end field

.field lowAlarmLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09018a
    .end annotation
.end field

.field lowAlarmLeftText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09018b
    .end annotation
.end field

.field lowAlarmRightText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09018c
    .end annotation
.end field

.field lowSnoozeLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090194
    .end annotation
.end field

.field lowSnoozeLeftText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090195
    .end annotation
.end field

.field lowSnoozeRightText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090196
    .end annotation
.end field

.field protected presenter:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachToPresenter()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->presenter:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-virtual {v0, p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->attach(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;)V

    return-void
.end method

.method protected detachFromPresenter()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->presenter:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->detach()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b007c

    .line 69
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->initializeLayout(I)Landroid/view/View;

    .line 70
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0238

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method public refreshView(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 98
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmLeftText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmRightText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 102
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeLeftText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeRightText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 106
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmLeftText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmRightText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 110
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeLeftText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeRightText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectValueLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 114
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectMinutesLeftText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectMinutesRightText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 118
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmRightText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeRightText:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmRightText:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeRightText:Landroid/widget/TextView;

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectMinutesRightText:Landroid/widget/TextView;

    invoke-virtual {p1, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndSwitch:Landroid/widget/Switch;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, p8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 128
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, p9}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndSwitch:Landroid/widget/Switch;

    invoke-static {p1}, Lcom/senseonics/util/AccountConfigurations;->setSwitchStyle(Landroid/widget/Switch;)V

    return-void
.end method

.method public setDisconnectLayoutVisibility(I)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setupView(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;I)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectValueLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p0, p6}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->setDisconnectLayoutVisibility(I)V

    return-void
.end method

.method public startSoundSelectionActivityWithKey(Ljava/lang/String;)V
    .locals 2

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "1"

    .line 135
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
