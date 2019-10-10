.class Lcom/senseonics/gen12androidapp/UserAccountActivity$4;
.super Ljava/lang/Object;
.source "UserAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/UserAccountActivity;->setupBtnSyncOnClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/UserAccountActivity;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 145
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-static {p1}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 147
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->btnSync:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    const v1, 0x7f0f0246

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v1, v1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-static {p1, v0, v1}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->uploadAllStateModelInfo(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lde/greenrobot/event/EventBus;)V

    .line 164
    new-instance p1, Lcom/senseonics/util/DMSUploadTask;

    const/4 v0, 0x0

    .line 165
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v4, v1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v5, v1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v6, v1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v1, v1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 169
    invoke-virtual {v1}, Lcom/senseonics/util/AccountConstants;->getSyncDaysFromPreference()I

    move-result v1

    mul-int/lit8 v7, v1, 0x18

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v8, v1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->eventBus:Lde/greenrobot/event/EventBus;

    iget-object v9, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/senseonics/util/DMSUploadTask;-><init>(Ljava/lang/Boolean;Lcom/senseonics/util/AccountConstants;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;ILde/greenrobot/event/EventBus;Lcom/senseonics/util/DMSTaskCallback;)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 171
    invoke-virtual {p1, v0}, Lcom/senseonics/util/DMSUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->NotConnectedToWifi:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 175
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    .line 176
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->btnSync:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    const v1, 0x7f0f0244

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->access$300(Lcom/senseonics/gen12androidapp/UserAccountActivity;)V

    :goto_0
    return-void
.end method
