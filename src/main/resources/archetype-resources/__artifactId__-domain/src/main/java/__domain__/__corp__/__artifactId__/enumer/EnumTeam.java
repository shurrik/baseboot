package ${groupId}.${artifactId}.enumer;

/**
 * Created by lip on 2016-04-21.
 */
public enum EnumTeam {

    TEST("TEST","测试"),
    STANDARD("STANDARD","标准"),
    PRODUCT("PRODUCT","生产");
    private final String value;
    private final String label;
    private EnumTeam(String value, String label) {
        this.value = value;
        this.label = label;
    }


    public String getValue() {
        return value;
    }

    public String getLabel() {
        return label;
    }
}
