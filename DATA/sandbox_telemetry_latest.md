# sandbox_telemetry_parse — 2026-10-06 10:27:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=314378 lines=694
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 689 |
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
| `chromeBrowserPssKb` | {'int': 689} |
| `chromeGpuPssKb` | {'int': 689} |
| `chromeOtherPssKb` | {'int': 689} |
| `chromeProcesses` | {'int': 689} |
| `chromeProfiles` | {'int': 689} |
| `chromeRendererMaxPssKb` | {'int': 689} |
| `chromeRendererPssKb` | {'int': 689} |
| `chromeRenderers` | {'int': 689} |
| `chromeTabs` | {'int': 689} |
| `chromeTabsProbedProfiles` | {'int': 689} |
| `chromeUtilityPssKb` | {'int': 689} |
| `desktopPssKb` | {'int': 689} |
| `hostPssKb` | {'int': 689} |
| `kind` | {'str': 689} |
| `memAvailableKb` | {'int': 689} |
| `memTotalKb` | {'int': 689} |
| `otherPssKb` | {'int': 689} |
| `processes` | {'int': 689} |
| `pssFallbackProcesses` | {'int': 689} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
