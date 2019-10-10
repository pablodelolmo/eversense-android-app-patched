.class Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$3;
.super Ljava/lang/Object;
.source "MealTimesStartEndTimePickerFragment.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/TimeDialogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$3;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSelected(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$3;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->access$102(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;I)I

    .line 206
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$3;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->access$202(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;I)I

    .line 207
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$3;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->access$500(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;II)V

    .line 208
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$3;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->saveStartTimesDataHandlerValue(II)V

    return-void
.end method
