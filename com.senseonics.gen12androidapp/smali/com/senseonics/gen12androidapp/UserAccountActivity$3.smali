.class Lcom/senseonics/gen12androidapp/UserAccountActivity$3;
.super Ljava/lang/Object;
.source "UserAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/UserAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

.field final synthetic val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/UserAccountActivity;Lcom/senseonics/events/EventUtils$PickerManager;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;->val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 112
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0243

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->syncDaysValues:Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/senseonics/util/Item;

    new-instance v2, Lcom/senseonics/util/Item;

    const-string v3, "1"

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/senseonics/util/Item;

    const-string v3, "3"

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/senseonics/util/Item;

    const-string v3, "7"

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/senseonics/util/Item;

    const-string v3, "14"

    const/4 v4, 0x3

    invoke-direct {v2, v4, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/senseonics/util/Item;

    const-string v3, "30"

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 118
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v1, v1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->syncDaysValues:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v2, v2, Lcom/senseonics/gen12androidapp/UserAccountActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "AccountSyncDays"

    sget v4, Lcom/senseonics/util/Utils;->DEFAULT_SYNC_DAYS:I

    .line 119
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->getMinuteItemPosition(Ljava/util/ArrayList;I)I

    move-result v0

    .line 122
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v2, v2, Lcom/senseonics/gen12androidapp/UserAccountActivity;->syncDaysValues:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;->val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

    invoke-static {v1, p1, v2, v3, v0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->access$200(Lcom/senseonics/gen12androidapp/UserAccountActivity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)V

    return-void
.end method
