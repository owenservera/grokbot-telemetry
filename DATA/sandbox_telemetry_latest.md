# sandbox_telemetry_parse — 2026-10-15 02:42:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=623226 lines=1383
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1378 |
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
| `chromeBrowserPssKb` | {'int': 1378} |
| `chromeGpuPssKb` | {'int': 1378} |
| `chromeOtherPssKb` | {'int': 1378} |
| `chromeProcesses` | {'int': 1378} |
| `chromeProfiles` | {'int': 1378} |
| `chromeRendererMaxPssKb` | {'int': 1378} |
| `chromeRendererPssKb` | {'int': 1378} |
| `chromeRenderers` | {'int': 1378} |
| `chromeTabs` | {'int': 1378} |
| `chromeTabsProbedProfiles` | {'int': 1378} |
| `chromeUtilityPssKb` | {'int': 1378} |
| `desktopPssKb` | {'int': 1378} |
| `hostPssKb` | {'int': 1378} |
| `kind` | {'str': 1378} |
| `memAvailableKb` | {'int': 1378} |
| `memTotalKb` | {'int': 1378} |
| `otherPssKb` | {'int': 1378} |
| `processes` | {'int': 1378} |
| `pssFallbackProcesses` | {'int': 1378} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
