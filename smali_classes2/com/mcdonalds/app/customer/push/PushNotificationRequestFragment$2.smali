.class Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$2;
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
    .line 157
    iput-object p1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$2;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$2;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onClick"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$2;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->access$100(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;Z)V

    .line 163
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$2;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->access$200(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)V

    .line 164
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$2;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$2;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->access$302(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 165
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$2;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->access$300(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNotificationPreferences()Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->setAppNotificationPreferencesEnabled(Ljava/lang/Boolean;)V

    .line 166
    new-instance v0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$2$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$2$1;-><init>(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$2;)V

    invoke-static {v0}, Lcom/mcdonalds/app/customer/push/NotificationManager;->register(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 172
    return-void
.end method
