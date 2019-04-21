.class Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;
.super Ljava/lang/Object;
.source "CommunicationsPreferencesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationEntry"
.end annotation


# instance fields
.field public analytics:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public state:Z

.field final synthetic this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "state"    # Z
    .param p4, "analytics"    # Ljava/lang/String;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;->this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p2, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;->name:Ljava/lang/String;

    .line 289
    iput-boolean p3, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;->state:Z

    .line 290
    iput-object p4, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;->analytics:Ljava/lang/String;

    .line 291
    return-void
.end method
