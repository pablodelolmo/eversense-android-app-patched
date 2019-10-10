.class public Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "MealTimesStartEndTimePickerActivity.java"


# instance fields
.field protected mealTimesStartEndTimePickerFragment:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

.field protected mealTimesStartEndTimePickerManager:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$MealTimesStartEndTimePickerManager;

.field protected mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    .line 10
    sget-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->BREAKFAST:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity;->mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    .line 11
    new-instance v0, Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity$1;-><init>(Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity;)V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity;->mealTimesStartEndTimePickerManager:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$MealTimesStartEndTimePickerManager;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 16
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0034

    .line 18
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity;->initializeLayout(I)Landroid/view/View;

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 20
    invoke-static {}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->values()[Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    move-result-object v0

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->PASS_VALUE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity;->mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    .line 21
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity;->mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-static {p0, p1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getMealTimeString(Landroid/content/Context;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance p1, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-direct {p1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity;->mealTimesStartEndTimePickerFragment:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    .line 24
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity;->mealTimesStartEndTimePickerFragment:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity;->mealTimesStartEndTimePickerManager:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$MealTimesStartEndTimePickerManager;

    invoke-virtual {p1, v0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setMealTimesManager(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$MealTimesStartEndTimePickerManager;)V

    .line 25
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 26
    sget-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->PASS_VALUE:Ljava/lang/String;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity;->mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity;->mealTimesStartEndTimePickerFragment:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-virtual {v0, p1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimesStartEndTimePickerActivity;->mealTimesStartEndTimePickerFragment:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    const v1, 0x7f09011e

    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
