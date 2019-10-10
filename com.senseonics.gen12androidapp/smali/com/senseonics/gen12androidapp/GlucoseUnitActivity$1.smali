.class Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;
.super Ljava/lang/Object;
.source "GlucoseUnitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 38
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->access$000(Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;)Lcom/senseonics/fragments/GlucoseUnitFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->access$000(Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;)Lcom/senseonics/fragments/GlucoseUnitFragment;

    move-result-object p1

    iget-object p1, p1, Lcom/senseonics/fragments/GlucoseUnitFragment;->radioMgDLType:Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->access$000(Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;)Lcom/senseonics/fragments/GlucoseUnitFragment;

    move-result-object p1

    iget-object p1, p1, Lcom/senseonics/fragments/GlucoseUnitFragment;->radioMmolType:Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    .line 41
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->access$000(Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;)Lcom/senseonics/fragments/GlucoseUnitFragment;

    move-result-object p1

    iget-object p1, p1, Lcom/senseonics/fragments/GlucoseUnitFragment;->radioMgDLType:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    sget-object p1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sput-object p1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    .line 43
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    const-string v0, "currentGlucoseUnit"

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->ordinal()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 45
    :cond_0
    sget-object p1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MMOL_L:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sput-object p1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    .line 46
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    const-string v0, "currentGlucoseUnit"

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MMOL_L:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->ordinal()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;I)V

    .line 51
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    invoke-static {p1}, Lcom/senseonics/util/Utils;->shouldShowDosingIntro(Landroid/content/Context;)Z

    move-result p1

    const v0, 0x10008000

    if-eqz p1, :cond_2

    .line 54
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    const-class v2, Lcom/senseonics/gen12androidapp/DosingWelcomeActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 56
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    invoke-virtual {v0, p1}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 58
    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    const-class v2, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    invoke-virtual {v0, p1}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
