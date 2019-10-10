.class Lcom/senseonics/events/MealEventActivity$2;
.super Ljava/lang/Object;
.source "MealEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 57
    iput-object p1, p0, Lcom/senseonics/events/MealEventActivity$2;->this$0:Lcom/senseonics/events/MealEventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 61
    iget-object p1, p0, Lcom/senseonics/events/MealEventActivity$2;->this$0:Lcom/senseonics/events/MealEventActivity;

    iget-object v0, p0, Lcom/senseonics/events/MealEventActivity$2;->this$0:Lcom/senseonics/events/MealEventActivity;

    .line 62
    invoke-virtual {v0}, Lcom/senseonics/events/MealEventActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0270

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/events/MealEventActivity$2;->this$0:Lcom/senseonics/events/MealEventActivity;

    .line 63
    invoke-static {v1}, Lcom/senseonics/events/MealEventActivity;->access$000(Lcom/senseonics/events/MealEventActivity;)Lcom/senseonics/events/EventUtils$PickerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/events/MealEventActivity$2;->this$0:Lcom/senseonics/events/MealEventActivity;

    invoke-static {v2}, Lcom/senseonics/events/MealEventActivity;->access$100(Lcom/senseonics/events/MealEventActivity;)Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->ordinal()I

    move-result v2

    .line 61
    invoke-static {p1, v0, v1, v2}, Lcom/senseonics/events/EventUtils;->createMealTypePicker(Landroid/content/Context;Ljava/lang/String;Lcom/senseonics/events/EventUtils$PickerManager;I)V

    return-void
.end method
