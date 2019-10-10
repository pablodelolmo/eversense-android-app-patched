.class Lcom/senseonics/events/MealEventActivity$3;
.super Ljava/lang/Object;
.source "MealEventActivity.java"

# interfaces
.implements Lcom/senseonics/events/EventUtils$PickerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/events/MealEventActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/events/MealEventActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/events/MealEventActivity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/senseonics/events/MealEventActivity$3;->this$0:Lcom/senseonics/events/MealEventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/senseonics/events/MealEventActivity$3;->this$0:Lcom/senseonics/events/MealEventActivity;

    iget-object v1, p0, Lcom/senseonics/events/MealEventActivity$3;->this$0:Lcom/senseonics/events/MealEventActivity;

    invoke-static {v1}, Lcom/senseonics/events/MealEventActivity;->access$400(Lcom/senseonics/events/MealEventActivity;)Lcom/senseonics/bluetoothle/DialogUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/events/MealEventActivity$3;->this$0:Lcom/senseonics/events/MealEventActivity;

    invoke-static {v2}, Lcom/senseonics/events/MealEventActivity;->access$300(Lcom/senseonics/events/MealEventActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/util/Item;

    .line 73
    invoke-virtual {p1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {v1, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->getGlucoseValueMg(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/senseonics/events/MealEventActivity;->access$202(Lcom/senseonics/events/MealEventActivity;I)I

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/senseonics/events/MealEventActivity$3;->this$0:Lcom/senseonics/events/MealEventActivity;

    invoke-static {v0}, Lcom/senseonics/events/MealEventActivity;->access$200(Lcom/senseonics/events/MealEventActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/senseonics/events/MealEventActivity$3;->this$0:Lcom/senseonics/events/MealEventActivity;

    const v1, 0x7f0f010c

    .line 75
    invoke-virtual {v0, v1}, Lcom/senseonics/events/MealEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/senseonics/events/MealEventActivity$3;->this$0:Lcom/senseonics/events/MealEventActivity;

    invoke-static {v0}, Lcom/senseonics/events/MealEventActivity;->access$500(Lcom/senseonics/events/MealEventActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
