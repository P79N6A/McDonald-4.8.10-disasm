.class public final Lcom/tencent/mm/sdk/diffdev/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/sdk/diffdev/IDiffDevOAuth;


# instance fields
.field private ac:Lcom/tencent/mm/sdk/b/d;

.field private ad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/mm/sdk/diffdev/OAuthListener;",
            ">;"
        }
    .end annotation
.end field

.field private ae:Lcom/tencent/mm/sdk/diffdev/a/d;

.field private af:Lcom/tencent/mm/sdk/diffdev/OAuthListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/sdk/diffdev/a/a;->ac:Lcom/tencent/mm/sdk/b/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/sdk/diffdev/a/a;->ad:Ljava/util/List;

    new-instance v0, Lcom/tencent/mm/sdk/diffdev/a/b;

    invoke-direct {v0, p0}, Lcom/tencent/mm/sdk/diffdev/a/b;-><init>(Lcom/tencent/mm/sdk/diffdev/a/a;)V

    iput-object v0, p0, Lcom/tencent/mm/sdk/diffdev/a/a;->af:Lcom/tencent/mm/sdk/diffdev/OAuthListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/sdk/diffdev/a/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/sdk/diffdev/a/a;->ad:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/sdk/diffdev/a/a;)Lcom/tencent/mm/sdk/b/d;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/sdk/diffdev/a/a;->ac:Lcom/tencent/mm/sdk/b/d;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/sdk/diffdev/a/a;)Lcom/tencent/mm/sdk/diffdev/a/d;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/sdk/diffdev/a/a;->ae:Lcom/tencent/mm/sdk/diffdev/a/d;

    return-object v0
.end method
