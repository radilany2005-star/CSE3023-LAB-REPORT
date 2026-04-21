<style>
        /* Modern Clinical Theme */
        body {
            font-family: 'Inter', 'Segoe UI', Roboto, sans-serif;
            background-color: #f4f7f6; /* Soft mint-grey background */
            margin: 0;
            padding: 40px 20px;
            color: #2c3e50;
        }

        header {
            background: #ffffff; /* Clean white header */
            color: #2c3e50;
            padding: 30px;
            border-radius: 16px;
            text-align: left; /* Aligned left for a modern feel */
            box-shadow: 0 10px 30px rgba(0,0,0,0.03);
            margin-bottom: 40px;
            max-width: 800px;
            margin-left: auto;
            margin-right: auto;
            border-bottom: 4px solid #1abc9c; /* Mint accent border */
        }

        header h2 {
            margin: 0 0 15px 0;
            font-weight: 800;
            letter-spacing: -0.5px;
            color: #16a085;
        }

        nav a {
            color: #7f8c8d;
            text-decoration: none;
            margin-right: 25px;
            font-size: 0.95rem;
            transition: all 0.3s ease;
        }

        nav a:hover {
            color: #1abc9c;
            text-decoration: none;
        }

        .card {
            background: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.04);
            max-width: 550px;
            margin: auto;
            border: 1px solid #eef2f1;
        }

        h1 { 
            color: #2c3e50; 
            border-left: 6px solid #1abc9c; /* Mint accent */
            padding-left: 20px;
            font-size: 1.5rem;
            margin-bottom: 25px;
        }

        .btn {
            background-color: #2c3e50; /* Dark charcoal for high contrast */
            color: #ffffff;
            padding: 15px 20px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            font-weight: 600;
            transition: transform 0.2s, background-color 0.2s;
        }

        .btn:hover { 
            background-color: #1abc9c; /* Turns mint on hover */
            transform: translateY(-2px);
        }
        
        
    </style>
    
    <body>

    <header>
        <h2>Health Management System</h2>
        <nav>
            <a href="bmiCalculator.jsp">BMI Calculator</a>
            <a href="healthInfo.jsp">Health Info</a>
        </nav>
    </header>

    <div class="card">
        <h1>Calculate Your BMI</h1>
        <p style="color: #7f8c8d; margin-bottom: 20px;">Enter your details below to track your fitness progress.</p>
        <button class="btn">Calculate Now</button>
    </div>

</body>