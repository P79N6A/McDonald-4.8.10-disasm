.class Lcom/mcdonalds/app/customer/push/OffersRequestFragment$6;
.super Ljava/lang/Object;
.source "OffersRequestFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/customer/push/OffersRequestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/push/OffersRequestFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$6;->this$0:Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

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

    .line 235
    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$6;->this$0:Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->access$400(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$6;->this$0:Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->access$508(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)I

    .line 239
    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$6;->this$0:Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->access$500(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$6;->this$0:Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->access$400(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;->getCount()I

    move-result v2

    rem-int v0, v1, v2

    .line 241
    .local v0, "index":I
    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$6;->this$0:Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->access$600(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 242
    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$6;->this$0:Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->access$800(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$6;->this$0:Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->access$700(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    .end local v0    # "index":I
    :cond_0
    return-void
.end method
