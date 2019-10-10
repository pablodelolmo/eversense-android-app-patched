.class public Lcom/senseonics/gen12androidapp/MealTimesActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "MealTimesActivity.java"


# instance fields
.field protected mealTimesFragment:Lcom/senseonics/fragments/MealTimesFragment;

.field protected mealTimesManager:Lcom/senseonics/fragments/MealTimesFragment$MealTimesManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    .line 10
    new-instance v0, Lcom/senseonics/gen12androidapp/MealTimesActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/MealTimesActivity$1;-><init>(Lcom/senseonics/gen12androidapp/MealTimesActivity;)V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimesActivity;->mealTimesManager:Lcom/senseonics/fragments/MealTimesFragment$MealTimesManager;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 15
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0034

    .line 17
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MealTimesActivity;->initializeLayout(I)Landroid/view/View;

    .line 18
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MealTimesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0163

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/MealTimesActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance p1, Lcom/senseonics/fragments/MealTimesFragment;

    invoke-direct {p1}, Lcom/senseonics/fragments/MealTimesFragment;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimesActivity;->mealTimesFragment:Lcom/senseonics/fragments/MealTimesFragment;

    .line 21
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimesActivity;->mealTimesFragment:Lcom/senseonics/fragments/MealTimesFragment;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimesActivity;->mealTimesManager:Lcom/senseonics/fragments/MealTimesFragment$MealTimesManager;

    invoke-virtual {p1, v0}, Lcom/senseonics/fragments/MealTimesFragment;->setMealTimesManager(Lcom/senseonics/fragments/MealTimesFragment$MealTimesManager;)V

    .line 22
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MealTimesActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimesActivity;->mealTimesFragment:Lcom/senseonics/fragments/MealTimesFragment;

    const v1, 0x7f09011e

    .line 23
    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
