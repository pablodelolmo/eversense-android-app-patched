.class Lcom/senseonics/events/GlucoseEventActivity$2;
.super Ljava/lang/Object;
.source "GlucoseEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/events/GlucoseEventActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/events/GlucoseEventActivity;

.field final synthetic val$manager:Lcom/senseonics/events/EventUtils$PickerManager;


# direct methods
.method constructor <init>(Lcom/senseonics/events/GlucoseEventActivity;Lcom/senseonics/events/EventUtils$PickerManager;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity$2;->this$0:Lcom/senseonics/events/GlucoseEventActivity;

    iput-object p2, p0, Lcom/senseonics/events/GlucoseEventActivity$2;->val$manager:Lcom/senseonics/events/EventUtils$PickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 95
    iget-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity$2;->this$0:Lcom/senseonics/events/GlucoseEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/GlucoseEventActivity;->access$300(Lcom/senseonics/events/GlucoseEventActivity;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity$2;->this$0:Lcom/senseonics/events/GlucoseEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/GlucoseEventActivity;->access$300(Lcom/senseonics/events/GlucoseEventActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity$2;->this$0:Lcom/senseonics/events/GlucoseEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/GlucoseEventActivity;->access$300(Lcom/senseonics/events/GlucoseEventActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity$2;->this$0:Lcom/senseonics/events/GlucoseEventActivity;

    iget-object v0, p0, Lcom/senseonics/events/GlucoseEventActivity$2;->this$0:Lcom/senseonics/events/GlucoseEventActivity;

    iget v0, v0, Lcom/senseonics/events/GlucoseEventActivity;->glucoseLevel:I

    invoke-virtual {p1, v0}, Lcom/senseonics/events/GlucoseEventActivity;->getPosition(I)I

    move-result v6

    .line 99
    iget-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity$2;->this$0:Lcom/senseonics/events/GlucoseEventActivity;

    iget-object v0, p0, Lcom/senseonics/events/GlucoseEventActivity$2;->this$0:Lcom/senseonics/events/GlucoseEventActivity;

    invoke-static {v0}, Lcom/senseonics/events/GlucoseEventActivity;->access$400(Lcom/senseonics/events/GlucoseEventActivity;)Lcom/senseonics/bluetoothle/DialogUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/events/GlucoseEventActivity$2;->this$0:Lcom/senseonics/events/GlucoseEventActivity;

    iget-object v0, p0, Lcom/senseonics/events/GlucoseEventActivity$2;->this$0:Lcom/senseonics/events/GlucoseEventActivity;

    .line 100
    invoke-virtual {v0}, Lcom/senseonics/events/GlucoseEventActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0105

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/senseonics/events/GlucoseEventActivity$2;->this$0:Lcom/senseonics/events/GlucoseEventActivity;

    .line 101
    invoke-static {v0}, Lcom/senseonics/events/GlucoseEventActivity;->access$000(Lcom/senseonics/events/GlucoseEventActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/senseonics/events/GlucoseEventActivity$2;->val$manager:Lcom/senseonics/events/EventUtils$PickerManager;

    .line 99
    invoke-virtual/range {v1 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/events/GlucoseEventActivity;->access$302(Lcom/senseonics/events/GlucoseEventActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 103
    iget-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity$2;->this$0:Lcom/senseonics/events/GlucoseEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/GlucoseEventActivity;->access$300(Lcom/senseonics/events/GlucoseEventActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
