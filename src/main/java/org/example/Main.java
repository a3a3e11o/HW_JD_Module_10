package org.example;

import org.flywaydb.core.Flyway;
import org.hibernate.SessionFactory;

public class Main {

    public static void main(String[] args) {
        Flyway flyway = Flyway.configure().dataSource("jdbc:postgresql://localhost:5432/megasoft", "postgres", "123").load();
        flyway.migrate();

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

        ClientCrudService clientCrudService = new ClientCrudService(sessionFactory);

        Client client = new Client("SpaceX");
        clientCrudService.save(client);
        clientCrudService.update(client);
        System.out.println("Added client: " + client);

        Long clientId = client.getId();
        Client retrievedClient = clientCrudService.getById(clientId);
        System.out.println("Retrieved client: " + retrievedClient);

        clientCrudService.delete(clientId);
        System.out.println("Client deleted");

        PlanetCrudService planetCrudService = new PlanetCrudService(sessionFactory);

        Planet planet = new Planet("NEPTUNE", "Neptune");
        planetCrudService.save(planet);
        planetCrudService.update(planet);
        System.out.println("Added planet: " + planet);

        String planetId = planet.getId();
        Planet retrievedPlanet = planetCrudService.getById(planetId);
        System.out.println("Retrieved planet: " + retrievedPlanet);

        planetCrudService.delete(planetId);
        System.out.println("Planet deleted");

        sessionFactory.close();
    }
}
