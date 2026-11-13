# sandbox_telemetry_parse — 2026-11-13 23:42:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2386724 lines=5282
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5273 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 5273} |
| `chromeGpuPssKb` | {'int': 5273} |
| `chromeOtherPssKb` | {'int': 5273} |
| `chromeProcesses` | {'int': 5273} |
| `chromeProfiles` | {'int': 5273} |
| `chromeRendererMaxPssKb` | {'int': 5273} |
| `chromeRendererPssKb` | {'int': 5273} |
| `chromeRenderers` | {'int': 5273} |
| `chromeTabs` | {'int': 5273} |
| `chromeTabsProbedProfiles` | {'int': 5273} |
| `chromeUtilityPssKb` | {'int': 5273} |
| `desktopPssKb` | {'int': 5273} |
| `hostPssKb` | {'int': 5273} |
| `kind` | {'str': 5273} |
| `memAvailableKb` | {'int': 5273} |
| `memTotalKb` | {'int': 5273} |
| `otherPssKb` | {'int': 5273} |
| `processes` | {'int': 5273} |
| `pssFallbackProcesses` | {'int': 5273} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
