.class public Lcom/senseonics/mycircle/invite/InvitePeerActivity;
.super Lcom/senseonics/gen12androidapp/BaseMVPActivity;
.source "InvitePeerActivity.java"

# interfaces
.implements Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;


# static fields
.field private static final REQUEST_CODE:I = 0x1739


# instance fields
.field btnAddEmail:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090088
    .end annotation
.end field

.field emailEditText:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f9
    .end annotation
.end field

.field nicknameEditText:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901d8
    .end annotation
.end field

.field presenter:Lcom/senseonics/mycircle/invite/InvitePeerPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field sendButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09023f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;-><init>()V

    return-void
.end method

.method private isContactAccessNeeded()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "android.permission.READ_CONTACTS"

    .line 112
    invoke-virtual {p0, v0}, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private launchContactPickerPermissionGranted()V
    .locals 3

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 95
    sget v1, Lcom/senseonics/util/Utils;->CONTACT_PICKER_RESULT:I

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected attachToPresenter()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->presenter:Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    invoke-virtual {v0, p0}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->attach(Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;)V

    return-void
.end method

.method protected detachFromPresenter()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->presenter:Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    invoke-virtual {v0}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->detach()V

    return-void
.end method

.method public getEnteredEmail()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->emailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnteredNickname()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->nicknameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public launchContactPicker()V
    .locals 2

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->isContactAccessNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.READ_CONTACTS"

    .line 101
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1739

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->launchContactPickerPermissionGranted()V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 128
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->presenter:Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->onActivityResult(IILandroid/content/Intent;Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0029

    .line 44
    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->initializeLayout(I)Landroid/view/View;

    .line 46
    invoke-virtual {p0}, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f013f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 p2, 0x1739

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 119
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->launchContactPickerPermissionGranted()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->finish()V

    return-void
.end method

.method public setEmailText(Ljava/lang/String;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->emailEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setInviteButtonEnabled(Z)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->sendButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setupViews(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->sendButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->btnAddEmail:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
