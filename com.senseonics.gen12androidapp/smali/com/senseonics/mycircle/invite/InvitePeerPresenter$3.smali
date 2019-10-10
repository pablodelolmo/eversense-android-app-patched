.class Lcom/senseonics/mycircle/invite/InvitePeerPresenter$3;
.super Ljava/lang/Object;
.source "InvitePeerPresenter.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->handleSendClicked(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/invite/InvitePeerPresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$3;->this$0:Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$3;->this$0:Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    invoke-static {v0, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->access$100(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$3;->call(Ljava/lang/Integer;)V

    return-void
.end method
