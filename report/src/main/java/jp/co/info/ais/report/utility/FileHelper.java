package jp.co.info.ais.report.utility;

import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

public class FileHelper {

	private static final String SPA = FileSystems.getDefault().getSeparator();

	public static void main(String[] args) {
		// TODO 自動生成されたメソッド・スタブ
	}

	public static boolean copyToFile(String fromFile, String toFile,	HttpSession session, HttpServletRequest request) {

		String path = request.getSession().getServletContext().getRealPath("/resources/images/");
		System.out.println("path: " + path);
		boolean result = false;
        try {
            Path sourcePath = Paths.get(path + SPA + fromFile);
            Path targetPath = Paths.get(path + SPA + toFile);
            Files.copy(sourcePath, targetPath);
        } catch (IOException e) {
            e.printStackTrace();
        }

		return result;
	}

	public static boolean renameToFile(String fromFile, String toFile,	HttpSession session, HttpServletRequest request) {

		String path = request.getSession().getServletContext().getRealPath("/resources/images/");

		boolean result = false;
        try {
        	Path sourcePath = Paths.get(path + SPA + fromFile);
        	Path targetPath = Paths.get(path + SPA + toFile);
            Files.move(sourcePath, targetPath);
        } catch (IOException e) {
            e.printStackTrace();
        }
		return result;
	}

	public static boolean deleteToFile(String targetFile,	HttpSession session, HttpServletRequest request) {

		String path = request.getSession().getServletContext().getRealPath("/resources/images/");

		boolean result = false;
        try {
        	Path targetPath = Paths.get(path + SPA + targetFile);
            if(Files.deleteIfExists(targetPath)){
            	result = true;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
		return result;
	}

	public static boolean transferToFile(MultipartFile image, String menuNo,	HttpSession session, HttpServletRequest request) {

		String path = request.getSession().getServletContext().getRealPath("/resources/images/");

		boolean result = false;
        try {
        	Path targetPath = Paths.get(path + SPA + menuNo);
        	deleteToFile(menuNo, session, request);
        	image.transferTo(targetPath.toFile());
        } catch (IOException e) {
            e.printStackTrace();
        }
		return result;
	}
}