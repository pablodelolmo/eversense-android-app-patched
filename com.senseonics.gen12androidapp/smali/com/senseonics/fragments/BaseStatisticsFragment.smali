.class public abstract Lcom/senseonics/fragments/BaseStatisticsFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "BaseStatisticsFragment.java"


# instance fields
.field protected contentLayout:Landroid/widget/LinearLayout;

.field protected databaseManager:Lcom/senseonics/db/DatabaseManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected emailer:Lcom/senseonics/util/Emailer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected noStatisticsLayout:Landroid/widget/RelativeLayout;

.field protected progressDialog:Landroid/app/ProgressDialog;

.field protected reportTabSelectionHandler:Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;

.field protected selectedState:[I

.field protected tab1Layout:Landroid/widget/LinearLayout;

.field protected tab1Name:Ljava/lang/String;

.field protected tab1Text:Landroid/widget/TextView;

.field protected tab2Layout:Landroid/widget/LinearLayout;

.field protected tab2Name:Ljava/lang/String;

.field protected tab2Text:Landroid/widget/TextView;

.field protected tab3Layout:Landroid/widget/LinearLayout;

.field protected tab3Name:Ljava/lang/String;

.field protected tab3Text:Landroid/widget/TextView;

.field protected tab4Layout:Landroid/widget/LinearLayout;

.field protected tab4Name:Ljava/lang/String;

.field protected tab4Text:Landroid/widget/TextView;

.field protected tab5Layout:Landroid/widget/LinearLayout;

.field protected tab5Name:Ljava/lang/String;

.field protected tab5Text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public activateDeactivateTabText(I)V
    .locals 3

    .line 225
    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 227
    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 264
    :pswitch_0
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 248
    :pswitch_2
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 240
    :pswitch_3
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 232
    :pswitch_4
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected amIEmpty()Z
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearAllButtonStates()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 277
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 279
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 280
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 282
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 283
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 285
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 286
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 288
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 289
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    return-void
.end method

.method protected createProgressDialogIfNeeded()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f100145

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 69
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080099

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method protected dismissProgressDialogIfNeeded()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public formShareEmail()V
    .locals 4

    .line 293
    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->amIEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->emailer:Lcom/senseonics/util/Emailer;

    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getEmailTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getEmailBody()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/senseonics/util/Emailer;->formShareEmail(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 296
    :cond_0
    const-class v0, Lcom/senseonics/fragments/BaseStatisticsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "not sharing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected abstract getEmailBody()Ljava/lang/String;
.end method

.method protected abstract getEmailTitle()Ljava/lang/String;
.end method

.method protected getLayoutForTabId(I)Landroid/widget/LinearLayout;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Layout:Landroid/widget/LinearLayout;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 201
    :pswitch_0
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Layout:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 197
    :pswitch_1
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Layout:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 193
    :pswitch_2
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Layout:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 189
    :pswitch_3
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Layout:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 185
    :pswitch_4
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Layout:Landroid/widget/LinearLayout;

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasData()Z
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected initTabs(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090279

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Layout:Landroid/widget/LinearLayout;

    const v0, 0x7f09027a

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Text:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09027b

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Layout:Landroid/widget/LinearLayout;

    const v0, 0x7f09027c

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Text:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09027d

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Layout:Landroid/widget/LinearLayout;

    const v0, 0x7f09027e

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Text:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09027f

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Layout:Landroid/widget/LinearLayout;

    const v0, 0x7f090280

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Text:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090281

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Layout:Landroid/widget/LinearLayout;

    const v0, 0x7f090282

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Text:Landroid/widget/TextView;

    .line 142
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Text:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Layout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/senseonics/fragments/BaseStatisticsFragment$1;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/BaseStatisticsFragment$1;-><init>(Lcom/senseonics/fragments/BaseStatisticsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Layout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/senseonics/fragments/BaseStatisticsFragment$2;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/BaseStatisticsFragment$2;-><init>(Lcom/senseonics/fragments/BaseStatisticsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Layout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/senseonics/fragments/BaseStatisticsFragment$3;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/BaseStatisticsFragment$3;-><init>(Lcom/senseonics/fragments/BaseStatisticsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Layout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/senseonics/fragments/BaseStatisticsFragment$4;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/BaseStatisticsFragment$4;-><init>(Lcom/senseonics/fragments/BaseStatisticsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Layout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/senseonics/fragments/BaseStatisticsFragment$5;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/BaseStatisticsFragment$5;-><init>(Lcom/senseonics/fragments/BaseStatisticsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 43
    new-instance v0, Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;

    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->reportTabSelectionHandler:Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;

    const v0, 0x7f0f00a7

    .line 45
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Name:Ljava/lang/String;

    const v0, 0x7f0f00aa

    .line 46
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Name:Ljava/lang/String;

    const v0, 0x7f0f00a8

    .line 47
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Name:Ljava/lang/String;

    const v0, 0x7f0f00a9

    .line 48
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Name:Ljava/lang/String;

    const v0, 0x7f0f00ab

    .line 49
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Name:Ljava/lang/String;

    const/4 v0, 0x5

    .line 51
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    .line 52
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 53
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 54
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 55
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 56
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 0

    .line 62
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onPause()V

    .line 63
    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->dismissProgressDialogIfNeeded()V

    return-void
.end method

.method protected returnTabNameString(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Name:Ljava/lang/String;

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Name:Ljava/lang/String;

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Name:Ljava/lang/String;

    goto :goto_0

    .line 103
    :pswitch_3
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Name:Ljava/lang/String;

    goto :goto_0

    .line 100
    :pswitch_4
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Name:Ljava/lang/String;

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSelected(ILandroid/widget/LinearLayout;)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->clearAllButtonStates()V

    .line 212
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    .line 213
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->reportTabSelectionHandler:Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;

    invoke-virtual {v0, p1}, Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;->setSelectedTab(I)V

    .line 214
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/BaseStatisticsFragment;->activateDeactivateTabText(I)V

    .line 216
    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/senseonics/fragments/StatisticsFragment;

    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->hasData()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/senseonics/fragments/StatisticsFragment;->setShareButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected showProgressDialogIfNeeded()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method protected updateTabSelection()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->reportTabSelectionHandler:Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;->getSelectedTab()I

    move-result v0

    .line 119
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getLayoutForTabId(I)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/fragments/BaseStatisticsFragment;->setSelected(ILandroid/widget/LinearLayout;)V

    return-void
.end method
