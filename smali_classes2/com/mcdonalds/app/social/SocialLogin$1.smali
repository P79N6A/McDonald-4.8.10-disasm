.class Lcom/mcdonalds/app/social/SocialLogin$1;
.super Ljava/lang/Object;
.source "SocialLogin.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/social/SocialLogin;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/SocialNetwork;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/social/SocialLogin;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/social/SocialLogin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/social/SocialLogin;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mcdonalds/app/social/SocialLogin$1;->this$0:Lcom/mcdonalds/app/social/SocialLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/social/SocialLogin$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/SocialNetwork;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "socialNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/SocialNetwork;>;"
    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    if-nez p3, :cond_3

    .line 92
    iget-object v1, p0, Lcom/mcdonalds/app/social/SocialLogin$1;->this$0:Lcom/mcdonalds/app/social/SocialLogin;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/mcdonalds/app/social/SocialLogin;->access$002(Lcom/mcdonalds/app/social/SocialLogin;Ljava/util/List;)Ljava/util/List;

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    .line 94
    .local v0, "socialNetwork":Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/mcdonalds/app/social/SocialLogin$1;->this$0:Lcom/mcdonalds/app/social/SocialLogin;

    invoke-static {v2}, Lcom/mcdonalds/app/social/SocialLogin;->access$000(Lcom/mcdonalds/app/social/SocialLogin;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    .end local v0    # "socialNetwork":Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/social/SocialLogin$1;->this$0:Lcom/mcdonalds/app/social/SocialLogin;

    invoke-static {v1}, Lcom/mcdonalds/app/social/SocialLogin;->access$100(Lcom/mcdonalds/app/social/SocialLogin;)Lcom/mcdonalds/app/social/SocialLogin$SocialLoginListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mcdonalds/app/social/SocialLogin$1;->this$0:Lcom/mcdonalds/app/social/SocialLogin;

    invoke-static {v1}, Lcom/mcdonalds/app/social/SocialLogin;->access$000(Lcom/mcdonalds/app/social/SocialLogin;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/mcdonalds/app/social/SocialLogin$1;->this$0:Lcom/mcdonalds/app/social/SocialLogin;

    invoke-static {v1}, Lcom/mcdonalds/app/social/SocialLogin;->access$100(Lcom/mcdonalds/app/social/SocialLogin;)Lcom/mcdonalds/app/social/SocialLogin$SocialLoginListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/mcdonalds/app/social/SocialLogin$SocialLoginListener;->onSocialNetworkAvailable()V

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/social/SocialLogin$1;->this$0:Lcom/mcdonalds/app/social/SocialLogin;

    invoke-static {v1}, Lcom/mcdonalds/app/social/SocialLogin;->access$200(Lcom/mcdonalds/app/social/SocialLogin;)V

    .line 108
    :goto_1
    return-void

    .line 106
    :cond_3
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1
.end method
