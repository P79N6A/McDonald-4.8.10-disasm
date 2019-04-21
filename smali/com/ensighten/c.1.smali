.class public final Lcom/ensighten/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/c$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/ensighten/E;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ensighten/c;->a:Ljava/util/Set;

    .line 22
    const-class v0, Lcom/ensighten/E;

    iput-object v0, p0, Lcom/ensighten/c;->b:Ljava/lang/Class;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ensighten/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/ensighten/E;
    .locals 2

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/c;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/E;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-static {}, Lcom/ensighten/i;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    .line 53
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :catch_1
    move-exception v0

    .line 50
    invoke-static {}, Lcom/ensighten/i;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_1
.end method
