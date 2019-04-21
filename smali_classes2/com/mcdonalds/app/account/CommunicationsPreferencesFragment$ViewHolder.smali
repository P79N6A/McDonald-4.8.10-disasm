.class Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;
.super Ljava/lang/Object;
.source "CommunicationsPreferencesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private entry:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;

.field private final onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field final synthetic this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

.field private title:Landroid/widget/TextView;

.field private toggle:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;Landroid/view/View;)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;->this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder$1;-><init>(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 302
    const v0, 0x7f110067

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 303
    const v0, 0x7f110514

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;->toggle:Landroid/widget/Switch;

    .line 304
    iget-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;->toggle:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 305
    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;)Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.CommunicationsPreferencesFragment$ViewHolder"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;->entry:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;)V
    .locals 3
    .param p1, "entry"    # Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;

    .prologue
    const-string v0, "bind"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    iput-object p1, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;->entry:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;

    .line 310
    iget-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;->toggle:Landroid/widget/Switch;

    iget-boolean v1, p1, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;->state:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 312
    return-void
.end method
