.class Ldagger/internal/codegen/GraphVisualizer$BindingComparator;
.super Ljava/lang/Object;
.source "GraphVisualizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/codegen/GraphVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BindingComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ldagger/internal/Binding<",
        "*>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldagger/internal/codegen/GraphVisualizer$1;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ldagger/internal/codegen/GraphVisualizer$BindingComparator;-><init>()V

    return-void
.end method

.method private getStringForBinding(Ldagger/internal/Binding;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Binding<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p1}, Ldagger/internal/Binding;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public compare(Ldagger/internal/Binding;Ldagger/internal/Binding;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Binding<",
            "*>;",
            "Ldagger/internal/Binding<",
            "*>;)I"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Ldagger/internal/codegen/GraphVisualizer$BindingComparator;->getStringForBinding(Ldagger/internal/Binding;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Ldagger/internal/codegen/GraphVisualizer$BindingComparator;->getStringForBinding(Ldagger/internal/Binding;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 129
    check-cast p1, Ldagger/internal/Binding;

    check-cast p2, Ldagger/internal/Binding;

    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/GraphVisualizer$BindingComparator;->compare(Ldagger/internal/Binding;Ldagger/internal/Binding;)I

    move-result p1

    return p1
.end method
