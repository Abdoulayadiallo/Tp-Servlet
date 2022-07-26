package com.monservlet.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.monservlet.beans.Utilisateurs;

/**
 * Servlet implementation class MonServlet
 */
public class MonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MonServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/Inscrire.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		this.getServletContext().getRequestDispatcher("/WEB-INF/Accueil.jsp").forward(request, response);
//      Recuperation des données
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String pseudo = request.getParameter("pseudo");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		HttpSession session = request.getSession();
		
		List<Utilisateurs> myArrayList = (List) session.getAttribute("liste");
		if(myArrayList == null) {
			myArrayList = new ArrayList<Utilisateurs>();
		}
		Utilisateurs user = new Utilisateurs( nom, prenom, pseudo, email, password);
			
			myArrayList.add(user);
			request.setAttribute("nom", nom);
			request.setAttribute("prenom", prenom);
			session.setAttribute("list", myArrayList);
			
			this.getServletContext().getRequestDispatcher("/WEB-INF/Accueil.jsp").forward(request, response);
		}

//		session.setAttribute("nom", nom);
//		session.setAttribute("prenom", prenom);
//		session.setAttribute("pseudo", pseudo);
//		session.setAttribute("email", email);
//		session.setAttribute("password", password);
	

}
