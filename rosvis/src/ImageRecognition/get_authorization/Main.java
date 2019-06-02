public class Main
{

    public static void main(String[] args)
    {
        Sign sign = new Sign();
        long appId = 1257930116;
        String secretId = "AKIDnnrleN566ApPzgpM8mU7rU6tkeWQnayI";
        String secretKey = "X4Z8sc2HYgw4AKWer162tgcYZemv3HNN";
        String bucketName = "bucket";
        long expired = 60 * 60 * 24 * 30 * 3;
        try
        {
            System.out.println(sign.appSign(appId, secretId, secretKey, bucketName, expired));
            // GMPK/9F+DKJagxnb2/bF8He7CKNhPTEyNTc5MzAxMTYmYj1idWNrZXQmaz1BS0lEbm5ybGVONTY2QXBQemdwTThtVTdyVTZ0a2VXUW5heUkmdD0xNTU3NjUzMDUzJmU9MTU2NTQyOTA1MyZyPTE4NzUwNDMyNjc=
        } catch (Exception e)
        {
            System.exit(1);
        }
    }
}
