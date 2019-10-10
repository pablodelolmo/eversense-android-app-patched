.class Lcom/senseonics/gen12androidapp/SystemSettingsActivity$5;
.super Ljava/lang/Object;
.source "SystemSettingsActivity.java"

# interfaces
.implements Lcom/senseonics/util/CustomEditText$EditTextImeBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->addTransmitterNameView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$5;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImeBack(Lcom/senseonics/util/CustomEditText;Ljava/lang/String;)V
    .locals 0

    .line 271
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$5;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 272
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$5;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->access$000(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)Lcom/senseonics/util/CustomEditText;

    move-result-object p1

    iget-object p2, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$5;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    iget-object p2, p2, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 273
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/senseonics/util/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$5;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->access$000(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)Lcom/senseonics/util/CustomEditText;

    move-result-object p1

    sget-object p2, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    .line 276
    invoke-virtual {p1, p2}, Lcom/senseonics/util/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
