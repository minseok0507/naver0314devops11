import {useEffect, useState} from "react";
import Movie from "../components/movie";


function Home() {
    const [loading, setLoading] = useState(true);
    const [movies, setMovies] = useState([]);
    const getMovies = async () => {
        const response = await fetch("https://yts.mx/api/v2/list_movies.json?minimum_rating=9&sort_by=year");
        const json = await response.json();
        setMovies(json.data.movies);
        setLoading(false)
    }

    useEffect(() => {
        getMovies();
    }, []);

    return (
        <div>
            {loading ? <h3>LOADING...</h3> : null}
            {movies.map(movie => (
                <Movie key={movie.id} movie={movie}/>
            ))}
        </div>
    );
}


export default Home;
