# sandbox_telemetry_parse — 2026-10-15 19:55:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1027314 lines=2277
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2272 |
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
| `chromeBrowserPssKb` | {'int': 2272} |
| `chromeGpuPssKb` | {'int': 2272} |
| `chromeOtherPssKb` | {'int': 2272} |
| `chromeProcesses` | {'int': 2272} |
| `chromeProfiles` | {'int': 2272} |
| `chromeRendererMaxPssKb` | {'int': 2272} |
| `chromeRendererPssKb` | {'int': 2272} |
| `chromeRenderers` | {'int': 2272} |
| `chromeTabs` | {'int': 2272} |
| `chromeTabsProbedProfiles` | {'int': 2272} |
| `chromeUtilityPssKb` | {'int': 2272} |
| `desktopPssKb` | {'int': 2272} |
| `hostPssKb` | {'int': 2272} |
| `kind` | {'str': 2272} |
| `memAvailableKb` | {'int': 2272} |
| `memTotalKb` | {'int': 2272} |
| `otherPssKb` | {'int': 2272} |
| `processes` | {'int': 2272} |
| `pssFallbackProcesses` | {'int': 2272} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
