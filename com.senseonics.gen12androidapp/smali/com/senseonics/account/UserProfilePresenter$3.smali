.class Lcom/senseonics/account/UserProfilePresenter$3;
.super Ljava/lang/Object;
.source "UserProfilePresenter.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/account/UserProfilePresenter;->refreshUserData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lcom/senseonics/mycircle/model/UserProfileDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/account/UserProfilePresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/account/UserProfilePresenter;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$3;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/senseonics/mycircle/model/UserProfileDto;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter$3;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    invoke-static {v0}, Lcom/senseonics/account/UserProfilePresenter;->access$100(Lcom/senseonics/account/UserProfilePresenter;)Lcom/senseonics/account/UserAccountModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/senseonics/account/UserAccountModel;->saveUserProfile(Lcom/senseonics/mycircle/model/UserProfileDto;)V

    .line 65
    iget-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$3;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    invoke-static {p1}, Lcom/senseonics/account/UserProfilePresenter;->access$200(Lcom/senseonics/account/UserProfilePresenter;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p1, Lcom/senseonics/mycircle/model/UserProfileDto;

    invoke-virtual {p0, p1}, Lcom/senseonics/account/UserProfilePresenter$3;->call(Lcom/senseonics/mycircle/model/UserProfileDto;)V

    return-void
.end method
