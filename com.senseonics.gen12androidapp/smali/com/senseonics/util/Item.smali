.class public Lcom/senseonics/util/Item;
.super Ljava/lang/Object;
.source "Item.java"


# instance fields
.field private id:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/senseonics/util/Item;->id:I

    .line 11
    iput-object p2, p0, Lcom/senseonics/util/Item;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/senseonics/util/Item;->id:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/senseonics/util/Item;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/senseonics/util/Item;->id:I

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/senseonics/util/Item;->value:Ljava/lang/String;

    return-void
.end method
