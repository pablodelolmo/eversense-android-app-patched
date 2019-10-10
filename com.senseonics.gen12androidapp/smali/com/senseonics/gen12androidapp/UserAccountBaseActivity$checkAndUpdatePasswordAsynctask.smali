.class public Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;
.super Landroid/os/AsyncTask;
.source "UserAccountBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "checkAndUpdatePasswordAsynctask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private passWord:Ljava/lang/String;

.field private response:Ljava/lang/String;

.field final synthetic this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

.field private userName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->userName:Ljava/lang/String;

    .line 151
    iput-object p3, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->passWord:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 144
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 156
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->userName:Ljava/lang/String;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->passWord:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->access$000(Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->response:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 144
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6

    .line 162
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->response:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->response:Ljava/lang/String;

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 163
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 168
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 169
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->response:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v3, 0x0

    .line 170
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 172
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v4, 0x2

    if-eq v2, p1, :cond_1

    if-ne v2, v4, :cond_0

    .line 175
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 176
    iget-object v5, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v5, v5, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "CheckAndUpdatePasswordResult"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    .line 178
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 183
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    const-string v1, ""

    .line 187
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ","

    .line 188
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 190
    array-length v2, v1

    if-ne v2, v4, :cond_3

    const/4 v2, 0x0

    .line 191
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 192
    aget-object v1, v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 195
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    :try_start_1
    invoke-static {v3}, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->fromValue(I)Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    move-result-object v0

    .line 201
    iget-object v3, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->userID:Ljava/lang/String;

    .line 203
    sget-object v1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$CheckAndUpdatePasswordResult:[I

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 226
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    goto :goto_2

    .line 213
    :pswitch_0
    sget-object v1, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->PwdUpdatedAndAuthenticated:Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    if-ne v0, v1, :cond_2

    .line 216
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0, p1}, Lcom/senseonics/util/AccountConstants;->setMigrationPasswordUpdated(Z)V

    .line 219
    :cond_2
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->DataSaved:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 220
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_3

    .line 206
    :pswitch_1
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->IDNotFound:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 207
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    goto :goto_3

    .line 226
    :goto_2
    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ServerError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 227
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    move-object v0, v4

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v0, v4

    goto :goto_4

    :catch_1
    move-exception p1

    .line 233
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    :cond_3
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 237
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ServerError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 238
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    goto :goto_6

    .line 241
    :cond_4
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->response:Ljava/lang/String;

    if-nez p1, :cond_5

    .line 242
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->NotConnectedToWifi:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 243
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    goto :goto_6

    .line 245
    :cond_5
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ServerError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 246
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    .line 250
    :cond_6
    :goto_6
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->access$100(Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
