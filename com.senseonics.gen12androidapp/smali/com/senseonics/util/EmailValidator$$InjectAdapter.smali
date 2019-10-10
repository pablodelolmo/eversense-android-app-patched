.class public final Lcom/senseonics/util/EmailValidator$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "EmailValidator$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/util/EmailValidator;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/util/EmailValidator;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.util.EmailValidator"

    const-string v1, "members/com.senseonics.util.EmailValidator"

    .line 18
    const-class v2, Lcom/senseonics/util/EmailValidator;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/util/EmailValidator;
    .locals 1

    .line 27
    new-instance v0, Lcom/senseonics/util/EmailValidator;

    invoke-direct {v0}, Lcom/senseonics/util/EmailValidator;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/senseonics/util/EmailValidator$$InjectAdapter;->get()Lcom/senseonics/util/EmailValidator;

    move-result-object v0

    return-object v0
.end method
