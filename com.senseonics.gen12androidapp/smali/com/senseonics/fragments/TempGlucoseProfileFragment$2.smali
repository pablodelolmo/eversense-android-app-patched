.class Lcom/senseonics/fragments/TempGlucoseProfileFragment$2;
.super Ljava/lang/Object;
.source "TempGlucoseProfileFragment.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/DoublePickerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/TempGlucoseProfileFragment;->setupDurationLayoutOnClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$2;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(II)V
    .locals 5

    const/16 v0, 0x1e

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x1e

    :goto_0
    if-nez p1, :cond_1

    const/16 p2, 0x1e

    goto :goto_1

    :cond_1
    const/16 v0, 0x24

    if-ne p1, v0, :cond_2

    const/4 p2, 0x0

    :cond_2
    :goto_1
    mul-int/lit8 v0, p1, 0x3c

    add-int/2addr v0, p2

    .line 336
    iget-object v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$2;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v2, v2, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v2, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileDuration(I)V

    .line 337
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$2;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->access$000(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$2;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-virtual {v2}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f024b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
