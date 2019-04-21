.class Lcom/mcdonalds/app/startup/SplashActivity$8;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/startup/SplashActivity;->dispatchPushNotification()V
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
        "Lcom/mcdonalds/sdk/modules/models/Offer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/startup/SplashActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/startup/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/startup/SplashActivity;

    .prologue
    .line 751
    iput-object p1, p0, Lcom/mcdonalds/app/startup/SplashActivity$8;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/Offer;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .param p2, "asyncToken"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "e"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
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

    .line 756
    if-eqz p1, :cond_0

    .line 757
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 758
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "BUNDLE_OFFER_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 759
    iget-object v1, p0, Lcom/mcdonalds/app/startup/SplashActivity$8;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-static {v1, v0}, Lcom/mcdonalds/app/startup/SplashActivity;->access$900(Lcom/mcdonalds/app/startup/SplashActivity;Landroid/os/Bundle;)V

    .line 763
    .end local v0    # "extras":Landroid/os/Bundle;
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/startup/SplashActivity$8;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-virtual {v1}, Lcom/mcdonalds/app/startup/SplashActivity;->finish()V

    .line 764
    return-void

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/startup/SplashActivity$8;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-static {v1}, Lcom/mcdonalds/app/startup/SplashActivity;->access$1000(Lcom/mcdonalds/app/startup/SplashActivity;)V

    goto :goto_0
.end method

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

    .line 751
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/startup/SplashActivity$8;->onResponse(Lcom/mcdonalds/sdk/modules/models/Offer;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
