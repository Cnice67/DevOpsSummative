package bpp.com.devops;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import bpp.com.devops.controllers.NameControllerTest;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.test.web.servlet.MockMvc;

@WebMvcTest(NameController.class)
class NameControllerTest {

  @Autowired
  private MockMvc mockMvc;

  @Test
  @DisplayName("GET /api/name → 200 OK")
  void getNameEndpointReturns200() throws Exception {
    mockMvc.perform(get("/api/name"))
           .andExpect(status().isOk());
  }
}
