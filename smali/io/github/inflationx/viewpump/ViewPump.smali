.class public final Lio/github/inflationx/viewpump/ViewPump;
.super Ljava/lang/Object;
.source "ViewPump.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/inflationx/viewpump/ViewPump$Builder;
    }
.end annotation


# static fields
.field private static INSTANCE:Lio/github/inflationx/viewpump/ViewPump;


# instance fields
.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/github/inflationx/viewpump/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomViewCreation:Z

.field private final mInterceptorsWithFallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/github/inflationx/viewpump/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mReflection:Z


# direct methods
.method private constructor <init>(Lio/github/inflationx/viewpump/ViewPump$Builder;)V
    .locals 2
    .param p1, "builder"    # Lio/github/inflationx/viewpump/ViewPump$Builder;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lio/github/inflationx/viewpump/ViewPump$Builder;->access$000(Lio/github/inflationx/viewpump/ViewPump$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lio/github/inflationx/viewpump/ViewPump;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/github/inflationx/viewpump/ViewPump;->interceptors:Ljava/util/List;

    .line 28
    invoke-static {p1}, Lio/github/inflationx/viewpump/ViewPump$Builder;->access$000(Lio/github/inflationx/viewpump/ViewPump$Builder;)Ljava/util/List;

    move-result-object v0

    .line 29
    .local v0, "interceptorsWithFallback":Ljava/util/List;, "Ljava/util/List<Lio/github/inflationx/viewpump/Interceptor;>;"
    new-instance v1, Lio/github/inflationx/viewpump/FallbackViewCreationInterceptor;

    invoke-direct {v1}, Lio/github/inflationx/viewpump/FallbackViewCreationInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-static {v0}, Lio/github/inflationx/viewpump/ViewPump;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/github/inflationx/viewpump/ViewPump;->mInterceptorsWithFallback:Ljava/util/List;

    .line 31
    invoke-static {p1}, Lio/github/inflationx/viewpump/ViewPump$Builder;->access$100(Lio/github/inflationx/viewpump/ViewPump$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lio/github/inflationx/viewpump/ViewPump;->mReflection:Z

    .line 32
    invoke-static {p1}, Lio/github/inflationx/viewpump/ViewPump$Builder;->access$200(Lio/github/inflationx/viewpump/ViewPump$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lio/github/inflationx/viewpump/ViewPump;->mCustomViewCreation:Z

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lio/github/inflationx/viewpump/ViewPump$Builder;Lio/github/inflationx/viewpump/ViewPump$1;)V
    .locals 0
    .param p1, "x0"    # Lio/github/inflationx/viewpump/ViewPump$Builder;
    .param p2, "x1"    # Lio/github/inflationx/viewpump/ViewPump$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lio/github/inflationx/viewpump/ViewPump;-><init>(Lio/github/inflationx/viewpump/ViewPump$Builder;)V

    return-void
.end method

.method public static builder()Lio/github/inflationx/viewpump/ViewPump$Builder;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lio/github/inflationx/viewpump/ViewPump$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/inflationx/viewpump/ViewPump$Builder;-><init>(Lio/github/inflationx/viewpump/ViewPump$1;)V

    return-object v0
.end method

.method public static get()Lio/github/inflationx/viewpump/ViewPump;
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lio/github/inflationx/viewpump/ViewPump;->INSTANCE:Lio/github/inflationx/viewpump/ViewPump;

    if-nez v0, :cond_0

    .line 42
    invoke-static {}, Lio/github/inflationx/viewpump/ViewPump;->builder()Lio/github/inflationx/viewpump/ViewPump$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/inflationx/viewpump/ViewPump$Builder;->build()Lio/github/inflationx/viewpump/ViewPump;

    move-result-object v0

    sput-object v0, Lio/github/inflationx/viewpump/ViewPump;->INSTANCE:Lio/github/inflationx/viewpump/ViewPump;

    .line 44
    :cond_0
    sget-object v0, Lio/github/inflationx/viewpump/ViewPump;->INSTANCE:Lio/github/inflationx/viewpump/ViewPump;

    return-object v0
.end method

.method private static immutableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lio/github/inflationx/viewpump/ViewPump;)V
    .locals 0
    .param p0, "viewPump"    # Lio/github/inflationx/viewpump/ViewPump;

    .prologue
    .line 36
    sput-object p0, Lio/github/inflationx/viewpump/ViewPump;->INSTANCE:Lio/github/inflationx/viewpump/ViewPump;

    .line 37
    return-void
.end method


# virtual methods
.method public inflate(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/InflateResult;
    .locals 3
    .param p1, "originalRequest"    # Lio/github/inflationx/viewpump/InflateRequest;

    .prologue
    .line 48
    new-instance v0, Lio/github/inflationx/viewpump/InterceptorChain;

    iget-object v1, p0, Lio/github/inflationx/viewpump/ViewPump;->mInterceptorsWithFallback:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lio/github/inflationx/viewpump/InterceptorChain;-><init>(Ljava/util/List;ILio/github/inflationx/viewpump/InflateRequest;)V

    .line 49
    .local v0, "chain":Lio/github/inflationx/viewpump/Interceptor$Chain;
    invoke-interface {v0, p1}, Lio/github/inflationx/viewpump/Interceptor$Chain;->proceed(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/InflateResult;

    move-result-object v1

    return-object v1
.end method

.method public interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/github/inflationx/viewpump/Interceptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lio/github/inflationx/viewpump/ViewPump;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public isCustomViewCreation()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lio/github/inflationx/viewpump/ViewPump;->mCustomViewCreation:Z

    return v0
.end method

.method public isReflection()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lio/github/inflationx/viewpump/ViewPump;->mReflection:Z

    return v0
.end method
