.class Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$5;
.super Ljava/lang/Object;
.source "PushNotificationRequestFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$5;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v1, "run"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$5;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->access$708(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)I

    .line 330
    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$5;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->access$700(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$5;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->access$800(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;->getCount()I

    move-result v2

    rem-int v0, v1, v2

    .line 332
    .local v0, "index":I
    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$5;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->access$900(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 333
    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$5;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->access$1100(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$5;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->access$1000(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    return-void
.end method
