import { message } from 'antd';
import { createContext, useEffect, useState } from 'react';
import { useLocation, useNavigate } from 'react-router-dom';

export const UserContext = createContext({
	logout: () => {},
	login: () => {},
	currentUser: null,
});

const UserProvider = ({ children }) => {
	const [currentUser, setCurrentUser] = useState(null);
	const location = useLocation();
	const navigate = useNavigate();

	useEffect(() => {
		fetch('/me').then((r) =>
			r
				.json()
				.then((user) => {
					if (user.username) {
						setCurrentUser(user);
					} else {
						throw new Error('not logged in');
					}
				})
				.catch((error) => {
					navigate('/login');
				})
		);
	}, []);

	const login = (formData) => {
		fetch('/login', {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json',
			},
			body: JSON.stringify(formData),
		})
			.then((r) => r.json())
			.then((user) => {
				console.log(user);
				if (user) {
					setCurrentUser(user);
					navigate('/home');
				} else {
					console.log(user);
					errorMessage(user);
				}
			})
			.catch((error) => console.log(error));
	};

	const logout = () => {
		fetch('/logout', { method: 'DELETE' })
			.then((r) => r.json())
			.catch((error) => {
				navigate('/login');
			});
	};

	const success = () => {
		message.success({
			content: 'Good eye! This bird has been added to your aviary.',
			className: 'custom-class',
			style: {
				marginTop: '20vh',
			},
		});
	};
	const errorMessage = (user) => {
		console.log('error');
		message.error({
			content: `testing`,
			className: 'custom-class',
			style: {
				marginTop: '20vh',
			},
		});
	};
	return (
		<UserContext.Provider value={{ login, logout, currentUser }}>
			{children}
		</UserContext.Provider>
	);
};

export default UserProvider;
