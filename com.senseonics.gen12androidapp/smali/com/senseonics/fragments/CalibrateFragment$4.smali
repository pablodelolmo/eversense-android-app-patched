.class Lcom/senseonics/fragments/CalibrateFragment$4;
.super Ljava/lang/Object;
.source "CalibrateFragment.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/DateDialogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/CalibrateFragment;->initTimePicker(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/CalibrateFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/CalibrateFragment;)V
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$4;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSelected(Ljava/util/Calendar;)V
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment$4;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {v0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->access$500(Lcom/senseonics/fragments/CalibrateFragment;Ljava/util/Calendar;)V

    return-void
.end method
