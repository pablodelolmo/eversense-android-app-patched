.class Lcom/senseonics/fragments/GlucoseUnitFragment$3;
.super Ljava/lang/Object;
.source "GlucoseUnitFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/GlucoseUnitFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/GlucoseUnitFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/GlucoseUnitFragment;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/senseonics/fragments/GlucoseUnitFragment$3;->this$0:Lcom/senseonics/fragments/GlucoseUnitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 66
    iget-object p1, p0, Lcom/senseonics/fragments/GlucoseUnitFragment$3;->this$0:Lcom/senseonics/fragments/GlucoseUnitFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/GlucoseUnitFragment;->radioMmolType:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 67
    iget-object p1, p0, Lcom/senseonics/fragments/GlucoseUnitFragment$3;->this$0:Lcom/senseonics/fragments/GlucoseUnitFragment;

    sget-object p2, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-static {p1, p2}, Lcom/senseonics/fragments/GlucoseUnitFragment;->access$000(Lcom/senseonics/fragments/GlucoseUnitFragment;Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)V

    :cond_0
    return-void
.end method
