# sandbox_telemetry_parse — 2026-10-15 20:57:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1053530 lines=2335
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2330 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2330} |
| `chromeGpuPssKb` | {'int': 2330} |
| `chromeOtherPssKb` | {'int': 2330} |
| `chromeProcesses` | {'int': 2330} |
| `chromeProfiles` | {'int': 2330} |
| `chromeRendererMaxPssKb` | {'int': 2330} |
| `chromeRendererPssKb` | {'int': 2330} |
| `chromeRenderers` | {'int': 2330} |
| `chromeTabs` | {'int': 2330} |
| `chromeTabsProbedProfiles` | {'int': 2330} |
| `chromeUtilityPssKb` | {'int': 2330} |
| `desktopPssKb` | {'int': 2330} |
| `hostPssKb` | {'int': 2330} |
| `kind` | {'str': 2330} |
| `memAvailableKb` | {'int': 2330} |
| `memTotalKb` | {'int': 2330} |
| `otherPssKb` | {'int': 2330} |
| `processes` | {'int': 2330} |
| `pssFallbackProcesses` | {'int': 2330} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
