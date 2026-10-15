# sandbox_telemetry_parse — 2026-10-15 06:14:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=706394 lines=1567
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1562 |
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
| `chromeBrowserPssKb` | {'int': 1562} |
| `chromeGpuPssKb` | {'int': 1562} |
| `chromeOtherPssKb` | {'int': 1562} |
| `chromeProcesses` | {'int': 1562} |
| `chromeProfiles` | {'int': 1562} |
| `chromeRendererMaxPssKb` | {'int': 1562} |
| `chromeRendererPssKb` | {'int': 1562} |
| `chromeRenderers` | {'int': 1562} |
| `chromeTabs` | {'int': 1562} |
| `chromeTabsProbedProfiles` | {'int': 1562} |
| `chromeUtilityPssKb` | {'int': 1562} |
| `desktopPssKb` | {'int': 1562} |
| `hostPssKb` | {'int': 1562} |
| `kind` | {'str': 1562} |
| `memAvailableKb` | {'int': 1562} |
| `memTotalKb` | {'int': 1562} |
| `otherPssKb` | {'int': 1562} |
| `processes` | {'int': 1562} |
| `pssFallbackProcesses` | {'int': 1562} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
