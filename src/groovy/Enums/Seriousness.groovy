package Enums

/**
 * Created by sagar on 2/11/16.
 */
enum Seriousness {
    SERIOUS, VERY_SERIOUS, CASUAL

    public static Seriousness getSeriousness(String seriouness) {
        if (seriouness.equals("SERIOUS")) return Seriousness.SERIOUS
        else if (seriouness.equals("VERY_SERIOUS")) return Seriousness.VERY_SERIOUS
        else
            return Seriousness.CASUAL

    }
}