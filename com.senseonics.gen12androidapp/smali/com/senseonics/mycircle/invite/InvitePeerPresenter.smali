.class Lcom/senseonics/mycircle/invite/InvitePeerPresenter;
.super Lcom/senseonics/gen12androidapp/BasePresenter;
.source "InvitePeerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/senseonics/gen12androidapp/BasePresenter<",
        "Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;",
        ">;"
    }
.end annotation


# static fields
.field static final ACCOUNT_EMAIL_USED:I = 0x3

.field static final EMAIL_SENT:I = 0x0

.field static final MAX_LIMIT_REACHED:I = 0x1

.field static final MEMBER_ALREADY_EXISTS:I = 0x2


# instance fields
.field private errorHandler:Lcom/senseonics/view/CommonErrorHandler;

.field private model:Lcom/senseonics/mycircle/model/MyCircleModel;

.field private repository:Lcom/senseonics/mycircle/invite/InvitePeerRepository;

.field private validator:Lcom/senseonics/util/EmailValidator;


# direct methods
.method public constructor <init>(Lcom/senseonics/mycircle/invite/InvitePeerRepository;Lcom/senseonics/util/EmailValidator;Lcom/senseonics/view/CommonErrorHandler;Lcom/senseonics/mycircle/model/MyCircleModel;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->repository:Lcom/senseonics/mycircle/invite/InvitePeerRepository;

    .line 44
    iput-object p2, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->validator:Lcom/senseonics/util/EmailValidator;

    .line 45
    iput-object p3, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    .line 46
    iput-object p4, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->handleSendClicked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;Ljava/lang/Integer;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->handleInvitationResult(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$200(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;Ljava/lang/Throwable;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->handleInvitationFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;)Ljava/lang/Object;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method private handleInvitationFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 122
    iget-boolean v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->attached:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->setInviteButtonEnabled(Z)V

    .line 124
    invoke-direct {p0, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->updateViewOnError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private handleInvitationResult(Ljava/lang/Integer;)V
    .locals 6

    .line 92
    iget-boolean v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->attached:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->setInviteButtonEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    invoke-interface {v0}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->hideProgress()V

    .line 95
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 115
    iget-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const v1, 0x7f0f027b

    const v2, 0x7f0f027e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    goto :goto_0

    .line 112
    :pswitch_0
    iget-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const v1, 0x7f0f0136

    const v2, 0x7f0f013a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const v1, 0x7f0f0166

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const v1, 0x7f0f0143

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    goto :goto_0

    .line 98
    :pswitch_3
    iget-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const v1, 0x7f0f013d

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$5;

    invoke-direct {v4, p0}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$5;-><init>(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;)V

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSendClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 66
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->validator:Lcom/senseonics/util/EmailValidator;

    invoke-virtual {v0, p2}, Lcom/senseonics/util/EmailValidator;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    invoke-virtual {v0}, Lcom/senseonics/mycircle/model/MyCircleModel;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const v1, 0x7f0f0136

    const v2, 0x7f0f013a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->setInviteButtonEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    invoke-interface {v0}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->showProgress()V

    .line 78
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->repository:Lcom/senseonics/mycircle/invite/InvitePeerRepository;

    new-instance v1, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$3;

    invoke-direct {v1, p0}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$3;-><init>(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;)V

    new-instance v2, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$4;

    invoke-direct {v2, p0}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$4;-><init>(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;)V

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/senseonics/mycircle/invite/InvitePeerRepository;->inviteToCircle(Ljava/lang/String;Ljava/lang/String;Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-void

    .line 67
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const v1, 0x7f0f0136

    const v2, 0x7f0f0137

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    return-void
.end method

.method private showAlertDialog(Landroid/content/Context;Ljava/util/List;Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;",
            ")V"
        }
    .end annotation

    .line 177
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f100132

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 178
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 179
    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const p2, 0x7f0f0021

    .line 180
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v1, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$6;

    invoke-direct {v1, p0, p3, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$6;-><init>(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;[Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateViewOnError(Ljava/lang/Throwable;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    invoke-interface {v0}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->hideProgress()V

    .line 130
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    iget-object v1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    check-cast v1, Lcom/senseonics/view/DialogShowingView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/senseonics/view/CommonErrorHandler;->showErrorDialog(Lcom/senseonics/view/DialogShowingView;Ljava/lang/Throwable;Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BasePresenter;->attach(Ljava/lang/Object;)V

    .line 52
    new-instance v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$1;-><init>(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;)V

    new-instance v1, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$2;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$2;-><init>(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;)V

    invoke-interface {p1, v0, v1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->setupViews(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->attach(Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;Landroid/content/Context;)V
    .locals 10

    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 138
    sget p2, Lcom/senseonics/util/Utils;->CONTACT_PICKER_RESULT:I

    if-ne p1, p2, :cond_9

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 142
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p3

    .line 143
    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "contact_id=?"

    new-array v7, v2, [Ljava/lang/String;

    aput-object p3, v7, v1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p2, "data1"

    .line 149
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 151
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lt v3, v2, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    :cond_0
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_1
    const v4, 0x7f0f0188

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p4

    .line 158
    invoke-interface/range {v3 .. v8}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p3, :cond_2

    .line 163
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v2, :cond_3

    goto :goto_4

    .line 169
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lt p2, v0, :cond_9

    goto :goto_5

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-object p2, p3

    goto :goto_3

    :catchall_1
    move-exception p3

    move-object v9, p3

    move-object p3, p2

    move-object p2, v9

    :goto_1
    if-eqz p3, :cond_4

    .line 163
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, v2, :cond_5

    .line 167
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p4, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->setEmailText(Ljava/lang/String;)V

    goto :goto_2

    .line 169
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lt p3, v0, :cond_6

    .line 170
    invoke-direct {p0, p5, p1, p4}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->showAlertDialog(Landroid/content/Context;Ljava/util/List;Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;)V

    .line 172
    :cond_6
    :goto_2
    throw p2

    :catch_1
    :goto_3
    if-eqz p2, :cond_7

    .line 163
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v2, :cond_8

    .line 167
    :goto_4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p4, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->setEmailText(Ljava/lang/String;)V

    goto :goto_6

    .line 169
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lt p2, v0, :cond_9

    .line 170
    :goto_5
    invoke-direct {p0, p5, p1, p4}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->showAlertDialog(Landroid/content/Context;Ljava/util/List;Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;)V

    :cond_9
    :goto_6
    return-void
.end method
