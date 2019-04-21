.class Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$1;
.super Lcom/mcdonalds/app/util/OnPageSelectListener;
.source "PushNotificationRequestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 146
    iput-object p1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$1;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-direct {p0}, Lcom/mcdonalds/app/util/OnPageSelectListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "onPageSelected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$1;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$1;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->access$000(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)Lcom/mcdonalds/app/widget/PagerIndicatorGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->select(I)V

    .line 153
    :cond_0
    return-void
.end method
