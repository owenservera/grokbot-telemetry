# sandbox_telemetry_parse — 2026-11-25 18:28:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2870932 lines=6360
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6345 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6345} |
| `chromeGpuPssKb` | {'int': 6345} |
| `chromeOtherPssKb` | {'int': 6345} |
| `chromeProcesses` | {'int': 6345} |
| `chromeProfiles` | {'int': 6345} |
| `chromeRendererMaxPssKb` | {'int': 6345} |
| `chromeRendererPssKb` | {'int': 6345} |
| `chromeRenderers` | {'int': 6345} |
| `chromeTabs` | {'int': 6345} |
| `chromeTabsProbedProfiles` | {'int': 6345} |
| `chromeUtilityPssKb` | {'int': 6345} |
| `desktopPssKb` | {'int': 6345} |
| `hostPssKb` | {'int': 6345} |
| `kind` | {'str': 6345} |
| `memAvailableKb` | {'int': 6345} |
| `memTotalKb` | {'int': 6345} |
| `otherPssKb` | {'int': 6345} |
| `processes` | {'int': 6345} |
| `pssFallbackProcesses` | {'int': 6345} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
