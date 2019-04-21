.class Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SlideDateTimeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    .line 288
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 289
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const-string v0, "getCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    const-string v0, "getItem"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    nop

    .line 294
    packed-switch p1, :pswitch_data_0

    .line 316
    const/4 v6, 0x0

    :goto_0
    return-object v6

    .line 297
    :pswitch_0
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    .line 298
    invoke-static {v0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->access$200(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    .line 299
    invoke-static {v1}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->access$100(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    .line 300
    invoke-static {v2}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->access$100(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    .line 301
    invoke-static {v3}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->access$100(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    .line 302
    invoke-static {v4}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->access$300(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)Ljava/util/Date;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    .line 303
    invoke-static {v5}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->access$400(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)Ljava/util/Date;

    move-result-object v5

    .line 297
    invoke-static/range {v0 .. v5}, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->newInstance(IIIILjava/util/Date;Ljava/util/Date;)Lcom/mcdonalds/app/ui/dateTime/DateFragment;

    move-result-object v6

    .line 304
    .local v6, "dateFragment":Lcom/mcdonalds/app/ui/dateTime/DateFragment;
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    const/16 v1, 0x64

    invoke-virtual {v6, v0, v1}, Lcom/mcdonalds/app/ui/dateTime/DateFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    goto :goto_0

    .line 307
    .end local v6    # "dateFragment":Lcom/mcdonalds/app/ui/dateTime/DateFragment;
    :pswitch_1
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    .line 308
    invoke-static {v0}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->access$200(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    .line 309
    invoke-static {v1}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->access$100(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    .line 310
    invoke-static {v2}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->access$100(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    .line 311
    invoke-static {v3}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->access$500(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)Z

    move-result v3

    iget-object v4, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    .line 312
    invoke-static {v4}, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;->access$600(Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;)Z

    move-result v4

    .line 307
    invoke-static {v0, v1, v2, v3, v4}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->newInstance(IIIZZ)Lcom/mcdonalds/app/ui/dateTime/TimeFragment;

    move-result-object v7

    .line 313
    .local v7, "timeFragment":Lcom/mcdonalds/app/ui/dateTime/TimeFragment;
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/mcdonalds/app/ui/dateTime/SlideDateTimeDialogFragment;

    const/16 v1, 0xc8

    invoke-virtual {v7, v0, v1}, Lcom/mcdonalds/app/ui/dateTime/TimeFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    move-object v6, v7

    .line 314
    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
