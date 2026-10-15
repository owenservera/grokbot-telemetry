# sandbox_telemetry_parse — 2026-10-15 12:25:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=860526 lines=1908
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1903 |
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
| `chromeBrowserPssKb` | {'int': 1903} |
| `chromeGpuPssKb` | {'int': 1903} |
| `chromeOtherPssKb` | {'int': 1903} |
| `chromeProcesses` | {'int': 1903} |
| `chromeProfiles` | {'int': 1903} |
| `chromeRendererMaxPssKb` | {'int': 1903} |
| `chromeRendererPssKb` | {'int': 1903} |
| `chromeRenderers` | {'int': 1903} |
| `chromeTabs` | {'int': 1903} |
| `chromeTabsProbedProfiles` | {'int': 1903} |
| `chromeUtilityPssKb` | {'int': 1903} |
| `desktopPssKb` | {'int': 1903} |
| `hostPssKb` | {'int': 1903} |
| `kind` | {'str': 1903} |
| `memAvailableKb` | {'int': 1903} |
| `memTotalKb` | {'int': 1903} |
| `otherPssKb` | {'int': 1903} |
| `processes` | {'int': 1903} |
| `pssFallbackProcesses` | {'int': 1903} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
