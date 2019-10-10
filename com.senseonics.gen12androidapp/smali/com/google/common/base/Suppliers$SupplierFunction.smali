.class final enum Lcom/google/common/base/Suppliers$SupplierFunction;
.super Ljava/lang/Enum;
.source "Suppliers.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Suppliers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SupplierFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/Suppliers$SupplierFunction;",
        ">;",
        "Lcom/google/common/base/Function<",
        "Lcom/google/common/base/Supplier<",
        "*>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/Suppliers$SupplierFunction;

.field public static final enum INSTANCE:Lcom/google/common/base/Suppliers$SupplierFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 296
    new-instance v0, Lcom/google/common/base/Suppliers$SupplierFunction;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Suppliers$SupplierFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Suppliers$SupplierFunction;->INSTANCE:Lcom/google/common/base/Suppliers$SupplierFunction;

    const/4 v0, 0x1

    .line 295
    new-array v0, v0, [Lcom/google/common/base/Suppliers$SupplierFunction;

    sget-object v1, Lcom/google/common/base/Suppliers$SupplierFunction;->INSTANCE:Lcom/google/common/base/Suppliers$SupplierFunction;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/base/Suppliers$SupplierFunction;->$VALUES:[Lcom/google/common/base/Suppliers$SupplierFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 295
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/Suppliers$SupplierFunction;
    .locals 1

    .line 295
    const-class v0, Lcom/google/common/base/Suppliers$SupplierFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/Suppliers$SupplierFunction;

    return-object p0
.end method

.method public static values()[Lcom/google/common/base/Suppliers$SupplierFunction;
    .locals 1

    .line 295
    sget-object v0, Lcom/google/common/base/Suppliers$SupplierFunction;->$VALUES:[Lcom/google/common/base/Suppliers$SupplierFunction;

    invoke-virtual {v0}, [Lcom/google/common/base/Suppliers$SupplierFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/Suppliers$SupplierFunction;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/google/common/base/Supplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 299
    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 295
    check-cast p1, Lcom/google/common/base/Supplier;

    invoke-virtual {p0, p1}, Lcom/google/common/base/Suppliers$SupplierFunction;->apply(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Suppliers.supplierFunction()"

    return-object v0
.end method
