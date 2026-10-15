# sandbox_telemetry_parse — 2026-10-15 20:40:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1046750 lines=2320
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2315 |
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
| `chromeBrowserPssKb` | {'int': 2315} |
| `chromeGpuPssKb` | {'int': 2315} |
| `chromeOtherPssKb` | {'int': 2315} |
| `chromeProcesses` | {'int': 2315} |
| `chromeProfiles` | {'int': 2315} |
| `chromeRendererMaxPssKb` | {'int': 2315} |
| `chromeRendererPssKb` | {'int': 2315} |
| `chromeRenderers` | {'int': 2315} |
| `chromeTabs` | {'int': 2315} |
| `chromeTabsProbedProfiles` | {'int': 2315} |
| `chromeUtilityPssKb` | {'int': 2315} |
| `desktopPssKb` | {'int': 2315} |
| `hostPssKb` | {'int': 2315} |
| `kind` | {'str': 2315} |
| `memAvailableKb` | {'int': 2315} |
| `memTotalKb` | {'int': 2315} |
| `otherPssKb` | {'int': 2315} |
| `processes` | {'int': 2315} |
| `pssFallbackProcesses` | {'int': 2315} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
