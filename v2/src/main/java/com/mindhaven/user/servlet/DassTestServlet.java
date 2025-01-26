package com.mindhaven.user.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mindhaven.dasstest.DassTest;
import com.mindhaven.dasstest.DassTestController;

@WebServlet("/submitDASS")
public class DassTestServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DassTestController controller = new DassTestController();

        // Process form inputs
        List<DassTest> responses = controller.processAnswers(request);

        // Calculate the result
        String result = controller.calculateResult(responses);

        // Forward to result page
        request.setAttribute("result", result);
        request.getRequestDispatcher("result.jsp").forward(request, response);
        request.getRequestDispatcher("user_appointment.jsp").forward(request, response);
        
        //System.out.println("Calculated result: " + result);

    }
}