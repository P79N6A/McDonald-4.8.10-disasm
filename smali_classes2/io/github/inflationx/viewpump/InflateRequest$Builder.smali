.class public final Lio/github/inflationx/viewpump/InflateRequest$Builder;
.super Ljava/lang/Object;
.source "InflateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/inflationx/viewpump/InflateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private attrs:Landroid/util/AttributeSet;

.field private context:Landroid/content/Context;

.field private fallbackViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

.field private name:Ljava/lang/String;

.field private parent:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/github/inflationx/viewpump/InflateRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lio/github/inflationx/viewpump/InflateRequest$1;

    .prologue
    .line 71
    invoke-direct {p0}, Lio/github/inflationx/viewpump/InflateRequest$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lio/github/inflationx/viewpump/InflateRequest;)V
    .locals 1
    .param p1, "request"    # Lio/github/inflationx/viewpump/InflateRequest;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateRequest;->access$700(Lio/github/inflationx/viewpump/InflateRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->name:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateRequest;->access$800(Lio/github/inflationx/viewpump/InflateRequest;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->context:Landroid/content/Context;

    .line 83
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateRequest;->access$900(Lio/github/inflationx/viewpump/InflateRequest;)Landroid/util/AttributeSet;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->attrs:Landroid/util/AttributeSet;

    .line 84
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateRequest;->access$1000(Lio/github/inflationx/viewpump/InflateRequest;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->parent:Landroid/view/View;

    .line 85
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateRequest;->access$1100(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/FallbackViewCreator;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->fallbackViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Lio/github/inflationx/viewpump/InflateRequest;Lio/github/inflationx/viewpump/InflateRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lio/github/inflationx/viewpump/InflateRequest;
    .param p2, "x1"    # Lio/github/inflationx/viewpump/InflateRequest$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lio/github/inflationx/viewpump/InflateRequest$Builder;-><init>(Lio/github/inflationx/viewpump/InflateRequest;)V

    return-void
.end method

.method static synthetic access$000(Lio/github/inflationx/viewpump/InflateRequest$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/viewpump/InflateRequest$Builder;

    .prologue
    .line 71
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lio/github/inflationx/viewpump/InflateRequest$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/viewpump/InflateRequest$Builder;

    .prologue
    .line 71
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lio/github/inflationx/viewpump/InflateRequest$Builder;)Landroid/util/AttributeSet;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/viewpump/InflateRequest$Builder;

    .prologue
    .line 71
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->attrs:Landroid/util/AttributeSet;

    return-object v0
.end method

.method static synthetic access$300(Lio/github/inflationx/viewpump/InflateRequest$Builder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/viewpump/InflateRequest$Builder;

    .prologue
    .line 71
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->parent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lio/github/inflationx/viewpump/InflateRequest$Builder;)Lio/github/inflationx/viewpump/FallbackViewCreator;
    .locals 1
    .param p0, "x0"    # Lio/github/inflationx/viewpump/InflateRequest$Builder;

    .prologue
    .line 71
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->fallbackViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    return-object v0
.end method


# virtual methods
.method public attrs(Landroid/util/AttributeSet;)Lio/github/inflationx/viewpump/InflateRequest$Builder;
    .locals 0
    .param p1, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->attrs:Landroid/util/AttributeSet;

    .line 100
    return-object p0
.end method

.method public build()Lio/github/inflationx/viewpump/InflateRequest;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->fallbackViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    if-nez v0, :cond_2

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "fallbackViewCreator == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    new-instance v0, Lio/github/inflationx/viewpump/InflateRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/github/inflationx/viewpump/InflateRequest;-><init>(Lio/github/inflationx/viewpump/InflateRequest$Builder;Lio/github/inflationx/viewpump/InflateRequest$1;)V

    return-object v0
.end method

.method public context(Landroid/content/Context;)Lio/github/inflationx/viewpump/InflateRequest$Builder;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->context:Landroid/content/Context;

    .line 95
    return-object p0
.end method

.method public fallbackViewCreator(Lio/github/inflationx/viewpump/FallbackViewCreator;)Lio/github/inflationx/viewpump/InflateRequest$Builder;
    .locals 0
    .param p1, "fallbackViewCreator"    # Lio/github/inflationx/viewpump/FallbackViewCreator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 109
    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->fallbackViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    .line 110
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lio/github/inflationx/viewpump/InflateRequest$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->name:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public parent(Landroid/view/View;)Lio/github/inflationx/viewpump/InflateRequest$Builder;
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 104
    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->parent:Landroid/view/View;

    .line 105
    return-object p0
.end method
