package jp.co.info.ais.report.model;

public class MWorkReport extends MWorkReportKey {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.m_work_report.report_start_time
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    private String reportStartTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.m_work_report.report_end_time
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    private String reportEndTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.m_work_report.working_type
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    private String workingType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column public.m_work_report.remarks
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    private String remarks;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.m_work_report.report_start_time
     *
     * @return the value of public.m_work_report.report_start_time
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public String getReportStartTime() {
        return reportStartTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.m_work_report.report_start_time
     *
     * @param reportStartTime the value for public.m_work_report.report_start_time
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public void setReportStartTime(String reportStartTime) {
        this.reportStartTime = reportStartTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.m_work_report.report_end_time
     *
     * @return the value of public.m_work_report.report_end_time
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public String getReportEndTime() {
        return reportEndTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.m_work_report.report_end_time
     *
     * @param reportEndTime the value for public.m_work_report.report_end_time
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public void setReportEndTime(String reportEndTime) {
        this.reportEndTime = reportEndTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.m_work_report.working_type
     *
     * @return the value of public.m_work_report.working_type
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public String getWorkingType() {
        return workingType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.m_work_report.working_type
     *
     * @param workingType the value for public.m_work_report.working_type
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public void setWorkingType(String workingType) {
        this.workingType = workingType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column public.m_work_report.remarks
     *
     * @return the value of public.m_work_report.remarks
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public String getRemarks() {
        return remarks;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column public.m_work_report.remarks
     *
     * @param remarks the value for public.m_work_report.remarks
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
}