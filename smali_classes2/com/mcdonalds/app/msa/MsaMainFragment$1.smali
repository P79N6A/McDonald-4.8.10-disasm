.class Lcom/mcdonalds/app/msa/MsaMainFragment$1;
.super Ljava/lang/Object;
.source "MsaMainFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/msa/MsaMainFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

.field final synthetic val$amPmView:Landroid/widget/TextView;

.field final synthetic val$hourView:Landroid/widget/TextView;

.field final synthetic val$minuteView:Landroid/widget/TextView;

.field final synthetic val$nextAlarm:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/msa/MsaMainFragment;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->val$nextAlarm:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->val$amPmView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->val$hourView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->val$minuteView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    const/4 v4, 0x0

    const-string v0, "onCheckedChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    if-eqz p2, :cond_0

    .line 110
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->val$nextAlarm:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->val$amPmView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->val$hourView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->val$minuteView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mcdonalds/app/msa/MsaMainFragment;->access$000(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 121
    :goto_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v7, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "EVENT_NAME"

    const-string v1, "clock"

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "status"

    if-eqz p2, :cond_1

    const-string v0, "open"

    :goto_1
    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 125
    invoke-virtual {v0, v7}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v6

    .line 127
    .local v6, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v0, v6}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 128
    return-void

    .line 112
    .end local v6    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    .end local v7    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    invoke-static {v0, v4}, Lcom/mcdonalds/app/msa/MsaMainFragment;->access$100(Lcom/mcdonalds/app/msa/MsaMainFragment;Z)V

    .line 113
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->val$nextAlarm:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 116
    .local v8, "now":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->val$amPmView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->val$hourView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->val$minuteView:Landroid/widget/TextView;

    const/16 v4, 0xb

    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    .line 117
    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 116
    invoke-static/range {v0 .. v5}, Lcom/mcdonalds/app/msa/MsaMainFragment;->access$200(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    .line 118
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->val$amPmView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->val$hourView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$1;->val$minuteView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/app/msa/MsaMainFragment;->access$300(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 123
    .end local v8    # "now":Ljava/util/Calendar;
    .restart local v7    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const-string v0, "close"

    goto :goto_1
.end method
