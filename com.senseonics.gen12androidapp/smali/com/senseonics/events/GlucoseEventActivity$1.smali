.class Lcom/senseonics/events/GlucoseEventActivity$1;
.super Ljava/lang/Object;
.source "GlucoseEventActivity.java"

# interfaces
.implements Lcom/senseonics/events/EventUtils$PickerManager;


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


# direct methods
.method constructor <init>(Lcom/senseonics/events/GlucoseEventActivity;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity$1;->this$0:Lcom/senseonics/events/GlucoseEventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/senseonics/events/GlucoseEventActivity$1;->this$0:Lcom/senseonics/events/GlucoseEventActivity;

    iget-object v1, p0, Lcom/senseonics/events/GlucoseEventActivity$1;->this$0:Lcom/senseonics/events/GlucoseEventActivity;

    invoke-static {v1}, Lcom/senseonics/events/GlucoseEventActivity;->access$100(Lcom/senseonics/events/GlucoseEventActivity;)Lcom/senseonics/bluetoothle/DialogUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/events/GlucoseEventActivity$1;->this$0:Lcom/senseonics/events/GlucoseEventActivity;

    invoke-static {v2}, Lcom/senseonics/events/GlucoseEventActivity;->access$000(Lcom/senseonics/events/GlucoseEventActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/util/Item;

    .line 83
    invoke-virtual {p1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {v1, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->getGlucoseValueMg(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/senseonics/events/GlucoseEventActivity;->glucoseLevel:I

    .line 84
    iget-object p1, p0, Lcom/senseonics/events/GlucoseEventActivity$1;->this$0:Lcom/senseonics/events/GlucoseEventActivity;

    iget-object v0, p0, Lcom/senseonics/events/GlucoseEventActivity$1;->this$0:Lcom/senseonics/events/GlucoseEventActivity;

    iget v0, v0, Lcom/senseonics/events/GlucoseEventActivity;->glucoseLevel:I

    invoke-static {p1, v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/senseonics/events/GlucoseEventActivity$1;->this$0:Lcom/senseonics/events/GlucoseEventActivity;

    invoke-static {v0}, Lcom/senseonics/events/GlucoseEventActivity;->access$200(Lcom/senseonics/events/GlucoseEventActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
