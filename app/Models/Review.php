<?php


namespace App\Models;


use App\Core\BaseModel;

/**
 * Class Review
 * @package App\Models
 */
class Review extends BaseModel
{
    public function getMovieFromTransaction($transactionID)
    {
        $result = $this->db->execute(
            "SELECT m.id, m.title 
                         FROM transactions t JOIN schedules s ON t.schedule_id = s.id
                            JOIN movies m ON s.movie_id = m.id
                         WHERE t.id = :transactionID",
            ['transactionID' => $transactionID]
        );
        return $result->getQueryResult()[0];
    }

    public function insertNewComment($transactionID, $movie_id, $rating, $comment)
    {
        $this->db->execute(
            "INSERT INTO reviews (transaction_id, movie_id, rating, comment) 
                         VALUES (:transactionID, :movieID, :rating, :comment)",
            [
                'transactionID' => $transactionID,
                'movieID' => $movie_id,
                'rating' => $rating,
                'comment' => $comment,
            ]
        );
    }
}