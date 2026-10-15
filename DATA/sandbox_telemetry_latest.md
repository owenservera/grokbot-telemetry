# sandbox_telemetry_parse — 2026-10-15 16:10:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=941886 lines=2088
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2083 |
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
| `chromeBrowserPssKb` | {'int': 2083} |
| `chromeGpuPssKb` | {'int': 2083} |
| `chromeOtherPssKb` | {'int': 2083} |
| `chromeProcesses` | {'int': 2083} |
| `chromeProfiles` | {'int': 2083} |
| `chromeRendererMaxPssKb` | {'int': 2083} |
| `chromeRendererPssKb` | {'int': 2083} |
| `chromeRenderers` | {'int': 2083} |
| `chromeTabs` | {'int': 2083} |
| `chromeTabsProbedProfiles` | {'int': 2083} |
| `chromeUtilityPssKb` | {'int': 2083} |
| `desktopPssKb` | {'int': 2083} |
| `hostPssKb` | {'int': 2083} |
| `kind` | {'str': 2083} |
| `memAvailableKb` | {'int': 2083} |
| `memTotalKb` | {'int': 2083} |
| `otherPssKb` | {'int': 2083} |
| `processes` | {'int': 2083} |
| `pssFallbackProcesses` | {'int': 2083} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
