.class Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;
.super Ljava/lang/Object;
.source "SystemSettingsActivity.java"

# interfaces
.implements Lcom/senseonics/events/EventUtils$PickerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->addGlucoseUnitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

.field final synthetic val$rightTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;->val$rightTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 211
    :pswitch_0
    sget-object p1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MMOL_L:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sput-object p1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    goto :goto_0

    .line 208
    :pswitch_1
    sget-object p1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sput-object p1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    .line 214
    :goto_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    .line 215
    invoke-static {p1}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 216
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;->val$rightTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    const-string v0, "currentGlucoseUnit"

    sget-object v1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    .line 219
    invoke-virtual {v1}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->ordinal()I

    move-result v1

    .line 217
    invoke-static {p1, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
