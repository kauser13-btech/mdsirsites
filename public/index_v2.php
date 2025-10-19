<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Under Maintenance</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(-45deg, #667eea, #764ba2, #f093fb, #f5576c);
            background-size: 400% 400%;
            animation: gradientShift 15s ease infinite;
            height: 100vh;
            overflow: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .container {
            text-align: center;
            color: white;
            z-index: 10;
            position: relative;
        }

        .gear-container {
            position: relative;
            margin: 0 auto 40px;
            width: 200px;
            height: 200px;
        }

        .gear {
            position: absolute;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border: 3px solid rgba(255, 255, 255, 0.3);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .gear::before {
            content: '';
            position: absolute;
            width: 100%;
            height: 100%;
            background: conic-gradient(
                from 0deg,
                transparent 0deg,
                rgba(255, 255, 255, 0.1) 30deg,
                transparent 60deg,
                rgba(255, 255, 255, 0.1) 90deg,
                transparent 120deg,
                rgba(255, 255, 255, 0.1) 150deg,
                transparent 180deg,
                rgba(255, 255, 255, 0.1) 210deg,
                transparent 240deg,
                rgba(255, 255, 255, 0.1) 270deg,
                transparent 300deg,
                rgba(255, 255, 255, 0.1) 330deg,
                transparent 360deg
            );
            border-radius: 50%;
            animation: spin 4s linear infinite;
        }

        .gear-large {
            width: 120px;
            height: 120px;
            top: 40px;
            left: 40px;
        }

        .gear-small {
            width: 80px;
            height: 80px;
            top: 20px;
            right: 20px;
            animation-direction: reverse;
        }

        .gear-small::before {
            animation-duration: 3s;
        }

        .gear-tiny {
            width: 60px;
            height: 60px;
            bottom: 30px;
            left: 20px;
        }

        .gear-tiny::before {
            animation-duration: 2s;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        .maintenance-text {
            margin-bottom: 30px;
        }

        .maintenance-text h1 {
            font-size: 3.5rem;
            font-weight: bold;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
            animation: fadeInUp 1s ease-out;
        }

        .maintenance-text p {
            font-size: 1.4rem;
            margin-bottom: 15px;
            opacity: 0.9;
            animation: fadeInUp 1s ease-out 0.3s both;
        }

        .status-indicator {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 15px;
            margin: 40px 0;
            animation: fadeInUp 1s ease-out 0.6s both;
        }

        .pulse-dot {
            width: 20px;
            height: 20px;
            border-radius: 50%;
            background: #4ade80;
            animation: pulse 2s infinite;
            box-shadow: 0 0 20px rgba(74, 222, 128, 0.5);
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); opacity: 1; }
            50% { transform: scale(1.2); opacity: 0.7; }
        }

        .status-text {
            font-size: 1.2rem;
            font-weight: 600;
            color: #4ade80;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.3);
        }

        .progress-bar {
            width: 300px;
            height: 8px;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 4px;
            margin: 30px auto;
            overflow: hidden;
            animation: fadeInUp 1s ease-out 0.9s both;
        }

        .progress-fill {
            height: 100%;
            background: linear-gradient(90deg, #4ade80, #22d3ee);
            border-radius: 4px;
            animation: progress 3s ease-in-out infinite;
            box-shadow: 0 0 10px rgba(74, 222, 128, 0.5);
        }

        @keyframes progress {
            0% { width: 0%; }
            50% { width: 75%; }
            100% { width: 100%; }
        }

        .contact-info {
            margin-top: 50px;
            animation: fadeInUp 1s ease-out 1.2s both;
        }

        .contact-info p {
            font-size: 1.1rem;
            opacity: 0.8;
            margin-bottom: 10px;
        }

        .social-links {
            margin-top: 25px;
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .social-link {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border: 2px solid rgba(255, 255, 255, 0.3);
            display: flex;
            justify-content: center;
            align-items: center;
            text-decoration: none;
            color: white;
            font-size: 1.5rem;
            transition: all 0.3s ease;
            animation: float 3s ease-in-out infinite;
        }

        .social-link:nth-child(2) {
            animation-delay: 0.5s;
        }

        .social-link:nth-child(3) {
            animation-delay: 1s;
        }

        .social-link:hover {
            transform: translateY(-5px) scale(1.1);
            background: rgba(255, 255, 255, 0.2);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        }

        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .particles {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
        }

        .particle {
            position: absolute;
            width: 4px;
            height: 4px;
            background: rgba(255, 255, 255, 0.6);
            border-radius: 50%;
            animation: particleFloat 8s infinite linear;
        }

        @keyframes particleFloat {
            0% {
                transform: translateY(100vh) rotate(0deg);
                opacity: 0;
            }
            10% {
                opacity: 1;
            }
            90% {
                opacity: 1;
            }
            100% {
                transform: translateY(-100px) rotate(360deg);
                opacity: 0;
            }
        }

        @media (max-width: 768px) {
            .maintenance-text h1 {
                font-size: 2.5rem;
            }
            
            .maintenance-text p {
                font-size: 1.2rem;
            }
            
            .gear-container {
                width: 150px;
                height: 150px;
            }
            
            .gear-large {
                width: 90px;
                height: 90px;
                top: 30px;
                left: 30px;
            }
            
            .progress-bar {
                width: 250px;
            }
        }
    </style>
</head>
<body>
    <div class="particles" id="particles"></div>
    
    <div class="container">
        <div class="gear-container">
            <div class="gear gear-large"></div>
            <div class="gear gear-small"></div>
            <div class="gear gear-tiny"></div>
        </div>
        
        <div class="maintenance-text">
            <h1>Under Maintenance</h1>
            <p>We're working hard to improve your experience</p>
            <p>Our site will be back online shortly</p>
        </div>
        
        <div class="status-indicator">
            <div class="pulse-dot"></div>
            <div class="status-text">System Update in Progress</div>
        </div>
        
        <div class="progress-bar">
            <div class="progress-fill"></div>
        </div>
        
        <div class="contact-info">
            
            
            <div class="social-links">
                <a href="#" class="social-link">📧</a>
                <a href="#" class="social-link">📱</a>
                <a href="#" class="social-link">💬</a>
            </div>
        </div>
    </div>

    <script>
        // Create floating particles
        function createParticles() {
            const particlesContainer = document.getElementById('particles');
            
            for (let i = 0; i < 20; i++) {
                const particle = document.createElement('div');
                particle.className = 'particle';
                particle.style.left = Math.random() * 100 + '%';
                particle.style.animationDelay = Math.random() * 8 + 's';
                particle.style.animationDuration = (Math.random() * 5 + 5) + 's';
                particlesContainer.appendChild(particle);
            }
        }

        // Initialize particles when page loads
        document.addEventListener('DOMContentLoaded', createParticles);

        // Add subtle mouse movement effect
        document.addEventListener('mousemove', (e) => {
            const container = document.querySelector('.container');
            const x = (e.clientX / window.innerWidth) * 2 - 1;
            const y = (e.clientY / window.innerHeight) * 2 - 1;
            
            container.style.transform = `translate(${x * 5}px, ${y * 5}px)`;
        });

        // Reset position when mouse leaves
        document.addEventListener('mouseleave', () => {
            const container = document.querySelector('.container');
            container.style.transform = 'translate(0, 0)';
        });
    </script>
</body>
</html>
