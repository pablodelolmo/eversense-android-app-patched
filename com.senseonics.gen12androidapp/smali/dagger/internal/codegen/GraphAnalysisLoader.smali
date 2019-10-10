.class public final Ldagger/internal/codegen/GraphAnalysisLoader;
.super Ldagger/internal/Loader;
.source "GraphAnalysisLoader.java"


# instance fields
.field private final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;


# direct methods
.method public constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ldagger/internal/Loader;-><init>()V

    .line 37
    iput-object p1, p0, Ldagger/internal/codegen/GraphAnalysisLoader;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-void
.end method


# virtual methods
.method public getAtInjectBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ldagger/internal/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ldagger/internal/Binding<",
            "*>;"
        }
    .end annotation

    const/16 p1, 0x24

    const/16 p3, 0x2e

    .line 42
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 43
    iget-object p2, p0, Ldagger/internal/codegen/GraphAnalysisLoader;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {p2}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object p2

    invoke-interface {p2, p1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 51
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object p3

    sget-object v0, Ljavax/lang/model/element/ElementKind;->INTERFACE:Ljavax/lang/model/element/ElementKind;

    if-ne p3, v0, :cond_1

    return-object p2

    .line 54
    :cond_1
    invoke-static {p1, p4}, Ldagger/internal/codegen/GraphAnalysisInjectBinding;->create(Ljavax/lang/model/element/TypeElement;Z)Ldagger/internal/codegen/GraphAnalysisInjectBinding;

    move-result-object p1

    return-object p1
.end method

.method public getModuleAdapter(Ljava/lang/Class;)Ldagger/internal/ModuleAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ldagger/internal/ModuleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 58
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getStaticInjection(Ljava/lang/Class;)Ldagger/internal/StaticInjection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ldagger/internal/StaticInjection;"
        }
    .end annotation

    .line 62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
