.class Landroid/support/transition/TransitionManagerPort;
.super Ljava/lang/Object;
.source "TransitionManagerPort.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/TransitionManagerPort$MultiListener;
    }
.end annotation


# static fields
.field private static final EMPTY_STRINGS:[Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;

.field private static sDefaultTransition:Landroid/support/transition/TransitionPort;

.field static sPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static sRunningTransitions:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/TransitionPort;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field mNameSceneTransitions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/transition/ScenePort;",
            "Landroid/support/transition/TransitionPort;",
            ">;>;"
        }
    .end annotation
.end field

.field mSceneNameTransitions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/transition/ScenePort;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/transition/TransitionPort;",
            ">;>;"
        }
    .end annotation
.end field

.field mScenePairTransitions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/transition/ScenePort;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/transition/ScenePort;",
            "Landroid/support/transition/TransitionPort;",
            ">;>;"
        }
    .end annotation
.end field

.field mSceneTransitions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/transition/ScenePort;",
            "Landroid/support/transition/TransitionPort;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/support/transition/TransitionManagerPort;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 41
    const-string v0, "TransitionManager"

    sput-object v0, Landroid/support/transition/TransitionManagerPort;->LOG_TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Landroid/support/transition/AutoTransitionPort;

    invoke-direct {v0}, Landroid/support/transition/AutoTransitionPort;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionManagerPort;->sDefaultTransition:Landroid/support/transition/TransitionPort;

    .line 46
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionManagerPort;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionManagerPort;->sPendingTransitions:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionManagerPort;->mSceneTransitions:Landroid/support/v4/util/ArrayMap;

    .line 52
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionManagerPort;->mScenePairTransitions:Landroid/support/v4/util/ArrayMap;

    .line 55
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionManagerPort;->mSceneNameTransitions:Landroid/support/v4/util/ArrayMap;

    .line 57
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionManagerPort;->mNameSceneTransitions:Landroid/support/v4/util/ArrayMap;

    .line 380
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/TransitionPort;)V
    .locals 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 173
    sget-object v1, Landroid/support/transition/TransitionManagerPort;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    sget-object v1, Landroid/support/transition/TransitionManagerPort;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    if-nez p1, :cond_0

    .line 180
    sget-object p1, Landroid/support/transition/TransitionManagerPort;->sDefaultTransition:Landroid/support/transition/TransitionPort;

    .line 182
    :cond_0
    invoke-virtual {p1}, Landroid/support/transition/TransitionPort;->clone()Landroid/support/transition/TransitionPort;

    move-result-object v0

    .line 183
    .local v0, "transitionClone":Landroid/support/transition/TransitionPort;
    invoke-static {p0, v0}, Landroid/support/transition/TransitionManagerPort;->sceneChangeSetup(Landroid/view/ViewGroup;Landroid/support/transition/TransitionPort;)V

    .line 184
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/support/transition/ScenePort;->setCurrentScene(Landroid/view/View;Landroid/support/transition/ScenePort;)V

    .line 185
    invoke-static {p0, v0}, Landroid/support/transition/TransitionManagerPort;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/support/transition/TransitionPort;)V

    .line 187
    .end local v0    # "transitionClone":Landroid/support/transition/TransitionPort;
    :cond_1
    return-void
.end method

.method static getRunningTransitions()Landroid/support/v4/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/TransitionPort;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 118
    sget-object v2, Landroid/support/transition/TransitionManagerPort;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 119
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 120
    .local v0, "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;>;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 121
    :cond_0
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 122
    .local v1, "transitions":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;>;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    .end local v0    # "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;>;>;"
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 123
    .restart local v0    # "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;>;>;"
    sget-object v2, Landroid/support/transition/TransitionManagerPort;->sRunningTransitions:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 125
    .end local v1    # "transitions":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/util/ArrayMap;

    return-object v2
.end method

.method private static sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/support/transition/TransitionPort;)V
    .locals 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 130
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 131
    new-instance v0, Landroid/support/transition/TransitionManagerPort$MultiListener;

    invoke-direct {v0, p1, p0}, Landroid/support/transition/TransitionManagerPort$MultiListener;-><init>(Landroid/support/transition/TransitionPort;Landroid/view/ViewGroup;)V

    .line 132
    .local v0, "listener":Landroid/support/transition/TransitionManagerPort$MultiListener;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 133
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 135
    .end local v0    # "listener":Landroid/support/transition/TransitionManagerPort$MultiListener;
    :cond_0
    return-void
.end method

.method private static sceneChangeSetup(Landroid/view/ViewGroup;Landroid/support/transition/TransitionPort;)V
    .locals 5
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 140
    invoke-static {}, Landroid/support/transition/TransitionManagerPort;->getRunningTransitions()Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 142
    .local v2, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 143
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionPort;

    .line 144
    .local v1, "runningTransition":Landroid/support/transition/TransitionPort;
    invoke-virtual {v1, p0}, Landroid/support/transition/TransitionPort;->pause(Landroid/view/View;)V

    goto :goto_0

    .line 148
    .end local v1    # "runningTransition":Landroid/support/transition/TransitionPort;
    :cond_0
    if-eqz p1, :cond_1

    .line 149
    const/4 v3, 0x1

    invoke-virtual {p1, p0, v3}, Landroid/support/transition/TransitionPort;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 153
    :cond_1
    invoke-static {p0}, Landroid/support/transition/ScenePort;->getCurrentScene(Landroid/view/View;)Landroid/support/transition/ScenePort;

    move-result-object v0

    .line 154
    .local v0, "previousScene":Landroid/support/transition/ScenePort;
    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {v0}, Landroid/support/transition/ScenePort;->exit()V

    .line 157
    :cond_2
    return-void
.end method
