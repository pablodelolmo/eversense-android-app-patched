.class Lcom/senseonics/fragments/MealTimesFragment$4;
.super Ljava/lang/Object;
.source "MealTimesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/MealTimesFragment;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/MealTimesFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/MealTimesFragment;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/senseonics/fragments/MealTimesFragment$4;->this$0:Lcom/senseonics/fragments/MealTimesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 108
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesFragment$4;->this$0:Lcom/senseonics/fragments/MealTimesFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/MealTimesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->PASS_VALUE:Ljava/lang/String;

    iget-object v2, p0, Lcom/senseonics/fragments/MealTimesFragment$4;->this$0:Lcom/senseonics/fragments/MealTimesFragment;

    invoke-static {v2}, Lcom/senseonics/fragments/MealTimesFragment;->access$000(Lcom/senseonics/fragments/MealTimesFragment;)Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    sget-object v2, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->DINNER:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesFragment$4;->this$0:Lcom/senseonics/fragments/MealTimesFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/MealTimesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
