.class Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$3;
.super Ljava/lang/Object;
.source "PushNotificationRequestFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$3;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$3;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$3;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$3;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->access$302(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 190
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$3;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->access$300(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNotificationPreferences()Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->setAppNotificationPreferencesEnabled(Ljava/lang/Boolean;)V

    .line 191
    new-instance v0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$3$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$3$1;-><init>(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$3;)V

    invoke-static {v0}, Lcom/mcdonalds/app/customer/push/NotificationManager;->register(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 197
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$3;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-static {v0, v2}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->access$100(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;Z)V

    .line 200
    return-void
.end method
