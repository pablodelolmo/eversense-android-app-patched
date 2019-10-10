.class Ldagger/internal/codegen/GraphAnalysisProcessor$1;
.super Ldagger/internal/BindingsGroup;
.source "GraphAnalysisProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldagger/internal/codegen/GraphAnalysisProcessor;->processCompleteModule(Ljavax/lang/model/element/TypeElement;Z)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldagger/internal/codegen/GraphAnalysisProcessor;


# direct methods
.method constructor <init>(Ldagger/internal/codegen/GraphAnalysisProcessor;)V
    .locals 0

    .line 177
    iput-object p1, p0, Ldagger/internal/codegen/GraphAnalysisProcessor$1;->this$0:Ldagger/internal/codegen/GraphAnalysisProcessor;

    invoke-direct {p0}, Ldagger/internal/BindingsGroup;-><init>()V

    return-void
.end method


# virtual methods
.method public contributeSetBinding(Ljava/lang/String;Ldagger/internal/SetBinding;)Ldagger/internal/Binding;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldagger/internal/SetBinding<",
            "*>;)",
            "Ldagger/internal/Binding<",
            "*>;"
        }
    .end annotation

    .line 179
    invoke-super {p0, p1, p2}, Ldagger/internal/BindingsGroup;->put(Ljava/lang/String;Ldagger/internal/Binding;)Ldagger/internal/Binding;

    move-result-object p1

    return-object p1
.end method
