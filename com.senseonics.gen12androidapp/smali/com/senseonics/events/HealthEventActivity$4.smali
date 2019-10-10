.class Lcom/senseonics/events/HealthEventActivity$4;
.super Ljava/lang/Object;
.source "HealthEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/events/HealthEventActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/events/HealthEventActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/events/HealthEventActivity;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/senseonics/events/HealthEventActivity$4;->this$0:Lcom/senseonics/events/HealthEventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 82
    iget-object p1, p0, Lcom/senseonics/events/HealthEventActivity$4;->this$0:Lcom/senseonics/events/HealthEventActivity;

    iget-object v0, p0, Lcom/senseonics/events/HealthEventActivity$4;->this$0:Lcom/senseonics/events/HealthEventActivity;

    .line 83
    invoke-virtual {v0}, Lcom/senseonics/events/HealthEventActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/events/HealthEventActivity$4;->this$0:Lcom/senseonics/events/HealthEventActivity;

    .line 84
    invoke-static {v1}, Lcom/senseonics/events/HealthEventActivity;->access$200(Lcom/senseonics/events/HealthEventActivity;)Lcom/senseonics/events/EventUtils$PickerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/events/HealthEventActivity$4;->this$0:Lcom/senseonics/events/HealthEventActivity;

    invoke-static {v2}, Lcom/senseonics/events/HealthEventActivity;->access$300(Lcom/senseonics/events/HealthEventActivity;)Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    move-result-object v2

    invoke-virtual {v2}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->ordinal()I

    move-result v2

    .line 82
    invoke-static {p1, v0, v1, v2}, Lcom/senseonics/events/EventUtils;->createHealthSeverityPicker(Landroid/content/Context;Ljava/lang/String;Lcom/senseonics/events/EventUtils$PickerManager;I)V

    return-void
.end method
