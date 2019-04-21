.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$28;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->onRegisterClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    .line 1571
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$28;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1574
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isGmaLiteFlow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$28;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    const-class v1, Lcom/mcdonalds/app/customer/TermsOfServiceActivity;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;)V

    .line 1579
    :goto_0
    return-void

    .line 1577
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$28;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    const-class v1, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpActivity;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_0
.end method
