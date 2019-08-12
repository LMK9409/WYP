package jp.co.info.ais.report.utility;


import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVPrinter;

import jp.co.info.ais.report.model.MWorkReport;


public class CsvDownloadHelper {
	public void downloadByCsv(String saveFileName,String saveFilePath
					,ArrayList<MWorkReport> reportList) {
		
		File file =new File(saveFilePath+"\\"+saveFileName);
		
		//try-resourceでOutputStreamWriterを取得
		try (BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), "shift-jis"))) {
		   
			// CSVPrinterを取得。書き込みの設定とかする
		    CSVPrinter printer = CSVFormat
		        .EXCEL                             // ExcelのCSV形式を指定
		        .withHeader("開始時間", "終了時間", "活動種別", "備考")  // ヘッダの指定
		        .print(bw);
		    
		    // CSVのレコードを書込
		    for(MWorkReport report : reportList) {
		    	printer.printRecord(report.getReportStartTime(), report.getReportEndTime()
		    					,report.getWorkingType(),report.getRemarks());
		    }
		    
		} catch (IOException e) {
		    // 例外ハンドリング
		}
		
	}
}
