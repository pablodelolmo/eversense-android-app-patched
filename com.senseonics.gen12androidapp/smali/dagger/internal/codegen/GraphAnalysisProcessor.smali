.class public final Ldagger/internal/codegen/GraphAnalysisProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "GraphAnalysisProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;,
        Ldagger/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "dagger.Module"
    }
.end annotation


# static fields
.field private static final ERROR_NAMES_TO_PROPAGATE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final delayedModuleNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, "com.sun.tools.javac.code.Symbol$CompletionFailure"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Ldagger/internal/codegen/GraphAnalysisProcessor;->ERROR_NAMES_TO_PROPAGATE:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    .line 75
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Ldagger/internal/codegen/GraphAnalysisProcessor;->delayedModuleNames:Ljava/util/Set;

    return-void
.end method

.method private elements()Ljavax/lang/model/util/Elements;
    .locals 1

    .line 278
    iget-object v0, p0, Ldagger/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    return-object v0
.end method

.method private error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V
    .locals 2

    .line 160
    iget-object v0, p0, Ldagger/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v0, v1, p1, p2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    return-void
.end method

.method private processCompleteModule(Ljavax/lang/model/element/TypeElement;Z)Ljava/util/Map;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldagger/internal/Binding<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 165
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 166
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v4, p1

    invoke-virtual {v1, v4, v2, v3}, Ldagger/internal/codegen/GraphAnalysisProcessor;->collectIncludesRecursively(Ljavax/lang/model/element/TypeElement;Ljava/util/Map;Ljava/util/Deque;)V

    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 170
    sget-object v4, Ldagger/internal/Linker$ErrorHandler;->NULL:Ldagger/internal/Linker$ErrorHandler;

    goto :goto_0

    :cond_0
    new-instance v5, Ldagger/internal/codegen/GraphAnalysisErrorHandler;

    iget-object v6, v1, Ldagger/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Ldagger/internal/codegen/GraphAnalysisErrorHandler;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;)V

    move-object v4, v5

    .line 172
    :goto_0
    new-instance v11, Ldagger/internal/Linker;

    const/4 v5, 0x0

    new-instance v6, Ldagger/internal/codegen/GraphAnalysisLoader;

    iget-object v7, v1, Ldagger/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-direct {v6, v7}, Ldagger/internal/codegen/GraphAnalysisLoader;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;)V

    invoke-direct {v11, v5, v6, v4}, Ldagger/internal/Linker;-><init>(Ldagger/internal/Linker;Ldagger/internal/Loader;Ldagger/internal/Linker$ErrorHandler;)V

    .line 176
    monitor-enter v11

    .line 177
    :try_start_0
    new-instance v4, Ldagger/internal/codegen/GraphAnalysisProcessor$1;

    invoke-direct {v4, v1}, Ldagger/internal/codegen/GraphAnalysisProcessor$1;-><init>(Ldagger/internal/codegen/GraphAnalysisProcessor;)V

    .line 182
    new-instance v12, Ldagger/internal/codegen/GraphAnalysisProcessor$2;

    invoke-direct {v12, v1}, Ldagger/internal/codegen/GraphAnalysisProcessor$2;-><init>(Ldagger/internal/codegen/GraphAnalysisProcessor;)V

    .line 187
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Ljavax/lang/model/element/TypeElement;

    .line 188
    const-class v5, Ldagger/Module;

    invoke-static {v5, v13}, Ldagger/internal/codegen/Util;->getAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Ljava/util/Map;

    move-result-object v14

    const-string v5, "overrides"

    .line 189
    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    const-string v5, "library"

    .line 190
    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v15, :cond_1

    move-object v9, v12

    goto :goto_2

    :cond_1
    move-object v9, v4

    .line 194
    :goto_2
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v5, "injects"

    .line 195
    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, [Ljava/lang/Object;

    array-length v6, v7

    const/16 v16, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_3

    aget-object v17, v7, v5

    move-object/from16 v18, v2

    .line 196
    move-object/from16 v2, v17

    check-cast v2, Ljavax/lang/model/type/TypeMirror;

    move/from16 v19, v5

    .line 197
    invoke-static {v2}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-static {v2}, Ldagger/internal/codegen/Util;->isInterface(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object v2, v5

    goto :goto_4

    :cond_2
    invoke-static {v2}, Ldagger/internal/codegen/GeneratorKeys;->rawMembersKey(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v2

    .line 202
    :goto_4
    invoke-interface {v13}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object v5, v11

    move/from16 v23, v6

    move-object v6, v2

    move-object v2, v7

    move-object/from16 v7, v17

    move-object/from16 v24, v8

    move-object/from16 v8, v20

    move-object/from16 v25, v2

    move-object v2, v9

    move/from16 v9, v21

    move-object/from16 v26, v12

    move v12, v10

    move/from16 v10, v22

    invoke-virtual/range {v5 .. v10}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    add-int/lit8 v5, v19, 0x1

    move-object v9, v2

    move v10, v12

    move-object/from16 v2, v18

    move/from16 v6, v23

    move-object/from16 v8, v24

    move-object/from16 v7, v25

    move-object/from16 v12, v26

    goto :goto_3

    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v24, v8

    move-object v2, v9

    move-object/from16 v26, v12

    move v12, v10

    const-string v5, "staticInjections"

    .line 207
    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 208
    check-cast v8, Ljavax/lang/model/type/TypeMirror;

    .line 209
    iget-object v9, v1, Ldagger/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v9}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v9

    invoke-interface {v9, v8}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v8

    .line 210
    new-instance v9, Ldagger/internal/codegen/GraphAnalysisStaticInjection;

    invoke-direct {v9, v8}, Ldagger/internal/codegen/GraphAnalysisStaticInjection;-><init>(Ljavax/lang/model/element/Element;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 214
    :cond_4
    invoke-interface {v13}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/Element;

    .line 215
    const-class v7, Ldagger/Provides;

    invoke-interface {v6, v7}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Ldagger/Provides;

    if-nez v7, :cond_5

    goto :goto_6

    .line 219
    :cond_5
    check-cast v6, Ljavax/lang/model/element/ExecutableElement;

    .line 220
    invoke-static {v6}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v8

    .line 221
    new-instance v9, Ldagger/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;

    invoke-direct {v9, v8, v6, v12}, Ldagger/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;-><init>(Ljava/lang/String;Ljavax/lang/model/element/ExecutableElement;Z)V

    .line 223
    invoke-virtual {v2, v8}, Ldagger/internal/BindingsGroup;->get(Ljava/lang/String;)Ldagger/internal/Binding;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 225
    invoke-interface {v7}, Ldagger/Provides;->type()Ldagger/Provides$Type;

    move-result-object v13

    sget-object v14, Ldagger/Provides$Type;->SET:Ldagger/Provides$Type;

    if-eq v13, v14, :cond_6

    invoke-interface {v7}, Ldagger/Provides;->type()Ldagger/Provides$Type;

    move-result-object v13

    sget-object v14, Ldagger/Provides$Type;->SET_VALUES:Ldagger/Provides$Type;

    if-ne v13, v14, :cond_7

    :cond_6
    instance-of v13, v10, Ldagger/internal/SetBinding;

    if-eqz v13, :cond_7

    goto :goto_7

    .line 229
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Duplicate bindings for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz v15, :cond_8

    .line 231
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " in override module(s) - cannot override an override"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 233
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":\n    "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Ldagger/internal/Binding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "\n    "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Ldagger/internal/ProvidesBinding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 234
    invoke-direct {v1, v10, v6}, Ldagger/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    .line 238
    :cond_9
    :goto_7
    sget-object v10, Ldagger/internal/codegen/GraphAnalysisProcessor$3;->$SwitchMap$dagger$Provides$Type:[I

    invoke-interface {v7}, Ldagger/Provides;->type()Ldagger/Provides$Type;

    move-result-object v13

    invoke-virtual {v13}, Ldagger/Provides$Type;->ordinal()I

    move-result v13

    aget v10, v10, v13

    packed-switch v10, :pswitch_data_0

    .line 260
    new-instance v2, Ljava/lang/AssertionError;

    goto :goto_a

    .line 256
    :pswitch_0
    invoke-static {v2, v8, v9}, Ldagger/internal/SetBinding;->add(Ldagger/internal/BindingsGroup;Ljava/lang/String;Ldagger/internal/Binding;)V

    :goto_8
    move-object/from16 v10, v24

    goto :goto_9

    .line 251
    :pswitch_1
    invoke-static {v6}, Ldagger/internal/codegen/GeneratorKeys;->getSetKey(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v6

    .line 252
    invoke-static {v2, v6, v9}, Ldagger/internal/SetBinding;->add(Ldagger/internal/BindingsGroup;Ljava/lang/String;Ldagger/internal/Binding;)V

    goto :goto_8

    .line 240
    :pswitch_2
    iget-object v7, v9, Ldagger/internal/ProvidesBinding;->provideKey:Ljava/lang/String;

    move-object/from16 v10, v24

    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    .line 241
    invoke-virtual {v9, v7}, Ldagger/internal/ProvidesBinding;->setDependedOn(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_a
    :try_start_1
    invoke-virtual {v2, v8, v9}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_9
    move-object/from16 v24, v10

    goto/16 :goto_6

    :catch_0
    move-exception v0

    .line 246
    :try_start_2
    new-instance v2, Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;-><init>(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    throw v2

    .line 260
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown @Provides type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ldagger/Provides;->type()Ldagger/Provides$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_b
    move-object/from16 v2, v18

    move-object/from16 v12, v26

    goto/16 :goto_1

    :cond_c
    move-object/from16 v26, v12

    .line 265
    invoke-virtual {v11, v4}, Ldagger/internal/Linker;->installBindings(Ldagger/internal/BindingsGroup;)V

    move-object/from16 v2, v26

    .line 266
    invoke-virtual {v11, v2}, Ldagger/internal/Linker;->installBindings(Ldagger/internal/BindingsGroup;)V

    .line 267
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldagger/internal/codegen/GraphAnalysisStaticInjection;

    .line 268
    invoke-virtual {v3, v11}, Ldagger/internal/codegen/GraphAnalysisStaticInjection;->attach(Ldagger/internal/Linker;)V

    goto :goto_b

    .line 273
    :cond_d
    invoke-virtual {v11}, Ldagger/internal/Linker;->linkAll()Ljava/util/Map;

    move-result-object v2

    monitor-exit v11

    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 274
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method collectIncludesRecursively(Ljavax/lang/model/element/TypeElement;Ljava/util/Map;Ljava/util/Deque;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 283
    const-class v0, Ldagger/Module;

    invoke-static {v0, p1}, Ldagger/internal/codegen/Util;->getAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 286
    new-instance p2, Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No @Module on "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;-><init>(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    throw p2

    .line 290
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-interface {p3, v1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Module Inclusion Cycle: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-interface {p3}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 294
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " includes itself directly."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move-object v0, v1

    const/4 v3, 0x0

    .line 298
    :goto_0
    invoke-interface {p3}, Ljava/util/Deque;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 300
    invoke-interface {p3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "\n"

    .line 301
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " included by "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v3, v2

    move-object v0, v4

    goto :goto_0

    :cond_2
    const-string p3, "\n0. "

    .line 304
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :goto_1
    new-instance p3, Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;-><init>(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    throw p3

    .line 308
    :cond_3
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v2, p0, Ldagger/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v2

    .line 312
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "includes"

    .line 313
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v4, "addsTo"

    .line 314
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Ljava/lang/Void;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "addsTo"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 316
    instance-of v4, v3, Ljavax/lang/model/type/TypeMirror;

    if-nez v4, :cond_5

    .line 318
    iget-object v4, p0, Ldagger/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v4}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v4

    sget-object v5, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected value for include: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3, p1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    goto :goto_2

    .line 322
    :cond_5
    check-cast v3, Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v2, v3}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/TypeElement;

    .line 323
    invoke-interface {p3, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 324
    invoke-virtual {p0, v3, p2, p3}, Ldagger/internal/codegen/GraphAnalysisProcessor;->collectIncludesRecursively(Ljavax/lang/model/element/TypeElement;Ljava/util/Map;Ljava/util/Deque;)V

    .line 325
    invoke-interface {p3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto :goto_2

    :cond_6
    return-void
.end method

.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .line 78
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    .line 86
    invoke-interface {p2}, Ljavax/annotation/processing/RoundEnvironment;->processingOver()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 89
    const-class p1, Ldagger/Module;

    invoke-interface {p2, p1}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/element/Element;

    .line 90
    instance-of v1, p2, Ljavax/lang/model/element/TypeElement;

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@Module applies to a type, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Ldagger/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v1, p0, Ldagger/internal/codegen/GraphAnalysisProcessor;->delayedModuleNames:Ljava/util/Set;

    check-cast p2, Ljavax/lang/model/element/TypeElement;

    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return v0

    .line 99
    :cond_2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 100
    iget-object p2, p0, Ldagger/internal/codegen/GraphAnalysisProcessor;->delayedModuleNames:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Ldagger/internal/codegen/GraphAnalysisProcessor;->elements()Ljavax/lang/model/util/Elements;

    move-result-object v2

    invoke-interface {v2, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/element/Element;

    .line 107
    :try_start_0
    const-class v1, Ldagger/Module;

    invoke-static {v1, p2}, Ldagger/internal/codegen/Util;->getAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Ldagger/internal/codegen/Util$CodeGenerationIncompleteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    check-cast p2, Ljavax/lang/model/element/TypeElement;

    if-nez v1, :cond_5

    const-string v1, "Missing @Module annotation."

    .line 114
    invoke-direct {p0, v1, p2}, Ldagger/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_2

    :cond_5
    const-string v2, "complete"

    .line 117
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 120
    :try_start_1
    invoke-direct {p0, p2, v0}, Ldagger/internal/codegen/GraphAnalysisProcessor;->processCompleteModule(Ljavax/lang/model/element/TypeElement;Z)Ljava/util/Map;

    move-result-object v2

    .line 121
    new-instance v3, Ldagger/internal/ProblemDetector;

    invoke-direct {v3}, Ldagger/internal/ProblemDetector;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldagger/internal/ProblemDetector;->detectCircularDependencies(Ljava/util/Collection;)V
    :try_end_1
    .catch Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ldagger/internal/Binding$InvalidBindingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 137
    :try_start_2
    invoke-virtual {p0, p2, v2}, Ldagger/internal/codegen/GraphAnalysisProcessor;->writeDotFile(Ljavax/lang/model/element/TypeElement;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v2

    .line 139
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 140
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 141
    iget-object v2, p0, Ldagger/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v2

    sget-object v4, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Graph visualization failed. Please report this as a bug.\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3, p2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_3

    :catch_2
    move-exception v1

    .line 129
    sget-object v2, Ldagger/internal/codegen/GraphAnalysisProcessor;->ERROR_NAMES_TO_PROPAGATE:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 130
    throw v1

    .line 132
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " thrown by javac in graph validation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Ldagger/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_2

    :catch_3
    move-exception p2

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Graph validation failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ldagger/internal/Binding$InvalidBindingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Ldagger/internal/codegen/GraphAnalysisProcessor;->elements()Ljavax/lang/model/util/Elements;

    move-result-object v2

    iget-object p2, p2, Ldagger/internal/Binding$InvalidBindingException;->type:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Ldagger/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_2

    :catch_4
    move-exception p2

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Graph validation failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p2, p2, Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;->source:Ljavax/lang/model/element/Element;

    invoke-direct {p0, v1, p2}, Ldagger/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_2

    :cond_7
    :goto_3
    const-string v2, "library"

    .line 147
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 148
    invoke-direct {p0, p2, v1}, Ldagger/internal/codegen/GraphAnalysisProcessor;->processCompleteModule(Ljavax/lang/model/element/TypeElement;Z)Ljava/util/Map;

    move-result-object v1

    .line 150
    :try_start_3
    new-instance v2, Ldagger/internal/ProblemDetector;

    invoke-direct {v2}, Ldagger/internal/ProblemDetector;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v2, v1}, Ldagger/internal/ProblemDetector;->detectUnusedBinding(Ljava/util/Collection;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Graph validation failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Ldagger/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_2

    :cond_8
    return v0
.end method

.method writeDotFile(Ljavax/lang/model/element/TypeElement;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldagger/internal/Binding<",
            "*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    sget-object v0, Ljavax/tools/StandardLocation;->SOURCE_OUTPUT:Ljavax/tools/StandardLocation;

    .line 370
    invoke-static {p1}, Ldagger/internal/codegen/Util;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".dot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 372
    iget-object v3, p0, Ldagger/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v3}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v3

    new-array v4, v5, [Ljavax/lang/model/element/Element;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v3, v0, v1, v2, v4}, Ljavax/annotation/processing/Filer;->createResource(Ljavax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/FileObject;

    move-result-object p1

    .line 374
    invoke-interface {p1}, Ljavax/tools/FileObject;->openWriter()Ljava/io/Writer;

    move-result-object p1

    .line 375
    new-instance v0, Ldagger/internal/codegen/GraphVizWriter;

    invoke-direct {v0, p1}, Ldagger/internal/codegen/GraphVizWriter;-><init>(Ljava/io/Writer;)V

    .line 376
    new-instance p1, Ldagger/internal/codegen/GraphVisualizer;

    invoke-direct {p1}, Ldagger/internal/codegen/GraphVisualizer;-><init>()V

    invoke-virtual {p1, p2, v0}, Ldagger/internal/codegen/GraphVisualizer;->write(Ljava/util/Map;Ldagger/internal/codegen/GraphVizWriter;)V

    .line 377
    invoke-virtual {v0}, Ldagger/internal/codegen/GraphVizWriter;->close()V

    return-void
.end method
