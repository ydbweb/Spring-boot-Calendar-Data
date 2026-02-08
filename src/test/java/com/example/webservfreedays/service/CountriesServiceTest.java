package com.example.webservfreedays.service;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

import java.text.Format;
import java.text.SimpleDateFormat;

import com.example.webservfreedays.entity.Countries;
import com.example.webservfreedays.entity.Translate;
import com.example.webservfreedays.pojo.DaysInterface;
import com.example.webservfreedays.pojo.MonthsInterface;
import com.example.webservfreedays.repository.CountriesRepository;
import com.example.webservfreedays.repository.TranslateRepository;
import com.mysql.cj.x.protobuf.MysqlxDatatypes.Any;

import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import javax.persistence.EntityManager;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

class CountriesServiceTest {

    @Mock
    private CountriesRepository cntryRepo;

    @Mock
    private TranslateRepository trslRepo;

    @Mock
    private ImportService impContr;
    
    @Mock
	private EntityManager em;

    @InjectMocks
    private CountriesService countriesService;

    public CountriesServiceTest() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testGetCountries() {
        // Arrange
        Countries mockCountry = new Countries();
        mockCountry.setName("USA");
        when(cntryRepo.findAll()).thenReturn(List.of(mockCountry));

        // Act
        List<Countries> result = countriesService.getCountries();

        // Assert
        assertNotNull(result);
        assertEquals(1, result.size());
        assertEquals("USA", result.get(0).getName());
    }

    @Test
    void testGetYears() {
        // Arrange
        when(cntryRepo.getYears()).thenReturn(List.of("2023", "2024"));

        // Act
        List<String> result = countriesService.getYears();

        // Assert
        assertNotNull(result);
        assertEquals(2, result.size());
        assertTrue(result.contains("2023"));
        assertTrue(result.contains("2024"));
    }

    @Test
    void testGetDataMonth() {
        // Arrange
        String countryCode = "US";
        String year = "2024";
        String month = "01";
        DaysInterface mockDay = mock(DaysInterface.class);
        when(cntryRepo.getDataMonth(eq(countryCode), eq(year), anyString(), anyString()))
            .thenReturn(List.of(mockDay));

        // Act
        List<DaysInterface> result = countriesService.getDataMonth(countryCode, year, month);

        // Assert
        assertNotNull(result);
        assertEquals(1, result.size());
    }

    @Test
    void testImportEaster() throws Exception {
        // Arrange
        String mockDate = "2024-04-01 00:00:00";
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        when(impContr.importeaster()).thenReturn(List.of(mockDate));
        doNothing().when(em).persist(any());

        // Act
        List<String> result = countriesService.importeaster();

        // Assert
        assertNotNull(result);
        assertEquals(1, result.size());
        assertEquals(mockDate, result.get(0));
    }

    @Test
    void testGetDaysOfMonth() {
        // Arrange
        String countryCode = "US";
        String year = "2026";
        String month = "02";
        DaysInterface mockDay = mock(DaysInterface.class);
        when(cntryRepo.getDaysOfMonth(eq(countryCode), eq(year), eq(month))).thenReturn(List.of(mockDay));

        // Act
        List<DaysInterface> result = countriesService.getDaysOfMonth(countryCode, year, month);

        // Assert
        assertNotNull(result);
        assertEquals(1, result.size());
    }
}