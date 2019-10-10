.class public Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SoundSettingsSimplifiedActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected target:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity_ViewBinding;->target:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;

    const-string v0, "field \'lowAlarmLayout\'"

    .line 23
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f09018a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmLayout:Landroid/widget/RelativeLayout;

    const-string v0, "field \'lowAlarmLeftText\'"

    .line 24
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09018b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmLeftText:Landroid/widget/TextView;

    const-string v0, "field \'lowAlarmRightText\'"

    .line 25
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09018c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmRightText:Landroid/widget/TextView;

    const-string v0, "field \'lowSnoozeLayout\'"

    .line 26
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090194

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeLayout:Landroid/widget/RelativeLayout;

    const-string v0, "field \'lowSnoozeLeftText\'"

    .line 27
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090195

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeLeftText:Landroid/widget/TextView;

    const-string v0, "field \'lowSnoozeRightText\'"

    .line 28
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090196

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeRightText:Landroid/widget/TextView;

    const-string v0, "field \'highAlarmLayout\'"

    .line 29
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090134

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmLayout:Landroid/widget/RelativeLayout;

    const-string v0, "field \'highAlarmLeftText\'"

    .line 30
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090135

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmLeftText:Landroid/widget/TextView;

    const-string v0, "field \'highAlarmRightText\'"

    .line 31
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090136

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmRightText:Landroid/widget/TextView;

    const-string v0, "field \'highSnoozeLayout\'"

    .line 32
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090140

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeLayout:Landroid/widget/RelativeLayout;

    const-string v0, "field \'highSnoozeLeftText\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090141

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeLeftText:Landroid/widget/TextView;

    const-string v0, "field \'highSnoozeRightText\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090142

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeRightText:Landroid/widget/TextView;

    const-string v0, "field \'disconnectLayout\'"

    .line 35
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0900d9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectLayout:Landroid/widget/LinearLayout;

    const-string v0, "field \'disconnectValueLayout\'"

    .line 36
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0900dc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectValueLayout:Landroid/widget/RelativeLayout;

    const-string v0, "field \'disconnectMinutesLeftText\'"

    .line 37
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0900da

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectMinutesLeftText:Landroid/widget/TextView;

    const-string v0, "field \'disconnectMinutesRightText\'"

    .line 38
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0900db

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectMinutesRightText:Landroid/widget/TextView;

    const-string v0, "field \'dndSwitch\'"

    .line 39
    const-class v1, Landroid/widget/Switch;

    const v2, 0x7f0900e1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndSwitch:Landroid/widget/Switch;

    const-string v0, "field \'dndTextView\'"

    .line 40
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0900df

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity_ViewBinding;->target:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 49
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmLayout:Landroid/widget/RelativeLayout;

    .line 50
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmLeftText:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmRightText:Landroid/widget/TextView;

    .line 52
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeLayout:Landroid/widget/RelativeLayout;

    .line 53
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeLeftText:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeRightText:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmLayout:Landroid/widget/RelativeLayout;

    .line 56
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmLeftText:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmRightText:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeLayout:Landroid/widget/RelativeLayout;

    .line 59
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeLeftText:Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeRightText:Landroid/widget/TextView;

    .line 61
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectLayout:Landroid/widget/LinearLayout;

    .line 62
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectValueLayout:Landroid/widget/RelativeLayout;

    .line 63
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectMinutesLeftText:Landroid/widget/TextView;

    .line 64
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectMinutesRightText:Landroid/widget/TextView;

    .line 65
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndSwitch:Landroid/widget/Switch;

    .line 66
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndTextView:Landroid/widget/TextView;

    .line 68
    iput-object v1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity_ViewBinding;->target:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;

    return-void
.end method
