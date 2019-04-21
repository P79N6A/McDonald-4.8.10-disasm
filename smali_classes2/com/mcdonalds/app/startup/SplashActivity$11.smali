.class Lcom/mcdonalds/app/startup/SplashActivity$11;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/configuration/Configuration$NetworkUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/startup/SplashActivity;->requestConfig(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/startup/SplashActivity;

.field final synthetic val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/startup/SplashActivity;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/startup/SplashActivity;

    .prologue
    .line 906
    iput-object p1, p0, Lcom/mcdonalds/app/startup/SplashActivity$11;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    iput-object p2, p0, Lcom/mcdonalds/app/startup/SplashActivity$11;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    const-string v0, "onComplete"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 909
    iget-object v0, p0, Lcom/mcdonalds/app/startup/SplashActivity$11;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    iget-object v1, p0, Lcom/mcdonalds/app/startup/SplashActivity$11;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/startup/SplashActivity;->access$1100(Lcom/mcdonalds/app/startup/SplashActivity;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    .line 910
    return-void
.end method
