# sandbox_telemetry_parse — 2026-10-06 22:21:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=636314 lines=1400
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1395 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1395} |
| `chromeGpuPssKb` | {'int': 1395} |
| `chromeOtherPssKb` | {'int': 1395} |
| `chromeProcesses` | {'int': 1395} |
| `chromeProfiles` | {'int': 1395} |
| `chromeRendererMaxPssKb` | {'int': 1395} |
| `chromeRendererPssKb` | {'int': 1395} |
| `chromeRenderers` | {'int': 1395} |
| `chromeTabs` | {'int': 1395} |
| `chromeTabsProbedProfiles` | {'int': 1395} |
| `chromeUtilityPssKb` | {'int': 1395} |
| `desktopPssKb` | {'int': 1395} |
| `hostPssKb` | {'int': 1395} |
| `kind` | {'str': 1395} |
| `memAvailableKb` | {'int': 1395} |
| `memTotalKb` | {'int': 1395} |
| `otherPssKb` | {'int': 1395} |
| `processes` | {'int': 1395} |
| `pssFallbackProcesses` | {'int': 1395} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
